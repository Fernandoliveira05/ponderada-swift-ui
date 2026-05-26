// Programa.swift -- atualizado para suportar links web de imagens
import SwiftUI

struct Programa {
    let nome: String
    let tipo: String       // "Anime" | "Desenho" | "Serie"
    let emoji: String      // Mantido para compatibilidade com os dados antigos
    let imagemUrl: String  // NOVO: Link web para a imagem do programa
    let genero: String
    let sinopse: String
    let episodios: Int
    let temporadas: Int
    let avaliacao: Double  // 0.0 - 5.0
    let status: String     // "Em exibicao" | "Concluido"
    // ATUALIZADO: Tupla agora aceita também um link de imagem para o personagem
    let personagens: [(nome: String, papel: String, emoji: String, imagemUrl: String)]
    
    var tipoo: TipoPrograma {
        return TipoPrograma(rawValue: tipo) ?? .serie
    }
}
 
// Dados fornecidos originalmente (atualizados apenas com strings vazias nos novos campos para não quebrar)
let naruto = Programa(
    nome: "Naruto", tipo: "Anime", emoji: "\u{1F9C6}", imagemUrl: "https://d1yjjnpx0p53s8.cloudfront.net/styles/logo-thumbnail/s3/0021/2934/brand.gif?itok=b0P8K6z2",
    genero: "Acao - Aventura",
    sinopse: "Naruto Uzumaki e um jovem ninja que sonha em se tornar Hokage, o lider maximo de sua aldeia.",
    episodios: 720, temporadas: 5, avaliacao: 5.0,
    status: "Concluido",
    personagens: [("Naruto Uzumaki","Protagonista","\u{1F9C6}", ""),
                  ("Sasuke Uchiha","Rival","\u{26A1}", ""),
                  ("Sakura Haruno","Companheira","\u{1F338}", "")]
)
 
let avatar = Programa(
    nome: "Avatar: A Lenda de Aang", tipo: "Desenho", emoji: "\u{1F30A}", imagemUrl: "https://images.seeklogo.com/logo-png/34/1/avatar-logo-png_seeklogo-347737.png",
    genero: "Aventura - Fantasia",
    sinopse: "Aang e o Avatar, mestre dos quatro elementos, destinado a trazer a paz ao mundo em guerra.",
    episodios: 61, temporadas: 3, avaliacao: 5.0,
    status: "Concluido",
    personagens: [("Aang","Protagonista","\u{1F30A}", ""),
                  ("Katara","Aliada","\u{1F4A7}", ""),
                  ("Zuko","Antagonista","\u{1F525}", "")]
)
 
let strangerThings = Programa(
    nome: "Stranger Things", tipo: "Serie", emoji: "\u{1F526}", imagemUrl: "https://pyramidinternational.com/cdn/shop/files/ee2bff8b9b65d249ac5c2a499184183f.jpg?v=1759872454",
    genero: "Terror - Ficcao Cientifica",
    sinopse: "Um grupo de amigos descobre forcas sobrenaturais e experimentos secretos em sua cidade.",
    episodios: 34, temporadas: 4, avaliacao: 4.7,
    status: "Em exibicao",
    personagens: [("Eleven","Protagonista","\u{1F526}", ""),
                  ("Mike Wheeler","Lider","\u{1F9D1}", ""),
                  ("Demogorgon","Antagonista","\u{1F479}", "")]
)

let breakingBad = Programa(
    nome: "Breaking Bad", tipo: "Serie", emoji: "\u{2622}", imagemUrl: "https://i.scdn.co/image/ab67616d0000b2732aabcf79e0240e36f95877b5",
    genero: "Drama - Policial",
    sinopse: "Um professor de quimica diagnosticado com cancer terminal passa a produzir metanfetamina para garantir o futuro de sua familia.",
    episodios: 62, temporadas: 5, avaliacao: 5.0,
    status: "Concluido",
    personagens: [("Walter White", "Protagonista", "\u{1F453}", ""),
                  ("Jesse Pinkman", "Parceiro", "\u{1F9E2}", ""),
                  ("Hank Schrader", "Antagonista", "\u{1F46E}", "")]
)

let onePiece = Programa(
    nome: "One Piece", tipo: "Anime", emoji: "\u{2620}", imagemUrl: "https://painel.lojavirus.com.br/uploads/onepiece_2_00f0562289.png",
    genero: "Acao - Aventura",
    sinopse: "Monkey D. Luffy e sua tripulacao navegam pelo mundo em busca do tesouro supremo para se tornar o Rei dos Piratas.",
    episodios: 1100, temporadas: 21, avaliacao: 4.9,
    status: "Em exibicao",
    personagens: [("Luffy", "Protagonista", "\u{1F452}", ""),
                  ("Zoro", "Imediato", "\u{2694}", ""),
                  ("Nami", "Navegadora", "\u{1F34A}", "")]
)

