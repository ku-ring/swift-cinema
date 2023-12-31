/**
 - Important: 이 파일의 소스코드를 수정하지 마십시오

 - Note: See the `License.txt` file for this sample’s licensing information.
 */

import SwiftUI

struct SubmissionDetailView: View {
    var body: some View {
        Form {
            Section {
                Text("학우님의 수정으로 앱이 작동하게 되었습니다!")
                    .font(.headline)
                
                Text("[kuring.korea@gmail.com](mailto:kuring.korea@gmail.com)으로 **수정하신 코드를 포함한 전체 폴더**와 커피챗 안내를 받을 **연락처**를 알려주시면 추가적인 코드 검증 후 **커피챗** 안내를 도와드릴 예정입니다.")
                
                Text("**쿠링 미션에 참여해주셔서 감사합니다**")
            } footer: {
                Text("COPYRIGHT © 2024 쿠링. ALL RIGHTS RESERVED.")
            }
            .listRowSeparator(.hidden)
        }
        .navigationTitle("🎉 축하합니다!")
    }
}

#Preview {
    NavigationView {
        SubmissionDetailView()
    }
}
