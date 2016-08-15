
/*
 *	获取首页视频信息（图片）
 *
 */
$.ajax({
	type: 'get',
	url: 'index.php?c=home&a=mainCourse',
	success: function(data){
		var data = JSON.parse(data);

		var courUl = document.getElementById('index-class-ul');
		for(var i = 0, len = data.length; i < len; i++){

			var oLi = document.createElement('li');
			oLi.dataid = data[i].id;
			oLi.className = 'index-class-li';
			oLi.innerHTML = '<b dataid="'+ data[i].id +'"></b>'+
							'<img dataid="'+ data[i].id +'" src="'+ data[i].imgSrc +  '">'+
							'<div class="index-class-con" dataid="'+ data[i].id +'" >'+
								'<p class="i-li-titp" dataid="'+ data[i].id +'" >'+ data[i].conIntro +'</p>'+
								'<span class="i-li-sl l" dataid="'+ data[i].id +'" >'+ data[i].pushTime +'</span>'+
								'<span class="i-li-sr r" dataid="'+ data[i].id +'" >'+ data[i].studyPer +'人已学习</span>'+
							'</div>';

			courUl.appendChild(oLi);
		}
		
	},
	error: function(data){
		alert('err');
	}

})


/*
 *	点击查看视频
 *
 */

 $('#index-class-ul').click(function(event){
 	if (event.target.nodeName == 'UL') {
 		return;
 	}

 	var dataid = event.target.getAttribute('dataid');

 	location.href = 'index.php?c=course&a=courseDetail&dataid='+dataid;
 })