/*
 *	点击课程，跳转对应课程详情
 *
 */

$('#index-class-ul').click(function(event){
	if (event.target.nodeName == 'UL') {
		return;
	}
	var dataid = event.target.getAttribute('dataid');

	location.href = 'index.php?c=course&a=courseDetail&dataid=' + dataid;
})


/*
 *	点击课程课表，筛选课程
 *
 */


var queryCurr = query.split('&')[3];
var queryDir = queryCurr.split('-')[0];
var queryKind = queryCurr.split('-')[1]
var queryLevel = queryCurr.split('-')[2]


$('#cls-dir li').each(function(index){
	if ( $(this).attr('datacurr') == queryDir ) {
		$(this).addClass('cls-curr');
	}
});
$('#cls-kind li').each(function(index){
	if ( $(this).attr('datacurr') == queryKind ) {
		$(this).addClass('cls-curr');
	}
})
$('#cls-level li').each(function(index){
	if ( $(this).attr('datacurr') == queryLevel ) {
		$(this).addClass('cls-curr');
	}
})



var info_dir;
$('#cls-dir').click(function(event){
	if (event.target.nodeName == 'UL') {
		return;
	}
	info_dir = $(event.target).attr('datadir');
	var dir_curr = $(event.target).attr('datacurr');
	$('#cls-dir li').removeClass('cls-curr');
	$(event.target).addClass('cls-curr');

	location.href = 'index.php?c=course&a=index&courDir=' + info_dir + '&courKind=1&courHardLevel=1&' + dir_curr + '-0-0';
});

var info_kind;
$('#cls-kind').click(function(event){
	if (event.target.nodeName == 'UL') {
		return;
	}
	info_kind = $(event.target).attr('datakind');
	var kind_curr = $(event.target).attr('datacurr');
	$('#cls-kind li').removeClass('cls-curr');
	$(event.target).addClass('cls-curr');

	info_dir = $('#cls-dir .cls-curr').attr('datadir');
	var dir_curr = $('#cls-dir .cls-curr').attr('datacurr');
	info_level = $('#cls-level .cls-curr').attr('datahardlevel');
	var level_curr = $('#cls-level .cls-curr').attr('datacurr');

	location.href = 'index.php?c=course&a=index&courDir=' + info_dir + '&courKind=' + info_kind + 
		'&courHardLevel=' + info_level + '&' + dir_curr + '-' + kind_curr + '-' + level_curr;
});

var info_level;
$('#cls-level').click(function(){
	if (event.target.nodeName == 'UL') {
		return;
	}
	info_level = $(event.target).attr('datahardlevel');
	var level_curr = $(event.target).attr('datacurr');

	$('#cls-level li').removeClass('cls-curr');
	$(event.target).addClass('cls-curr');

	info_dir = $('#cls-dir .cls-curr').attr('datadir');
	var dir_curr = $('#cls-dir .cls-curr').attr('datacurr');
	info_kind = $('#cls-kind .cls-curr').attr('datakind');
	var kind_curr = $('#cls-kind .cls-curr').attr('datacurr');

	location.href = 'index.php?c=course&a=index&courDir=' + info_dir + '&courKind=' + info_kind + 
		'&courHardLevel=' + info_level + '&' + dir_curr + '-' + kind_curr + '-' + level_curr;
});

