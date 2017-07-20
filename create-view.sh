#!/bin/bash

# Создать view
# Первый аргумен - путь до папки с приложением
# Второй аргумен - имя view
pathToAppView="$1views/$2"
pathToReactFile="$pathToAppView/$2.js"
pathToReactServerFile="$pathToAppView/$2.server.js"

mkdir $pathToAppView
touch $pathToReactFile
touch $pathToReactServerFile

./template-client-js.sh > $pathToReactFile
./template-server-js.sh > $pathToReactServerFile
