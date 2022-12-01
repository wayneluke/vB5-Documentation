<style>
  .red {color:red;}
</style>

# Initializing the vBulletin Mobile API

> **Note:** This documentation is only applicable to the Mobile API over a web interface using vBulletin 5 Connect.

This documentation describes vBulletin 5 API. With the API, mobile devices and other clients can communicate with vBulletin and do most tasks that vBulletin's webclient frontend can do.


## Conventions

In this documentation, you will find a number of styles of text that distinguish between different kind of information. Here are some examples of these styles and an explaination of their meaning. 

API method names and parameters in text are shown as follows: "You can call [<span class="red">user.login2</span>](http://vb5support.com/resources/api/classes/vB-Api-User.html#method_login2) to login into vBulletin. `nodeid` is a parameter of [<span class="red">node.getNode</span>](http://vb5support.com/resources/api/classes/vB-Api-Node.html#method_getNode) method."

File names and URLs in text are show as follows: "It will load *index.php*, similar to web frontend URL `http://www.yourforumurl.com/index.php`.

And finally we also have code in text: "With the line <tt>x = alongvar / 2 * 1.5</tt>, we get the value of <tt>x</tt>."

A block of code is set as follows:

```php 
#include <iostream>
int main ( int argc,  char **argv ) {
    std::cout << "Hello World!";
    return 0;
}
```

**Terms** and **important words** are shown in bold.

All API methods return JSON data. Let's take an example (Part of response from [<span class="red">node.getNode</span>](http://vb5support.com/resources/api/classes/vB-Api-Node.html#method_getNode):

```php
{
   "userid": "1",
   "usergroupid": "6",
   "membergroupids": "",
   "displaygroupid": "6",
   "username": "admin",
   "password": "696d29e0940a4957748fe3fc9efd22a3",
   "passworddate": "1330646424",
   "email": "admin@admin.com",
   "styleid": 1,
   "parentemail": "",
   "fbjoindate": "0",
   "fbname": "",
   "logintype": "vb",
   "fbaccesstoken": "",
   "saved_languageid": "0",
   "lang_options": {
      "direction": true,
      "dirmark": false
   },
   "displayusertitle": "Administrator",
   "realstyleid": "0",
   "securitytoken_raw": "bfcd705e0a008c00f06ed49b73c76626dc2b9ada",
   "securitytoken": "1331287150-8087cbcbe0c93e48c48ca592df5bc0cbe9bef64f",
   "logouthash": "1331287150-8087cbcbe0c93e48c48ca592df5bc0cbe9bef64f",
   "is_admin": true,
   "can_use_sitebuilder": true,
   "maxposts_calculated": 10
}
```

In this documentation, we use this way to refer items of the JSON response:

* userid = 1
* lang_options.direction = 1

## REST Interface

The API uses a REST-like interface. This means that our API method calls are made over the internet by sending HTTP GET or POST requests to the vBulletin API REST server (`http://www.yourforumbaseurl.com/core/`[<span class="red">api.php</span>](api.php)). Nearly any computer language can be used to communicate over HTTP with the REST server.

> Note that <span class="red">api.php</span> is located in your vB core base URL, not in the presentation layer.

## API Method Names and Legacy Actions Mapping

Each API method can be mapped to an action of a vB Web API.

Method Name: &lt;classname&gt;.&lt;functionname&gt; is mapped to Web API: vB_Api_Classname::functionname().

Examples:  

