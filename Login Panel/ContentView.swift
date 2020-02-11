//
//  ContentView.swift
//  Login Panel
//
//  Created by Marcin Weber on 01/02/2020.
//  Copyright © 2020 Marcin Weber. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    
    
    @State var mail: String = ""
    @State private var password: String = ""
    @State var showDetails = false
    
    
        
    
    var body: some View {
        
        
        
        ZStack {
            
            Color.gray.edgesIgnoringSafeArea(.all)
            
            
            
            Text("Login Panel")
                .font(.largeTitle).underline()
                .padding()
                .offset(y: -350)
                //.padding(.bottom, 15)
                .foregroundColor(.yellow)
                
            
            Text("Nick Name : ")
                .font(.largeTitle)
                //.padding()
                .offset(x: -90 , y: -250)
                .foregroundColor(.white)
                
            
            ZStack {
                
                Text("E-mail : ")
                    .font(.largeTitle)
                    .offset(x: -20 , y: -200)
                
                Text("Password : ")
                    .font(.largeTitle)
                    .offset(x: -20 , y: -100)
                
                
                SecureField("", text: $password)
                    .background(Color.blue)
                    .cornerRadius(20)
                .frame(width: 200, height: 200)
                    .offset(x : 10 , y : -70)
                    
                
                
                ZStack {
                    TextField("", text: $mail)
                        .background(Color.orange)
                        .cornerRadius(20)
                        .font(.body)
                        .frame(width : 200.0, height : 200)
                        .offset(x : 10, y : -170)
                    
    
                        
                            Button(action: {
                                
                                self.showDetails.toggle()
                                
                                
                            }) {
                                Image(systemName: "play")
                                .resizable()
                                .font(.largeTitle)
                                .foregroundColor(.green)
                                .aspectRatio(contentMode: .fill)
                                .frame(width : 20, height : 70)
                                .offset(x: -20, y: 10)
                                
                                if showDetails {
                                Text("You are Welcome !!!")
                                    .font(.largeTitle)
                                    .lineLimit(nil)
                                
                                
                            }
                    
                    
                        
                    }
                            
                            
                            
                            
                            
                            
                            
                            
                        
                            
                    }
                    }
                        
                        
                }
                
                
                
                        
                }
            
            
            
            
                
            
            }
        
        
    
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
    }
}
