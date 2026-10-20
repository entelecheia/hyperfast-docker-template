#!/usr/bin/env bash
# Rendered workflows must lint clean and follow the CI cost rules: a timeout on every job,
# a concurrency group, docs-only changes skipped, build cache, and no moving latest tags.
# Usage: check-workflows.sh <render dir>
set -euo pipefail

out="${1:?usage: $0 <render dir>}"
actionlint="${ACTIONLINT:-uvx --from actionlint-py==1.7.12.25 actionlint}"
failures=0
fail() { echo "FAIL $*"; failures=$((failures + 1)); }

for dir in "${out}"/*/; do
  name="$(basename "${dir}")"
  wf="${dir}.github/workflows"
  # shellcheck disable=SC2086
  ${actionlint} "${wf}"/*.yaml || fail "${name}: actionlint"
  for f in "${wf}"/*.yaml; do
    jobs="$(grep -c '^    runs-on:' "${f}")"
    timeouts="$(grep -c '^    timeout-minutes:' "${f}")"
    [ "${jobs}" = "${timeouts}" ] || fail "${name}/$(basename "${f}"): ${timeouts} timeouts for ${jobs} jobs"
    grep -q '^concurrency:' "${f}" || fail "${name}/$(basename "${f}"): no concurrency group"
    grep -q 'paths-ignore' "${f}" || fail "${name}/$(basename "${f}"): docs-only changes not skipped"
    if grep -v 'ubuntu-latest' "${f}" | grep -qi 'latest'; then fail "${name}/$(basename "${f}"): mentions latest"; fi
    if grep -q 'build-push-action' "${f}" && ! grep -q 'cache-from: type=gha' "${f}"; then
      fail "${name}/$(basename "${f}"): image build without cache"
    fi
  done
  grep -q 'cancel-in-progress: true' "${wf}/ci.yaml" || fail "${name}: ci does not cancel superseded runs"
  if grep -q 'cancel-in-progress' "${wf}/release.yaml"; then fail "${name}: release must not cancel"; fi
  echo "ok   ${name}: workflows"
done

[ "${failures}" -eq 0 ] || { echo "${failures} workflow check(s) failed" >&2; exit 1; }
echo "all workflow checks passed"
