/**
 - Important: 이 파일의 소스코드를 수정하지 마십시오

 - Note: See the `License.txt` file for this sample’s licensing information.
 */

import Models
import Fetcher
import SwiftUI

public struct MovieList: View {
    @Environment(MovieCollectionFetcher.self) private var fetcher
    
    public var body: some View {
        List {
            Section {
                ForEach(fetcher.movies) { movie in
                    MovieRow(movie: movie)
                }
            }
            
            // 수정하지 마십시오
            Section {
                #if targetEnvironment(simulator)
                Text("실제 기기에서 돌리면 버튼이 나타납니다")
                #else
                NavigationLink("코드 제출 안내") {
                    SubmissionDetailView()
                }
                .disabled(fetcher.movies.isEmpty)
                #endif
            } footer: {
                Text("COPYRIGHT © 2024 쿠링. ALL RIGHTS RESERVED.")
            }
        }
        .task {
            // 수정하지 마십시오
            try? await fetcher.fetchData()
        }
        .navigationTitle("🍿 영화 순위")
    }
    
    public init() { }
}

#Preview {
    NavigationView {
        MovieList()
    }
    .environment(MovieCollectionFetcher())
}
