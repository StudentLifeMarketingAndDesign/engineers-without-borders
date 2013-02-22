<?php
class Profile extends DataObject {

	public static $db = array(
		"FirstName" => "Text",
		"LastName" => "Text",
		"Position" => "Text",
		"Bio" => "HTMLText",
		
	);

	public static $has_one = array(
		"Committee" => "Committee",
		"Photo" => "Image"
		
	);
	
	public static $summary_fields = array(
		"FirstName" => "FirstName",
		"LastName" => "LastName"
	);

	public static $plural_name = 'Profiles'; 
	
	public function BootstrapGrid($num) {
		return round(12/$num);
	}

}