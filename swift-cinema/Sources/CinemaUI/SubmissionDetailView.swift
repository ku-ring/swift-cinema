/**
 - Important: 이 파일의 소스코드를 수정하지 마십시오

 - Note: See the `License.txt` file for this sample’s licensing information.
 */

import SwiftUI

struct SubmissionDetailView: View {
    let needsAlternative: Bool
    
    var body: some View {
        Form {
            Section {
                Text(
                    needsAlternative
                    ? "학우님의 수정으로 앱이 정상적으로 영화 목록을 가져오게 되었습니다!"
                    : "학우님의 수정으로 앱이 올바르게 작동하게 되었습니다!"
                )
                    .font(.headline)
                
                Text("수정하신 코드를 **push** 한 후에 학우님의 레포지토리에 **x-0o0** 계정을 **collaborator** 로 추가해주세요")
                
                Text("그런 다음 [kuring.korea@gmail.com](mailto:kuring.korea@gmail.com) 으로 커피챗 안내를 받을 **연락처**를 알려주시면 추가적인 코드 검증 후 **커피챗** 안내를 도와드릴 예정입니다.")
                
                if needsAlternative {
                    Text("반드시 메일에 **실제 기기에서 돌릴 수 없는 이유**를 같이 전달해주셔야 합니다. 그렇지 않으면 코드 검증 과정에서 실패가 발생해 커피챗 안내가 가지 않습니다.")
                }
                
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
    NavigationStack {
        SubmissionDetailView(
            needsAlternative: false
        )
    }
}
