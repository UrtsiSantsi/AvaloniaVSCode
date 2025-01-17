#!/bin/bash

cd ./src/vscode-avalonia
yarn install

cd ./src/vscode-avalonia/webview-ui
npm i

cd ..

echo $PWD

# Build Avalonia LSP
dotnet build $PWD/AvaloniaLSP/AvaloniaLanguageServer/AvaloniaLanguageServer.csproj /property:GenerateFullPaths=true --output $PWD/vscode-avalonia/avaloniaServer

# Build  Solution parser
dotnet build $PWD/SolutionParser/SolutionParser.csproj /property:GenerateFullPaths=true --output $PWD/vscode-avalonia/solutionParserTool

echo 🎉 Great success