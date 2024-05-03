import SwiftUI

struct ContentView: View {
    
    @State var count = 0
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.system(size: 100, design: .monospaced)).bold()
            HStack {
                Button("Increase") { count += 1 }
                    .font(.system(.title, design: .monospaced))
                    .foregroundStyle(Color.accentColor)
                Spacer()
                Button("Decrease") { count -= 1 }
                    .font(.system(.title, design: .monospaced))
                    .foregroundStyle(Color.red)
            }
            .padding(EdgeInsets(
                top: 10,
                leading: 40,
                bottom: 0,
                trailing: 40)
            )
        }
    }
}

#Preview {
    ContentView()
}