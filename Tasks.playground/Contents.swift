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

        //  solution of the problem is in recursive pattern and this while loop does the required removal of one patten in each cycle.
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
