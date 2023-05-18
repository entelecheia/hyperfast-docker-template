#!/bin/bash
# this script should be executed only once when the docker container is created
chezmoi update --apply=false
chezmoi init --apply --verbose
dotu
