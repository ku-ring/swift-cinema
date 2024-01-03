#!/bin/bash

TARGET_FILES=("swift-cinema/Sources/CinemaUI/MovieList.swift" "swift-cinema/Sources/CinemaUI/MovieRow.swift" "swift-cinema/Sources/CinemaUI/SubmissionDetailView.swift" "swift-cinema/Sources/Fetcher/Responses.swift" "swift-cinema/Tests/FetcherTests/MovieCollectionFetcherTests.swift" ".github/workflows/REVIEW_CODE.yml")

FIRST_COMMIT=$(git rev-list --max-parents=0 HEAD)

CHANGED_FILES=$(git diff --name-only -W $FIRST_COMMIT HEAD)

MODIFIED_TARGET_FILES=()
for TARGET_FILE in "${TARGET_FILES[@]}"; do
  if [[ $CHANGED_FILES == *"$TARGET_FILE"* ]]; then
    MODIFIED_TARGET_FILES+=("$TARGET_FILE")
  fi
done

if [ ${#MODIFIED_TARGET_FILES[@]} -gt 0 ]; then
      echo "에러! 수정하면 안되는 파일에 수정이 발생했습니다. 파일경로: $TARGET_FILE"
  for MODIFIED_FILE in "${MODIFIED_TARGET_FILES[@]}"; do
    echo "- $MODIFIED_FILE"
  done
  exit 1
fi

echo "테스트가 가능합니다."
