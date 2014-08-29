//[key 1: value 1 , key 2: value 2, key 3 : value 3]
var airports: [String : String] = ["TY0" : "Tokyo","DUB": "Dublin"]

if airports.isEmpty {
    println("The airports dictionary is empty.")
    
}else{
    println("The airports dictionary is not empty.")
}
//prints "The airports dictionary is not empty."

println("The airports dictionary contains \(airports.count) items.")
// prints "The airports dictionary contains 2 items."

airports ["LHR"] = "London"
//the airports dictionary now contains 3 items

airports["LHR"] = "London Heathrow"
//the value for "LHR" has been changed to "London Heathrow"

if let oldValue = airports.updateValue("Dublin international", forKey: "DUB")
{
    print("The old value for DUB was\(oldValue).")
}
//prints "the old value for DUB was Dublin."

airports["APL"] = "Apple International"
airports["APL"] = nil

if let removedValue = airports.removeValueForKey("DUB"){
    println("The removed airport's name is \(removedValue).")
}else {
    println("The airports dictionary does mot contain a value fur DUB.")
}
airports