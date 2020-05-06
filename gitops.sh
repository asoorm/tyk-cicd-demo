#!/bin/bash

dump() {
  "${TYK_SYNC_PATH}"tyk-sync dump --dashboard="${DASH_URL}" --secret="${DASH_SECRET}" --target="./dump"
}

publish_test() {
  "${TYK_SYNC_PATH}"tyk-sync publish --dashboard="${DASH_URL}" --secret="${DASH_SECRET}" --path="./dump" --test
}

publish() {
  "${TYK_SYNC_PATH}"tyk-sync publish --dashboard="${DASH_URL}" --secret="${DASH_SECRET}" --path="./dump" --test
}

sync() {
  "${TYK_SYNC_PATH}"tyk-sync sync --dashboard="${DASH_URL}" --secret="${DASH_SECRET}" --path="./dump"
}

sync_test() {
  "${TYK_SYNC_PATH}"tyk-sync sync --dashboard="${DASH_URL}" --secret="${DASH_SECRET}" --path="./dump"
}

case $1 in
dump)
  echo "pulling configurations from src dashboard"
  dump
  ;;
publish_test)
  echo "publishing (dry run)"
  publish_test
  ;;
publish)
  echo "publishing"
  publish
  ;;
sync)
  echo "syncing src with a remote"
  sync
  ;;
sync_test)
  echo "syncing src with a remote (dry run)"
  sync_test
  ;;
esac
