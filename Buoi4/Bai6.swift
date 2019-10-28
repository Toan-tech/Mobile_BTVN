print("Viết chương trình nhập vào số nguyên dương N (N<=32767), in ra màn hình những số hoàn hảo nhỏ hơn N (số hoàn hảo là số bằng tổng các ước số của nó mà không kể chính nó)")

print("Nhập số N:")

func soHoanHao () {
    var N = Int(readLine()!)!
    if N > 32767 || N < 1 {
        print("Nhập lại N")
        soHoanHao()
    } else {
        var mangUoc: [Int] = []
        for i in 2..<N {
            var a = 0
            for j in 1...i/2 {
                if i%j == 0 {
                    a += j
                }
            }
            if a == i {
                mangUoc.append(a)
            }
        }
        if mangUoc.isEmpty == true {
            print("Không có số hoàn hảo nào nhỏ hơn \(N)")
        } else {
    print("Tập hợp số hoàn hảo nhỏ hơn \(N) là:")
        for i in 0..<(mangUoc.count-1) {
            print(mangUoc[i], terminator: ", ")
        }
    print(mangUoc.last!)
    }
}
}
soHoanHao()
