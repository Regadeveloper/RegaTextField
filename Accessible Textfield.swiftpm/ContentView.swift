import SwiftUI

struct ContentView: View {
    // Keyboard
    let textContentType: UITextContentType = .password
    let keyboardType: UIKeyboardType = .default

    // TextField
    let placeholder = "Introduce tu contraseña"
    @State var value: String = ""
    @State var isRedacted: Bool = false
    
    public var body: some View {
        VStack {
            Group {
                if isRedacted {
                    AccessibleSecureField(
                        textContentType: textContentType,
                        keyboardType: keyboardType,
                        placeholder: placeholder,
                        value: $value
                    )
                } else {
                    AccessibleTextField(
                        textContentType: textContentType,
                        keyboardType: keyboardType,
                        placeholder: placeholder,
                        value: $value
                    )
                }
            }
            Toggle(isOn: $isRedacted) {
                Text("isRedacted")
            }
        }
        .padding()
    }
}
