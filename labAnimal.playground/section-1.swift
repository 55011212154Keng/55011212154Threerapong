class zooAnimal{
    let animal:String
    let food:String
   
    var docAnimal :Dictionary<String,String>=["Elephant":"Water","Lion":"Meat","Panda":"Bamboo","Leopard":"Banana"]
    init(animal:String,food:String){
        self.animal = animal
        self.food   = food
      
        }



    func changeAnimal()->[String:String] {
       docAnimal["Panda"] = "Milk"
        return docAnimal
        }
    func addAnimal()->[String:String]{
        docAnimal["Ewe"] = "Lion"
        docAnimal["Shark"] = "SmallFish"
        docAnimal["Dolphin"] = "SmallFish"
        docAnimal["Ghost"] = "Girl"
        return docAnimal
        }
    func removeAnimal()->[String:String]{
        docAnimal["Lion"]=nil
        return docAnimal
    }
}
let testAnimal = zooAnimal(animal:"Name",food:"food")
testAnimal.addAnimal()

