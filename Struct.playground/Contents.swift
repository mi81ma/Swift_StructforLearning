import Foundation

struct SimpleData {
    var year:Int     // 年
    var month:Int    // 月
    var day: Int     // 日   ... var year, month, day: Int とも書ける
}

struct SimpleDate {
    var year = 2010
    var month = 7
    var day = 28
}

var d = SimpleDate()

d.year
d.month
d.day


struct SimpleDate2 {
    var year = 2010   // 型を明記するなら、var year:Int = 2010
    var month = 7
    var day = 28      // var year = 2010, month = 7, day = 28とも書ける
}

var e = SimpleDate()

e.year
e.month
e.day


// 全項目イニシャライザ
var camp = SimpleData(year: 1998, month: 8, day: 8)
print(camp)


// 構造体を定数に代入した場合
let event = SimpleDate2(year: 2000, month: 9, day: 13)




var t1 = Time()   // 0:00 (12時制)

var t2 = Time(in24h:true, hour:7, min:0)
var t2 = Time(hour:7, min:0)

// 構造体の定数プロパティ
struct Time {
    var in24h: Bool          // 24時制 or 12時制
    var hour = 0, min = 0
}


var t1 = Time() // 0:00 (12時制)
print(t1)


var t3 = Time(in24h:true, hour:7, min:0)   // 成功する。7:00 (24時制)

var m = SimpleDate()

print(m.year)
