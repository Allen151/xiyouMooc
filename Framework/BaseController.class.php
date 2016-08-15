<?php 
	/**
 	* 基础控制器类  被所有的控制类继承
 	*/
  	class BaseController
  	{
  		
  		function __construct()
  		{
       // $this->_isRemember();
  			$this->_setContentType();
  		}
  		/**
  		 * 设置响应内容类型，字符集
  		 */
  		public function _setContentType()
  		{
  			header('ContentType : text/html;charset = utf-8');
  		} 


      //判断是否存在cookie
      protected function _isRemember(){
        if(!isset($_SESSION['user'])){
            //如果存在cookie并且匹配数据库密码成功，登陆成功，否则跳转登陆。
            $m_user = new userModel();
           @ $result = $m_user -> check_Remember($_COOKIE['user_id'],$_COOKIE['user_password']);
          
            if (isset($_COOKIE['user_id']) && isset($_COOKIE['user_password']) && $result ) {
                $_SESSION['user'] = $result;
                setcookie('user_id',md5($result['id'].'SALT'),-1,'/');
                setcookie('user_password',md5($result['password'].'SALT'),-1,'/');
            }

        }
      }


  		protected function _jumpNow($url='')
  		{
  			header('Location:'.$url);
  			die;

  		}

  		protected function _jumpWait($url='',$message='',$wait=3){
  			header("Refresh:$wait;URL='$url'");
  			echo $message."    ".$wait."秒之后跳转";

  			die;
  		}
  	

      public function _loadDoctype(){
        require 'Application/View/Public/doctype.html';
      }

      public function _loadHeader(){
        require 'Application/View/Public/header.html';
      }

      public function _loadFooter(){
        require 'Application/View/Public/footer.html';
      }
    }



 ?>