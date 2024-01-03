#!/bin/bash

TARGET_FILES=("swift-cinema/Sources/CinemaUI/MovieList.swift" "swift-cinema/Sources/CinemaUI/MovieRow.swift" "swift-cinema/Sources/CinemaUI/SubmissionDetailView.swift" "swift-cinema/Sources/Fetcher/Responses.swift" "swift-cinema/Tests/FetcherTests/MovieCollectionFetcherTests.swift" ".github/workflows/REVIEW_CODE.yml")

COMMIT_COUNT=$(git rev-list --count HEAD)

if [ $COMMIT_COUNT -gt 1 ]; then
  CHANGED_FILES=$(git diff --name-only -W --root main)

  for TARGET_FILE in "${TARGET_FILES[@]}"; do
    if [[ $CHANGED_FILES == *"$TARGET_FILE"* ]]; then
      echo "에러! 수정하면 안되는 파일에 수정이 발생했습니다. 파일경로: $TARGET_FILE"
      exit 1
    fi
  done
fi

echo "테스트가 가능합니다."
