import UIKit

//Soru1

var str = "aaba kouq bux"
var resultString = str
var counter = 0
var result = removeChar(myString: str, count: 2)

func removeChar(myString:String, count:Int) -> String {
    for char1 in myString{
        counter = 0
        for char2 in myString{
            if char1 == char2{
                counter += 1
            }
        }
        if counter >= count && char1 != " "{
            resultString = resultString.replacingOccurrences(of: String(char1), with: "")
        }
    }
    return resultString
}
    
    
//Soru2

let str2 = "merhaba nasılsınız . iyiyim siz nasılsınız . bende iyiyim."

let words = str2.components(separatedBy: .whitespaces)

var wordValues = [String:Int]()

for word in words{
    
    if wordValues[word] == nil {
        wordValues[word] = 1
    }else {
        wordValues[word]! += 1
    }
 }
print(wordValues)

