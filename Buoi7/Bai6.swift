print("Chèn phần tử có giá trị X vào mảng sao cho mảng vẫn có thứ tự tăng dần.")

func arrayInsert () {
    var array: [Float] = [3.1, 0, 65, 96, 0, 32, 2.5, 8]
    print("Cho mảng: \(array)")
    print("Nhập giá trị X")
    let X = Float(readLine()!)!
    array.sort()
    var m = array[0]
//    for i in 0...array.count-2 {
//        for j in 0...array.count-2 {
//        if array[j] > array[j+1] {
//            m = array[j]
//            array[j] = array[j+1]
//            array[j+1] = m
//        }
//    }
//    }
    for i in 0...array.count-1 {
        if X < array[i] {
            array.insert(X, at: i)
            break
        }
    }
    print(array)
}
arrayInsert()
