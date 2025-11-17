#!/bin/bash
set -e

CHALL_NAME="jumping-jacks"

mkdir -p /handout/$CHALL_NAME
cp /opt/main.c /handout/$CHALL_NAME/
cp /opt/chall /handout/$CHALL_NAME/

socat -T30 TCP-LISTEN:4444,reuseaddr,fork EXEC:/opt/chall
