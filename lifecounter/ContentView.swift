//
//  ContentView.swift
//  lifecounter
//
//  Created by stlp on 4/17/24.
//

import SwiftUI

struct ContentView: View {
    @State var p1Life = 20
    @State var p2Life = 20
    var body: some View {
        VStack(alignment: .center, spacing: 50) {
            Text("Player 1")
                .font(.largeTitle)
                .padding(.horizontal)
            Text("\(p1Life)")
                .padding(.horizontal)
                .font(.system(size: 30))
                
                
            HStack(alignment: .center, spacing: 50) {
                Button(action: {
                    print("+ pressed")
                    self.p1Life += 1
                }) {
                    Text("+")
                }
                .buttonStyle(.borderedProminent)
                
                Button(action: {
                    print("- pressed")
                    self.p1Life -= 1
                }) {
                    Text("-")
                }
                .buttonStyle(.borderedProminent)
                
                Button(action: {
                    print("+5 pressed")
                    self.p1Life += 5
                }) {
                    Text("+5")
                }
                .buttonStyle(.borderedProminent)
                
                Button(action: {
                    print("-5 pressed")
                    self.p1Life -= 5
                }) {
                    Text("-5")
                }
                .buttonStyle(.borderedProminent)
            }
        }
        .padding()
        
        VStack(alignment: .center, spacing: 50) {
            Text("Player 2")
                .font(.largeTitle)
                .padding(.horizontal)
            Text("\(p2Life)")
                .padding(.horizontal)
                .font(.system(size: 30))
            HStack(alignment: .center, spacing: 50) {
                Button(action: {
                    self.p2Life += 1
                }) {
                    Text("+")
                }
                .buttonStyle(.borderedProminent)
                
                Button(action: {
                    self.p2Life -= 1
                }) {
                    Text("-")
                }
                .buttonStyle(.borderedProminent)
                
                Button(action: {
                    self.p2Life += 5
                }) {
                    Text("+5")
                }
                .buttonStyle(.borderedProminent)
                
                Button(action: {
                    self.p2Life -= 5
                }) {
                    Text("-5")
                }
                .buttonStyle(.borderedProminent)
            }
        }
        if p1Life <= 0 {
            Text("Player 1 Loses")
        }
        if p2Life <= 0 {
            Text("Player 2 Loses")
        }
    }
}

#Preview {
    ContentView()
}
