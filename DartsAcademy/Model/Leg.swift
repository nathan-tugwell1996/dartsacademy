import Foundation

struct Leg {
    let startingScore = 501
    var currentScore: Int = 501
    var dartsThrown: [Int] = []  // each dart
    
    mutating func addThrow(_ score: Int) -> Bool {
        let newScore = currentScore - score
        
        // Bust rule
        if newScore < 0 || newScore == 1 {
            return false
        }
        
        dartsThrown.append(score)
        currentScore = newScore
        return true
    }
    
    var isFinished: Bool {
        currentScore == 0
    }
}
