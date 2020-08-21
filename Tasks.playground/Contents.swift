///Problem : 5
class theLoneSurvivor {
 
    // function to Line up All soldiers in circle and returning an Array
    class func lineUp(numberOfPeople:Int) -> [Int] {
        var people = [Int]()
        for i in 1...numberOfPeople {
            people.append(i)
        }
        return people
    }
    // This block starts removing one number from array/ or person form circle.
    class func execute(numberOfPeople:Int, spacing:Int) -> Int {
        var killIndex = 0
        var people = self.lineUp(numberOfPeople: numberOfPeople)

        //  solution of the problem is in recursive pattern and this while loop does the required removal of one pattern in each cycle untill only one survivor exist.
        while (people.count > 1) {
            killIndex = (killIndex + spacing - 1) % people.count
            people.remove(at: killIndex)
        }
        print()
        return people[0]
    }
}

theLoneSurvivor.execute(numberOfPeople: 41, spacing: 2)
theLoneSurvivor.execute(numberOfPeople: 35, spacing: 11)
theLoneSurvivor.execute(numberOfPeople: 11, spacing: 1)

///Problem 2
func removeSmallest(array: inout [Int]) -> [Int] {
    // finding minimim number
    guard let minNumber = array.min() else { return [] }
    // geting the indix of minimum number
    guard let minNumberIndex = array.firstIndex(of: minNumber) else { return [] }
    //removing that minimum number
    array.remove(at: minNumberIndex)
    return array
}

var a = [1,2,3,4,5]
var b = [2,2,1,2,1]
print(removeSmallest(array: &a))
print(removeSmallest(array: &b))

/// Problem : 3
///References: https://developer.apple.com/documentation/swift/arrayslice
func splitAlphabetsAndNumericals(string: String) -> [Any] {
    let characterArray = Array(string)
    let indexOfLastLetter = characterArray.lastIndex(where: {c in c.isLetter})
    
    //or
    //if the split is supposed to happen from the middle
//    let midPoint = characterArray.count/2
    
    let firstSplit = characterArray[0..<indexOfLastLetter! + 1]
    let secondSplit = characterArray[indexOfLastLetter!+1..<characterArray.count]
    
    var returnArray: [Any] = []
    returnArray.append(String(firstSplit))
    if let secondSplitInt = Int(String(secondSplit)) {
        returnArray.append(secondSplitInt)
    }
    return returnArray
}

print(splitAlphabetsAndNumericals(string: "NCBMNH11"))
print(splitAlphabetsAndNumericals(string: "abc176"))

///Problem : 1
import Foundation

func replaceVowels(string: String, replaceWith: Character) -> String {
    let vowels: [Character] = ["a", "A", "e","E","i", "I", "o","O","u","U"]
    // Using Generic instance method of String class to map each character and replacing it with character
    return String(string.map { character in
        vowels.contains(character) ? replaceWith : character
    })
}

print(replaceVowels(string: "Waterloo AEIOU aeiou", replaceWith: "$"))
print(replaceVowels(string: "real pineapple 12345 aeiou", replaceWith: "$"))

/// Problem :  4
func findCommon(a: [Int], b: [Int]) -> [Int] {
    return a.filter(b.contains)
}
print(findCommon(a: [1,2,3,4,5], b: [2,6,3,5,1]))
print(findCommon(a: [2,3,4,5], b: [2,0,6,3,5,1]))
