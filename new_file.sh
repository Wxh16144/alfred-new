#!/bin/bash 

if [[ -z "${out_dir}" ]]; then
  out_dir="$HOME/Desktop"
fi

out_path="${out_dir}${filename}"

if [[ -f "${out_path}" ]]; then
  echo "${filename} already exists"
else

  out_path_dir="$(dirname "${out_path}")"
  if [[ ! -d "${out_path_dir}" ]]; then
    mkdir -p "${out_path_dir}"
    echo "${out_path_dir} not exists, created."
  fi
  
  if [[ -f "${filename}" ]]; then
    echo "${filename} already exists"
  else
    touch "${out_path}"
    echo "${filename} created in ${out_dir}"
  fi
fi

open "${out_dir}"