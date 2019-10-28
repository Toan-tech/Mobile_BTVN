print("Tìm số lớn nhất trong 3 số nguyên")

func timmax () {
    print("Nhập số thứ nhất:")
    let a = Int(readLine()!)!
    print("Nhập số thứ hai:")
    let b = Int(readLine()!)!
    print("Nhập số thứ ba:")
    let c = Int(readLine()!)!
    var m = a
    if m < b {
        m = b
    }
    if m < c {
        m = c
}
    print("Số lớn nhất là: \(m)")
}
timmax()

