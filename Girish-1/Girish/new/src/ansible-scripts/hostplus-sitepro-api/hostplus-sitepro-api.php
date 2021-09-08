<?php

include __DIR__.'/SiteProApiClient.php';

use Profis\SitePro\SiteProApiClient;

// get "your_api_username" and "our_api_password" from your license and enter them here: This is for Hostplus brand
// use this for premium/free licenses
$api = new SiteProApiClient('http://site.pro/api/', 'apikey0', 'eh.xYRyl.IWOYQipfcsoN0VAtsNz0L/uG/Z7lHiR.l2bd/6Q');
// use this for enterprise licenses and change 'your-bulder-domain.com' to your builder domain
//$api = new SiteProApiClient('http://your-bulder-domain.com/api/', 'your_api_username', 'your_api_password');

try {
	// Note: parameter value types must match documentation
	// (ex.: parameter 'suborderId' type is Number, so "'suborderId' => 2410" is correct and "'suborderId' => '2410'" is incorrect )
	$res = $api->remoteCall('ipList', array(
		'suborderId' => 1838904, // suborder ID from your license
		'action' => 'list' // list all added IP's
	));
	
	$res = $api->remoteCall('ipList', array(
		'suborderId' => 1838904, // suborder ID from your license
                'brandId' => 736908,
		'action' => 'add', // add new IP
		'ip' => '0.0.0.0' // IP you want to add
	));

	
	if (!$res || !is_object($res)) {
		throw new ErrorException('Response format error');
	} else if (isset($res->ok) && $res->ok) {
		echo 'Request success: '.print_r($res, true);
	} else {
		throw new ErrorException((isset($res->error->message) && $res->error->message) ? $res->error->message : 'Unknown error');
	}
} catch(ErrorException $ex) {
	echo 'Request error: '.$ex->getMessage();
}
