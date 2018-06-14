#!/bin/bash

find . -name "*-sketch" -type d |while read d; do
  # Zip core Sketch data
  cd $d/ && zip ${d%-sketch}.zip -r .

  # Copy .zip to .sketch
  cp ${d%-sketch}.zip ../${d%-sketch}.sketch

  # Remove zip
  rm -Rf ${d%-sketch}.zip && cd ..
done