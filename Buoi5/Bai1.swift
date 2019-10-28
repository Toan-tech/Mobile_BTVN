print("""
Vẽ hình chữ nhật đặc:

* * * * * * *
* * * * * * *
* * * * * * *
* * * * * * *
""")

Cách 1:
func hinhChuNhat () {
    print("Nhập chiều dài: ")
    let a = Int(readLine()!)!
    print("Nhập chiều rộng: ")
    let b = Int(readLine()!)!
    var c: (String) = "* "
    var d: (String) = ""
    for i in 1...a {
        d = d+c
    }
    for i in 1...b {
        print(d)
    }
}
hinhChuNhat()

Cách 2:
func veHinhChuNhat(){
    print("Nhập vào chiều dài và chiều rộng: ")
    let m = Int(readLine()!)!
    let n = Int(readLine()!)!
    
    for _ in 0..<m{
        for _ in 0..<n{
            print("*", terminator: " ")
        }
        print()
    }
}
