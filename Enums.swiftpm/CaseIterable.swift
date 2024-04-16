//
//  CaseIterable.swift
//  Enums
//
//  Created by Keith Elliott on 4/15/24.
//

import SwiftUI

enum AnimalSurvivalAlt1: String, CaseIterable, Identifiable {
    case FeedBear = "Feed the bear"
    case FeedWolf = "Fead the wolf"
    case FeedSkunk = "Feed the Skunk"
    case PlayDumb = "Play Dumb"
    
    var id: Self { self }
    
    func label() {
        print(self.rawValue)
    }
}


struct CaseIterableView: View {
    @State private var badChoice: AnimalSurvivalAlt1 = .PlayDumb
    
    var body: some View {
        VStack {
            Picker("Make a Lunch Choice", selection: $badChoice) {
                ForEach(AnimalSurvivalAlt1.allCases, id: \.self) { choice in
                    Text(choice.rawValue)
                }
            }.pickerStyle(.automatic)

            switch badChoice {
            case .FeedBear:
                Text("Fed the bear, upset the skunk who decided to make a scented statement, and allowed the wolf to eat you with the distraction... No more Teddy")
            case .FeedWolf:
                Text("Fed the wolf, who stealthy got out of there while the bear and skunk attacked you for your poor choice... No more Teddy")
            case .FeedSkunk:
                Text("Fed the skunk, who cleared the air in satisfaction. But seriously, the bear and wolf were so upset the split you in half to share at your stupidity as a way a mutual toward you... No mre Teddy")
            case .PlayDumb:
                Text("Decided to play dumb. For half a milisecond, the bear, the wolf, and the skunk, stared at you in pure disbelief... No more Teddy")
            }
        }
    }
}

