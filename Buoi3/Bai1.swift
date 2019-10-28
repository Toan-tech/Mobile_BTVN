print("Cho một mảng số nguyên. Kiểm tra nếu trong mảng có phần tử âm thì thay thế nó bằng 0")

var mangSoNguyen: [Int] = [20, 3, -8, 60, -65, 12, -63, 0, 100]
print("Mảng số nguyên: 20, 3, -8, 60, -65, 12, ,-63, 0, 100")
func thaySoAm (){
    for i in 0..<mangSoNguyen.count {
        if mangSoNguyen[i] < 0 {
            mangSoNguyen[i] = 0
        }
    }
}
thaySoAm()
print("Mảng số nguyên sau khi thay thế số âm bằng 0 là: \(mangSoNguyen)")
