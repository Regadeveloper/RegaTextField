import SwiftUI

struct AccessibleSecureField: View {
    // Keyboard
    let textContentType: UITextContentType
    let keyboardType: UIKeyboardType
    
    // Textfield
    let placeholder: String
    @Binding var value: String
    
    var body: some View {
        SecureField(placeholder, text: $value)
            .textContentType(textContentType)
            .keyboardType(keyboardType)
            .accessibilityLabel(placeholder)
    }
}
