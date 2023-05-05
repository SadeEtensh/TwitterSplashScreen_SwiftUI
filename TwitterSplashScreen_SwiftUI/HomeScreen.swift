//
//  HomeScreen.swift
//  TwitterSplashScreen_SwiftUI
//
//  Created by Sade on 05/05/2023.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationStack {
            Text("Splash Screen Series")
            Text("Twitter Home")
                .font(.largeTitle)
                .bold()
            
            .navigationTitle("Home")
            
                    
      }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
