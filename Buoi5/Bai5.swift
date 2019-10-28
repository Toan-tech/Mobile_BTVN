print("""
Hai anh em nhà cừu không có gì chơi, thằng anh mới đố thằng em: “Tao cho mày 1 số, nếu nó chẵn thì chia đôi, nó lẻ thì nhân 3 cộng 1. Đố mày biết sau bao nhiêu phép tính thì nó ra 1 ???”. Ông em ngẩn tò te không biết trả lời như nào. Bạn hãy giúp chú bé 1 tay với. In ra đáp án hoặc “-1” nếu ko có số nào hợp lệ
""")

Cách 1:
func collatz () {
    print("Nhập số nguyên dương: ")
    var a = Int(readLine()!)!
    var m = 0
    if a < 1 {
        print("Sai rồi, nhập lại đê")
        collatz()
    } else {
        while a != 1 {
            if a%2 == 0 {
                a /= 2
            } else {
                a = 3*a + 1
            }
            m += 1
        }
    }
print("Sau \(m) lần thì kết quả về 1")
}
collatz()

Cách 2:
func demPhepTinh(){
    print("Nhập vào số tự nhiên n: ")
    var n = Int(readLine()!)!
    var count: Int = 0
    
    while n != 1 {
        if n % 2 == 0{
            n = n / 2
        } else {
            n = n * 3 + 1
        }
        
        count += 1
    }
    
    print("Số phép tính cần tìm \(count)")
}
demPhepTinh()
