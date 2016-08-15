<?php 

	class userModel extends BaseModel{
		/**
		 * 注册用户
		 * @param  [type] $username [description]
		 * @param  [type] $password [description]
		 * @return int           受影响行数
		 */
		public function register($username,$password){
			$escape_username = $this->_dao->escapeString($username);
			$escape_password = $this->_dao->escapeString($password);
			$sqlstr = "select username from mooc_user where username = $escape_username";
			$result = $this->_dao->GetRow($sqlstr);
			if($result){
				return -1;
			}
			else{
				$num = mt_rand(1, 5);
				$imgSrc = "Public/images/talk/talk_$num.png";
				$sqlstr = "insert into mooc_user values (null,$escape_username,md5($escape_password),'$imgSrc')";
				return $result = $this->_dao->Exec($sqlstr);
			}

		}

		public function login($username,$password){
			$escape_username = $this->_dao->escapeString($username);
			$escape_password = $this->_dao->escapeString($password);
			$sqlstr = "select * from mooc_user where username =$escape_username and password=md5($escape_password)";
			return $this->_dao->GetRow($sqlstr);

		}

		public function personal_center($username){
			$escape_username = $this->_dao->escapeString($username);
			$sqlstr = "select * from xy_course,cour_info where xy_course.courseId=cour_info.id and username = $escape_username";
			return $this->_dao->GetTable($sqlstr);
		}

		
		public function check_Remember($user_id,$user_password){
			$escape_user_id =$this->_dao->escapeString($user_id);
			$escape_user_password =$this->_dao->escapeString($user_password);
			$sqlstr = "select * from mooc_user where md5(concat(id,'SALT')) = $escape_user_id and 
			 md5(concat(password,'SALT')) = $escape_user_password";
			return $this->_dao->GetRow($sqlstr);
		}
	} 
 ?>