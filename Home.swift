//
//  ContentView.swift
//  NumberGuessingGame
//
//  Created by Md. Masum  on 31/1/22.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image("background").ignoresSafeArea()
                VStack{
                    Spacer()
                    Image("number-blocks")
                    
                    Text("Number Guessing Game")
                        .multilineTextAlignment(.center)
                        .padding().font(.system(size: 35))
                        .navigationTitle("Home").foregroundColor(.white)
                    //Spacer()
                    Text("Please choose your Level: ").bold().foregroundColor(.white)
                    
                    //easy level btn
                    NavigationLink (destination: Easy(),
                    label: {
                        Text("Easy").bold().frame(width: 210, height: 40).background(Color.green).foregroundColor(Color.white).cornerRadius(25)
                    })
                    //medium level btn
                    NavigationLink (destination: Medium(),
                    label: {
                        Text("Medium").bold().frame(width: 210, height: 40).background(Color.blue).foregroundColor(Color.white).cornerRadius(25)
                    })
                    //hard level btn
                    NavigationLink (destination: Hard(),
                    label: {
                        Text("Hard").bold().frame(width: 210, height: 40).background(Color.red).foregroundColor(.white).cornerRadius(25)
                    })
                    Spacer()
                }
            }
            
        }
        
    }
}

struct Easy: View {
    @State var num = ""
    @State var guess_num = 0
    @State var rand = 0
    @State var point = 0
    var body: some View {
        ZStack{
            Image("background").ignoresSafeArea()
            VStack{
                
                Image("number-blocks")
                Text("Number Guessing Game").bold()
                    .navigationTitle("Easy").font(.system(size: 23))
                
                TextField("Please Enter A Number: ", text: $num)
                                .keyboardType(.decimalPad)
                                .padding(15)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 100)
                                        .stroke(Color.white, lineWidth: 2)
                                )
                                .padding().frame(width: 290, height: 50).foregroundColor(.white)
                HStack{
                    Button("Run"){
                        guess_num = Int(num) ?? 0
                        rand = Int.random(in: 1...25)
                        if(guess_num == rand){
                            point += 10
                        }
                    }.padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                    
                    Button(action: {
                        num = ""
                        guess_num = 0
                        rand = 0
                    }, label: {
                        Image(systemName: "arrow.2.circlepath.circle.fill").resizable().frame(width: 20, height: 20).foregroundColor(.white).padding().background(Color.red).cornerRadius(25)
                    })
                }
                
                    HStack{
                        Text("Random Number was: ")
                        Text(String(rand))
                    }.padding().frame(width: 255, height: 45).background(Color.white).cornerRadius(15)
                    HStack{
                        Text("Point: ")
                        Text(String(point))
                    }.padding().frame(width: 255, height: 45).background(Color.white).cornerRadius(15)
                
            }
        }
            
    }
}

struct Medium: View {
    @State var num = ""
    @State var guess_num = 0
    @State var rand = 0
    @State var point = 0
    var body: some View {
        ZStack{
            Image("background_blue").ignoresSafeArea()
            VStack{
                
                Image("number-blocks")
                Text("Number Guessing Game").bold()
                    .navigationTitle("Medium").font(.system(size: 23)).foregroundColor(.white)
                
                TextField("Please Enter A Number: ", text: $num)
                                .keyboardType(.decimalPad)
                                .padding(15)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 100)
                                        .stroke(Color.white, lineWidth: 2)
                                )
                                .padding().frame(width: 290, height: 50).foregroundColor(.white)
                HStack{
                    Button("Run"){
                        guess_num = Int(num) ?? 0
                        rand = Int.random(in: 1...100)
                        if(guess_num == rand){
                            point += 20
                        }
                    }.padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                    
                    Button(action: {
                        num = ""
                        guess_num = 0
                        rand = 0
                    }, label: {
                        Image(systemName: "arrow.2.circlepath.circle.fill").resizable().frame(width: 20, height: 20).foregroundColor(.white).padding().background(Color.red).cornerRadius(25)
                    })
                }
                
                    HStack{
                        Text("Random Number was: ")
                        Text(String(rand))
                    }.padding().frame(width: 255, height: 45).background(Color.white).cornerRadius(15)
                    HStack{
                        Text("Point: ")
                        Text(String(point))
                    }.padding().frame(width: 255, height: 45).background(Color.white).cornerRadius(15)
                
            }
        }
            
    }
}

struct Hard: View {
    @State var num = ""
    @State var guess_num = 0
    @State var rand = 0
    @State var point = 0
    var body: some View {
        ZStack{
            Image("background_red").ignoresSafeArea()
            VStack{
                
                Image("number-blocks")
                Text("Number Guessing Game").bold()
                    .navigationTitle("Hard").font(.system(size: 23)).foregroundColor(.white)
                
                TextField("Please Enter A Number: ", text: $num)
                                .keyboardType(.decimalPad)
                                .padding(15)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 100)
                                        .stroke(Color.white, lineWidth: 2)
                                )
                                .padding().frame(width: 290, height: 50).foregroundColor(.white)
                HStack{
                    Button("Run"){
                        guess_num = Int(num) ?? 0
                        rand = Int.random(in: 1...500)
                        if(guess_num == rand){
                            point += 30
                        }
                    }.padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                    
                    Button(action: {
                        num = ""
                        guess_num = 0
                        rand = 0
                    }, label: {
                        Image(systemName: "arrow.2.circlepath.circle.fill").resizable().frame(width: 20, height: 20).foregroundColor(.white).padding().background(Color.red).cornerRadius(25)
                    })
                }
                
                    HStack{
                        Text("Random Number was: ")
                        Text(String(rand))
                    }.padding().frame(width: 255, height: 45).background(Color.white).cornerRadius(15)
                    HStack{
                        Text("Point: ")
                        Text(String(point))
                    }.padding().frame(width: 255, height: 45).background(Color.white).cornerRadius(15)
                
            }
        }
            
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
