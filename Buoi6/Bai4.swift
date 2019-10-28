print("""
Viết chương trình tính tiền cước TAXI. Biết rằng:
– Km đầu tiên là 5000đ
– 30Km tiếp theo là 4000đ
– Nếu lớn hơn 30Km thì mỗi Km thêm ra sẽ phải trả là 3000đ
– Hãy nhập số Km sau đó in ra số tiền phải trả.
""")

print("Nhập số Km: ")

func charge () -> Float {
    var m: Float!
    let a = Float(readLine()!)!
    if a < 0 {
        print("Nhập lại")
        m = charge()
    } else if a <= 1 {
        m = 5000*a
    } else if a <= 30 {
        m = 5000 + (a-1)*4000
    } else {
        m = 5000 + 29*4000 + (a-30)*3000
    }
return m
}
print("Số tiền phải trả là: \(charge())đ")
