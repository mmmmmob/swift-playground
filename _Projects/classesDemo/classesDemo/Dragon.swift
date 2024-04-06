// Define SuperClass
class Dragon: Enemy {
    var wingSpan = 2
    
    func talk(speech: String) {
        print("Says: '\(speech)'")
    }
    
    override func move() {
        print("Fly forward.")
    }
    
    override func attack() {
        super.attack() // run method from superclass first
        print("Spits fire, does 10 damage.")
    }
}
