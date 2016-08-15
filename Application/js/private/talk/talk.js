/*
 *	点击，发布聊天消息
 *
 */

$('#talk-sub').click(function(){

	var date = new Date();
	var time = date.getMonth() + 1 +'-' + date.getDate() + 
	' ' + date.getHours() + ':' + date.getMinutes();
	var flag = 1;
	var data = {
		chatText: $('#talk-text').val(),
		username: $('#sessImg').attr('datauser'),
		imgSrc: $('#sessImg').attr('src'),
		time: time
	};
	(function loginTip(){
		if(data.username===undefined){
			alert('对不起,请先登录!');
			flag = 0;
			return;
		}
		if(data.chatText.length>150){
			alert('对不起，请限制评论在150字之内');
			flag = 0;
			return;
		}

	})();

	if(flag == 0){
		return ;
	}
	$.ajax({
		type: 'post',
		url: 'index.php?c=talk&a=insertTalk',
		data: data,
		success: function(data){
			if(data == 'empty'){
				alert('对不起,内容不能为空哦');
			}
			if (data == 'true') {
				var talkUl = document.getElementById('talk-ul');
				var talkli = document.createElement('li');
				talkli.className = 'talk-li';
				talkli.innerHTML = "<img src="+$('#sessImg').attr('src')+"><p>"+$('#talk-text').val()+"</p><span>"+time+"</span>";
				talkUl.appendChild(talkli);
				$('#talk-text').val("");
				//alert('11111');
			}
			if(data == 'false'){
				alert('false');
			}
		},
		error: function(data){
			alert('err');
		}
	})
	
})