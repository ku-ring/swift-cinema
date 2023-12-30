/**
 - Note: See the `License.txt` file for this sample’s licensing information.
 */

import Models
import SwiftUI

@Observable
public class MovieCollectionFetcher {
    /// 영화 순위 별로 나열된 영화 정보
    public var movies: [Movie] = [] {
        /// - Important: 아래 `willSet` 구문을 수정하거나 제거하지 마십시오
        willSet {
            if !Thread.isMainThread {
                fatalError("`movies` 가 Main thread에서 접근되지 않았습니다.")
            }
        }
    }
    
    private let urlString = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20120101"
    
    public enum FetcherError: Error {
        case badURL
        case badRequest
        case badJSON
    }
    
    /// API 통신을 통해 영화정보를 가져와서 ``movies`` 를 업데이트 합니다.
    public func fetchData() async throws {
        guard let url = URL(string: urlString) else {
            throw FetcherError.badURL
        }
        let urlRequest = URLRequest(url: url)
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { 
            throw FetcherError.badRequest
        }
        
        guard let decodedResponse = try? JSONDecoder().decode(BoxOfficeResponse.self, from: data) else {
            throw FetcherError.badJSON
        }

        movies = decodedResponse.boxOfficeResult.dailyBoxOfficeList
    }
    
    public init() { }
}
