//
//  MicroChatView.swift
//  xunliao
//
//  Created by  mac on 2024/10/21.
//

import SwiftUI

struct MicroChatView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                HStack{
                    NavigationLink(
                        destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                        label: {
                            HStack(spacing: 20) {
                                Image(systemName: "video.circle.fill")
                                    .resizable()
                                    .frame(width: 32, height: 32, alignment: .center)
                                    .foregroundColor(.pink)
                                    .aspectRatio(contentMode: .fit)
                                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                    .padding(.leading,10)
                                Text("视频通话")
                                Spacer()
                                Image(systemName: "chevron.right")
                            }
                            .padding(20)
                        }
                    )
                }
                .background(Color.white)
                .cornerRadius(10)
                .padding(.top)
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom,0)
                
                VStack{
                    ForEach(userList) { item in
                        HStack{
                            Image(systemName: "person.fill")
                                .resizable()
                                .frame(width: 32, height: 32, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .aspectRatio(contentMode: .fit)
                                .padding(.leading,30)
                            
                            VStack(alignment: .leading){
                                HStack{
                                    Text(item.name)
                                    Spacer()
                                    Text(item.dateTime).font(.subheadline).foregroundColor(Color.gray)
                                }
                                Text(item.message).font(.subheadline).foregroundColor(Color.gray).padding(.top,1)
                            }
                            .padding()
                        }
                        .background(Color.white)
                        .cornerRadius(10)
                        .padding()
                    }
                }
                
                Spacer()
            }
            .background(Color.gray.opacity(0.1))
            .navigationBarTitle(Text("微聊"), displayMode: .inline)
            .navigationBarItems(trailing: Image(systemName: "text.bubble"))
            
            
        }
    }
}

struct user: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var message: String
    var dateTime: String
}

var userList = [
    user(name: "老八", image: "https://xunliao-1-1257941115.cos.ap-nanjing.myqcloud.com/store_/2022-12-23/1671782078895.png", message: "帅哥你好吗？", dateTime: "2024-09-30 09:38")
]

struct MicroChatView_Previews: PreviewProvider {
    static var previews: some View {
        MicroChatView()
    }
}
