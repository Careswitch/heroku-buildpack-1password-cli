write_profile() {
  local bp_dir="$1"
  local build_dir="$2"
  mkdir -p $build_dir/.profile.d
  cp $bp_dir/profile/* $build_dir/.profile.d/
}

write_export() {
  local bp_dir="$1"
  local build_dir="$2"
  echo "export PATH=\"$build_dir/vendor/1password\"" > $bp_dir/export
}