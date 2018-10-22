/*
 うるう年

 構造体のタイプメソッドの定義例
 TypeMethod Leap Year

 */

struct SimpleDate {
    var year, month, day: Int
    static func isLeap(_ y: Int) -> Bool {   // TypeMethod
        return (y % 4 == 0) && (y % 100 != 0 || y % 400 == 0)
    }
    static func daysOfMonth(_ m:Int, year:Int) -> Int {
        switch m {
        case 2: return isLeap(year) ? 29 : 28    // self.isLeapでも同じ
        case 4, 6, 9, 11: return 30
        default: return 31
        }
    }
}

SimpleDate.isLeap(2000)
SimpleDate.daysOfMonth(2, year: 2004)

