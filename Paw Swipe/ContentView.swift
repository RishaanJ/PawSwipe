//
//  ContentView.swift
//  Paw Swipe
//
//  Created by Rishaan Jain on 6/18/24.
//

import SwiftUI


struct ContentView: View {
    private var dogDescriptions: [String: String] = [
        "Snuffles": "I love playing with my toys all day long 🧸",
        "Biscuit": "I am a big fan of belly rubs and treats 🦴",
        "Mirchi": "I have a fiery personality but a sweet heart ❤️",
        "Scout": "I enjoy exploring new places and going on adventures 🏞️",
        "Chutney": "I am a foodie and love tasting different treats 🍖",
        "Spot": "I have a keen eye for spotting things from afar 👀",
        "Ladoo": "I am sweet and cuddly like my name suggests 🍬",
        "Bandit": "I am a little mischievous but very lovable 🐾",
        "Masala": "I add spice to everyone's life 🌶️",
        "Cinnamon": "I am warm and comforting like a cinnamon roll 🍩",
        "Kaju": "I am nutty and fun to be around 🥜",
        "Kamina": "I have a playful and naughty side 😈",
        "Mochi": "I am soft and squishy just like the dessert 🍡",
        "Rascal": "I love getting into playful trouble 😜",
        "Pepper": "I bring zest and excitement everywhere I go 🌶️",
        "Pumpkin": "I am as sweet and round as my name suggests 🎃",
        "Sunny": "I brighten up everyone's day with my smile ☀️",
        "Ginger": "I have a fiery coat and a spicy personality 🌟",
        "Shadow": "I am quiet and mysterious but very loyal 🌑",
        "Cookie": "I am a sweet treat that everyone loves 🍪",
        "Rover": "I love to roam around and explore new places 🗺️",
        "Milo": "I am playful and full of energy ⚡️"
    ]


    var body: some View {
        NavigationView{
            ZStack {
                       Color.white // Sets the background color to white
                           .edgesIgnoringSafeArea(.all) // Makes the background cover the entire screen
                VStack{
                    Image("Logo")
                        .resizable()
                        .frame(width: 210, height: 93)
                        .padding(.top, 25)
                    Spacer()
                    ZStack{
                        VStack{
                            Text("yo you swiped thru all of them already???")
                            
                            Text("no more dog users exist")
                            Text("🤔🤔")
                        }
                        
                            .fontWeight(.heavy)
                        ForEach(dogDescriptions.keys.sorted(), id: \.self) { dog in
                                        CardView(dog: dog, description: dogDescriptions[dog] ?? "")
                            
                                    }
                        
                        

                    }
                    
                    Spacer()
                    HStack(alignment: .center, spacing: 20){
                        Button(action:{}){
                            Image(systemName: "clock.fill")
                                .font(.system(size: 30))
                                .padding()
                                .foregroundColor(.white)
                                
                                .background(Color.blue)
                                .clipShape(Circle())
                                .padding()
                        }
                        Button(action: {
                            let impact = UIImpactFeedbackGenerator(style: .light)
                            impact.impactOccurred()
                        }) {
                            // Button label with system image
                            Image(systemName: "pawprint.fill")
                                .font(.system(size: 54)) // Adjust the size if needed
                                .padding() // Add padding around the image
                                .foregroundColor(.white) // Customize the color if needed
                                .background(Color.blue) // Background color of the button
                                .clipShape(Circle()) // Clip the button into a circle shape
                                .padding() // Optional additional padding
                        }
                        NavigationLink(destination: About()){
                            Image(systemName: "gear")
                                .font(.system(size: 30))
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .clipShape(Circle())
                                .padding()
                        }
                    }
                }
           }
        }


        
    }
}


#Preview {
    ContentView()
}
