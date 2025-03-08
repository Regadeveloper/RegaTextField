import SwiftUI

struct AccessibleTextField: View {
    // Keyboard
    let textContentType: UITextContentType
    let keyboardType: UIKeyboardType
    
    // Textfield
    let placeholder: String
    @Binding var value: String
    
    var body: some View {
        TextField(placeholder, text: $value)
            .textContentType(textContentType)
            .keyboardType(keyboardType)
            .accessibilityLabel(placeholder)
            .accessibilityValue(value)
    }
}
