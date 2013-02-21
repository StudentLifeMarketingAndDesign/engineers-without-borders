<?php
class HomePage extends Page {

	public static $db = array(
		"MissionStatement" => "Text",
		"MainFeatureTitle" => "Text",
		"MainFeatureContent" => "HTMLText",
		
	);

	public static $has_one = array(
		"MainFeatureImage" => "Image"
	);
	
	
	public function getCMSFields() {
	
		$fields = parent::getCMSFields();
		
		$fields->removeByName("Content");
		$fields->addFieldToTab("Root.Main", new TextareaField("MissionStatement", "Mission Statement", $insertBefore = "MainImage"));
		
		$fields->addFieldToTab("Root.MainFeature", new TextField("MainFeatureTitle", "Title"));
		$fields->addFieldToTab("Root.MainFeature", new UploadField("MainFeatureImage", "Image"));
		$fields->addFieldToTab("Root.MainFeature", new HTMLEditorField("MainFeatureContent", "Content"));
		
		return $fields;
		
		
	}	

}
class HomePage_Controller extends Page_Controller {

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
	public static $allowed_actions = array (
	);

	public function init() {
		parent::init();

	}

}