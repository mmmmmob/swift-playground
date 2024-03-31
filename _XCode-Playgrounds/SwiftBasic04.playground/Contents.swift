// Optional
    // The way to declare a variable that could store actual value OR nil (null) value
    // represents with ?

var userName: String?
userName = "Sam"

// If we normally unpack the optional variable, Xcode will warn us and print as Optional(value)
print(userName)

// ! is use to force unpack the value of optional variable
print(userName!)

// The problem is if the value inside is nil, our code could break if we force unpack with !
// We can use conditional to prevent this:
userName = nil
if userName != nil {
    print(userName!)
}

// Dictionary
    // with explicitly type declaration (Can be omitted for type inference)
var boilingTime: [String: Int] = ["Soft": 1, "Medium": 5, "Hard": 12]

    // Dictionary always return as an optional value because it might be a case where we mispelled the key and Swift return as nil value
print(boilingTime["soft"]) // => this key misspelled return as nil and will broke the code if we force unwrapped (the reason why there's optional on var)

    // Retrieve value from key (force unwrapped with !)
print(boilingTime["Soft"]!)

    // Add key and value to existing dictionary
boilingTime["Half"] = 3
print(boilingTime["Half"]!)

    // Edit existing value
boilingTime["Hard"] = 15
print(boilingTime["Hard"]!)

    // Dictionary lookup for all key-value
print(boilingTime)
