//
//  ContentView.swift
//  Tiktok
//
//  Created by Selcuk Baki on 15/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home:View {
    @State var indexNumber = 0
    
    var body : some View {
        ZStack {
            VStack {
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
                                Image("message.fill")
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
                        
                    } label: {
                        Image("home")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(indexNumber == 0 ? .white : Color.white.opacity(0.35))
                            .padding()
                    }
                    Spacer(minLength: 0)
                    Button {
                        
                    } label: {
                        Image("search")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(indexNumber == 1 ? .white : Color.white.opacity(0.35))
                            .padding()
                    }
                    
                    Spacer(minLength: 0)
                    Button {
                        
                    } label: {
                        Image("upload")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(indexNumber == 3 ? .white : Color.white.opacity(0.35))
                            .padding()
                    }
                    
                    Spacer(minLength: 0)
                    Button {
                        
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
