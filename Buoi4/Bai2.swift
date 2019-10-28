print("Viết chương trình nhập vào một số nguyên dương không lớn hơn 10000, in ra màn hình chữ số lớn thứ nhì có trong số đó (ví dụ nhập n = 1356 in ra 5). Trong trường hợp không có số lớn thứ nhì, thì in ra số lớn nhất.")

Cách 1:
print("Nhập số nguyên dương: ")
func max2 (){
var n = Int(readLine()!)!
var a: Int
    var b: Int
    var c: Int
    var d: Int
    var e: Int!
    if n > 10000 || n < 0 {
        print("Nhập lại:")
        max2()
    } else {
        a = n/1000
        b = (n%1000)/100
        c = (n%100)/10
        d = n%10
        var mang: [Int] = [a, b, c, d]
        for i in 1...(mang.count-1) {
            for i in 0..<(mang.count-1) {
                if mang[i] > mang[i+1] {
                    e = mang[i]
                    mang[i] = mang[i+1]
                    mang[i+1] = e
                }
            }
        }
//        if mang[3] == mang[2] {
//            print("Số lớn nhất là: \(mang[3])")
//        } else {
//            print("Số lớn thứ nhì là: \(mang[2])")
//        }
        mang[3] == mang[2] ? print("Số lớn nhất là: \(mang[3])") : print("Số lớn nhì là: \(mang[2])")
    }}
max2()

Cách 2:
func bai2(){
    print("Nhập vào số nguyên dương nhỏ hơn 10000 ")
    var n = Int(readLine()!)!
    
    var numbers: [Int] = []
    if n < 1 || n > 10000{
        bai2()
    }
    
    
    while n > 0{
        if !numbers.contains(docChuSo(number: n)){ // hàm contains để kiểm tra trong mảng có phần tử đó chưa
        numbers.append(docChuSo(number: n))
        }
        n = n / 10
    }
    
    numbers.sort() // hàm sắp xếp của mảng
    
    if numbers.count >= 2{
        print("Số lớn thứ 2 là \(numbers[numbers.count - 2])")
    } else if numbers.count == 1 {
        print("Số lớn thứ 2 là \(numbers[0])")
    }
}

func docChuSo(number: Int) -> Int{
        return number % 10
}
bai2()

Cách 3:
 func bai2(){
     print("Nhập vào số nguyên dương nhỏ hơn 10000 ")
var m = readLine()!
    
    var numbers: [Int] = []
    
    if Int(m)! < 1 || Int(m)! > 10000{
        bai2()
        return
    }
    for c in m {
        numbers.append(Int(String(c))!)
    }
    numbers.sort()
    if numbers.count >= 2{
        print("Số lớn thứ 2 là \(numbers[numbers.count - 2])")
    } else if numbers.count == 1 {
        print("Số lớn thứ 2 là \(numbers[0])")
    }
}
bai2()
