//
//  ContentView.swift
//  HowMuch
//
//  Created by Fredisma OUEDRAOGO on 07/03/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tipPct = 0
    @State private var numPeople = 1
    @State private var total = "0"
    
    var body: some View {
        
        NavigationStack {
            VStack {
                    Text(total)
                        .font(.system(size: 70))
                        .frame(width: 260, alignment: .trailing)
                        .padding(.vertical, 1)
                    HStack {
                        ForEach(7...9, id: \.self) { number in
                            numberButton(number: "\(number)")
                        }
                    }
                    HStack {
                        ForEach(4...6, id: \.self) { number in
                            numberButton(number: "\(number)")
                        }
                    }
                    HStack {
                        ForEach(1...3, id: \.self) { number in
                            numberButton(number: "\(number)")
                        }
                    }
                    HStack {
                        numberButton(number: "0")
                        numberButton(number: ",")
                        Button {
                            // Mark: action
                        } label: {
                            Image(systemName: "delete.backward.fill")
                        }
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 80, height: 80)
                        .background(.red)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                    }
                    HStack {
                        Text("Tip")
                        Picker(selection: $tipPct, label: Text("Tip")) {
                            ForEach(0...100, id: \.self) {
                                Text("\($0)%")
                            }
                        }
                        .buttonStyle(.borderedProminent)
                    }
                    HStack {
                        Text("Number of People")
                        Picker(selection: $numPeople, label: Text("Number of People")) {
                            ForEach(0...20, id: \.self) {
                                Text("\($0)")
                            }
                        }
                        .buttonStyle(.borderedProminent)
                    }
                    
                    HStack {
                        Button("Calculate") {
                            //action
                        }
                        Button("clear") {
                            //action
                        }
                    }
                    .buttonStyle(.borderedProminent)
                Spacer()
            }
            .navigationTitle("Portion Calculator")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    
    func numberButton(number: String) -> some View {
        Button {
            // action
        } label: {
            Text(number)
        }
        .font(.largeTitle)
        .bold()
        .frame(width: 80, height: 80)
        .background(Color("AccentColor"))
        .foregroundColor(.white)
        .clipShape(Circle())
    }
    
}
