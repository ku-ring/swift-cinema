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
                
                Text("수정하신 코드를 **push** 한 후에 **PR 리뷰**를 요청하여 쿠링 팀에 알려주세요!")
                
                Text("PR 리뷰를 요청하신 다음 [kuring.korea@gmail.com](mailto:kuring.korea@gmail.com) 으로 커피챗 안내를 받을 **연락처**를 알려주시면 추가적인 코드 검증 후 **커피챗** 안내를 도와드릴 예정입니다.")
                
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