- [<span class="red">node.getNode</span>](http://vb5support.com/resources/api/classes/vB-Api-Node.html#method_getNode) is mapped to Web API: `vB_Api_Node::getNode()`.
- [<span class="red">user.login</span>](http://vb5support.com/resources/api/classes/vB-Api-User.html#method_login2) is mapped to Web API: `vB_Api_User::login2()`.

## API Method Parameters

An API Method may accept two types of parameters: '''GET''' and '''POST'''. GET parameters should be passed via HTTP GET; POST parameters should be passed via HTTP POST. Both GET and POST parameters will be merged and used as the API parameters.

For example, the definition of <tt>'''vB_Api_User::fetchUserinfo()'''</tt> is

  public function fetchUserinfo($userid = false, $option = array(), $languageid = 0, $nocache = false)

If you pass GET['userid'] => 1, POST['option'] => array(FetchUserinfoOptions) to <tt>'''[[VB5_API:user.fetchUserinfo|user.fetchUserinfo]]'''</tt>, the following Web API will be called with the parameters:

<tt>'''vB_Api_User::fetchUserinfo(1, array(FetchUserinfoOptions))'''</tt>

> Note that the keys 'userid' and 'option' match the parameter names in the API definition.

The parameters which don't match Web API defined parameter names will be ignored.

All parameters should be encoded into '''UTF-8''' charset.

## API Response

All API methods return **JSON** data to the clients. JSON objects ({}) and arrays ([]) are **all treated as arrays**.

All values are encoded into **Unicode/UTF-8**.

Note, for any response including the "postbits" block, vBulletin 5 may contain additional information related to the new vB5 content types. Please see [[VB5_API_Common_Array:Postbits_Array|this link]] for these additional elements.

## ClientID and Secret

'''ClientID''' is required for each API call (except calling <tt>'''[[VB5_API:api.init|api.init]]'''</tt> for the first time). It's used for identify the client itself.

'''Secret''' is used for generating API '''signature''' and validating API response. A client will get a secret by calling <tt>'''[[VB5_API:api.init|api.init]]'''</tt> for the first time. It should store the secret safely and never pass it through the network.

## Access Token 

'''Access Token''' is required for each API call (except calling <tt>'''[[VB5_API:api.init|api.init]]'''</tt> for the first time). It's used for authenticating user and granting correct permission to logged-in user. A client can call <tt>'''[[VB5_API:api.init|api.init]]'''</tt> to get a new or existing access token. The client should store it for further usage.

After a user is logged out (with <tt>'''[[VB5_API:user.logout|user.logout]]'''</tt> method), a new access token will be generated to identify the guest. The client should then update the access token it stores for further usage.

## API Key 

'''API Key''' is an random string to prevent unauthorized clients to connect to vBulletin. Forum administrator can get or generate its API Key in vBulletin's AdminCP.

API Key is mainly used for [[#API Method Request and Return Result Verification|API Method Request and Return Result Verification]].

== api_init ==

[[VB5_API:api.init|api.init]]'''</tt> is the first method of the API that a client should call. Client should pass its name, version and other information to the method. Then the method will return information of vBulletin and the API, such as vBulletin version, URL and API version. Also it will return '''[[#Access Token|Access Token]]''', '''[[#ClientID and Secret|ClientID]]''' and '''[[#ClientID and Secret|Secret]]''' to the client.

== API Method Request and Return Result Verification ==

Each API request (except <tt>'''[[VB5_API:api.init|api.init]]'''</tt>) should be signed to make sure that the requests to different API methods in a session are made by and come from one same client. Also the results returned by different API methods are signed to make sure that they were returned from the same vBulletin site.

How to sign a request (in PHP):
<pre>
// The HTTP GET params for an API method
// (without api related params except api_m. see below)
$requestparams = array('api_m' => 'node.getNode', 'b' => 'value1', 'a' => 'value2'); 

// Sort GET params by key
ksort($requestparams);

// $signstr = 'a=value2&api_m=forumdisplay&b=value1';
$signstr = http_build_query($requestparams);

// The correct signature is the md5 value of $data + accesstoken + clientid + secret + apikey
// (all can be fetched from api_init except apikey
// -- this is a value specific to the vB site you are trying to connect to and can be found in the admincp)
$sign = md5($signstr.$apiaccesstoken.$apiclientid.$secret);
</pre>

Note: Signature is the md5 hash of a string which is made up with '''HTTP GET parameter string''', '''[[#Access Token|Access Token]]''', '''[[#ClientID and Secret|ClientID]]''' and '''[[#ClientID and Secret|Secret]]'''. '''HTTP GET parameter string''' contains HTTP '''GET''' parameters only in '''Query String''' format and the parameters names are in '''alphabet order'''.

How to verify a result (in PHP):
<pre>
// The sign value returned by the server (Authorization header);
$sign = $_SERVER['HTTP_AUTHORIZATION']; 

$data = 'the raw JSON data returned by the server';

// The correct signature is the md5 value of $data + accesstoken + clientid + secret (all can be fetched from api_init)
$signtoverify = md5($data.$apiaccesstoken.$apiclientid.$secret); 

if ($sign != $signtoverify) {
  // Throw error msg here
}
</pre>

Note: Every response returned by API method contains a HTTP Header named '''HTTP_AUTHORIZATION'''. The client should calculate a verification string to be compared with the value of '''HTTP_AUTHORIZATION''' header. The verification string is a md5 value of a string which is made up with '''RAW JSON data''' returned by the server, '''[[#Access Token|Access Token]]''', '''[[#ClientID and Secret|ClientID]]''' and '''[[#ClientID and Secret|Secret]]'''. The client should verify each response returned by the server.

== api.php  ==

'''api.php''' is a central entry script for all clients to load. It handles all GET, POST requests and HTTP headers (For authentication / requests validation etc.) from client. It also takes charge of translating method name to vBulletin URL and actually requests to the URL. 

Method name is required by api.php either via HTTP GET or POST. Also most of the methods require '''[[#Access Token|Access Token]]''' and '''[[#API Method Request and Return Result Verification|Signature]]'''.

So here's an example of the request URL:

 ''<nowiki>http://www.yourforumcorebaseurl.com/</nowiki>'''api.php'''?'''api_m'''=node.getNode&'''api_c'''=clientid&'''api_s'''=accesstoken&'''api_sig'''=signature&'''api_v'''=3&'''b=value1&a=value2'''''

From the example, you'll see:
* '''api.php''' - the entry script name.
* '''api_m''' - API method name. In this example, it's <tt>'''[[VB5_API:node.getNode|node.getNode]]'''</tt>.
* '''api_c''' - '''[[#ClientID and Secret|ClientID]]'''.
* '''api_s''' - '''[[#Access Token|Access Token]]'''.
* '''api_sig''' - '''[[#API Method Request and Return Result Verification|Signature]]''' of the request
* '''api_v''' - the api version called by the request
* '''b=value1&a=value2''' - the HTTP GET parameters accepted by the method (<tt>'''[[VB5_API:node.getNode|node.getNode]]'''</tt>) of the API

== Error Handling  ==

Client should always check the existence of <tt>errors</tt> of every API method response to see if there are any errors before further processing. 

<tt>errors</tt> is an array. Its first item is always an unique error ID (underlying it's actually the error message phrase name). Other items are parameters coupled with the error. An example errormessage for invalid nodeid: 
<pre>{
   "errors": [
      [
         "invalid_node_id"
      ]
   ],
   "debug": "<b>API Error<\/b><br><b>Error:<\/b> invalid_node_id<br>"
}</pre> 

The client must check the following errors for each call of all methods (except <tt>'''[[VB5_API:api.init|api.init]]'''</tt>): 

*'''invalid_clientid''' - The '''[[#ClientID_and_Secret|ClientID]]''' ([[#api.php|api_c]]) passed from the client is no longer valid. Solution: Call <tt>'''[[VB4 API:api init|api_init]]'''</tt> (without [[#api.php|api_c]] parameter) to get a new '''[[#ClientID_and_Secret|ClientID]]''', '''[[#Access_Token|Access Token]]''' and '''[[#ClientID_and_Secret|Secret]]'''. 
*'''invalid_accesstoken''' - The '''[[#Access_Token|Access Token]]''' ([[#api.php|api_s]]) passed from the client is no longer valid. Solution: Call <tt>'''[[VB4 API:api init|api_init]]'''</tt> (with [[#api.php|api_c]] parameter) to get a new Access Token. clientID and Secret won't be changed. 
*'''invalid_api_signature''' - The '''[[#API_Method_Request_and_Return_Result_Verification|Signature]]''' passed to [[#api.php|api.php]] is invalid. 
*'''missing_api_signature''' - Every method except <tt>'''[[VB5_API:api.init|api.init]]'''</tt> requires '''[[#API_Method_Request_and_Return_Result_Verification|Signature]]'''. If the client doesn't pass a signature, this error will happen. 
*'''bbclosed''' - Forum is closed. 
*'''toobusy''' - Forum is temporarily closed due to server load average.


= Login/Logout Process =
This article explains the process of user login and logout with API.

== Login Process ==
The client is able to login user with [[VB5_API:user.login|user.login]] method. 

If login successfully, It will return a new sessionhash, the userid. Here's an example:

`{"sessionhash":"9ffe471fa6dcd814a4590de87ff6cad7","userid":"1","password":"6967db2172df02e461c5129b01b460c6","lastvisit":"0","lastactivity":"1331222482"}`

Otherwise it will throw 'badlogin' error.

Note that after user login, the sessionhash and apiaccesstoken will be regenerated. So the Authorization header won't be returned to the client in this method.

Because of technical limit, this method is unable to return a new securitytoken. So after this API call ([[VB5_API:user.login|user.login]]), client should call [[VB5_API:api.init|api.init]] to get the new securitytoken. Once the client gains both the new sessionhash and the securitytoken, please save them in application session vars. And then login process is done. You need to pass the new sessionhash to the API and use the new securitytoken to sign the requests in future API method calls.

== Logout Process ==

Client should call [[VB5_API:user.logout|user.logout]] to logout an user. And it will return a new session hash just the same as [[VB5_API:user.login|user.login]].

Client don't need to fetch a new apiaccesstoken again because after logging out, the new security token is always be 'guest'. But if client needs other refreshed variables, call [[VB5_API:api.init|api.init]].
