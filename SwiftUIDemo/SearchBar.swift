import SwiftUI

extension View {
   fileprivate func endEditing() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct SearchBar : View {
    var placeholder:String
    
    @State var searchText: String
    var onChange: ((String) -> Void)?
    var onCommit: ((String) -> Void)?
    
    init(placeholder: String = "Search",searchText: String="",onChange:((String)->Void)? = nil ,onCommit:((String)->Void)? = nil) {
        
        self.placeholder = placeholder
        
        _searchText = State(initialValue: searchText)
        
        self.onChange = onChange
        self.onCommit = onCommit
    }
    
    var body: some View {
        let binding = Binding<String>(get: {
            self.searchText
        }, set: {
            self.searchText = $0
            if self.onChange != nil {
                self.onChange!(self.searchText)
            }
        })
        
       return HStack {
            Image(systemName: "magnifyingglass")
                .padding(.leading, 0)
                .foregroundColor(.secondary)
            TextField(searchText=="" ? placeholder : "", text: binding, onEditingChanged: { (isEditing) in
                if(isEditing) {
                    
                }
            }) {
                if self.onCommit != nil {
                    self.onCommit!(self.searchText)
                }
                UIApplication.shared.windows.first { $0.isKeyWindow }?.endEditing(true)
            }
            .keyboardType(.default)
            .padding(.leading, 10)
            .onTapGesture {}
            .onLongPressGesture(pressing: { (isPressed) in
                if isPressed {
                    self.endEditing()
                }
            }) {
                //perform
            }
            Button(action: {
                self.searchText = ""
                if self.onCommit != nil {
                    self.onCommit!(self.searchText)
                }
            }) {
                Image(systemName: "xmark.circle.fill")
                    .foregroundColor(.secondary)
                    .opacity(searchText == "" ? Double(0) : Double(0.8))
            }
        }.padding(.horizontal)
    }
}
