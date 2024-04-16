//
//  AssociatedValueView.swift
//  Enums
//
//  Created by Keith Elliott on 4/15/24.
//

import SwiftUI

enum AnimalSurvivalAssociatedValue {
    case FeedBear(String)
    case FeedWolf(String)
    case FeedSkunk(String)
    case PlayDumb(String)
}

extension AnimalSurvivalAssociatedValue {
    static var BadChoices: [AnimalSurvivalAssociatedValue] {
        return [
            AnimalSurvivalAssociatedValue.FeedBear( "Fed the bear, upset the skunk who decided to make a scented statement, and allowed the wolf to eat you with the distraction... No more Teddy"),
            AnimalSurvivalAssociatedValue.FeedWolf("Fed the wolf, who stealthy got out of there while the bear and skunk attacked you for your poor choice... No more Teddy"),
            AnimalSurvivalAssociatedValue.FeedSkunk("Fed the skunk, who cleared the air in satisfaction. But seriously, the bear and wolf were so upset the split you in half to share at your stupidity as a way a mutual toward you... No mre Teddy"),
            AnimalSurvivalAssociatedValue.PlayDumb("Decided to play dumb. For half a milisecond, the bear, the wolf, and the skunk, stared at you in pure disbelief... No more Teddy")
        ]
    }
    
    static func randomChoice() -> AnimalSurvivalAssociatedValue {
        let choice = Int.random(in: 0..<4)
        return AnimalSurvivalAssociatedValue.BadChoices[choice]
    }
}


struct AssociatedValueView: View {
    @State private var badChoice: AnimalSurvivalAssociatedValue = AnimalSurvivalAssociatedValue.randomChoice()

    var body: some View {
        VStack {
            Button(action: {
                badChoice = AnimalSurvivalAssociatedValue.randomChoice()
            }, label: { Text("Get Random Choice")})
            .padding()
            switch badChoice {
            case .FeedBear(let result):
                Text(result)
            case .FeedWolf(let result):
                Text(result)
            case .FeedSkunk(let result):
                Text(result)
            case .PlayDumb(let result):
                Text(result)
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "waveform.path.ecg.rectangle")
                .resizable()
                .foregroundColor(.red)
                .padding()
                .foregroundStyle(Color.red)
                .frame(width: 100, height: 100)
            
                AssociatedValueView()
                .padding()
            Spacer()
        }
    }
}

