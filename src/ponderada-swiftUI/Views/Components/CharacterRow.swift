import SwiftUI

struct CharacterRow: View {
    let nome: String
    let papel: String
    let emoji: String
    
    var body: some View {
        HStack(spacing: 16) {
            Text(emoji)
                .font(.title2)
                .frame(width: 44, height: 44)
                .background(Circle().fill(Color.purple.opacity(0.1)))
            
            VStack(alignment: .leading, spacing: 2) {
                Text(nome)
                    .font(.headline)
                Text(papel)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
        }
        .padding(.vertical, 4)
    }
}
