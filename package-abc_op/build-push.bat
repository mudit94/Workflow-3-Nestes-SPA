@echo off
SET QUAY_USERNAME=soumyadip
SET IMAGE_NAME=nested-demo
SET VERSION=1.0.0
docker login --username=$Env:quay_user --password=$Env:quay_token quay.io
docker build -t quay.io/%QUAY_USERNAME%/%IMAGE_NAME%:%VERSION% .
docker push quay.io/%QUAY_USERNAME%/%IMAGE_NAME%:%VERSION%
