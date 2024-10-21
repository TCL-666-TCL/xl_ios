//
//  HealthDataView.swift
//  xunliao
//
//  Created by  mac on 2024/10/21.
//

import SwiftUI

struct HealthDataView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                HStack{
                    Text("10/08,周二")
                    Spacer()
                }
                HStack {
                    Text("今天")
                    Spacer()
                }
                .padding(.top,10)
                
                ZStack(alignment: .bottomLeading){
                    VStack {
                        HStack{
                            Text("心率").font(.title3)
                            Spacer()
                            Text("90").font(.title3).foregroundColor(.pink)
                            Text("BPM")
                        }
                        .padding(.leading,40)
                        HStack{
                            Text("2024/09/29").foregroundColor(.gray)
                            Spacer()
                            Text("心率").foregroundColor(.gray)
                        }
                        .padding(.top,10)
                        .padding(.leading,40)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    
                    Image("heart_rate")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 64, height: 64,alignment: .center)
                        .aspectRatio(contentMode: .fit)
                        .offset(x: -30, y: -20)
                }
                .padding(.leading,30)
                
                ZStack(alignment: .bottomLeading){
                    VStack {
                        HStack{
                            Text("血压").font(.title3)
                            Spacer()
                            Text("128/80").font(.title3).foregroundColor(.pink)
                            Text("mmHg")
                        }
                        .padding(.leading,40)
                        HStack{
                            Text("2024/09/29").foregroundColor(.gray)
                            Spacer()
                            Text("血压").foregroundColor(.gray)
                        }
                        .padding(.top,10)
                        .padding(.leading,40)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    
                    Image("blood_pressure")
                        .resizable()
                        .frame(width: 64, height: 64)
                        .aspectRatio(contentMode: .fill)
                        .offset(x: -30, y: -20)
                }
                .padding(.leading,30)
                
                ZStack(alignment: .bottomLeading){
                    VStack {
                        HStack{
                            Text("血糖").font(.title3)
                            Spacer()
                            Text("5.1").font(.title3).foregroundColor(.pink)
                            Text("mmol/L")
                        }
                        .padding(.leading,40)
                        HStack{
                            Text("2024/09/29").foregroundColor(.gray)
                            Spacer()
                            Text("血糖").foregroundColor(.gray)
                        }
                        .padding(.top,10)
                        .padding(.leading,40)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    
                    Image("blood_sugar")
                        .resizable()
                        .frame(width: 64, height: 64)
                        .aspectRatio(contentMode: .fill)
                        .offset(x: -30, y: -20)
                }
                .padding(.leading,30)
                
                ZStack(alignment: .bottomLeading){
                    VStack {
                        HStack{
                            Text("血氧饱和度").font(.title3)
                            Spacer()
                            Text("97").font(.title3).foregroundColor(.pink)
                            Text("%")
                        }
                        .padding(.leading,40)
                        HStack{
                            Text("2024/09/29").foregroundColor(.gray)
                            Spacer()
                            Text("96～99%").foregroundColor(.gray)
                        }
                        .padding(.top,10)
                        .padding(.leading,40)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    
                    Image("blood_oxygen")
                        .resizable()
                        .frame(width: 64, height: 64)
                        .aspectRatio(contentMode: .fill)
                        .offset(x: -30, y: -20)
                }
                .padding(.leading,30)
                
                ZStack(alignment: .bottomLeading){
                    VStack {
                        HStack{
                            Text("体温").font(.title3)
                            Spacer()
                            Text("37.1").font(.title3).foregroundColor(.pink)
                            Text("°C")
                        }
                        .padding(.leading,40)
                        HStack{
                            Text("2024/09/29").foregroundColor(.gray)
                            Spacer()
                            Text("体温").foregroundColor(.gray)
                        }
                        .padding(.top,10)
                        .padding(.leading,40)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    
                    Image("temperature")
                        .resizable()
                        .frame(width: 64, height: 64)
                        .aspectRatio(contentMode: .fill)
                        .offset(x: -30, y: -20)
                }
                .padding(.leading,30)
                
                ZStack(alignment: .bottomLeading){
                    VStack {
                        HStack{
                            Text("步数").font(.title3)
                            Spacer()
                            Text("12880").font(.title3).foregroundColor(.pink)
                            Text("步")
                        }
                        .padding(.leading,40)
                        HStack{
                            Text("2024/09/29").foregroundColor(.gray)
                            Spacer()
                            Text("血压").foregroundColor(.gray)
                        }
                        .padding(.top,10)
                        .padding(.leading,40)
                        Divider().padding(.leading,40)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    
                    Image("step")
                        .resizable()
                        .frame(width: 64, height: 64)
                        .aspectRatio(contentMode: .fill)
                        .offset(x: -30, y: -20)
                }
                .padding(.leading,30)
                
                ZStack(alignment: .bottomLeading){
                    VStack {
                        HStack{
                            Text("睡眠").font(.title3)
                            Spacer()
                            Text("8.1").font(.title3).foregroundColor(.pink)
                            Text("h")
                        }
                        .padding(.leading,40)
                        HStack{
                            Text("2024/09/29").foregroundColor(.gray)
                            Spacer()
                            Text("睡眠").foregroundColor(.gray)
                        }
                        .padding(.top,10)
                        .padding(.leading,40)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    
                    Image("sleep")
                        .resizable()
                        .frame(width: 64, height: 64)
                        .aspectRatio(contentMode: .fill)
                        .offset(x: -30, y: -20)
                }
                .padding(.leading,30)
                Spacer()
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .navigationBarTitle(Text("健康"), displayMode: .inline)
            .navigationBarItems(trailing: Image(systemName: "text.bubble"))
            
        }
    }
}

struct HealthDataView_Previews: PreviewProvider {
    static var previews: some View {
        HealthDataView()
    }
}
