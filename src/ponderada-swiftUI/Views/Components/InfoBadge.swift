import SwiftUI

struct InfoBadge: View {
    let icon: String
    let valor: String
    let legenda: String
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: icon)
                .font(.title3)
                .foregroundColor(.purple)
            
            Text(valor)
                .font(.headline)
            
            Text(legenda)
                .font(.caption2)
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 16)
        .background(Color(.secondarySystemBackground))
        .cornerRadius(12)
    }
}

#Preview {
    InfoBadge(icon: "star", valor: "4.8", legenda: "Nota do consumidor")
}
