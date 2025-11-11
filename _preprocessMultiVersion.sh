#!/bin/bash

versions=("4.0.1" "5.0.0" )

for version in "${versions[@]}"; do
    if [ "$version" = "4.0.1" ]; then
        context_version="R4"
        build_dir="."  # R4 goes to root directory
    elif [ "$version" = "5.0.0" ]; then
        context_version="R5"
        build_dir="igs/mpd-r5"
    fi

    echo remove all files from $build_dir
    if [ "$context_version" = "R4" ]; then
        # For R4, clean specific files in root directory, but preserve source files
        rm -f sushi-config.yaml
        rm -f README.md
        rm -f publication-request.json
        rm -f LICENSE
        rm -f ig.ini
        rm -f _genonce.sh
        rm -f _updatePublisher.sh
        rm -rf input/
        rm -rf ig-template/
    else
        # For R5, clean the build directory as before
        find $build_dir -maxdepth 1 -type f -exec rm -f {} +
        rm -Rf $build_dir/input
        rm -Rf $build_dir/ig-template
    fi
    
    echo copy all files to  $build_dir
    if [ "$context_version" = "R4" ]; then
        # For R4, copy to root directory
        find ig-src/ -maxdepth 1 -type f -exec cp {} . \;
        cp -R ig-src/input .
        cp -R ig-src/ig-template .
    else
        # For R5, copy to build directory as before
        find ig-src/ -maxdepth 1 -type f -exec cp {} $build_dir \;
        cp -R ig-src/input $build_dir 
        cp -R ig-src/ig-template $build_dir 
    fi 
    
    # Process all liquid files
    echo Processing liquid files
    if [ "$context_version" = "R4" ]; then
        # For R4, process liquid files in root directory, but exclude source files
        find . -type f -name "*.liquid.*" -not -path "./ig-src/*" -not -path "./igs/*" | while read file; do
            if [ -f "$file" ]; then
                file_path=${file}
                clean_file_path=${file_path/\.liquid\./\.}
                echo "- $file_path --> $clean_file_path"

                # Process liquid template and inline version tags
                content=$(npx --yes liquidjs -t @"$file" --context @"context-${context_version}.json")
                echo "$content" > "$clean_file_path"
                rm -f $file
            fi
        done
    else
        # For R5, process liquid files in build directory
        find $build_dir -type f -name "*.liquid.*" | while read file; do
            if [ -f "$file" ]; then
                file_path=${file}
                clean_file_path=${file_path/\.liquid\./\.}
                echo "- $file_path --> $clean_file_path"

                # Process liquid template and inline version tags
                content=$(npx --yes liquidjs -t @"$file" --context @"context-${context_version}.json")
                echo "$content" > "$clean_file_path"
                rm -f $file
            fi
        done
    fi
done
