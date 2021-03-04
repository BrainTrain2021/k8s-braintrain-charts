#!/bin/sh
echo "Packaging chart: $1"
helm package $1 --destination=docs
echo "Updating index.yaml"
helm repo index docs
echo "Finished packaging chart!"
