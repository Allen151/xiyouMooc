
/*
 *	顶部滑轮滚动事件
 *
 */
var flag = 0;

$(window).scroll(function(event){

	var scrollTop =  $(window).scrollTop();

	if(scrollTop == 0){
		$('#header-nav').css('background-color', '');
		flag = 0;
		return;
	}

	if(flag == 1){
		return;
	}

	$('#header-nav').css('background-color', '#333');
	flag = 1;
});