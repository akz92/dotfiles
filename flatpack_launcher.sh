#!/usr/bin/env bash

# Wrapper to launch Flatpaks; needed for Jumpapp

flatpak_id="$1"

if [[ -z "$flatpak_id" ]]; then
  printf "No Flatpak ID specified\n" >&2
  exit 1
fi

flatpak run "$1"