let rickAndMorty = Programa(
    nome: "Rick and Morty", tipo: "Desenho", emoji: "\u{1F47D}", imagemUrl: "https://platform.vox.com/wp-content/uploads/sites/2/chorus/uploads/chorus_asset/file/15443821/RAM_S2_Ep205.0.0.1505932128.jpg?quality=90&strip=all&crop=7.8125,0,84.375,100",
    genero: "Comedia - Ficcao Cientifica",
    sinopse: "As aventuras cientificas e interdimensionais do brilhante e instavel Rick com seu neto ansioso Morty.",
    episodios: 74, temporadas: 7, avaliacao: 4.8,
    status: "Em exibicao",
    personagens: [("Rick Sanchez", "Protagonista", "\u{1F468}\u{200D}\u{1F52C}", ""),
                  ("Morty Smith", "Companheiro", "\u{1F9D2}", ""),
                  ("Summer Smith", "Aliada", "\u{1F467}", "")]
)

let gameOfThrones = Programa(
    nome: "Game of Thrones", tipo: "Serie", emoji: "\u{1F451}", imagemUrl: "https://platform.vox.com/wp-content/uploads/sites/2/chorus/uploads/chorus_asset/file/11676205/khalessi.0.0.jpg?quality=90&strip=all&crop=16.692307692308,0,66.615384615385,100",
    genero: "Fantasia - Drama",
    sinopse: "Familias nobres de Westeros lutam pelo controle do Trono de Ferro enquanto uma ameaca antiga desperta no extremo norte.",
    episodios: 73, temporadas: 8, avaliacao: 4.6,
    status: "Concluido",
    personagens: [("Jon Snow", "Protagonista", "\u{1F5E1}", ""),
                  ("Daenerys Targaryen", "Lider", "\u{1F409}", ""),
                  ("Tyrion Lannister", "Estrategista", "\u{1F377}", "")]
)

let theOffice = Programa(
    nome: "The Office", tipo: "Serie", emoji: "\u{1F4BC}", imagemUrl: "https://wordpress-cms-gc-prod-assets.quero.space/uploads/2023/01/The-Office.jpg",
    genero: "Comedia - Mockumentary",
    sinopse: "O cotidiano divertido e peculiar dos funcionarios de uma empresa de papel em Scranton, liderados por um chefe sem nocao.",
    episodios: 201, temporadas: 9, avaliacao: 4.8,
    status: "Concluido",
    personagens: [("Michael Scott", "Chefe", "\u{1F923}", ""),
                  ("Jim Halpert", "Vendedor", "\u{1F441}", ""),
                  ("Dwight Schrute", "Assistente", "\u{1F453}", "")]
)

let demonSlayer = Programa(
    nome: "Demon Slayer", tipo: "Anime", emoji: "\u{2694}", imagemUrl: "https://cdn.pipocamoderna.com.br/wp-content/uploads/2025/09/Demon-slayer-infinity-castle-1140x881.jpg.webp",
    genero: "Acao - Fantasia",
    sinopse: "Tanjiro Kamado se torna um cacador de demonios para salvar sua irma, Nezuko, que foi transformada em uma criatura das trevas.",
    episodios: 55, temporadas: 4, avaliacao: 4.9,
    status: "Em exibicao",
    personagens: [("Tanjiro Kamado", "Protagonista", "\u{1F343}", ""),
                  ("Nezuko Kamado", "Irma", "\u{1F34B}", ""),
                  ("Zenitsu Agatsuma", "Aliado", "\u{26A1}", "")]
)

let theMandalorian = Programa(
    nome: "The Mandalorian", tipo: "Serie", emoji: "\u{1FA96}", imagemUrl: "https://lumiere-a.akamaihd.net/v1/images/image_9b515c87.jpeg",
    genero: "Ficcao Cientifica - Aventura",
    sinopse: "As viagens de um cacador de recompensas solitario nos confins da galaxia, longe da autoridade da Nova Republica.",
    episodios: 24, temporadas: 3, avaliacao: 4.7,
    status: "Em exibicao",
    personagens: [("Din Djarin", "Protagonista", "\u{1FA96}", ""),
                  ("Grogu", "Protegido", "\u{1F47D}", ""),
                  ("Greef Karga", "Aliado", "\u{1F91D}", "")]
)

