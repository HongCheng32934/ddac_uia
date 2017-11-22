<?php

class Page {
	// table field name
	const PAGE_TABLE = 'page';
	const COL_ID = 'page_id';
	const COL_TITLE = 'page_title';
	const COL_SLUG = 'page_slug';

	private static $_instance = NULL;
	private $_db, $_data, $_pages = array();


	/**
	* Establish database connection and get available pages
	*/
	protected function __construct($page = null) {
		$this->_db = MySQLConn::getInstance();
	}

	public static function getInstance() {
		if(self::$_instance === NULL)
			self::$_instance = new Page();

		return self::$_instance;
	}


	/**
	* Get slug of current page from query string
	*
	* @return string                     Slug of current page
	*/
	public static function getPageParam() {
		if($page = Input::get('page')) {
			return $page;
		}

		return Config::get('home');
	}


	/**
	* Check if current page is accessible and user has permission to view it
	*
	* @return string                     Slug of current page
	*
	* NOTE: Will redirect to 404 or 403 page if page not found or
	* 		not logged in
	*/
	public function pageCheck($userID = null) {
		if(!$userID) {
			$userID = $_SESSION['ID'];
		}

		$page = self::getPageParam();

		if ($page && $this->find($page, true)) {
			return $page;
		}
		else {
			header('Location: portal.php?page=err404');
			return null;
		}
	}


	//find page and return result
	public function find($page, $get) {
		if(is_numeric($page)) {
			$field = self::COL_ID;
		}
		else {
			$field = self::COL_SLUG;
			$page = '"'.$page.'"';
		}

		$data = $this->_db->query("SELECT * FROM ".self::PAGE_TABLE." WHERE {$field}={$page} LIMIT 1");

		if($data->count()) {
			if($get) {
				$this->_data = $data->fetch();
			}

			return true;
		}

		return false;
	}


	//get page information
	public function data() {
		return $this->_data;
	}
}
