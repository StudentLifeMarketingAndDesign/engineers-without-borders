<?php
class Page extends SiteTree {

	private static $db = array(
	);

	private static $has_one = array(
		"MainImage" => "Image"
	);
	
	public function getCMSFields() {
	
		$fields = parent::getCMSFields();
		
		$fields->removeByName("Content");
		$fields->addFieldToTab("Root.Main", new UploadField("MainImage", "Main Image (920 x 400)"));
		$fields->addFieldToTab("Root.Main", new HTMLEditorField("Content", "Content"));

		
		return $fields;
		
		
	}


}
class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
	}
	
   public function BootstrapGrid($num) {
	   return round(12/$num);
	   
   }	
   
   public function Posts($num = 2){
	   $posts = Post::get()->limit($num);
	   
	   return $posts;
	   
   }
	public function Profiles(){
		$profiles = Profile::get();
		
		if($profiles){
			return $profiles;
		}else{
			return false;
		}
		
	}
	
	public function greaterThan($value, $reference) { 
      if ($value > $reference){ 
         return true; 
      } 
      else{ 
         return false; 
      } 
   }


}