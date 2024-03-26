// Function Declaration
func greeting() {
    print("Hello")
}

//  Function Calling
greeting()

// Scope
func greeting1() {
    print("Hello")

    func greeting2() {
        print("Hey")
    }

    greeting2()
}

greeting1()

// Function with Inputs (+ Type Inference)
func greetingName(name: String) {
    print("Hello \(name)")
}

greetingName(name: "Mob")
greetingName(name: "Angela")

// Explicitly declare type of variable
var age: Int = 25
// age = "Twenty" ❌
