//
//  Questions.swift
//  PersonalQuiz
//
//  Created by Kisluhin Mihail on 04.01.23.
//

struct Question {
    let title: String
    let responseType: ResponseType
    let answers: [Answer]
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Answer {
    let title: String
    let animal: Animal
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "Sobaka"
        case .cat:
            return "Koshka"
        case .rabbit:
            return "Krolik"
        case .turtle:
            return "Cherepaha"
        }
    }
}

extension Question {
    static func getQuestions() -> [Question] {
        [
            Question(title: "Kakuy pishu vy predpochitaete?",
                     responseType: .single,
                     answers: [
                        Answer(title: "Steik", animal: .dog),
                        Answer(title: "Ryba", animal: .cat),
                        Answer(title: "Morkov", animal: .rabbit),
                        Answer(title: "Kukuruza", animal: .turtle)
                     ]),
            Question(title: "Chto vam nravitsa bolshe?",
                     responseType: .multiple,
                     answers: [
                        Answer(title: "Plavat", animal: .dog),
                        Answer(title: "Spat", animal: .cat),
                        Answer(title: "Obnimatsa", animal: .rabbit),
                        Answer(title: "Est", animal: .turtle)
                     ]),
            Question(title: "Lubite poezdki na mashine?",
                     responseType: .ranged,
                     answers:[
                        Answer(title: "Nenavizhu", animal: .cat),
                        Answer(title: "Nervnichau", animal: .rabbit),
                        Answer(title: "Ne zamechau", animal: .turtle),
                        Answer(title: "Obozhau", animal: .dog)
                     ])
        ]
    }
}
