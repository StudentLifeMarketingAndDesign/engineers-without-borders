<?php
class Committee extends Page {

	public static $db = array(
		"Title" => "Text",
		"Description" => "HTMLText",
		
	);

	public static $has_one = array(
		"Photo" => "Image"
	);
	
	public static $has_many = array(
		"Profiles" => "Profile"
	);
	
	public function getCMSFields(){
		$f = parent::getCMSFields();
		$f->renameField("MainImage", "Main Image (253 x 265)");
		$gridFieldConfig = GridFieldConfig_RelationEditor::create();
		$gridFieldConfig->getComponentByType('GridFieldAddExistingAutocompleter')->setSearchFields(array('FirstName', 'LastName'))->setResultsFormat('$FirstName $LastName');
				
		$gridField = new GridField("Profiles", "People on this committee", $this->Profiles(), $gridFieldConfig);
		$f->addFieldToTab("Root.Main", $gridField); // add the grid field to a tab in the CMS	
		return $f;
	}

}