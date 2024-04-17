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
        GeometryReader { geometry in
            VStack {
                Spacer()
                Text("Player 1")
                    .font(.largeTitle)
                    .padding()
                Text("\(p1Life)")
                    .padding()
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
                
                Spacer()
                Text("Player 2")
                    .font(.largeTitle)
                    .padding()
                Text("\(p2Life)")
                    .padding()
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
                Spacer()
                if p1Life <= 0 {
                    Text("Player 1 Loses")
                        .font(.system(size: 20))
                }
                if p2Life <= 0 {
                    Text("Player 2 Loses")
                        .font(.system(size: 20))
                }
                Spacer()
            }
            .padding()
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}

#Preview {
    ContentView()
}
