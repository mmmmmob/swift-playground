/*
  Given students' names along with the grade that they are in, create a roster for the school.

  In the end, you should be able to:
    - addStudent() -> Add a student's name to the roster for a grade
    - studentsInGrade() -> Get a list of all students enrolled in a grade
    - roster() -> Get a sorted list of all students in all grades. Grades should sort as 1, 2, 3, etc., and students within a grade should be sorted alphabetically by name.
  
  Note that all our students only have one name (It's a small town, what do you want?) and each student cannot be added more than once to a grade or the roster. In fact, when a test attempts to add the same student more than once, your implementation should indicate that this is incorrect.
*/

class GradeSchool {
  var allStudents: [String: Int] = [:]

  func roster() -> [String] {
    var result: [String] = []
    var sortedStudentByGrade = allStudents.sorted(by: {$0.value < $1.value})
    let maxGrade = sortedStudentByGrade.last?.value

    guard let maxGrade else { return result }
    for i in 1...maxGrade {
      let sortedStudentByGradeAndName = sortedStudentByGrade.filter({$0.value == i}).sorted(by: {$0.key < $1.key})
      for student in sortedStudentByGradeAndName {
        result.append(student.key)
      }
    }

    return result
  }

  func addStudent(_ name: String, grade: Int) -> Bool {
    if allStudents.contains(where: {$0.key == name}) {
      return false
    } else {
      allStudents.updateValue(grade, forKey: name)
      return true
    }
  }

  func studentsInGrade(_ grade: Int) -> [String] {
    let grader: [String : Int] = allStudents.filter({$0.value == grade})

    var result: [String] = []
    for student: (key: String, value: Int) in grader {
      result.append(student.key)
    }
    return result.sorted()
  }
}

let school: GradeSchool = GradeSchool()
school.addStudent("Peter", grade: 2)
school.addStudent("Anna", grade: 1)
school.addStudent("Anna", grade: 2) // return false
school.addStudent("Barb", grade: 1)
school.addStudent("Zoe", grade: 2)
school.addStudent("Alex", grade: 2)
school.addStudent("Jim", grade: 3)
school.addStudent("Charlie", grade: 1)
/* --------------------- */
print(school.roster()) // ["Anna", "Barb", "Charlie", "Alex", "Peter", "Zoe", "Jim"]
print(school.studentsInGrade(2)) // ["Alex", "Peter", "Zoe"]