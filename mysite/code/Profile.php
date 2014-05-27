<?php
class Profile extends DataObject {

	private static $db = array(
		"FirstName" => "Text",
		"LastName" => "Text",
		"Position" => "Text",
		"Bio" => "HTMLText",
		
	);

	private static $has_one = array(
		"Committee" => "Committee",
		"Photo" => "Image"
		
	);
	
	private static $summary_fields = array(
		"FirstName" => "FirstName",
		"LastName" => "LastName"
	);

	private static $plural_name = 'Profiles'; 
	
	public function BootstrapGrid($num) {
		return round(12/$num);
	}

}