#!/bin/bash

tyk-sync dump --dashboard="${DASH_URL}" --secret="${DASH_SECRET}" --target="./dump"
