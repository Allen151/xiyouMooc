<?php 

	class courseModel extends BaseModel{
		/**
		 * [select_cour_nav 查询课程分类]
		 * @param  [type] $courDir 方向
		 * @return array[][]		课程分类结果集          
		 */
		public function select_cour_nav($courDir){			
			if($courDir != '1'){
				$courDir = $this->_dao->escapeString($courDir);
				$sqlstr = "select * from cour_nav where courDir=$courDir";
			}
			else{
				$sqlstr = "select * from cour_nav";
			}
			return $this->_dao->GetTable($sqlstr);
		}

		/**
		 * 取得课程信息
		 * @param  string $courDir       方向
		 * @param  string $courKind      分类
		 * @param  string $courHardLevel 难度
		 * @return array[][]             返回查询的结果集
		 */
		public function select_cour_info($courDir,$courKind,$courHardLevel){
			if($courDir!='1' || $courKind!='1' || $courHardLevel!= '1'){
				$sqlstr = "select * from cour_info where 1 ";
				if($courDir!='1'){
					$sqlstr=$sqlstr." and courDir='$courDir'";
				}
				if($courKind!='1'){
					$sqlstr =$sqlstr." and courKind='$courKind'";
				}
				if($courHardLevel!='1'){
					$sqlstr =$sqlstr." and courHardLevel='$courHardLevel'";
				}
			}
			else{
				$sqlstr = "select * from cour_info ";
			}

			return $this->_dao->GetTable($sqlstr);
		}

		/**
		 * 课程详细信息
		 * @param  [type] $dataid 参数id
		 * @return array[]         课程详细信息结果集
		 */
		public function select_cour_detail($dataid){
			$sqlstr = "select * from course where id=$dataid";
			return $this->_dao->GetRow($sqlstr);

		}
		/**
		 * 主页的主要课程资源
		 * @return array[] 主要课程资源结果集
		 */
		public function select_main_course(){
			$sqlstr = "select * from cour_info where id < 9";
			return $this->_dao->GetTableByAssoc($sqlstr);
		}

		/**
		 * 检查用户是否已经选择
		 * @param  [type] $username [description]
		 * @return [type]           [description]
		 */
		public function check_choose_course($username){
			$escape_username = $this->_dao->escapeString($username);
			$sqlstr = "select courseId from xy_course where username =$escape_username";
			return $this->_dao->GetTable($sqlstr);
		}

		/**
		 * 选择课程
		 * @param  [type] $username [description]
		 * @param  [type] $dataid   [description]
		 * @return [type]           [description]
		 */
		public function deal_new_course($username,$dataid){
			$escape_username = $this->_dao->escapeString($username);
			$updateStr = "update course set person=person+1 where id = $dataid";
			$updateStr2 = "update cour_info set studyPer=studyPer+1 where id = $dataid";
			$sqlstr = "insert into xy_course(username,courseId) values($escape_username, $dataid)";
			$this->_dao->Exec($updateStr);
			$this->_dao->Exec($updateStr2);
			return $this->_dao->Exec($sqlstr);
			
		}

		public function un_choose_sourse($username,$courseId){
			$escape_username = $this->_dao->escapeString($username);
			$sqlstr = "delete from xy_course where courseId=$courseId and username=$escape_username";
			return $this->_dao->Exec($sqlstr);

		}
	}
 ?>