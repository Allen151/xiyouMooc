<?php 


	class talkController extends BaseController{
		public function indexAction(){
			$this->_loadDoctype();
			$this->_loadHeader();
			$m_talk = new talkModel();
			$talkInfo = $m_talk->selectTalk();

			require('Application/View/talk.html');
			$this->_loadFooter();
		}

		public function insertTalkAction(){
			$username = $_POST['username'];
			// if(empty(trim($username)) || !isset($username)){
			// 	echo 'nouser';
			// 	return;
			// }

			$chatText = $_POST['chatText'];
			if(empty(trim($chatText))){
				echo 'empty';
				return;
			}
			$imgSrc = $_POST['imgSrc'];
			$time = $_POST['time'];			
			$m_talk = new talkModel();
			$result = $m_talk->insertTalk($username,$imgSrc,$chatText,$time);
			if($result==0){
				echo 'false';
			}
			else{
				echo 'true';
			}
		
		}
	}
 ?>