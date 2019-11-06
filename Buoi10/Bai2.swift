print("Vẽ tam giác Pascal")

print("Nhập n")
func pascal (){
    guard  let n = Int(readLine()!) else {
        print("Nhập lại n")
        return pascal()
    }
    if n < 0 {
        print("Nhập lại n")
        return pascal()
    }
    var m = 0
    var array2: [Int] = []
    for i in 0...n {
        var array1: [Int] = []
        for j in 0...i {
            if j == 0 || j == i {
                m = 1
            } else {
             m = array2[j-1] + array2[j]
            }
            array1.append(m)
        }
        for i in 0...array1.count-1 {
            if i < array1.count-1 {
            print(array1[i], terminator: " ")
            } else {
                print(array1[i])
            }
            array2 = array1
    }
}
}
pascal()
