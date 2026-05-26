import SwiftUI

struct ListaView: View {
    
    private let listaDeProgramas = Programa.todosOsProgramas
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(listaDeProgramas, id: \.nome) { programa in
                        NavigationLink {
                            ProgramaDetailView(programa: programa)
                        } label: {
                            ShowCard(programa: programa)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding()
            }
            .navigationTitle("Programas")
            .background(Color(.systemGroupedBackground))
        }
    }
}

#Preview {
    ListaView()
}
