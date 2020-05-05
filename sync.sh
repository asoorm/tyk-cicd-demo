#!/bin/bash

tyk-sync sync --dashboard="${DASH_URL}" --secret="${DASH_SECRET}" --path="./dump"
