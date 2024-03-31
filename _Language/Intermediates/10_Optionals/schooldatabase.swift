struct Student {
  var name: String
  var favoriteTeacherID: Int

  // no need for init() -> Swift will use memberwise initializers for init struct at calling
}

struct Teacher {
  var name: String
  var id: Int
  var email: String?
  var hairColor: String?

  // optionals also means "nil or no nil?!""
}

struct School {
  var name: String
  var teachers: [Teacher]

  func getTeacher(withID id: Int) -> Teacher? {
    for teacher in teachers {
      if id == teacher.id {
        return teacher
      }
    }
    return nil
  }

  func printFavoriteTeacherInfo(for student: Student) {
    guard let favoriteTeacher = getTeacher(withID: student.favoriteTeacherID) else {
      print("Teacher with the ID: \(student.favoriteTeacherID) does not existed at \(name) school")
      return
    }
    print("\(student.name) favorite teacher is \(favoriteTeacher.name)")
    print("They have \(favoriteTeacher.hairColor ?? "no") hair")

    // how to unwrap optionals in 3-ways
    // I. give default value for nil after ??
    // -> ternary operator on steroid
    print("\(favoriteTeacher.name)'s email is \(favoriteTeacher.email ?? "not existed")")

    // II. if-let statement
    // -> If let existed then do THAT on let or else do ANOTHER THAT
    if let teacherMail = favoriteTeacher.email {
      print("Their email is \(teacherMail)")
    } else { print("Their email is not existed") }

    // III. guard statemant 
    // -> hey 'guard'! 'let' this conditions met for them to pass through or 'else' 'return' them back with this line executed!
    guard let teacherEmail = favoriteTeacher.email else {
      print("Their email is not existed\n")
      return
    }
      print("Their email is \(teacherEmail)\n")
  }
}

// ------- structuring constant with data from Struct ------- //

let teachers: [Teacher] = [
  Teacher(name: "Somsak D.", id: 124),
  Teacher(name: "Amornrat L.", id: 145, email: "amornrat.l@gmail.com", hairColor: "Red"),
  Teacher(name: "Kanittha W.", id: 311 , email: nil, hairColor: "White"),
  Teacher(name: "Hiroyuki T.", id: 658, email: "hiro.t@protonmail.com", hairColor: "Black")
]

let school: School = School(name: "Sammy High", teachers: teachers)

let student1: Student = Student(name: "Yinmee T.", favoriteTeacherID: 145)
let student2: Student = Student(name: "Theppitak M.", favoriteTeacherID: 311)

school.printFavoriteTeacherInfo(for: student1)
school.printFavoriteTeacherInfo(for: student2)