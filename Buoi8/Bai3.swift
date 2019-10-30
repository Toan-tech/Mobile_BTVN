print("""
Viết chương trình nhập ngày, tháng, năm.
– Tháng có bao nhiêu ngày.
– Tìm ngày trước ngày vừa nhập.
– Tìm ngày sau ngày vừa nhập.
""")

print("Nhập năm")

/*
 - Nhập theo thứ tự "năm, tháng, ngày". Nhập sai giá trị nào thì chỉ cần nhập lại giá trị đó.
 - Các trường hợp sai là không phải kiểu "Int" và các số không có trong ngày tháng.
 */
func dateMonthYear () {
    guard let yyyy = Int(readLine()!) else {
        print("Nhập lại năm:")
        return dateMonthYear()
    }
    if yyyy < 0 {
        print("Nhập lại năm:")
        return dateMonthYear()
    }
// Nhập sai giá trị tháng thì chỉ cần nhập lại giá trị này, không cần nhập lại cả giá trị năm.
    print("Nhập tháng:")
    var mm = 0
    func month () {
        guard let thang = Int(readLine()!) else {
            print("Nhập lại tháng")
            return month()
        }
        if thang < 1 || thang > 12 {
            print("Nhập lại tháng:")
            return month()
        }
        mm = thang
    }
    month()
/*
- Dùng phương pháp loại trừ dần dần để ép phạm vi nhập ngày.
    + Bước 1: Loại trừ tất cả những ngày < 0 và > 31
    + Bước 2: Loại trừ các ngày 31 của những tháng chỉ có 30 ngày
    + Bước 3: Loại trừ các ngày 29 của tháng 2 không phải năm nhuận
*/
    var question1: Bool!
    var question2: Bool!
    func condition () -> Bool {
        if mm == 1 || mm == 3 || mm == 5 || mm == 7 || mm == 8 || mm == 10 || mm == 12 {
            question1 = true
        } else {
            question1 = false
        }
        return question1
    }
    func condition2 () -> Bool {
        if (yyyy%4 == 0 && yyyy%100 != 0) || (yyyy%400 == 0) {
            question2 = true
        } else {
            question2 = false
        }
        return question2
    }
    var dd = 0
    print("Nhập ngày")
    func day () {
        guard let ngay = Int(readLine()!) else {
            print("Nhập lại ngày")
            return day()
        }
        if ngay < 0 || ngay > 31 {
            print("Nhập lại ngày")
            return day()
        }
        if ngay == 31 && condition() == false {
            print("Nhập lại ngày")
            return day()
        }
        if mm == 2 && ngay > 29 {
            print("Nhập lại ngày")
            return day()
        }
        if mm == 2 && ngay == 29 && condition2() == false {
            print("Nhập lại ngày")
            return day()
        }
        dd = ngay
    }
    day()
/*
- Xây dựng mảng chứa tất cả các ngày trong năm
     + Bước 1: Xây dựng 2 mảng, một mảng [1; 12] và một mảng [1; 31]
     + Bước 2: Lấy từng phần tử của mảng 1 ghép với tất cả các phần tử của mảng 2 (sẽ dư ra một số ngày sai),
     cho tất cả vào 1 mảng (gọi là mảng 3)
     + Bước 3: Xây dựng mảng thứ 4 chứa toàn ngày sai, sau đó lấy mảng 3 trừ mảng 4
*/
    struct dateMonth {
        var thang: Int
        var ngay: Int
        init(thang: Int, ngay: Int) {
            self.thang = thang
            self.ngay = ngay
        }
    }
    let arrayMonth = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
    var arrayDate = [Int]()
    for i in 1...31 {
        arrayDate.append(i)
    }
    var arrayfulldateMonth = [dateMonth]()
    for i in arrayMonth {
        for j in arrayDate {
            let fulldateMonth = dateMonth(thang: i, ngay: j)
            arrayfulldateMonth.append(fulldateMonth)
        }
    }
    print(arrayfulldateMonth.count)
    let falseDateMonth1 = dateMonth(thang: 2, ngay: 31)
    let falseDateMonth2 = dateMonth(thang: 2, ngay: 30)
    let falseDateMonth3 = dateMonth(thang: 2, ngay: 29)
    let falseDateMonth4 = dateMonth(thang: 4, ngay: 31)
    let falseDateMonth5 = dateMonth(thang: 6, ngay: 31)
    let falseDateMonth6 = dateMonth(thang: 9, ngay: 31)
    let falseDateMonth7 = dateMonth(thang: 11, ngay: 30)
    let arrayFalseDateMonth = [falseDateMonth1, falseDateMonth2, falseDateMonth4, falseDateMonth5, falseDateMonth6, falseDateMonth7]
    for i in 0...arrayFalseDateMonth.count-1 {
        for j in 0...arrayfulldateMonth.count-1 {
            if arrayFalseDateMonth[i].thang == arrayfulldateMonth[j].thang && arrayFalseDateMonth[i].ngay == arrayfulldateMonth[j].ngay {
                arrayfulldateMonth.remove(at: j)
                break
            }
        }
    }
/*
- Kết quả của (mảng 3) trừ (mảng 4) sẽ dư ra ngày 29/2, cần xét điều kiện có phải năm nhuận không để trừ tiếp
ngày này.
- Còn lại là đầy đủ toàn bộ các ngày trong năm:
- Tìm vị trí ngày nhập ban đầu trong mảng. Từ đấy tìm ra ngày đứng trước và đứng sau.
*/
    if condition2() == false {
        for i in 0...arrayfulldateMonth.count-1 {
            if falseDateMonth3.thang == arrayfulldateMonth[i].thang && falseDateMonth3.ngay == arrayfulldateMonth[i].ngay {
                arrayfulldateMonth.remove(at: i)
                break
            }
        }
        var m = 0
        var n = 0
        for i in 0...arrayfulldateMonth.count-1 {
            if mm == arrayfulldateMonth[i].thang {
                m += 1
            }
            if dd == arrayfulldateMonth[i].ngay && mm == arrayfulldateMonth[i].thang {
                n = i
            }
        }
        if mm == 1 && dd == 1 {
            print("Tháng 1 năm \(yyyy) có 31 ngày, ngày liền trước là 31/12 và ngày liền sau là 2/1")
        } else if mm == 12 && dd == 31 {
            print("Tháng 12 năm \(yyyy) có 31 ngày, ngày liền trước là 30/12 và ngày liền sau là 1/1")
        } else {
            print("Tháng \(mm) năm \(yyyy) có \(m) ngày, ngày liền trước là \(arrayfulldateMonth[n-1].ngay)/\(arrayfulldateMonth[n-1].thang) và ngày liền sau là \(arrayfulldateMonth[n+1].ngay)/\(arrayfulldateMonth[n+1].thang)")
        }
    } else {
        var m = 0
        var n = 0
        for i in 0...arrayfulldateMonth.count-1 {
            if mm == arrayfulldateMonth[i].thang {
                m += 1
            }
            if dd == arrayfulldateMonth[i].ngay && mm == arrayfulldateMonth[i].thang {
                n = i
            }
        }
        if mm == 1 && dd == 1 {
            print("Tháng 1 năm \(yyyy) có 31 ngày, ngày liền trước là 31/12 và ngày liền sau là 2/1")
        } else if mm == 12 && dd == 31 {
            print("Tháng 12 năm \(yyyy) có 31 ngày, ngày liền trước là 30/12 và ngày liền sau là 1/1")
        } else {
            print("Tháng \(mm) năm \(yyyy) có \(m) ngày, ngày liền trước là \(arrayfulldateMonth[n-1].ngay)/\(arrayfulldateMonth[n-1].thang) và ngày liền sau là \(arrayfulldateMonth[n+1].ngay)/\(arrayfulldateMonth[n+1].thang)")
        }
    }
}
dateMonthYear()
