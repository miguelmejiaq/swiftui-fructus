//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Miguel Angel Mejia Quiroga on 13/04/21.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - properties
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    // MARK: body
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 4)
            HStack{
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                else{
                    EmptyView()
                }
            }
        }
    }
}
// MARK: - preview
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Miguel Mejia")
                .previewLayout(.fixed(width: 275, height: 60))
                .padding()
            SettingsRowView(name: "Developer", linkLabel: "wikipedia", linkDestination: "wikipedia.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 275, height: 60))
                .padding()
        }
    }
}
