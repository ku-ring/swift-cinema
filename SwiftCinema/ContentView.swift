/**
 - Important: 빌드가 되고 나면 반드시 실제 기기에서 실행시켜 보십시오

 - Note: See the `License.txt` file for this sample’s licensing information.
 */

import Fetcher
import SwiftUI
import CinemaUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            MovieList()
        }
    }
}

#Preview {
    ContentView()
        .environment(MovieCollectionFetcher())
}
