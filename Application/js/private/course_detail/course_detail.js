/*
 *	点击立即学习
 *	播放器播放
 *	
 */

 $('#go-study').click(function(event){
 	var flag=0;
 	var dataid = event.target.getAttribute('dataid');
 	(function loginTip(){
		if($('#sessImg').attr('datauser')===undefined){
			alert('对不起,请先登录!');
			flag=1;
		}
	})();
	if(flag === 1){
		return;
	}

 	$.ajax({
		type: 'get',
		url: 'index.php?c=course&a=dealNewCourse',
		data: {dataid: dataid},
		success: function(data){
			//console.log(data);
			//if (data == 'true') {
				
				location.href = 'index.php?c=player&a=index&dataid='+dataid;
			//}
		},
		error: function(data){
			alert('err');
		}
	})
});