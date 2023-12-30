/**
 - Important: 이 파일의 소스코드를 수정하지 마십시오

 - Note: See the `License.txt` file for this sample’s licensing information.
 */

import XCTest
@testable import Models
@testable import Fetcher

final class MovieCollectionFetcherTests: XCTestCase {
    func test_fetchMovies() async throws {
        let expectation = XCTestExpectation()
        expectation.expectedFulfillmentCount = 1
        let fetcher = MovieCollectionFetcher()
        try await fetcher.fetchData()
        
        Task { @MainActor in
            XCTAssertFalse(fetcher.movies.isEmpty, "가져온 영화 순위 목록이 없습니다.")
            expectation.fulfill()
        }
    }
}
