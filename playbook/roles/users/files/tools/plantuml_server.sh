#! /bin/bash

# for vscode extention
# Plantuml:Render
#   --> PlantUMLServer
# Plantuml:Server
#   --> http://localhost:18080

docker run -d -p 18080:8080 plantuml/plantuml-server:jetty

