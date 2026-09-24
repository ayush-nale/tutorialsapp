

import SwiftUI

struct ContentView: View {
    
    @State private var email:String = ""
    @State private var password:String = ""
    @State private var email1:String = "Ayushnale@gmail.com"
    @State private var password1:String = "Ayushnale"
    @State private var gotoHome:Bool=false
    var body: some View {
        
        NavigationStack{
            VStack(spacing:10)
            {
                
                Image(.mainimage)
                    .resizable()
                    .scaledToFit()
                    .frame(width:250,height:250)
                
                Text("Programmer's corner")
                    .font(.system(size: 30))
                    .fontWeight(.semibold)
                    .fontDesign(.rounded)
                
                HStack{
                    TextField("Email or Phone no",text: $email)
                        .padding()
                    Image(systemName: "envelope.fill")
                        .foregroundStyle(.gray)
                        .padding()
                }
                .frame(width: 350,height: 60)
                .overlay(RoundedRectangle(cornerRadius:20).stroke(style:
                       StrokeStyle(lineWidth: 1,lineCap:
                    .round,lineJoin: .round)))
                
                
                HStack{
                    SecureField("Password",text: $password)
                        .padding()
                    Image(systemName: "key.fill")
                        .foregroundStyle(.gray)
                        .padding()
                    
                }
                .frame(width: 350,height: 60)
                .overlay(RoundedRectangle(cornerRadius:20).stroke(style:
                            StrokeStyle(lineWidth: 1,lineCap:
                            .round,lineJoin: .round)))
            
                Button{
                    
                }label:{
                    Text("Forget Password")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    
                }.padding(.leading,200)
                
                Button{
                    
                    if email1 == email && password1 == password
                    {
                        gotoHome=true
                    }
                    else{
                        print("Username or password i incorrect")
                    }
                    
                }label: {
                    Text("Login")
                        .foregroundStyle(Color.white)
                        .fontWeight(.semibold)
                        .frame(width: 300, height: 60)
                        .background(.black)
                        .cornerRadius(30)
                    
                    
                    
                }
                
                HStack{
                    
                    Text("Don't have an account?")
                        .foregroundStyle(.gray)
                        .fontWeight(.semibold)
                    Button{
                        
                    }label:{
                        Text("Sign up")
                    }
                    
                    
                    
                }.padding(.top,150)
                          
            }
            
            .navigationDestination(isPresented:$gotoHome)
            {
                HomePage()
            }
        }
        }
    }
    


#Preview {
    ContentView()
}
