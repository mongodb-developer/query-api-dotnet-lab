#!/bin/bash

echo ✅ APT GET UPDATE
echo ✅ --------------
apt-get update -y

apt-get install python3.8

echo ✅ Install Jupyter notebook
echo ✅ ------------------------
# Install Jupyter notebook
apt-get install jupyter -y
apt-get clean packages

echo ✅ Install Dotnet kernel
echo ✅ ------------------------
# Dotnet Kernel
dotnet tool install -g Microsoft.dotnet-interactive --version 1.0.632301
dotnet dev-certs https --trust
dotnet interactive jupyter install
