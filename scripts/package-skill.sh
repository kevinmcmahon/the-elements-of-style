#!/usr/bin/env bash
# Package the skill for upload to Claude Desktop / Cowork / claude.ai
# (Customize > Skills). The zip root must be the skill directory itself.
set -euo pipefail

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
skill_name="writing-clearly-and-concisely"
dist_dir="$repo_root/dist"

mkdir -p "$dist_dir"
rm -f "$dist_dir/$skill_name.zip"
(cd "$repo_root/skills" && zip -r "$dist_dir/$skill_name.zip" "$skill_name" -x '*.DS_Store')

echo "Created $dist_dir/$skill_name.zip"
