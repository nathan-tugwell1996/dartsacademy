import Foundation

class ScoringViewModel: ObservableObject {
    @Published var leg  = Leg()
    @Published var currentPlayer: Player
    
    init(player: Player) {
        self.currentPlayer = player
    }
    
    func submitVisit(scores: [Int]) {
        for score in scores {
            let validScore = leg.addThrow(score)
            if validScore {
                currentPlayer.totalScored += score
                currentPlayer.dartsThrown += 1
            }
        }
    }
}
