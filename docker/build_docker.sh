#!/bin/bash
cp ../target/hospital-drug-0.0.1.jar app.jar
cp ~/IdeaProjects/DongTai-agent-java/release/dongtai-agent.jar iast/dongtai-agent.jar
cp ~/IdeaProjects/DongTai-agent-java/release/lib/*.jar iast/

docker build -t "hospital-drug:jdk-1.8" .
docker stop hospital-drug || true
docker rm hospital-drug || true
docker run --name hospital-drug -p 8086:8086 "hospital-drug:jdk-1.8"