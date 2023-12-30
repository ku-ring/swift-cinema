/**
 - Note: See the `License.txt` file for this sample’s licensing information.
 */

import Foundation

/// 영화 정보
public struct Movie: Identifiable, Decodable {
    /// 영화 코드
    public var id: String { self.code }
    /// 영화 이름
    public let name: String
    /// 영화 순위
    public let rank: String
    
    private let code: String
}

extension Movie {
    public static var kuflix = Movie(
        name: "Kuflix",
        rank: Int.random(in: 1...10).description,
        code: UUID().uuidString
    )
}
