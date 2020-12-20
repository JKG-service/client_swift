//
//  ContentView.swift
//  JKG_newLimited
//
//  Created by 김정연 on 2020/12/14.
//

import SwiftUI

struct ContentView: View {
    @State var user_email: String = ""
    @State var user_pwd: String = ""
    var body: some View {
        VStack {
            Image(systemName: "circle") // logo image
                .resizable()
                .clipShape(Circle())
                .frame(width: 50, height: 50)
                .padding(.bottom, 50.0)
            Text ("Email")
                .bold()
                .font(.system(size: 15))
            TextField("Enter your Id", text: $user_email)
                .keyboardType(.default)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Text ("Password")
                .bold()
                .font(.system(size: 15))
            TextField("Enter your Password", text: $user_pwd)
                .keyboardType(.default)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: {
                }) {
                    Text("Login")
                        .foregroundColor(.white)
                        .font(.system(size: 15))
                        .bold()
                       
            }
            .frame(width: 370, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(
                LinearGradient(
                            gradient: Gradient(colors: [.black, .gray]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
            )
            .cornerRadius(10)
        }
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
