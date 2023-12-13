struct Palindrome {
  
  let value: String
  
  init?(_ rawValue: String, allowSpecialCharacters: Bool = false) {
    
    guard !rawValue.isEmpty else { return nil }
    
    var filteredCharacters: String
    
    let lowercasedRawValue = rawValue.lowercased()
    
    if allowSpecialCharacters {
      
      filteredCharacters = lowercasedRawValue
      
    } else {
      
      filteredCharacters = lowercasedRawValue.filter { $0.isLetter || $0.isNumber }
      
    }
    
    guard !filteredCharacters.isEmpty,
          filteredCharacters == String(filteredCharacters.reversed()) else { return nil }
    
    self.value = rawValue
    
  }
  
}
