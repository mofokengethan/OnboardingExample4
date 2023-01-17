//
//  ContentView.swift
//  OnboardingExample4
//
//  Created by Ethan Mofokeng on 12/18/22.
//  Design Credit: https://dribbble.com/shots/15145502-Login-And-Sign-up-Screens
//  Design Credit: https://icons8.com/icon/set/logos/fluency
//

import SwiftUI

extension Color {
    static let customGray = Color(red: 238/255, green: 241/255, blue: 243/255)
    static let customBlack = Color(red: 33/255, green: 33/255, blue: 33/255)
    static let customNavy = Color(red: 34/255, green: 57/255, blue: 67/255)
}
 
struct ContentView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom) {
                
                // MARK: HEADER BACKGROUND COLOR
                Color.customGray.ignoresSafeArea()
                
                VStack {
                    
                    // MARK: LOGIN PLANE IMAGE
                    ZStack {
                        LoginHeaderImage()
                    }
                    
                    ZStack {
                        
                        // MARK: 3/4 "SHEET" BACKGROUND
                        LoginBackground()
                        
                        // MARK: LOGIN CHARACTER IMAGE
                        LoginCharacterImage()
                        
                        VStack {
                            HStack {
                                Text("Log-in")
                                    .kerning(-0.2)
                                    .font(.system(size: 36, weight: .medium, design: .serif))
                                    .opacity(0.85)
                                Spacer()
                            }
                            
                            ScrollView {
                                // MARK: EMAIL TEXT FIELD
                                TextFieldComp(text: $email, title: "Email", description: "Your email id", secure: false)
                                
                                // MARK: PASSWORD SECURE FIELD
                                TextFieldComp(text: $password, title: "Password", description: "Password", secure: true)
                                
                                // MARK: LOGIN BUTTON
                                Text("Login")
                                    .modifier(LoginButtonMod())
                                
                                // MARK: SIGN UP NAVIGATION
                                SignUpNavigationComp()
                                
                                // MARK: Divider Component
                                DividerComp(title: "login")
                                
                                // MARK: GOOGLE FACEBOOK LOGIN
                                HStack {
                                    ThirdPartyButtonComp(image: "gmail") {
                                        // gmail login
                                    }
                                    
                                    ThirdPartyButtonComp(image: "facebook") {
                                        // facebook login
                                    }
                                }
                                .padding(.vertical, 10)
                                
                            }
                        }
                        .padding(.vertical)
                        .padding()
                    }
                }
            }
        }
        .tint(.black)
        .navigationBarBackButtonHidden(true)
    }
}

struct SignUpNavigationComp: View {
    var body: some View {
        HStack {
            Text("Don't have an account ?")
                .kerning(0.2)
                .padding(.vertical)
                .opacity(0.6)
            NavigationLink(destination: SignUpView(), label: {
                Text("Sign-up")
                    .kerning(0.4)
                    .opacity(0.8)
            })
            .tint(.black)
            .navigationTitle("")
        }
        .font(.subheadline)
        .fontWeight(.medium)
    }
}

