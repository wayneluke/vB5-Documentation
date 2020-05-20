vBulletin 5.4.3 Connect is now available for download by licensed customers. 

[h=2]User Privacy and Data Compliance[/h]
Features have been added to vBulletin Connect to enhance user privacy and data compliance requirements. These features allow customers to comply with various privacy laws in effect around the world such as Europe's [url="https://www.techrepublic.com/article/the-eu-general-data-protection-regulation-gdpr-the-smart-persons-guide/"]GDPR[/url].


[h=3]New Options [/h]
[list]
[*]Enable Privacy Consent for Guests
This will require all EU users to consent to information tracking to use the site. It will log the time the consent was given and the IP address the consent was obtained from. 
Default Value: No

[*]Enable Privacy Consent for Registered Users
This will collect consent for EU users when they register or the first time they log in (if they are already registered). 
Default Value: No

[*]Privacy Statement URL
Enter the URL of your privacy statement, if you have one. Otherwise, leave this setting blank.

If you have Privacy Consent enabled, you must specify a URL here. You may use the existing Privacy Policy Page, enter its URL in this setting, and fill out your actual Privacy Policy in the "privacy_policy_page_text" phrase. 
Default Value: privacy (on new installs)

Note: If you change this value, you will also need to update the Navigation Link on the Footer using Site Builder.

[*]Enable Automatic Account Deletion
Allow EU users to automatically withdraw consent to collect data and delete their accounts. This will be done via a cron script after a "cool down" interval.
Default Value: No

[*]Account Deletion Cooldown
Number of days before privacy consent withdrawal triggers the user removal. After a user withdraws their privacy consent, they have this many days to change their mind before their user data is permanently removed. This value must be greater than zero but can be a decimal. If "Enable Automatic Account Deletion" is disabled, this setting does nothing.
Default Value: 3

[*]Geo IP Provider
The GeoIP provider will determine if a user is from the EU based on their IP address. If you do not select GeoIP provider (or do not provide an application key if it's required) then all users will be treated as EU users. Note: Set this to None to require consent from all users. 
Default Value: IPStack

[*]GeoIP Service Key
This is the access key for the IP stack GeoIP service. This is required to identify which users are affected by the EU regulations.
Default Value: Empty

[*]Guest Privacy Consent Cookie Name
Use this to specify the name of the cookie used by the guest privacy consent banner. Leave this blank to use the default of: COOKIE_PREFIX + "privacy_consent_guest".
Default Value: Empty
[/list]

[h=3]User Controls[/h]
Withdraw Consent
Users will be able to withdraw their consent by accessing the Privacy Tab on their Settings page. When they withdraw consent, they will be logged out of your site. If you have Automatic User Deletion enabled, they will be deleted after the waiting period specified. If the user wishes to use your site again, then they will have to give consent again to access their account.

Personal Information Download.
Users will be able to download their personally identifying information from the Privacy tab on the Settings Page. This is downloaded as a CSV format file and is compatible with any spreadsheet. The file only includes personally identifying information and does not include any content they have created on their site.


[h=3]Privacy Page[/h]
A new default page has been added to the system. By default, this page is called Privacy and is used to display the contents of the privacy_policy_page_text page. You can change the contents of this phrase in the Phrase Manager. To locate it follow these steps:
[list]
[*]In the AdminCP go to and open Languages & Phrases in the left navigation.
[*]Select "Search in Phrases" in the left navigation. 
[*]Enter "privacy_policy_page_text" into the search field (without the quotes).
[*]Select "Phrase Variable Name Only" for the Search In... field on the same page. 
[*]Press Search.
[*]On the next page you should get one result.
[*]Click the Edit Button.
[*]Put your privacy policy text in the Translation box for your language. You will need to use HTML to format the content of your privacy policy.
[/list]

Note: If you do not have an existing privacy policy, you can use your favorite search engine to find one that can be customized to fit your needs. Common search terms include "privacy policy template" and "privacy policy generator".

[h=2]AdminCP Customization[/h]
This functionality has been restored and is available to download customers. To customize the look and feel of the AdminCP, create a copy of the default style directory in /core/cpstyles/ and edit the CSS to fit your needs. Attached below is a custom AdminCP Style made available to test the feature. Simply upload the unzipped directory to /core/cpstyle and then select the style in the Options when logging on to your AdminCP. You can set the style permanently for Admin Users under Usergroups -> Administrator Permissions.



[h=2]SVG Customization made available to Cloud Customers[/h]
When vBulletin Cloud is upgraded, customers will be able to use and edit custom CSS for the SVG Icons in the software. You can do this in Site Builder using the exiting CSS Editor Tool. A new option to select a specific template has been added to allow you to switch between your css_additional.css template and the css_sprite_icons_general.css. Like the css_additional.css template, this template will be empty on a new installation and is provided for the purpose of editing the icons. Your current sprite will be shown underneath the editor so you can see the effects of your changes.


[h=2]Content Awaiting Approval[/h]
New functionality has been added to show users their content even if it is awaiting moderation. This should reduce confusion when a user creates a topic or post and it doesn't immediately appear. The format of the unmoderated content will be similar to that shown to Administrators and Moderators. Users will not be able to see unmoderated content created by others.

[h=2]Template Module[/h]
A new module that can be used to pull the contents of templates onto pages. With the Template module, you can pull the content from any template in the current style and display it on a vBulletin page. To see an example of this template in action look at the new Privacy Policy page available in vBulletin 5.4.3. The template is currently used to pull in the privacy_policy_page template and display in on the proper page. However, customers will be able to use it to pull any template, including custom templates and display them on a page. An example would be to use the login form template and display it to guest users as part of your pages.

Note: Custom use of this feature is not currently available to vBulletin Cloud users.

[h=2]Other Issues:[/h]
Additional support for PHP 7.2
Resolved several issues where background images were being inherited improperly.
Additional Style Variable and Dark Theme support.
Prevent duplicate pages using the same URL and routing prefix.

A list of all issues can be found here: https://tracker.vbulletin.com/vbulletin5/roadmap#roadmap_milestone_27

[h=2]PHP 5.6.X Deprecation[/h]
We will be dropping support for PHP 5.6.X at the end of 2018. This coincides with the end of life status of PHP 5.6.X. We recommend that customers upgrade to PHP 7.1 or higher as soon as possible.

[h=2]System Requirements[/h]
Minimum PHP Version: 5.6.30
Minimum MySQL Version: 5.5.8

Recommended PHP Version: 7.1 or higher
Recommended MySQL Version: 5.7.7 or higher
Recommended MariaDB Version: 10+

[h=2]Current Version Support Schedule[/h]
The release of vBulletin 5.4.3 will retire support for the vBulletin 5.3.X series. All customers are encouraged to upgrade to the latest version.
[list]
    [*]Active Version - 5.4.3
    [*]Security Patch - 5.4.2
    [*]Security Patch - 5.4.1
    [*]No Patch Release - 5.4.0 or earlier.
[/list]

[h=2]Discussion[/h]
If you have any questions about these changes you may discuss them here: [node]4392735[/node]

If you find an issue with the software or wish to place a feature request please visit our [url=https://tracker.vbulletin.com]tracker[/url].

In order to receive support for your vBulletin Product please visit our [url=https://www.vbulletin.com/forum/]community forums[/url].





