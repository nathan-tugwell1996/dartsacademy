import Foundation

class TournamentViewModel: ObservableObject {
    @Published var players: [Player] = []
    @Published var matches: [(Player, Player)] = []
    
    func generateRoundRobin() {
        matches.removeAll()
        for i in 0..<players.count {
            for j in (i + 1)..<players.count {
                matches.append((players[i], players[j]))
            }
        }
    }
}
