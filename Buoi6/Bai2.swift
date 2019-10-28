print("Kiểm tra tính đối xứng của một số")

print("Nhập số")

func doiXung () {
    var x = [Int]()
    let a = Int(readLine()!)!
    var b = a
    var dX: Bool = true
    if a < 0 {
        print("Nhập lại")
        doiXung()
    } else if a == 0 {
        print("Số 0 đối xứng")
    } else {
        while b > 0 {
        x.append(b%10)
        b /= 10
    }
    for i in 0...(x.count/2-1) {
        if x[i] != x[x.count-1-i] {
          dX = false
            break
        }
    }
        dX == true ? print("Số \(a) đối xứng") : print("Số \(a) không đối xứng")
}
}
doiXung()
