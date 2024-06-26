struct Size {
    var width: Int = 80
    var height: Int = 60

    mutating func resize(newWidth: Int, newHeight: Int) {
        width = newWidth
        height = newHeight
    }
}

struct Position {
    var x: Int = 0
    var y: Int = 0

    mutating func moveTo(newX: Int, newY: Int) {
        x = newX
        y = newY
    }
}

class Window {
    var title: String = "New Window"
    let screenSize: Size = .init(width: 800, height: 600)
    var size: Size = .init()
    var position: Position = .init()
    var contents: String?

    /*
       ?? 👇🏼 min(x, y) and max(x, y) is using to return two comparable value that lower or greater respectively 👇🏼
     */

    func resize(to size: Size) {
        self.size.width = min(max(1, size.width), screenSize.width - position.x)
        self.size.height = min(max(1, size.height), screenSize.height - position.y)
    }

    func move(to position: Position) {
        self.position.x = min(max(0, position.x), screenSize.width - size.width)
        self.position.y = min(max(0, position.y), screenSize.height - size.height)
    }

    func update(title: String) {
        self.title = title
    }

    func update(text: String?) {
        contents = text
    }

    func display() -> String {
        return "\(title)\nPosition: (\(position.x), \(position.y)), Size: (\(size.width) x \(size.height))\n\(contents ?? "[This window intentionally left blank]")\n"
    }
}

/*
 ?? 👇🏼 This method of declaring a constant in Swift is called "immediately-invoked closure expression" or "IIFE" (Immediately Invoked Function Expression).

 ?? In this method, you're defining a closure { ... } and immediately invoking it with (). This allows you to perform some setup or initialization logic and then immediately assign the result to mainWindow. 👇🏼

 !! using init() is more understandable though
 */

let mainWindow: Window = {
    let window = Window()
    window.title = "Main Window"
    window.contents = "This is the main window"
    window.size.width = 400
    window.size.height = 300
    window.position.x = 100
    window.position.y = 100
    return window
}()
