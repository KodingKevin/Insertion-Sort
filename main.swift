

var unsorted : [String] = []

while true{
    if let next = readLine(), next != ""{
        unsorted.append(next)
    }
    else {
        break
    }
}

var pass = 0
var swap = 0
var total = 0

var sortInt = unsorted

var index = 0

var insert = 0

func swap(sorted: inout [String], firstIndex: Int, secondIndex: Int){
    sorted.swapAt(firstIndex, secondIndex)
    swap += 1

}

print("Pass: \(pass), Swaps: \(swap)/\(total), Array: \(sortInt)")



func insertion(sortInt: inout [String]){
    for _ in 0 ..< sortInt.count - 1 {
        if sortInt[index + 1] < sortInt[index]{
            swap(sorted: &sortInt, firstIndex: index, secondIndex: index + 1)
            if index != 0{
                index -= 1
            }
        }
        else{
            insert += 1
            index = insert
            break
        }
    }
}

while true{
    insertion(sortInt: &sortInt)
    total += swap
    pass += 1
    print("Pass: \(pass), Swaps: \(swap)/\(total), Array: \(sortInt)")
    swap = 0 
    if pass > sortInt.count - 2{
        break
    }
}
