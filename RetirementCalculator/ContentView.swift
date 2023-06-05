//
//  ContentView.swift
//  RetirementCalculator
//
//  Created by GH on 5/6/23.
//

import SwiftUI
import AppCenter
import AppCenterCrashes
import AppCenterAnalytics

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }.onAppear {
          AppCenter.start(withAppSecret: "e469339f-8655-4036-9422-d9599794e365", services:[
            Analytics.self,
            Crashes.self
          ])
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
