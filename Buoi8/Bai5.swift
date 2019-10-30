print("""
Tìm số Amstrong là một số có đặc điểm sau: số đó gồm n chữ số, tổng các lũy thừa bậc n của các chữ số đó và số đó. Ví dụ: 153 = 1^3 + 5^3 + 3^3. Hãy tìm các số Amstrong nhỏ hơn 1000.
""")

var mang = [Int]()
for i in 1..<1000 {
    let a = String(i).count
    var sum = Float(0)
    var b = i
        while (sum < Float(i) && b%10 != 0) {
            sum += powf(Float(b%10), Float(a))
            b = b/10
}
    if Int(sum) == i && b == 0 {
        mang.append(i)
    }
}
print(mang)
