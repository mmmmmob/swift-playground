let skeleton = Enemy(health: 100, attackStrength: 10)
skeleton.attack()
skeleton.move()
skeleton.takeDamage(equals: 30)

print("-------------")

// Structs are passed by value <New copy>
// Classes are passed by reference <Reference to original>

let skeleton2 = skeleton
print("Another copied skeleton do nothing but its health also at \(skeleton2.health)")

print("-------------")

let dragon = Dragon(health: 200, attackStrength: 50)
dragon.talk(speech: "Hello,World!")
dragon.attackStrength = 250
dragon.attack()
dragon.move()
