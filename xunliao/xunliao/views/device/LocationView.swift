//
//  LocationView.swift
//  xunliao
//
//  Created by  mac on 2024/10/21.
//

import SwiftUI

struct LocationView: View {
    var body: some View {
        NavigationView {
            ZStack(alignment: .topLeading) {
                VStack(){
                    HStack {
                        Text("用户名称")
                            .font(.title3)
                            .padding(.top,20)
                        Spacer()
                    }
                    .padding()
          
                    HStack(spacing:12){
                        Image(systemName: "swift").frame(width: 24)
                        Divider().frame(width: .infinity, height: 40)
                        Text("广东省广州市番禺区长沙路29号9栋9201").frame(maxWidth:.infinity,maxHeight:50    )
                        Divider().frame(width: .infinity, height: 40)
                        VStack(spacing:20){
                            Image(systemName: "swift").frame(width: 24)
                            Text("更新位置")
                        }
                    }
                    .padding()
                    
                }
                .background(Color.white)
                .cornerRadius(10)
                .padding(.all,20)
                .shadow(color: Color.black.opacity(0.3), radius: 4, x: 0, y: 0)
                .navigationBarTitle(Text("定位"), displayMode: .inline)
                .navigationBarItems(trailing: Image(systemName: "text.bubble"))
                
                Image(systemName: "photo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .offset(x: 40, y: 0)
            }
        }
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
