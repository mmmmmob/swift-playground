import SwiftUI

struct ContentView: View {
    
    @State var userText: String = ""
    
    var body: some View {
        VStack {
            Text("\(userText)")
                .font(.system(.largeTitle, design: .rounded))
                .bold()
                .padding()
            TextField("Enter text here.", text: $userText, axis: .vertical)
                .lineLimit(2...4)
            // $ before variable name means that this variable is meant to be mutated and binding with @State wrapper
                .textFieldStyle(.roundedBorder)
                .padding()
            
            HStack {
                // Use .onTapGesture
                ButtonView(btnText: "ALL CAPS", btnColor: .teal)
                    .onTapGesture(perform: {
                        userText = userText.uppercased()
                    })
                
                // Use Button struct
                Button(action: {userText = userText.capitalized}) {
                    ButtonView(btnText: "First Letter", btnColor: .green)
                }
                // Use .onTapGesture
                ButtonView(btnText: "lowercase", btnColor: .red)
                    .onTapGesture(perform: {
                        userText = userText.lowercased()
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
            .frame(maxWidth: .infinity, minHeight: 50)
            .background(btnColor)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
