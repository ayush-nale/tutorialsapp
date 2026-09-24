//
//  HomePage.swift
//  tutorialapp
//
//  Created by Student on 23/09/26.
//

import SwiftUI

struct HomePage: View {
    @State private var gotoswiftprog:Bool=false
    var body: some View {
       
        NavigationStack{
          
            Text("Tutorials")
                .font(.system(size: 25))
                .fontWeight(.semibold)
                .fontDesign(.rounded)
            ScrollView{
                VStack(spacing:20)
                {
                    Button{
                    }label: {
                        VStack{
                            Image(.swift)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60,height: 60)
                            Text("Swift programming")
                                .foregroundStyle(.black)
                                .fontWeight(.semibold)
                        }
                        .frame(width:350,height:150)
                        .background(.orange.opacity(0.30))
                        .cornerRadius(40)
                        
                     
                            
                        }
                    }
                
                Button{
                }label: {
                    VStack{
                        Image(.python)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60,height: 60)
                        Text("Python programming")
                            .foregroundStyle(.black)
                            .fontWeight(.semibold)
                    }
                    .frame(width:350,height:150)
                    .background(.blue.opacity(0.30))
                    .cornerRadius(40)
                    .padding()
                    
                
                  
                    }
                Button{
                }label: {
                    VStack{
                        Image(.java)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60,height: 60)
                        Text("Java programming")
                            .foregroundStyle(.black)
                            .fontWeight(.semibold)
                    }
                    .frame(width:350,height:150)
                    .background(.green.opacity(0.30))
                    .cornerRadius(40)
                    
                }
                
                
                Button{
                }label: {
                    VStack{
                        Image(.cpp)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60,height: 60)
                        Text("C++ Programming")
                            .foregroundStyle(.black)
                            .fontWeight(.semibold)
                    }
                    .frame(width:350,height:150)
                    .background(.purple.opacity(0.30))
                    .cornerRadius(40)
                    .padding()
                    
                }
                
              
            }
      
           
            
            
            
            
            
        }
    }
}
#Preview {
    HomePage()
}
