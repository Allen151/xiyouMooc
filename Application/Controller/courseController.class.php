<?php 

	/**
	 * 课程控制器
	 */
	class courseController extends BaseController{
		public function  indexAction(){
			$this->_loadDoctype();
			$this->_loadHeader();
			$courDir = $_GET['courDir'];
			$courKind = $_GET['courKind'];
			$courHardLevel = $_GET['courHardLevel'];
			$m_course = new courseModel();
			$res = $m_course->select_cour_nav($courDir);
			$result = $m_course->select_cour_info($courDir,$courKind,$courHardLevel);
			// $arr=explode ('&',$_SERVER["QUERY_STRING"]);
			// var_dump($arr);
			// die();
			require('Application/View/course.html');
			$this->_loadFooter();
		}

		public function courseDetailAction(){
			$this->_loadDoctype();
			$this->_loadHeader();
			$dataid = $_GET['dataid'];
			$m_course=new courseModel();
			$res = $m_course->select_cour_detail($dataid);
			require ('Application/View/course_detail.html');
			//$this->_loadFooter();
		}


		public function dealNewCourseAction(){
			$username = $_SESSION['user']['username'];
			$dataid = $_GET['dataid'];
			$m_course = new courseModel();
			$result=$m_course->check_choose_course($username);
			for($i=0;$i<count($result);$i++){
				if ($dataid==$result[$i]['courseId']) {
					echo 'cunzai';
					return;
				}
			}
			$res = $m_course->deal_new_course($username,$dataid);
			if($res ==0){
				echo 'false';
			}else{
				echo 'true';
			}
		}
	}
 ?>