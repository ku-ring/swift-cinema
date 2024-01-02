/**
 - Important: 이 파일의 소스코드를 수정하지 마십시오

 - Note: See the `License.txt` file for this sample’s licensing information.
 */

@_spi(Mocks) import Models
import SwiftUI

struct MovieRow: View {
    let movie: Movie
    
    var body: some View {
        HStack {
            Text("#\(movie.rank)")
                .bold()
                .foregroundStyle(Color.secondary)
            
            Text(movie.name)
        }
    }
}

#Preview {
    MovieRow(movie: Movie.kuflix)
}
