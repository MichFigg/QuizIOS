import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "Słońce jest gwiazdą", a: "True"),
        Question(q: "Woda wrze przy temperaturze 100 stopni Celsjusza na poziomie morza", a: "True"),
        Question(q: "Księżyc ma swoje własne źródło światła", a: "False"),
        Question(q: "Australia to największy kontynent na świecie.", a: "False"),
        Question(q: "Atom składa się z elektronów, protonów i neutronów.", a: "True"),
        Question(q: "Ludzkie ciało składa się z około 70% wody.", a: "True"),
        Question(q: "Antarktyda to najbardziej zaludniony kontynent.", a: "False"),
        Question(q: "Ziemia jest czwarta planetą od Słońca.", a: "True"),
        Question(q: "Mona Lisa to obraz autorstwa Vincenta van Gogha.", a: "False"),
        Question(q: "DNA jest skrótem od Deoksyrybonukleinowego Kwasu.", a: "True"),
        Question(q: "W ciągu swojego życia człowiek zużywa więcej niż 20 000 litrów powietrza dziennie.", a: "True"),
        Question(q: "Wszystkie palce u stóp mają własne nazwy, takie jak palce u rąk.", a: "False")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
     mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
}