struct SignUpView: View {
    @State var email = ""
    @State var password = ""
    @State var name = ""
    @State var contactNo = ""
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom) {
                
                // MARK: HEADER BACKGROUND COLOR
                Color.customGray.ignoresSafeArea()
                
                VStack {
                    
                    // MARK: LOGIN PLANE IMAGE
                    ZStack {
                        LoginHeaderImage()
                    }
                    
                    ZStack {
                        
                        // MARK: 3/4 "SHEET" BACKGROUND
                        LoginBackground()
                        
                        // MARK: LOGIN CHARACTER IMAGE
                        LoginCharacterImage()
                        
                        VStack {
                            HStack {
                                Text("Sign-Up")
                                    .kerning(-0.2)
                                    .font(.system(size: 36, weight: .medium, design: .serif))
                                    .opacity(0.85)
                                Spacer()
                            }
                            
                            ScrollView {
                                
                                // MARK: ADD PROFILE IMAGE
                                ProfilePictureIndicator(systemImage: "camera.fill")
                                
                                // MARK: NAME TEXT FIELD
                                TextFieldComp(text: $name, title: "Name", description: "Your name", secure: false)
                                
                                // MARK: EMAIL TEXT FIELD
                                TextFieldComp(text: $email, title: "Email", description: "Your email id", secure: false)
                                
                                // MARK: PHONE NUMBER TEXT FIELD
                                TextFieldComp(text: $contactNo, title: "Contact no.", description: "Your contact number", secure: false)
                                
                                // MARK: PASSWORD TEXT FIELD
                                TextFieldComp(text: $password, title: "Password", description: "Password", secure: false)
                                
                                
                                
                                // MARK: LOGIN NAVIGATION BUTTON
                                Text("Sign Up")
                                    .modifier(LoginButtonMod())
                                    /*
                                     You could add a popover view or
                                     animation to show the user they
                                     succesfully created an account
                                     before navigating back to the
                                     LoginView
                                     */
                                
                                // MARK: LOGIN NAVIGATION BUTTON
                                NavigationLink(destination: {
                                    ContentView()
                                }, label: {
                                    Text("Cancel")
                                        .modifier(LoginButtonMod())
                                })
                                    /*
                                     You could add a popover view or
                                     animation to show the user they
                                     succesfully created an account
                                     before navigating back to the
                                     LoginView
                                     */
                                
                                // MARK: Divider Component
                                DividerComp(title: "sign up")
                                
                                // MARK: GOOGLE FACEBOOK LOGIN
                                HStack {
                                    ThirdPartyButtonComp(image: "gmail") {
                                        // gmail login
                                    }
                                    
                                    ThirdPartyButtonComp(image: "facebook") {
                                        // facebook login
                                    }
                                }
                                .padding(.vertical, 10)
                            }
                            .padding(.horizontal, 10)
                            .scrollIndicators(.hidden)
                        }
                        .padding(.vertical)
                        .padding()
                    }
                }
            }
        }
        .tint(.black)
        .navigationBarBackButtonHidden(true)
    }
}

struct ForgotPassword: View {
    @State var email = ""
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom) {
                
                // MARK: HEADER BACKGROUND COLOR
                Color.customGray.ignoresSafeArea()
                
                VStack {
                    
                    // MARK: LOGIN PLANE IMAGE
                    ZStack {
                        LoginHeaderImage()
                    }
                    
                    ZStack {
                        
                        // MARK: 3/4 "SHEET" BACKGROUND
                        LoginBackground()
                        
                        // MARK: LOGIN CHARACTER IMAGE
                        LoginCharacterImage()
                        
                       
                        VStack {
                            HStack {
                                Text("Forgot Password")
                                    .kerning(-0.2)
                                    .font(.system(size: 36, weight: .medium, design: .serif))
                                    .opacity(0.85)
                                Spacer()
                            }
                            
                            // MARK: CONTENT AFTER SHEET TITLE
                            
                            ScrollView {
                                // MARK: EMAIL TEXT FIELD
                                TextFieldComp(text: $email, title: "Email", description: "Your email id", secure: false)
                                
                                // MARK: LOGIN BUTTON
                                Text("Submit")
                                    .modifier(LoginButtonMod())
                                
                                // MARK: NAVIGATE TO LOGIN PAGE
                                NavigationLink(destination: {
                                    ContentView()
                                }, label: {
                                    Text("Back to login")
                                        .kerning(0.2)
                                        .padding(.vertical)
                                        .opacity(0.6)
                                })
                            }
                        }
                        .padding(.vertical)
                        .padding()
                    }
                }
            }
        }
        .tint(.black)
        .navigationBarBackButtonHidden(true)
    }
}

struct LoginButtonMod: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .font(.title2)
            .frame(maxWidth: .infinity)
            .fontWeight(.bold)
            .fontDesign(.rounded)
            .background(Color.customNavy.cornerRadius(25))
            .padding(.horizontal)
            .foregroundColor(.white)
            .padding(.vertical, 10)
    }
}


