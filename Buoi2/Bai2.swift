print("""
Nhập 3 giá trị nguyên dương a, b, c. Kiểm tra xem a, b, c có phải là 3 cạnh của tam giác không?
- Nếu là 3 cạnh của tam giác thì tính diện tích của tam giác.
- Nếu không phải là tam giác in ra “a, b, c không phải là 3 cạnh của tam giác”
""")

    print("Nhập cạnh thứ nhất:")
    var a = Int(readLine()!)!
    print("Nhập cạnh thứ hai:")
    var b = Int(readLine()!)!
    print("Nhập cạnh thứ ba:")
    var c = Int(readLine()!)!
    var p = (Float(a)+Float(b)+Float(c))/2

    if (a + b) > c && (b + c) > a && (c + a) > b {
        let x = p*(p - Float(a))*(p - Float(b))*(p - Float(c))
        let S = sqrt(x)
        print("Diện tích tam giác là: \(S)")
    } else {
        print("Đây ko phải 3 cạnh của tam giác")
}

