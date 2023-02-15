#!/usr/bin/bash

  git add .
    echo "Insert your commit message >"
    read -r commit
    git commit -m commit
    echo "Pull or Push >"
    read -r answer
    if [[ $answer == "pull" ]];
    then
        git pull
        echo "Done with pulling, will you like to push your files (y/n)?"
        read -r pushing
        if [[ $pushing == "y" ]];
        then
            git push
        else
            exit;
        fi
    elif [[ $answer == "push" ]];
    then
        git push
    fi
