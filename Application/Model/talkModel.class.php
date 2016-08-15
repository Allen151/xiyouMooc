<?php 

	class talkModel extends BaseModel{
		public function selectTalk(){
			$sqlstr = "select * from chat";
			$result = $this->_dao->GetTable($sqlstr);
			return $result;
		}

		public function insertTalk($username,$imgsrc,$chatText,$time){
			$escape_username = $this->_dao->escapeString($username);
			$escape_imgsrc = $this->_dao->escapeString($imgsrc);
			$escape_chatText = $this->_dao->escapeString($chatText);
			$escape_time = $this->_dao->escapeString($time);
			$sqlstr = "insert into chat  (username,imgsrc,word,date) values
			($escape_username,$escape_imgsrc,$escape_chatText,$escape_time)";
			return $this->_dao->Exec($sqlstr);
		}
	}
 ?>