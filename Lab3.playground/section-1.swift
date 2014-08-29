
var shoppingListExplicit = [String]()
shoppingListExplicit = ["Eggs", "Milk"]
//shoppingListExplicit[String] = ["Eggs","Milk"]

var shoppingList = ["Eggs","Milk"]
println("The shopping list contains \(shoppingList.count) items.")
shoppingList.append("Flour")
shoppingList += "Baking Powder"
shoppingList += ["Chocolate Spread", "Cheese","Butter"]

var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"
//shoppingList[0...3]=["Bananas","Apples"]
shoppingList

shoppingList += ["Baking Power"]
shoppingList += ["Chocolate Spread","Cheese","Buter"]
shoppingList.insert("Maple Syrup", atIndex: 0)
shoppingList.append("Flour")
shoppingList += ["Baking Powder"]

var fiestItem = shoppingList[0]

shoppingList[4...6] = ["Bananas","Apples"]

let apples = shoppingList.removeLast()

let mapleSyrup = shoppingList.removeAtIndex(0)

