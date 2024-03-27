// A Mixtape to listen to while working

print(".------------------------.")
print("| WORK BI**H!     90 min |")
print("|     __  ______  __     |")
print("|    (  )|).....|(  )    |")
print("|    (__)|)_____|(__)    |")
print("|    ________________    |")
print("|___/_._o________o_._\\___|\n")

var mixtape = [String]()

mixtape.append("Stronger - Britney Spears")
mixtape += ["Can't Hold Us - Macklemore & Ryan Lewis ft. Ray Dalton",
    "Run the World (Girls) - Beyoncé",
    "Work - Rihanna ft. Drake",
    "Uptown Funk - Mark Ronson ft. Bruno Mars",
    "Sorry Not Sorry - Demi Lovato" ]
mixtape.insert("Eye of the Tiger - Survivor", at: 3)
mixtape += ["Roar - Katy Perry",
    "Shut Up and Dance - Walk the Moon",
    "Boss Bitch - Doja Cat"]

mixtape.remove(at: 5)

var num: Int = 0
let numOfSongs: Int = mixtape.count

print("Side A: \n")
for _ in mixtape {
  while num <= 4 {
    print("\(num+1). \(mixtape[num])")
    num += 1
  }
}

print("\nSide B: \n")
for _ in mixtape {
  while num < numOfSongs {
    print("\(num+1). \(mixtape[num])")
    num += 1
  }
}
