vBulletin 5.3.2 is now available to all licensed customers. It is recommended that all customers upgrade as soon as possible.

[h2]Inline Log In[/h2]
Imagine that you've logged in but forgot to check the Remember Me button. You find an interesting topic and type a long reply. When you're finished, you submit the post and get an error that says you don't have permission to perform that action. What happened is your session timed out while typing. To resolve this, we have added Inline Log In. Now instead of receiving a confusing message, you will receive a dialog box asking for your password in order to properly process the new post.

[h2]Push Notification Framework[/h2]
We have added the framework for push notifications to vBulletin 5. This framework will currently support Private Message notifications being pushed to the Mobile Suite. As demand warrants, we will add different types of content notifications. In order to use Push Notifications, you will need to register your site with Google's Firebase Cloud Messaging (FCM) system. Site Administrators can register their sites here:
https://console.firebase.google.com/u/0/

More information on Push Notifications will be released simultaneously with the next version of the Mobile Suite.

[b]User Tokens[/b]
Once the Mobile Suite is updated to support Push Notifications, your users will need to update the App and allow it to receive notifications via the system settings. This will create a token to allow them push notifications. The token will remain valid as long as they remain logged into the App. If the user is inactive for more than 7 days, the system will stop sending them push notifications. 

[h2]Other Enhancements[/h2]
[list]
    [*]Orphaned Page Templates can be deleted from within the Page Manager in Site Builder.
    [*]Calendars should respect the start of the week option from user profiles.
    [*]The Date and Time selection widget should reflect the options specified in the Language settings.
    [*]Avatar upload from mobile devices should respect image orientation properly.
    [*]Most search modules support the display of the originating channel.
    [*]Administrators can disable the automatic sending of birthday emails.
    [*]The initial load of the Admin Control Panel should be faster when you have "Control Panel Quick Statistics" turned on.
[/list]

[h2]Is your site using a Secure Socket Layer (SSL)[/h2]
Is your site running on SSL, also referred to as HTTPS? The Secure Socket Layer provides a security standard that creates an encrypted link between your site and the user's browser making sure everything transmitted remains private and is not changed midstream. This is the preferred method of accessing a website in 2017 and initially provides a small boost to search engine rankings. vBulletin 5 Connect has full support for SSL. If you are not using SSL at this time check out our article on converting your site to use HTTPS: 
https://www.vbulletin.com/forum/articles/4361080-converting-your-forum-to-https

All vBulletin Cloud sites are configured to use SSL as a free add-on feature.

[h2]System Requirements[/h2]
Minimum PHP Version: 5.6.0
Minimum MySQL Version: 5.5.0

Recommended PHP Version: 7.1 or higher
Recommended MySQL Version: 5.7.0 or higher
Recommended MariaDB Version: 10+

Current Version Support Schedule:
[list]
    [*]Active Version - 5.3.1
    [*]Security Patch - 5.3.0
    [*]Security Patch - 5.2.6
    [*]No Patch Release - 5.2.5 or earlier.
[/list]

[h2]Discussion[/h2]
If you have any questions about these changes you may discuss them here: [node]4372472[/node]