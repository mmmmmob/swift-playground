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
    for student in allStudents.keys {
      result.append(student)
    }
    return result.sorted()
  }

  func addStudent(_ name: String, grade: Int) {
    allStudents.updateValue(grade, forKey: name)
  }

  func studentsInGrade(_ grade: Int) -> [String] {
    let grader = allStudents.filter({$0.value == grade})

    var result: [String] = []
    for student in grader {
      result.append(student.key)
    }
    return result.sorted()
  }
}

let school = GradeSchool()
school.addStudent("Franklin", grade: 5) // return OK
school.addStudent("Franklin", grade: 5) // return error and do nothing with dupe input
school.addStudent("Bradley", grade: 5) // return OK
school.addStudent("Jeff", grade: 1) // return OK
/* --------------------- */
print(school.roster()) // ["Franklin", "Bradley", "Jeff"]
print(school.studentsInGrade(5)) // ["Franklin", "Bradley"]