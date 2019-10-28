print("Tìm số n bé nhất sao cho n! lớn hơn một số m cho trước (m nhập từ bàn phím)")

Cách1:
func timn (){
print("Nhập số bất kì:")
let m = Int(readLine()!)!
var a: Int = 1
for i in 1...m{
    a = a*i
    if a > m {
    print("Số n bé nhất để n! > \(m) là: \(i)")
    break
    }
}
}
timn()

Cách 2:
func giaiThua(){
    // nhập m từ bàn phím
    print("Nhap m:")
    let m = Int(readLine()!)!
    // khai báo biến n để kiểm tra n
    var n: Int = 0
    // khai báo biến giaithua để tính n!
    var giaithua = 1
    
    while(giaithua <= m){
        n = n+1
        // có thể dùng for tính giaithua
        // nếu dùng for thì trước khi lặp, gán lại giá trị cho giaithua = 1
        giaithua = 1
        for i in 1...n{
            giaithua = giaithua*i
        }
        // tận dụng n tăng lên 1 để tính giai thừa
//        giaithua = giaithua*n
    }
    print("so n can tim la: \(n)")
}