let apenasUmShow = Programa(
    nome: "Apenas um Show", tipo: "Desenho", emoji: "\u{1F4A6}", imagemUrl: "https://conteudo.imguol.com.br/c/entretenimento/29/2015/08/25/mordecai-e-rigby-personagens-do-desenho-apenas-um-show-1440532277679_956x500.jpg",
    genero: "Comedia - Fantasia",
    sinopse: "Mordecai e Rigby sao dois amigos que trabalham como zeladores em um parque, mas sempre transformam tarefas simples em problemas surreais.",
    episodios: 261, temporadas: 8, avaliacao: 4.9,
    status: "Concluido",
    personagens: [("Mordecai", "Protagonista", "\u{1F426}", ""),
                  ("Rigby", "Protagonista", "\u{1F99D}", ""),
                  ("Benson", "Chefe", "\u{1F36C}", "")]
)

let horaDeAventura = Programa(
    nome: "Hora de Aventura", tipo: "Desenho", emoji: "\u{1F5E1}", imagemUrl: "https://m.media-amazon.com/images/S/pv-target-images/e5d6007007511fc2d0e109fc0513f6ab3a6955beefcf6e4f0ba2993eec02de66._SX1080_FMjpg_.jpg",
    genero: "Aventura - Fantasia",
    sinopse: "Finn, um garoto humano, e seu melhor amigo Jake, um cao com poderes magicos, protegem os habitantes da Terra de Ooo.",
    episodios: 283, temporadas: 10, avaliacao: 4.9,
    status: "Concluido",
    personagens: [("Finn", "Protagonista", "\u{1F9D2}", ""),
                  ("Jake", "Parceiro", "\u{1F415}", ""),
                  ("Rei Gelado", "Antagonista", "\u{2744}", "")]
)

let primal = Programa(
    nome: "Primal", tipo: "Desenho", emoji: "\u{1F996}", imagemUrl: "https://rollingstone.com.br/wp-content/uploads/2026/01/Quantos-episodios-a-3a-temporada-de-Primal-tera-Veja-a-duracao-da-nova-fase.jpg",
    genero: "Acao - Drama - Fantasia",
    sinopse: "A premiada obra do Adult Swim mostra a improvavel amizade entre um homem das cavernas e um dinossauro em um mundo pre-historico violento.",
    episodios: 20, temporadas: 2, avaliacao: 5.0,
    status: "Concluido",
    personagens: [("Spear", "Protagonista", "\u{1F9CD}", ""),
                  ("Fang", "Companheira", "\u{1F996}", ""),
                  ("Mira", "Aliada", "\u{1F3F9}", "")]
)

let osSimpsons = Programa(
    nome: "Os Simpsons",
    tipo: "Desenho",
    emoji: "\u{1F46A}",
    imagemUrl: "https://www.notebookcheck.net/fileadmin/_processed_/webp/Notebooks/News/_nc5/Showrunner-Al-Jean-verlaesst-nach-25-Jahren-Die-Simpsons-q82-w2560-h.webp",
    genero: "Comedia - Animacao",
    sinopse: "A rotina satirica de uma familia disfuncional da classe trabalhadora americana na cidade de Springfield.",
    episodios: 760,
    temporadas: 35,
    avaliacao: 1.6,
    status: "Em exibicao",
    personagens: [
        ("Homer Simpson", "Pai", "\u{1F349}", ""),
        ("Marge Simpson", "Mae", "\u{1F467}", ""),
        ("Bart Simpson", "Filho", "\u{1F6F9}", "")
    ]
)

let succession = Programa(
    nome: "Succession",
    tipo: "Serie",
    emoji: "\u{1F4BC}",
    imagemUrl: "https://admin.cnnbrasil.com.br/wp-content/uploads/sites/12/2023/05/elenco-de-succession-salario.webp?w=1200&h=900&crop=1",
    genero: "Drama - Negocios",
    sinopse: "Acompanhe a saga da familia Roy enquanto eles disputam o controle do maior conglomerado de midia e entretenimento do mundo.",
    episodios: 39,
    temporadas: 4,
    avaliacao: 4.9,
    status: "Concluido",
    personagens: [
        ("Logan Roy", "Patriarca", "\u{1F468}", ""),
        ("Kendall Roy", "Filho", "\u{1FA94}", ""),
        ("Shiv Roy", "Filha", "\u{1F469}", "")
    ]
)


enum TipoPrograma: String {
    case anime = "Anime"
    case desenho = "Desenho"
    case serie = "Serie"
    
    var cor: Color {
        switch self {
        case .anime: return .orange
        case .desenho: return .blue
        case .serie: return .purple
        }
    }
}

extension Programa {
    static let todosOsProgramas: [Programa] = [
        naruto, avatar, strangerThings,
        breakingBad, onePiece, rickAndMorty, gameOfThrones,
        theOffice, demonSlayer, theMandalorian,
        apenasUmShow, horaDeAventura, primal,
        osSimpsons, succession 
    ]
}
