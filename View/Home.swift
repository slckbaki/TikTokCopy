//
//  Home.swift
//  Tiktok
//
//  Created by Selcuk Baki on 19/6/22.
//

import SwiftUI

struct Home:View {
    @State var indexNumber = 0
    @State var top = true
    
    var body : some View {
        ZStack {
            
            
            VStack {
                
                HStack(spacing: 15){
                    Button {
                        top.toggle()
                    } label: {
                        Text("Followers")
                    }.foregroundColor(self.top == false ? .white : Color.white.opacity(0.45))
                    
                    Button {
                        top.toggle()
                    } label: {
                        Text("For")
                            
                    }.foregroundColor(self.top == true ? .white : Color.white.opacity(0.45))

                    
                }.padding(.top, 50)
                
                Spacer()
                
                HStack {
                    Spacer()
                    VStack(spacing: 35){
                        
                        Button {
                            
                        } label: {
                            Image("pic")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 55, height: 55)
                                .clipShape(Circle())
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "hand.thumbsup")
                                .font(.title)
                                .foregroundColor(.white)
                        }
                        
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "message.fill")
                                    .font(.title)
                                .foregroundColor(.white)
                                Text("1542")
                                    .foregroundColor(.white)
                            }
                        }

                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "arrowshape.turn.up.right.fill")
                                    .font(.title)
                                .foregroundColor(.white)
                                Text("Share")
                                    .foregroundColor(.white)
                            }
                        }


                        
                    }
                    .padding(.bottom, 55)
                    .padding(.trailing)
                }
                
                HStack(spacing: 0) {
                    Button {
                        self.indexNumber = 0
                        
                    } label: {
                        Image("home")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(indexNumber == 0 ? .white : Color.white.opacity(0.35))
                            .padding()
                    }
                    Spacer(minLength: 0)
                    Button {
                        self.indexNumber = 1
                    } label: {
                        Image("search")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(indexNumber == 1 ? .white : Color.white.opacity(0.35))
                            .padding()
                    }
                    
                    Spacer(minLength: 0)
                    Button {
                        self.indexNumber = 3
                    } label: {
                        Image("upload")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(indexNumber == 3 ? .white : Color.white.opacity(0.35))
                            .padding()
                    }
                    
                    Spacer(minLength: 0)
                    Button {
                        self.indexNumber = 2
                    } label: {
                        Image("comment")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(indexNumber == 2 ? .white : Color.white.opacity(0.35))
                            .padding()
                    }
                    
                    


                }
            }
            .padding()
        }.edgesIgnoringSafeArea(.all)
    }
}
