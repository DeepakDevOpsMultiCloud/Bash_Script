#!/bin/bash

# Variables
BUCKET_NAME="myfirstbuckerforbash"
FILE_PATH="/d/COURSE/QualityThoughts/PracticeNotes/Projects/S3_Upload/Deepak.jpg"
S3_KEY="s3://${BUCKET_NAME}/$(basename $FILE_PATH)"

# Check if file exists
if [ ! -f "$FILE_PATH" ]; then
    echo "File does not exist: $FILE_PATH"
    exit 1
fi

# Upload the file
aws s3 cp "$FILE_PATH" "$S3_KEY"

# Verify the upload
if [ $? -eq 0 ]; then
    echo "File successfully uploaded to $S3_KEY"
else
    echo "File upload failed"
    exit 1
fi

