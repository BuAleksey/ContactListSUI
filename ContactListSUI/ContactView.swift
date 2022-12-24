//
//  ContactView.swift
//  ContactListSUI
//
//  Created by Buba on 24.12.2022.
//

import SwiftUI

struct ContactView: View {
    let image: String
    let text: String
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: image)
                .foregroundColor(.blue)
            Text(text)
        }
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView(image: "phone", text: "89037821216")
    }
}
