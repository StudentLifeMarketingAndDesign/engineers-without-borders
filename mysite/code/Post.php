<?php
class Post extends Page {

	private static $db = array(
	
		"WrittenDate" => "Date",
		"EventDate" => "Date",
		"Author" => "Text",
		"AuthorEmail" => "Text"
	);

	private static $has_one = array(
		
	);
	
	private static $can_be_root = false;
	
	
	public function getCMSFields() {
	
		$fields = parent::getCMSFields();
		
		$fields->removeByName("Content");
		
		$fields->addFieldToTab("Root.Main", $eventDate = new DateField("EventDate", "Event Date (if applicable)"));
		$eventDate->setConfig('showcalendar', true);

		$fields->addFieldToTab("Root.Main", $writtenDate = new DateField("WrittenDate", "Published Date"));
		$writtenDate->setConfig('showcalendar', true);
				
		$fields->addFieldToTab("Root.Main", new TextField("Author", "Author"));
		$fields->addFieldToTab("Root.Main", new TextField("AuthorEmail", "Author's Email (optional)"));
		$fields->addFieldToTab("Root.Main", new HTMLEditorField("Content", "Content"));

		
		return $fields;
		
		
	}	

}
class Post_Controller extends Page_Controller {

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

}