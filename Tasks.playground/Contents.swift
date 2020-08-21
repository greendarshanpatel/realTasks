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
