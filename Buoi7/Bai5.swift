print("Chèn phần tử có giá trị X vào phía sau phần tử có giá trị lớn nhất trong mảng.")

func arrayInsert () {
print("Nhập X")
    let X = Float(readLine()!)!
    var array: [Float] = [3, 6.1, 23, 905, -78, 905, -62, 23]
    var m = array[0]
    for i in array {
        if m < i {
            m = i
        }
    }
    for i in 0...array.count-1 {
        if m == array[i] {
            array.insert(X, at: i+1)
        }
    }
//    for i in array {
//        print(i, terminator:",")
//}
    print(array)
}
arrayInsert()
