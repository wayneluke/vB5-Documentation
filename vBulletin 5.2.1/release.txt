We're pleased to announce the release of vBulletin 5.2.1 Connect.  All together over 190 issues have been resolved in vBulletin 5.2.1 Connect. There are some pretty significant changes with this release.

Minimum PHP Version: 5.4.0
Minimum MySQL Version: 5.1.5

Recommended PHP Version: 5.6.0 or higher
Recommended MySQL Version: 5.6.0 or higher

[h2]PHP 7 Support[/h]
vBulletin 5.2.1 has been updated to work with PHP 7. PHP 7 brings significant performance and other enhancements to the PHP platform.

[b]Known Issue:[/b]
When running Apache 2.4.X and PHP 7.0.X under the Windows Family of OSes, the system can crash when processing templates with a large number of variables. An example of this would be the css_global.css template. Until we resolve this [url=http://tracker.vbulletin.com/browse/VBV-15823]issue[/url], it is not recommended to run 5.2.1 under PHP 7.0.X if you use Apache under Windows.

[h2]jQuery Update[/h2]
vBulletin 5.2.1 includes jQuery 2.1.4. This brings a number of enhancements to the jQuery library including [url=https://jsperf.com/speed-comparison-of-jquery-versions/40]performance[/url] enhancements. Due to this change, we are no longer able to support IE8. If you're on a version of Windows that cannot upgrade to IE10 or IE11, we suggest that you switch to Firefox, Chrome, or Opera. If you are using a modern browser and experience any JavaScript compatibility errors or general bugs, please post them in [url=http://tracker.vbulletin.com/secure/CreateIssue.jspa?pid=10091&issuetype=1]Jira[/url].

Please note, this change may cause problems with any third-party or custom modifications that you have made, including Ad Modules. As such, please review all aftermarket JavaScript to make sure that it continues working or is appropriately updated.

[h2]Log in via Email[/h2]
We're happy to introduce the ability to log in via email address. This optional feature will allow your users to log in with their email address. This provides a small amount of security for your vBulletin site and end users as their log in credentials would never be shown on the screen. You can turn this feature on in the Admin Control Panel (AdminCP) under Settings -> Options -> General Settings.

There are three options in this setting:
[list]
[*]Log in via Username Only
[*]Log in via Email Only
[*]Log in via Username or Email
[/list]
Phrases on the log in screens and within error messages will adjust to reflect your setting.

[b]What if I allow multiple users with the same email address?[/b]
Unfortunately, the system will not allow email log in if there are multiple users with the same email address. vBulletin wouldn't know which user to validate against. If you have multiple users with the same email address, an error message will display stating there are multiple users with the same email address. In order to enable this functionality, those users would need unique email addresses.

You can see a list of all emails with multiple users by clicking the link in the error message or going to Users -> Search For Users -> Look For Duplicate Emails. This will list the emails and how many users are sharing it. You can click on the links to drill down. Those users would need to update their email address.

You can turn off the ability for users to share an email in the AdminCP under Settings -> Options -> User Registration Options. Set the option 'Require Unique Email Addresses' to Yes. This is enabled by default so if you haven't changed the setting, you're good to go.

[b]Creating Users in the AdminCP[/b]
Prior to the 5.2.1 beta, you could create new users in the AdminCP and not enter an email address. This functionality has been updated to require an email address.

[h2]Password Resets[/h2]
The password reset functionality has been streamlined. This will allow a better user experience and reduce the amount of emails sent by the system. In the new system, only a single email will be sent on an email change request. This will contain an embedded password. When the user clicks the link, they will just have to enter and confirm their new password. In order to prevent passwords from being guessed by unsavory users, new random passwords will be generated that are more secure. This will protect the customer. There is also brute force prevention on the request. A user can only request a limited number of resets before they are locked out for a short period of time.

[h2]Random Number Generation[/h2]
We are now relying on a cryptographically secure number generator where appropriate. One example would be the password reset above. This functionality is built into PHP7.  If you are using a version of PHP before 7.0, then this will require that your server have a library installed to handle this. If there is no support for at least one of the libraries below, you will not be able to install or upgrade to vBulletin 5.2.1 until one is made available.

[list]
	[*]libsodium
	[*]/dev/urandom
	[*]mcrypt
	[*]windows system call using the PHP COM extension
	[*]openssl
[/list]

For more information please see: https://github.com/paragonie/random_compat/blob/master/ERRATA.md

[h2]Database Cleanup[/h2]
If you upgraded from an older version of vBulletin, there are a number of tables that are considered deprecated and are no longer used in vBulletin 5 Connect. These tables may contain a considerable amount of data and increase the size of your database storage. In order to streamline this, we are working to remove these unused tables. The tables removed in this version are:
[list]
	[*]pm
	[*]pmreceipt
	[*]pmtext
	[*]pmthrottle
	[*]nodevote
	[*]searchcore
	[*]searchcore_text
	[*]searchgroup
	[*]searchgroup_text
	[*]visitormessage
	[*]visitormessage_hash
[/list]

Once these tables are deleted, the information will be gone forever. We suggest you make a backup of them if you feel you might need the data in the future for some other application.


Discussion
You may discuss this release here: [node]4338832[/node]

Current Version Support Schedule:
[list]
	[*]Active Version - 5.2.1
	[*]Security Patch - 5.2.0
	[*]Security Patch - 5.1.10
	[*]No Patch Release - 5.1.9 or earlier.
[/list]
