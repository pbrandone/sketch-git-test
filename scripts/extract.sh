#!/bin/bash
for f in ./*.sketch; do
  # Copy .sketch to .zip
  cp ${f%.sketch}.sketch ${f%.sketch}.zip

  # Unzip the file and delete
  unzip -o ${f%.sketch}.zip -d ${f%.sketch}-sketch/
  rm -Rf ${f%.sketch}.zip

  # Remove the preview file
  rm -Rf ${f%.sketch}-sketch/previews/
done