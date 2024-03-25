var spanish101: Set = ["Angela", "Declan", "Aldany", "Alex", "Sonny", "Alif", "Skyla"]
var german101: Set = ["Angela", "Alex", "Declan", "Kenny", "Cynara", "Adam"]
var advancedCalculus: Set = ["Cynara", "Gabby", "Angela", "Samantha", "Ana", "Aldany", "Galina", "Jasmine"]
var artHistory: Set = ["Samantha", "Vanessa", "Aldrian", "Cynara", "Kenny", "Declan", "Skyla"]
var englishLiterature: Set = ["Gabby", "Jasmine", "Alex", "Alif", "Aldrian", "Adam", "Angela"]
var computerScience: Set = ["Galina", "Kenny", "Sonny", "Alex", "Skyla"]

var allStudents = spanish101.union(german101).union(advancedCalculus).union(artHistory).union(englishLiterature).union(computerScience)

for student in allStudents {
  print(student)
}
print("\nTotal: \(allStudents.count) students")

var noLanguage = allStudents.subtracting(german101.union(spanish101))
print("\nStudents who doesn't take language class are: \(noLanguage)")

var spanishOrGerman = spanish101.symmetricDifference(german101)
print("\nStudents who take either Spanish or German class are: \(spanishOrGerman)")

var languageAwardWinners = spanish101.intersection(german101).intersection(englishLiterature)
print("\nStudents who take all 3 language classes are: \(languageAwardWinners)")

var sevenPlus: Int = 0
var classSet: Set = [spanish101, german101, englishLiterature, computerScience, artHistory, advancedCalculus]

for className in classSet {
  if className.count >= 7 {
    sevenPlus += 1
  }
}

print("\nThere're \(sevenPlus) classes that exceeds 7 students")

spanish101.remove("Skyla")
artHistory.remove("Skyla")
computerScience.remove("Skyla")

var fieldTrip = computerScience.union(advancedCalculus).subtracting(german101)

print("\nThese students are going to a fieldtrip: \(fieldTrip)")