struct ThirdPartyButtonComp: View {
    let image: String
    let buttonAction: () -> Void
    
    var body: some View {
        Button(action:  {
            buttonAction()
        }, label: {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .modifier(ThirdPartyLoginButtonMod())
        })
    }
}

struct ThirdPartyLoginButtonMod: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 30, height: 30)
            .padding(10)
            .background(
                Circle()
                    .fill(.white)
            )
            .background {
                Circle()
                    .clipShape(Circle())
                    .foregroundColor(.white)
                    .shadow(radius: 10, x: 5, y: 10)
                    .opacity(0.1)
            }
            .padding(.horizontal)
    }
}

struct ProfilePictureIndicator: View {
    let systemImage: String
    
    var body: some View {
        Image(systemName: systemImage)
            .font(.title3)
            .foregroundColor(.customNavy)
            .padding(40)
            .background(
                Circle().foregroundColor(.customGray)
            )
            .padding(.vertical, 5)
    }
}

struct LoginBackground: View {
    var body: some View {
        VStack(alignment: .leading) {}
        .frame(maxWidth: .infinity)
        .frame(height:  UIScreen.main.bounds.height / 1.4)
        .background(
            Color.white.cornerRadius(20).edgesIgnoringSafeArea(.bottom)
        )
    }
}

struct LoginHeaderImage: View {
    var body: some View {
        Image("image2")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .offset(y: 40)
            .padding(.trailing, 25)
    }
}

struct LoginCharacterImage: View {
    var body: some View {
        HStack {
            let myOffset = UIScreen.main.bounds.width / 1.066
            
            
            Image("image1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width / 2)
                .offset(y: -myOffset)
            Spacer()
        }
    }
}

struct LoginButtonComp: View {
    let title: String
    var body: some View {
        Text(title)
            .padding()
            .font(.title2)
            .frame(maxWidth: .infinity)
            .fontWeight(.bold)
            .fontDesign(.rounded)
            .background(Color.customNavy.cornerRadius(25))
            .padding(.horizontal)
            .foregroundColor(.white)
    }
}



struct DividerComp: View {
    let title: String
    var body: some View {
        HStack {
            Spacer()
            Divider()
                .rotationEffect(Angle(degrees: 90.0))
                .frame(height: 100)
                .padding(.horizontal)
            Spacer()
            Text("Or \(title) with ")
                .font(.subheadline)
                .fontWeight(.medium)
                .padding(.horizontal)
                .opacity(0.6)
            Spacer()
            Divider()
                .rotationEffect(Angle(degrees: 90.0))
                .frame(height: 100)
                .padding(.horizontal)
            Spacer()
        }
        .frame(height: 20)
    }
}

struct TextFieldComp: View {
    @Binding var text: String
    let title: String
    let description: String
    let secure: Bool
    var body: some View {
        VStack(alignment: .leading) {
            
            // MARK: TEXT FIELD COMPONENT TITLE
            Text(title)
                .kerning(0.6)
                .font(.system(size: 20, weight: .medium, design: .rounded))
            if secure {
                VStack {
                    
                    // MARK: SECURE TEXT FIELD
                    SecureField(description, text: $text)
                        .font(.subheadline)
                        .overlay {
                            HStack {
                                Spacer()
                                Image(systemName: "eye.fill")
                                    .opacity(0.6)
                                
                            }
                        }
                }
            } else {
                
                // MARK: EMAIL TEXT FIELD
                TextField(description, text: $text)
                    .font(.subheadline)
            }
        }
        .padding(.vertical, 10)
        Divider()
            .padding(-10)
        
        // MARK: FORGOT PASSWORD NAVIGATION
        if secure {
            HStack {
                Spacer()
                NavigationLink(destination: ForgotPassword(), label: {
                    Text("Forget password?")
                        .kerning(0.2)
                        .opacity(0.6)
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
