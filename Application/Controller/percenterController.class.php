<?php 
	
	class percenterController extends BaseController{

		public function indexAction(){
			$this->_loadDoctype();
			$this->_loadHeader();
			$username = $_SESSION['user']['username'];
			$m_user = new userModel();
			$result = $m_user->personal_center($username);
			require('Application/View/percenter.html');
			$this->_loadFooter();
		}

		/**
		 * 退订课程
		 * @return [type] [description]
		 */
		public function unChooseSourAction(){
			$username = $_SESSION['user']['username'];
			$courseId = $_GET['dataid']; 
			$m_course = new courseModel();
			$result = $m_course->un_choose_sourse($username,$courseId);
			if($result==0){
				echo 'false';
			}
			else{
				echo 'true';
			}

		}
	}

 ?>