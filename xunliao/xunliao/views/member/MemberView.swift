//
//  MemberView.swift
//  xunliao
//
//  Created by  mac on 2024/10/21.
//

import SwiftUI
import URLImage

struct MemberView: View {
    let stepNumber:String = NSLocalizedString("stepNumber", comment: "step number")
    let mine:String = NSLocalizedString("mine", comment: "mine")
    
    var body: some View {
        NavigationView {
            VStack {
                VStack(spacing:20){
                    VStack{
                        HStack(spacing:20){
                            if let imageurl = URL(string: header){
                                URLImage(imageurl){ image in
                                    image.resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width:80,height:80,alignment:.center)
                                        .cornerRadius(40)
                                }
                            }
                            VStack(alignment: .leading, spacing: 8) {
                                Text("我是大帅哥").font(.headline)
                                Text("3578787878687").font(.subheadline)
                                Image(systemName:"")
                            }
                            Spacer()
                        }
                        .padding()
                        
                        
                        Text(stepNumber)
                        Text("1080").font(.title).padding()
                    }
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.3), radius: 4, x: 0, y: 0)
                    
                }
                .padding(.top)
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom,0)
                
                List {
                    
                    Section {
                        NavigationLink(
                            destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                            label: {
                                HStack(spacing: 20) {
                                    Image(systemName: "person.2.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width:32,height:32,alignment:.center)
                                    Text("绑定成员")
                                }
                            })
                        
                            NavigationLink(
                                destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                                label: {
                                    HStack(spacing: 20) {
                                        Image(systemName: "applewatch")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width:32,height:32,alignment:.center)
                                        Text("手表申请")
                                    }
                                })
                    }.padding()
                    
                    Section {
                        ForEach(operateList) { item in
                            HStack(spacing:20) {
                                if let imageUrl = URL(string: item.image) {
                                    URLImage(imageUrl) { image in
                                        image.resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width:32,height:32,alignment:.center)
                                            .cornerRadius(16)
                                    }
                                }
                                Text(item.name)
                                Spacer()
                                Image(systemName: "chevron.right").foregroundColor(.gray)
                            }
                            .padding()
                        }
                    }
                    
                    Section {
                        NavigationLink(
                            destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                            label: {
                                HStack(spacing: 20) {
                                    Image(systemName: "gearshape.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width:32,height:32,alignment:.center)
                                    Text("APP设置")
                                }
                            })
                    }.padding()
                    
                    Section {
                        NavigationLink(
                            destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                            label: {
                                HStack(spacing: 20) {
                                    Image(systemName: "link.circle.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width:32,height:32,alignment:.center)
                                        .foregroundColor(.yellow)
                                    Text("绑定与解绑")
                                }
                            })
                    }.padding()
                    
                }
                .listStyle(InsetGroupedListStyle())
            
            }
            .background(Color.gray.opacity(0.1))
            .navigationBarTitle(Text(mine), displayMode: .inline)
        }
    }
}

struct operate: Identifiable {
    
    var id = UUID()
    var name: String
    var image: String
    
}

let operateList = [
    operate(name: "绑定成员", image: "https://xunliao-1-1257941115.cos.ap-nanjing.myqcloud.com/store_13/2024-04-27/1714190941982.png"),
    operate(name: "鸡你太美", image: "https://xunliao-1-1257941115.cos.ap-nanjing.myqcloud.com/store_/2022-12-23/1671782078895.png")
]

let header: String = "https://xunliao-1-1257941115.cos.ap-nanjing.myqcloud.com/store_/2022-12-23/1671782078895.png"

struct MemberView_Previews: PreviewProvider {
    static var previews: some View {
        MemberView()
    }
}
