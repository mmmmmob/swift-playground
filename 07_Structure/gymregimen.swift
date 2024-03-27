struct Exercise {
  var name: String
  var muscleGroup: [String]
  var reps: Int
  var sets: Int
  var totalReps: Int

  init(name: String, muscleGroup: [String], reps: Int, sets: Int) {
    self.name = name
    self.muscleGroup = muscleGroup
    self.reps = reps
    self.sets = sets
    self.totalReps = reps * sets
  }
}

var pushUp = Exercise(name: "Push Up", muscleGroup: ["Triceps", "Chest", "Shoulders"], reps: 10, sets: 3)

var jumpingJack = Exercise(name: "Jumping Jack", muscleGroup: ["Legs","Biceps"], reps: 25, sets: 5)

struct Regimen {
  var dayOfWeek: String
  var exercises: [Exercise]

  init(dayOfWeek: String, exercises: [Exercise]) {
    self.dayOfWeek = dayOfWeek
    self.exercises = exercises
  }

  func printExercisePlan() {
    print("Today is \(self.dayOfWeek) and the plan is to:\n")
    for exercise in self.exercises {
      print("Do \(exercise.sets) sets of \(exercise.reps) \(exercise.name)s.")
      print("That's a total of \(exercise.totalReps) \(exercise.name).")
    }
  }

  mutating func changeExercise(newExercises: [Exercise]) -> [Exercise] {
    self.exercises = newExercises
    return self.exercises
  }
}

var mondayRegimen = Regimen(dayOfWeek: "Monday", exercises: [pushUp])

let newExercises = mondayRegimen.changeExercise(newExercises: [jumpingJack])

print(newExercises)
print(mondayRegimen.printExercisePlan())