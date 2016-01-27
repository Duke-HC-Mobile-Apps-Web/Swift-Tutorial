import Foundation

public class OperatorsVerifier{
    var nums = [Int]()
    var soln = [Int](0..<100)
    
    public init(){
        
    }
    
    public func callMeX100(number: Int) -> String{
        nums.append(number)
        if nums == soln{
            return "Complete"
        }
        return "Not complete"
    }
}

public class StringVerifier{
    public init(){
        
    }
    
    public func printPi(piString: String) -> String{
        //nice try, but no cheating...
        if (piString.hashValue == -4799450061154050169){
            return "Complete"
        }
        else{
            return "Not complete"
        }
    }
}
