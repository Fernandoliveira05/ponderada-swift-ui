// ShowCard.swift -- componente reutilizavel
import SwiftUI

struct ShowCard: View {
    let programa: Programa

    var body: some View {
        HStack(spacing: 16) {
            // TODO A: barra lateral colorida por tipo
            Rectangle()
                .fill(programa.tipoo.cor)
                .frame(width: 6)
           
            // TODO B: thumbnail com emoji
            if let url = URL(string: programa.imagemUrl), !programa.imagemUrl.isEmpty {
                AsyncImage(url: url) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                            .frame(width: 52, height: 52)
                    
                    case .success(let imagem):
                        imagem
                            .resizable()
                            .scaledToFill()
                            .frame(width: 52, height: 52)
                            .clipped()
                            .cornerRadius(12)
                    
                    case .failure:
                        Text(programa.emoji)
                            .font(.system(size: 26))
                            .frame(width: 52, height: 52)
                    @unknown default:
                        EmptyView()
                    }
                }
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(programa.tipoo.cor.opacity(0.1))
                )
                .padding(10)
                
                
            } else {
                Text(programa.emoji)
                    .font(.system(size: 26))
                    .frame(width: 52, height: 52)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(programa.tipoo.cor.opacity(0.1))
                    )
                    .padding(10)
            }
        
            
            VStack(alignment: .leading, spacing: 4) {
                
                // TODO C: badge de tipo + nome + genero + avaliacao
                Text(programa.tipo)
                    .font(.caption)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 4)
                    .foregroundColor(.white)
                    .bold()
                    .background(programa.tipoo.cor)
                    .clipShape(Capsule())
                
                Text(programa.nome)
                    .font(.headline)
                    .bold()
                    .foregroundColor(.primary)
                
                Text(programa.genero)
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                    
                HStack(spacing: 2) {
                    ForEach(0..<5, id: \.self) { index in
                        Image(systemName: index < Int(programa.avaliacao) ? "star.fill" : "star")
                            .font(.caption)
                            .foregroundStyle(.yellow)
                        
                    }
                    
                    Text(String(format: "%.1f", programa.avaliacao))
                        .font(.caption)
                        .foregroundStyle(.secondary)
                        .padding()
    
                }
                
            }
            Spacer()
            // TODO D: chevron Image(systemName: "chevron.right")
            Image(systemName: "chevron.right")
                .font(.footnote)
                .foregroundColor(.gray)
                .padding(.trailing, 16)
            
            
        }
        .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 2)
        .background(Color(.systemBackground))
        .cornerRadius(16)
    }
}

#Preview {
    ShowCard(programa: naruto)
}
