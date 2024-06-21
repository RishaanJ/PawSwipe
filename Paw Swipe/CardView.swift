import SwiftUI
import AVKit

class SoundManager{
    static let instance = SoundManager()
    var player: AVAudioPlayer?
    
    func playSound(){
        
        guard let url = Bundle.main.url(forResource: "paw_swipe_match", withExtension: "wav") else {return}
        
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        }catch let error{
            print("Error playing sound. \(error.localizedDescription)")
            
        }
        
    }
}
struct CardView: View {
    var dog: String
    var description: String
    @State private var offset = CGSize.zero
    @State private var color: Color = .black
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 360, height: 525)
                .cornerRadius(38)
                .overlay(
                    ZStack {
                        Image(dog)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 360, height: 525)
                            .cornerRadius(38)
                        
                        Rectangle()
                            .foregroundColor(color)
                            .opacity(0.5)
                            .cornerRadius(38)
                    }
                )
                
            HStack{
                VStack{
                    Text(dog)
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                        .padding(.top) // Ensures the name is at the top
                    Spacer() // Pushes the description text to the bottom
                    VStack {
                        Text(description)
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                        
                    }
                    .padding(.bottom) // Adds padding at the bottom
                }
                .padding() // Adds padding around the VStack for better spacing
                .frame(width: 360, height: 525, alignment: .top) // Ensures the VStack takes the full card space and aligns the content to the top
            }
        }
        .offset(x: offset.width, y: offset.height * 0.4)
        .rotationEffect(.degrees(Double(offset.width / 40)))
        .gesture(DragGesture().onChanged { gesture in
            offset = gesture.translation
            withAnimation {
                changeColor(width: offset.width)
            }
        }.onEnded { _ in withAnimation {
            swipeCard(width: offset.width)
        }})
    }
    
    func swipeCard(width: CGFloat) {
        switch width {
        case -500...(-150):
            print("\(dog) was rejected :(")
            
            offset = CGSize(width: -500, height: 0)
            
        case 150...500:
            print("\(dog) was accepted :D")
            SoundManager.instance.playSound()
            offset = CGSize(width: 500, height: 0)
        default:
            offset = .zero
        }
    }
    
    func changeColor(width: CGFloat) {
        switch width {
        case -500...(-150):
            color = .red
            
        case 150...500:
            color = .green
        default:
            color = .black
        }
    }
}

#Preview {
    CardView(dog: "Kamina", description: "I have a playful and naughty side 😈")
}
