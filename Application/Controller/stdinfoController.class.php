<?php 

	class stdinfoController extends BaseController{
		public function indexAction(){
			$this->_loadDoctype();
			$this->_loadHeader();
			require('Application/View/study_info.html');
			$this->_loadFooter();
		}
	}
 ?>