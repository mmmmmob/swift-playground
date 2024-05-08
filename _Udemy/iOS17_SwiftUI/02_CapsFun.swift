import SwiftUI

struct ContentView: View {
    
    @State var userText: String = ""
    // wrapper to enable auto-hide keyboard
    @FocusState private var textIsFocused: Bool
    
    var body: some View {
        VStack {
            Text("\(userText)")
                .font(.system(.largeTitle, design: .rounded))
                .bold()
                .padding()
                .textSelection(.enabled)
            TextField("Enter text here.", text: $userText, axis: .vertical)
                .lineLimit(2...4)
            // $ before variable name means that this variable is meant to be mutated and binding with @State wrapper
                .textFieldStyle(.roundedBorder)
            // trigger keyboard hiding after boolean value changed to false after tapped == TextField isn't in focus
                .focused($textIsFocused)
                .padding()
            
            HStack {
                // Use .onTapGesture (non-flash)
                ButtonView(btnText: "ALL CAPS", btnColor: .teal)
                    .onTapGesture(perform: {
                        userText = userText.uppercased()
                        textIsFocused = false
                    })
                
                // Use Button struct (has user feedback)
                Button(action: {
                    userText = userText.capitalized
                    textIsFocused = false
                }) {
                    ButtonView(btnText: "First Letter", btnColor: .green)
                }
                // Use .onTapGesture (non-flash)
                ButtonView(btnText: "lowercase", btnColor: .red)
                    .onTapGesture(perform: {
                        userText = userText.lowercased()
                        textIsFocused = false
                    })
            }
            .padding()
        }
    }
}

// Create reusable ButtonView
struct ButtonView: View {
    var btnText: String
    var btnColor: Color
    var body: some View {
        Text("\(btnText)")
            .font(.system(.title3, design: .rounded))
            .bold()
            .foregroundStyle(Color.white)
            .padding(5)
            .frame(maxWidth: .infinity, minHeight: 70)
            .background(btnColor)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
