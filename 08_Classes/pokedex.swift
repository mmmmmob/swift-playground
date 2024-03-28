class Pokemon {
  var num = 0
  var name = ""
  var type = [""]
  var ability = [""]

  init(num: Int, name: String, type: [String], ability: [String]) {
    self.num = num
    self.name = name
    self.type = type
    self.ability = ability
  }

  func displayInfo() {
    print("\(self.name) (#\(self.num)) : is a \(self.type) pokemon that has \(self.ability) as their signature move!\n")
  }
}

var fushigidane = Pokemon(num: 1, name: "フシギダネ", type: ["Grass 🌱", "Poison 💀"], ability: ["Overgrow"])

var hitokage = Pokemon(num: 4, name: "ヒトカゲ", type: ["Fire 🔥"], ability: ["Blaze"])

var zenigame = Pokemon(num: 7, name: "ゼニガメ", type: ["Water 💧"], ability: ["Torrent"])

fushigidane.displayInfo()
hitokage.displayInfo()
zenigame.displayInfo()

class GigantamaxPokemon: Pokemon {
  var location = ""

  init(num: Int, name: String, type: [String], ability: [String], location: String) {
    self.location = location
    super.init(num: num, name: name, type: type, ability: ability)
  }

  override func displayInfo() {
    print("\(self.name) (#\(self.num)) : is a \(self.type) pokemon that has \(self.ability) as their signature move! and can ba found around \(self.location)\n")
  }
}

var rizadon = GigantamaxPokemon(num: 6, name: "リザードン", type: ["Fire 🔥"], ability: ["Blaze"], location: "Lake of Outrage")

rizadon.displayInfo()