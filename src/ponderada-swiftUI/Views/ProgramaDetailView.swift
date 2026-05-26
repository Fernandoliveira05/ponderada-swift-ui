import SwiftUI

struct ProgramaDetailView: View {
    let programa: Programa
    
    private var corPrincipal: Color {
        programa.tipoo.cor
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                VStack(alignment: .leading, spacing: 12) {
                    Spacer()
                    
                    if let url = URL(string: programa.imagemUrl), !programa.imagemUrl.isEmpty {
                        AsyncImage(url: url) { phase in
                            switch phase {
                            case .empty:
                                ProgressView()
                                    .frame(width: 96, height: 96)
                            
                            case .success(let imagem):
                                imagem
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 96, height: 96)
                                    .clipped()
                                    .cornerRadius(24)
                            
                            case .failure:
                                Text(programa.emoji)
                                    .font(.system(size: 60))
                                    .frame(width: 96, height: 96)
                            @unknown default:
                                EmptyView()
                            }
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 24)
                                .fill(Color.white.opacity(0.12))
                        )
                        .frame(maxWidth: .infinity, alignment: .center)
                    } else {
                        
                        Text(programa.emoji)
                            .font(.system(size: 60))
                            .frame(width: 96, height: 96)
                            .background(
                                RoundedRectangle(cornerRadius: 24)
                                    .fill(Color.white.opacity(0.12))
                            )
                            .frame(maxWidth: .infinity, alignment: .center)
                    }
                    
                    Text(programa.tipo)
                        .font(.subheadline)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 6)
                        .background(
                            Capsule()
                                .fill(corPrincipal)
                        )
                    
                    Text(programa.nome)
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                }
                .padding(24)
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: 280)
                .background(
                    LinearGradient(
                        colors: [
                            corPrincipal.opacity(0.75),
                            Color(red: 0.08, green: 0.03, blue: 0.16),
                            Color.black
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                VStack(alignment: .leading, spacing: 28) {
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Sinopse")
                            .font(.title3)
                            .bold()
                        
                        Text(programa.sinopse)
                            .font(.body)
                            .foregroundColor(.secondary)
                            .lineSpacing(4)
                    }
                    
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Informações")
                            .font(.title3)
                            .bold()
                        
                        HStack(spacing: 12) {
                            InfoBadge(
                                icon: "tv",
                                valor: "\(programa.episodios)",
                                legenda: "Episódios"
                            )
                            
                            InfoBadge(
                                icon: "square.stack",
                                valor: "\(programa.temporadas)",
                                legenda: "Temporadas"
                            )
                            
                            InfoBadge(
                                icon: "checkmark.circle",
                                valor: programa.status,
                                legenda: "Status"
                            )
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Personagens Principais")
                            .font(.title3)
                            .bold()
                        
                        ForEach(programa.personagens, id: \.nome) { personagem in
                            CharacterRow(
                                nome: personagem.nome,
                                papel: personagem.papel,
                                emoji: personagem.emoji
                            )
                            
                            if personagem.nome != programa.personagens.last?.nome {
                                Divider()
                                    .padding(.leading, 60)
                            }
                        }
                    }
                    
                    Button(action: {
                        print("Ver episódios de \(programa.nome)")
                    }) {
                        Text("Ver Todos os Episódios")
                            .bold()
                            .frame(maxWidth: .infinity)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(corPrincipal)
                    .controlSize(.large)
                    
                    Text("CineFernando • Dados atualizados em 2026")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                        .frame(maxWidth: .infinity)
                }
                .padding(24)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(
                    RoundedRectangle(cornerRadius: 28, style: .continuous)
                        .fill(Color.white)
                )
                .offset(y: -24)
                .padding(.bottom, -24)
            }
        }
        .ignoresSafeArea(edges: .top)
        .background(Color.white)
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(.hidden, for: .navigationBar)
    }
}

#Preview {
    NavigationStack {
        ProgramaDetailView(programa: naruto)
    }
}
