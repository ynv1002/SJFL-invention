//  ContentView.swift
//  League Companion
//
//  Created by Yaniv Naggar on 5/23/23.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("PINKISH")
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 15) {
                    Image("League_flick")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(13)
                        
                    Text("League Companion")
                        .font(.largeTitle)
                    NavigationLink(destination: RosterValueView()) {
                        Text("Roster Value")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    
                    NavigationLink(destination: OtherTeamsView()) {
                        Text("Other Teams")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                    }
                    
                    NavigationLink(destination: FreeAgentsView()) {
                        Text("Free Agents")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(10)
                    }
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
