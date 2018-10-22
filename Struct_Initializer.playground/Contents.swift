struct SimpleDate {
    var year, month, day: Int
    init() {
        year = 2095; month = 10; day = 31
    }
}

struct Time {
    let in24h: Bool
    var hour = 0, min = 0
    init(hour:Int, min:Int) {
        in24h = false
        self.hour = hour               // self.プロパティで引数名と区別
        self.min = min
    }
    init(hourIn24 h:Int) {
        in24h = true                  // 定数を初期設定できる
        hour = h
    }
    init(_ hour:Int) {
        self.init(hourIn24: hour)    // 上のイニシャライザを使う
        // in24h = false     /* これはエラーになる */
    }
}


var a = Time(hour: 10, min: 30)             // 12時制 10:30
var b = Time(hourIn24: 15)                  // 24時制 15:00
var c = Time(1)                             // 24時制 1:00
//var d = Time()                              // Error
//var e = Time(in24h:true, hour:13, min:30)   // Error


struct DateWithTime {
    var date = SimpleDate()
    var time = Time(hour: 0, min: 15)
}

public typealias Void = ()

