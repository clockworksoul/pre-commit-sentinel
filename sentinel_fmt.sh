#!/usr/bin/env bash
set -eux

# for file_with_path in "$@"; do
#   file_with_path="${file_with_path// /__REPLACED__SPACE__}"

#   paths[index]=$(dirname "$file_with_path")

#   let "index+=1"
# done

# for path_uniq in $(echo "${paths[*]}" | tr ' ' '\n' | sort -u); do
#   path_uniq="${path_uniq//__REPLACED__SPACE__/ }"

#   pushd "$path_uniq" > /dev/null
#   sentinel fmt *.sentinel
#   popd > /dev/null
# done

# # sentinel.tfvars are excluded by `sentinel fmt`
# for tfvars_file in "${tfvars_files[@]}"; do
#   tfvars_file="${tfvars_file//__REPLACED__SPACE__/ }"

#   echo $tfvars_file"
#   sentinel fmt "$tfvars_file"
# done

for f in "$@"; do
    sentinel fmt "$f" 2>&1
done
