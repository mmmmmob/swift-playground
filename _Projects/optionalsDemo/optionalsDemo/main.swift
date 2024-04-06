let myOptional: String?
myOptional = nil

// ---- 1. Force Unwrap
// print(myOptional!)

// ---- 2. Check for nil
if myOptional != nil {
    print(myOptional!)
} else {
    print("It's nil")
}

// ---- 3. Optional Binding with if-let
if let myOptional {
    print(myOptional)
} else {
    print("It's nil")
}

// ---- 4. Nil Coalescing Operator <?? with default value>
let text: String = myOptional ?? "It's still nil"
print(text)

// ----------------------- //

struct StructOpt {
    var property = 123
    func method() {
        print("I am the struct's method.")
    }
}

let structOpt: StructOpt?
structOpt = StructOpt()

// ---- 5. Optional Chaining
print(structOpt?.method() ?? "It's still nil, babe")
