#!/bin/bash

home_dir="$HOME"

subdirs=$(find "$home_dir" -mindepth 1 -maxdepth 1 -type d)
subdir_count=$(echo "$subdirs" | wc -l)

RED='\033[0;31m'   
GREEN='\033[0;32m'  
NC='\033[0m'        

echo -e "У моєму домашньому каталозі ${RED}${subdir_count}${NC} підкаталогів: ${GREEN}${subdirs// /, }${NC}"
