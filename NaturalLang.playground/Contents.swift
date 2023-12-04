import NaturalLanguage

// MARK: - 언어 분석
if let language = NLLanguageRecognizer.dominantLanguage(for: "안녕하세요") {
    print(language.rawValue)
}

// MARK: - 언어 분석 2
let recognizer = NLLanguageRecognizer()
recognizer.processString("Ich liebe dich")
let hypotheses = recognizer.languageHypotheses(withMaximum: 10)
if let languag = NLLanguageRecognizer.dominantLanguage(for: "Ich liebe dich"){
    print(languag.rawValue)
}
var langArray = hypotheses.sorted { $0.value > $1.value}
for (lang, prob) in langArray {
    print("\(lang.rawValue) : \(prob)")
}
//for (lang, prob) in hypotheses {
//    print("\(lang.rawValue) : \(prob)")
//}

// MARK: - 형태소 분석
let text = "I love you"
let tagger = NLTagger(tagSchemes: [.lexicalClass, .language, .script])
tagger.string = text
tagger.enumerateTags(in: text.startIndex..<text.endIndex,
                     unit: .word,
                     scheme: .lexicalClass,
                     options: [.omitPunctuation, .omitWhitespace]) { tag, range in
    print("\(text[range]) : \(tag?.rawValue ?? "unkown")")
    return true
}
