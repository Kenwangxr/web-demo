window.onload=function(){
    function hello(name, img) {
        this.nickname = name;
        this.img = img;
        this.print=function () {
            console.log("nickname=" +this.nickname +",img=" + this.img);
        };
    }
    var hello = new hello("小丽丽","http://www.cmr.com.cn/uploads/170920/74-1F92015154H42.jpg");
    hello.print();
}
