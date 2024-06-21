//
//  About.swift
//  Paw Swipe
//
//  Created by Rishaan Jain on 6/20/24.
//

import SwiftUI

struct About: View {
    var body: some View {
        Text("Created and Curated by Rishaan")
            .font(.system(size: 20, weight: .bold))
        Spacer()
            .frame(height: 50)
        Link("@RishaanJ on GitHub", destination: URL(string: "https://github.com/RishaanJ")!)
            .font(.system(size: 35, weight: .bold))
        Spacer()
            .frame(width: 40, height: 50)
        Link("rishaan's projects on youtube", destination: URL(string: "https://www.youtube.com/channel/UCxfzoe0mTZjqQixyMW8xZHA")!)
        
            .font(.system(size: 35, weight: .bold))
    }
}

#Preview {
    About()
}
