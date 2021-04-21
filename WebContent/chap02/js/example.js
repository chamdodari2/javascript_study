
var tv = new Object();
	tv.color = "white";
	tv.pice = 300000;
	tb.info = function() {
		document.write("tv 색상:" + this.color, "<br>");
		document.write("tv 가격:" + this.price, "<br>");
	}
	var car = {
			color:"black",
			price:5000000,
			info:function(){
				document.write("car 색상 : " + this.color,"<br>");
				document.write("car 가격 : " + this.price,"<br>");
			}
			
	};
	document.write("<h1> tv객체 메서드 호출</h1>");
	tv.info();
	document.write("<h1>car  객체 메서드 호출</h1>")
	car.info();