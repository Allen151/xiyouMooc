/*
 *	播放器宽高设置
 *
 */
 $('#example_video_1').css({'width': $(document).width(), "height": ($(document).height()-80)});

 /*
 *	返回上一层
 *	展示课程详情
 *
 */

 $('#p-goback').click(function(event){
 	var dataid = event.target.getAttribute('dataid');
 	location.href = 'index.php?c=course&a=courseDetail&dataid='+ dataid;
 })