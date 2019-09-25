//
//  ContentView.swift
//  CreateYourFirstAnimation
//
//  Created by ramil on 25/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // Initial state is false
    @State var show = false
    
    var body: some View {
        Text("SwiftUI Animations")
        // Scale text from 1 to 2
            .scaleEffect(show ? 2 : 1)
            .animation(Animation.interpolatingSpring(mass: 0.7, stiffness: 200, damping: 10, initialVelocity: 4))
        // switch between the 2 states
            .onTapGesture {
                
                self.show.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
