//
//  InfoView.swift
//  DmitryCard
//
//  Created by Дмитрий Х on 28.09.22.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageView: String
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageView)
                    .foregroundColor(.green)
                Text(text)
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageView: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
