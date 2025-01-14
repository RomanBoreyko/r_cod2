# Download the dataset
!wget https://storage.googleapis.com/tensorflow-1-public/course3/sarcasm.json

import json

# unpack Load the JSON file
with open("./sarcasm.json", 'r') as f:
    datastore = json.load(f)