#!/bin/sh -l

/replicated $@ > channel.json

CHANNEL_ID=$(cat channel.json | jq -r '.id')
RELEASE_SEQUENCE=$(cat channel.json | jq -r '.releaseSequence')
echo "channel-id=$CHANNEL_ID" >> $GITHUB_OUTPUT
echo "release-sequence=$RELEASE_SEQUENCE" >> $GITHUB_OUTPUT
