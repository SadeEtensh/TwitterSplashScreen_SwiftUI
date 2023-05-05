//
//  ContentView.swift
//  TwitterSplashScreen_SwiftUI
//
//  Created by Sade on 05/05/2023.
//

import SwiftUI

struct ContentView: View {
    @State var isHomeRootScreen = false
    @State var scaleAmount: CGFloat = 1
    var body: some View {
        ZStack {
            Color(.systemBlue)
                    
                    if isHomeRootScreen {
                        HomeScreen()
                    } else {
                        Image("twitterlogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .scaleEffect(scaleAmount)
                            .frame(width: 80)
                    }
                }
                .ignoresSafeArea()
                .onAppear {
                    // Shrinking  the icon
                    withAnimation(.easeOut(duration: 0.5)) {
                        scaleAmount = 0.6
                    }
                    
                    // Enlarging the Twitter logo
                    withAnimation(.easeInOut(duration: 1).delay(0.5)) {
                        scaleAmount = 80

                    }
                    
                    // What to Show after splash Screen..
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                        isHomeRootScreen = true
                    }
                }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
