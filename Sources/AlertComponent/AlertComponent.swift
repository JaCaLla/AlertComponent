import SwiftUI

@available(macOS 10.15, *)
public struct AlertView: View {
    let title: String
    let message: String
    let dismissText: String
    let onDismiss: () -> Void

    public init(title: String, message: String, dismissText: String = "OK", onDismiss: @escaping () -> Void) {
        self.title = title
        self.message = message
        self.dismissText = dismissText
        self.onDismiss = onDismiss
    }

    public var body: some View {
        VStack(spacing: 20) {
            Text(title)
                .font(.headline)
                .padding(.top)

            Text(message)
                .font(.body)

            Button(action: onDismiss) {
                Text(dismissText)
                    .bold()
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
        .background(Color(.white))
        .cornerRadius(16)
        .shadow(radius: 10)
        .padding()
    }
}
