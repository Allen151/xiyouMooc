<?php 
  
	class homeController extends BaseController{

		public function indexAction(){
			$this->_loadDoctype();
			$this->_loadHeader();
			require 'Application/View/home.html';
			$this->_loadFooter();
		}

		//处理首页视频资源
		public function mainCourseAction(){
			$m_course = new courseModel();
			$result=$m_course->select_main_course();
			$jsonArr = json_encode($result);
			echo $jsonArr;
			
			
		}

		//登陆
		public function loginAction(){

			$username = $_POST['username'];
			$password = $_POST['password'];
			$checked = $_POST['checked'];
			$m_user= new userModel();
			$res = $m_user->login($username,$password);
			
			if($res){
				$_SESSION['user'] = $res;
				if($checked){
					 setcookie('user_id',md5($res['id'].'SALT'),time()+24*60*60*30,'/');
         			 setcookie('user_password',md5($res['password'].'SALT'),time()+24*60*60*30,'/'); 
				}			
				$arr = array($username,$res['img']);
				$arr = json_encode($arr);
				echo $arr;
			}

			else{
				echo 0;
			}
		}

		//注册
		public function registerAction(){
			$username = $_POST['username'];
			$password = $_POST['password'];
			$m_user = new userModel();
			$res = $m_user->register($username,$password);
			if($res == 0){
				echo 'false';
			}
			else if($res == -1){
				echo 'cunzai';
			}
			else{
				echo 'true';
			}
		}
	}

 ?>