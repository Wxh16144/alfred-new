#!/bin/bash 

if [[ -z "${out_dir}" ]]; then
  out_dir="$HOME/Desktop"
fi

out_path="${out_dir}${filename}"

if [[ -d "${out_path}" ]]; then
  echo "${filename} already exists"
else
  mkdir -p "${out_path}"
  echo "${filename} created in ${out_dir}"
fi

open "${out_dir}"