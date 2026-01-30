import Foundation

struct Match: Identifiable {
    let id = UUID()
    let player1: Player
    let player2: Player
    
    var legsWonP1 = 0
    var legsWonP2 = 0
    let legsToWin: Int = 3
}
