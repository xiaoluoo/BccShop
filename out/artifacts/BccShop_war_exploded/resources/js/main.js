$(function () {

    $('#myCarousel1').carousel({});
    $('#myCarousel').carousel({});
    var myVar = setInterval(function () {
        myhour()
    }, 1000);

});

function myhour() {

    day = new Date()
    hr = day.getHours()
    minu = day.getMinutes()
    s = "您好，现在是：";
    s = s + hr + "点" + minu + "分。 ";
    if (hr == 1)
        $("#hello").text(s + "凌晨1点了！该休息了！");
    if (hr == 2)
        $("#hello").text(s + "工作狂，还在忙嘛？");
    if (hr == 3)
        $("#hello").text(s + "午夜3点！你决定不睡觉了嘛？？");
    if (hr == 4)
        $("#hello").text(s + "凌晨4点了，您的工作精神一定要上报党中央！");
    if (hr == 5)
        $("#hello").text(s + "5点多了，您是刚起床还是还没睡啊？");
    if (hr == 6)
        $("#hello").text(s + "早上好！新一天又开始啦！有什么打算呢？");
    if (hr == 7)
        $("#hello").text(s + "吃早饭了嘛？");
    if ((hr == 8) || (hr == 9) || (hr == 10))
        $("#hello").text(s + "祝您工作愉快！");
    if (hr == 11)
        $("#hello").text(s + "快中午啦，准备下班了嘛？");
    if (hr == 12)
        $("#hello").text(s + "中午好！你吃饭了嘛？");
    if ((hr == 13) || (hr == 14))
        $("#hello").text(s + "准备准备要上班了！");
    if ((hr == 15) || (hr == 16) || (hr == 17))
        $("#hello").text(s + "下午好！");
    if ((hr == 18) || (hr == 19))
        $("#hello").text(s + "该看新闻联播了！");
    if ((hr == 20) || (hr == 21) || (hr == 22))
        $("#hello").text(s + "休息下，找个电影看看睡觉吧!");
    if (hr == 23)
        $("#hello").text(s + "不早了，快休息吧？");
    if (hr == 0)
        $("#hello").text(s + "午夜时分，你可要注意身体呢！");
};
				
				
				