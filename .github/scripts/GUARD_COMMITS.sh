#!/bin/bash

TARGET_FILES=("swift-cinema/Sources/CinemaUI/MovieList.swift" "swift-cinema/Sources/CinemaUI/MovieRow.swift" "swift-cinema/Sources/CinemaUI/SubmissionDetailView.swift" "swift-cinema/Sources/Fetcher/Responses.swift" "swift-cinema/Tests/FetcherTests/MovieCollectionFetcherTests.swift" ".github/workflows/REVIEW_CODE.yml")

FIRST_COMMIT=$(git rev-list --max-parents=0 HEAD)

CHANGED_FILES=$(git diff -w --name-only $FIRST_COMMIT HEAD)

MODIFIED_TARGET_FILES=()
for TARGET_FILE in "${TARGET_FILES[@]}"; do
  if [[ $CHANGED_FILES == *"$TARGET_FILE"* ]]; then
    MODIFIED_TARGET_FILES+=("$TARGET_FILE")
  fi
done

if [ ${#MODIFIED_TARGET_FILES[@]} -gt 0 ]; then
  for MODIFIED_FILE in "${MODIFIED_TARGET_FILES[@]}"; do
    echo "::warning file=$MODIFIED_FILE::올바르지 않은 수정이 발견되었습니다."
  done
fi

echo "커밋 가드 종료"
