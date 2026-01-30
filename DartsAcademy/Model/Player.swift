import Foundation

struct Player: Identifiable, Hashable {
    let id = UUID()
    let name: String
    
    var totalScored: Int = 0
    var dartsThrown: Int = 0
    
    var threeDartAverage: Double {
        dartsThrown == 0 ? 0 : (Double(totalScored) / Double(dartsThrown)) * 3
    }
}
