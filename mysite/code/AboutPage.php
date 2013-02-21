<?php
class AboutPage extends Page {

	public static $db = array(
		"PastMembers" => "HTMLText",
		"MainFeatureTitle" => "Text",
		"MainFeatureContent" => "HTMLText"
		
	);

	public static $has_one = array(
		"MainFeatureImage" => "Image"
	);

	public function getCMSFields() {
	
		$f = parent::getCMSFields();
		
		$f->removeByName("Content");
		$gridFieldConfig = GridFieldConfig_RecordEditor::create();
		//$gridFieldConfig->addComponent(new GridFieldSortableRows('SortOrder'));
		
		$gridFieldConfig = GridFieldConfig_RecordEditor::create();


		$gridField = new GridField("Profiles", "Staff Members", Profile::get(), $gridFieldConfig);
		
		
		
		$f->addFieldToTab("Root.Staff", $gridField); // add the grid field to a tab in the CMS	
		$f->addFieldToTab("Root.Main", new HTMLEditorField("Content", "Content"));
		$f->addFieldToTab("Root.Staff", new HTMLEditorField("PastMembers", "Past Members", $insertBefore = "Content"));	
		
		$f->addFieldToTab("Root.MainFeature", new TextField("MainFeatureTitle", "Title"));
		$f->addFieldToTab("Root.MainFeature", new UploadField("MainFeatureImage", "Image"));
		$f->addFieldToTab("Root.MainFeature", new HTMLEditorField("MainFeatureContent", "Content"));		
	
		return $f;		
		
	}
	

}
class AboutPage_Controller extends Page_Controller {

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