#!/bin/bash
cd /home/kavia/workspace/code-generation/unified-issue-and-document-platform-171085-171095/frontend_webapp
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

