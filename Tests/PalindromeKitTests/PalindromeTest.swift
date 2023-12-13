@testable import PalindromeKit
import XCTest

class PalindromeTest: XCTestCase {
  
  func testValidPalindrome() {
    XCTAssertNotNil(Palindrome("racecar"))
  }
  
  func testInvalidPalindrome() {
    XCTAssertNil(Palindrome("something"))
  }
  
  func testNotAllowSpecialCharacters() {
    XCTAssertNil(Palindrome("$#@#$"))
  }
  
  func testAllowSpecialCharacters() {
    XCTAssertNotNil(Palindrome("$#@#$", allowSpecialCharacters: true))
  }
  
  func testSentencePalindromes() {
    XCTAssertNotNil(Palindrome("A man, a plan, a canal, Panama."))
    XCTAssertNotNil(Palindrome("Was it a car or a cat I saw?"))
  }
  
}
