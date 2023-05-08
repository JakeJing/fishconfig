#!/bin/bash

# Take care of symbolic links
cur_file=$(realpath "$1")

if [ -f "$cur_file" ]; then
  file_length=${#cur_file}
  file_name_with_attributes=$(lsattr -l "$cur_file")
  # Remove the file name that precedes the attributes
  attrs=${file_name_with_attributes:$file_length}
  # Remove leading whitespace. From here:
  # https://stackoverflow.com/questions/369758/how-to-trim-whitespace-from-a-bash-variable#3352015
  attrs="${attrs#"${attrs%%[![:space:]]*}"}"

  echo "$attrs"

elif [ -d "$cur_file" ]; then
  number_of_files_in_dir=$(ls -A -1 "$cur_file" | wc -l)
  echo "$number_of_files_in_dir"
fi