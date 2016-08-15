
/*
 *	登录注册--事件
 *
 */

$('#mask, #reg-close').click(function(){
	$('#register, #mask').hide();
});

$('#reg-user, #qiehuan').click(function(){
	$('#register, #mask').show();
})



$("#reg-login").click(function(){
	$(this).addClass('reg-curr');
	$('#reg-logout').removeClass('reg-curr');
	$('#login').css('display', 'block');
	$('#logout').css('display', 'none');
})

$("#reg-logout").click(function(){
	$(this).addClass('reg-curr');
	$('#reg-login').removeClass('reg-curr');
	$('#logout').css('display', 'block');
	$('#login').css('display', 'none');
})


/*
 *	登录验证用户
 *
 */

$('#login-sub').click(function(){
	//console.log();
	var isChecked = function(){
		if($('#remem-pwd').is(':checked')){
			return 1;
		}else{
			return 0;
		}
	}
	//console.log(checked());
	var user = {
		username: $('#username').val(),
		password: $('#password').val(),
		checked: isChecked()	
		//checked : $('#remem-pwd').val()
		//checked : $("input[name='remem-pwd']:checked").serialize
		
	};
	var flag=1;
	(function(){
		if(user.username.trim() ==''){
			alert('请输入账号');
			flag=0;
			return;
		}
		if(user.password.trim() == ''){
			alert('请输入密码');
			flag=0;
			return;
		}
	})();
	if(flag===0){
		return;
	}
	 $.ajax({
	 	type: 'post',
	 	url: 'index.php?c=home&a=login',
	 	data: user,
	 	success: judgeLogin
	 })

})

//登录判断
var judgeLogin = function(data){
	if (data == 0) {
		$('#login-err').css('visibility', 'visible');
	}
	else {
		//登录成功
		$('#register, #mask').hide();
		$('#login-err').css('visibility', 'hidden');
		$('#username').val('');
		$('#password').val('');
		// var data = JSON.parse(data);
		// $('#sessImg').attr('src', data[1]);
		// $('#sessImg').attr('datauser', data[0]);
		location.reload();
	}
}



/*
 *	注册验证用户
 *
 */

$('#reg-submit').click(function(){
	var user = {
		username: $('#reg-username').val(),
		password: $('#reg-password').val()
	};
	var flag=1;
	(function(){
		if(user.username.trim() ==''){
			alert('对不起，账号不能为空');
			flag=0;
			return;
		}
		if(user.password.trim() == ''){
			alert('对不起，密码不允许为空');
			flag=0;
			return;
		}
		if(user.username.length<5){
			alert('对不起，账号不能少于5位');
			flag=0;
			return;
		}
		if(user.username.length>15){
			alert('对不起，账号不能多于15位');
			flag=0;
			return;
		}
		if(user.password.length<5){
			alert('对不起，密码不能少于5位');
			flag=0;
			return;
		}
		if(user.password.length>15){
			alert('对不起，密码不能多于15位');
			flag=0;
			return;
		}
	
	})();
	if(flag===0){
		return;
	}

	$.ajax({
		type: 'post',
		url: 'index.php?c=home&a=register',
		data: user,
		success: judgeRegister,
		error: function(data){
			alert('err');
		}
	})
})


var judgeRegister = function(data){
	//存在
	if (data === 'cunzai') {
		$('#logout-err').css('visibility', 'visible');
	}else {
		alert("注册成功~");
	}
}


/*
 * 查看个人选课情况
 *
 */

function meMes(){
	location.href = 'index.php?c=percenter&a=index';
}