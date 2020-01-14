#! /bin/bash

~/bin/gitcommit.sh

echo "Generating Nuxt Files..."
npm run generate

echo "Deploying to Firebase"
firebase deploy