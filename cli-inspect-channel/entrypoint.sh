#!/bin/sh -l

/replicated $@ > channel.json

CHANNEL_ID=$(cat channel.json | jq -r '.id')
CHANNEL_SLUG=$(cat channel.json | jq -r '.slug')
RELEASE_SEQUENCE=$(cat channel.json | jq -r '.releaseSequence')
echo "channel-id=$CHANNEL_ID" >> $GITHUB_OUTPUT
echo "channel-slug=$CHANNEL_SLUG" >> $GITHUB_OUTPUT
echo "release-sequence=$RELEASE_SEQUENCE" >> $GITHUB_OUTPUT
