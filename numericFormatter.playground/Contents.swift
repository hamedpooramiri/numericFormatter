import UIKit


func numericFormatter(_ template: String, _ numbers: String = "1234567890") -> String {
    var resultStr = ""
    var currentIndex = 0
    for str in template {
        if str.isLetter {
            let index = numbers.index(numbers.startIndex, offsetBy: currentIndex)
            resultStr.append(numbers[index])
            if currentIndex < numbers.count - 1 {
                currentIndex += 1
            } else {
                currentIndex = 0
            }
        } else {
            resultStr.append(str)
        }
    }
    return resultStr
}

