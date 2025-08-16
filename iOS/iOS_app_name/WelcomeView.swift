//
//  WelcomeView.swift
//  App name
//
//  Created by [Developer Name] on [MM/DD/YYYY].
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack{
            VStack(spacing: 125) {
                Spacer()
                Spacer()
                Spacer()

                Image("AppLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 2)
                    )
                    //.shadow(radius: 5)
                    .foregroundColor(.blue)
                
                //Text("Cy Pres Doctrine")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                Spacer()
                
                VStack(spacing: 16) {
                    NavigationLink(
                        destination: AuthView(),
                        label: {
                            Text("Enter")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color(red: 92/255, green: 20/255, blue: 39/255))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        })
                    
                    HStack(spacing: 20) {
                        NavigationLink(destination: AboutUsView()) {
                            Text("About Us")
                                .lineLimit(1) // Keeps the footer in a single line
                                .minimumScaleFactor(0.8) // allows text to shrink instead of truncating with ellipses.
                                .layoutPriority(1)
                        }
                        
                        Divider()
                        
                        NavigationLink(destination: PrivacyPolicyView()) {
                            Text("Privacy Policy")
                                .lineLimit(1)
                                .minimumScaleFactor(0.8)
                                .layoutPriority(1)
                        }
                        
                        Divider()
                        
                        NavigationLink(destination: TermsOfUseView()) {
                            Text("Terms of Use")
                                .lineLimit(1)
                                .minimumScaleFactor(0.8)
                                .layoutPriority(1)
                        }
                    }
                    .font(.footnote)
                    .padding(.horizontal)
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity) // 
                    /*
                     NavigationLink(
                        destination: RegistrationView(),
                        label: {
                            Text("Register")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color(red: 92/255, green: 20/255, blue: 39/255))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        })
                     */
                    .navigationBarTitleDisplayMode(.inline) // Reduces title height
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            Text("Beta")
                                .font(.headline)
                                .foregroundColor(.gray)
                        }
                    }
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .padding()
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

