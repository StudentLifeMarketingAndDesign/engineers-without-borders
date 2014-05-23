<?php

global $project;
$project = 'mysite';

global $database;
$database = 'ewb';

require_once('conf/ConfigureFromEnv.php');

MySQLDatabase::set_connection_charset('utf8');

// Set the site locale
i18n::set_locale('en_US');
Director::set_environment_type("live");
// Enable nested URLs for this site (e.g. page/sub-page/)
if (class_exists('SiteTree')) SiteTree::enable_nested_urls();
GD::set_default_quality(85);
