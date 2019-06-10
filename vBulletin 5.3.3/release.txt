vBulletin 5.3.3 Connect is now available to all licensed customers. It is encouraged that all customers upgrade as soon as possible.

[h2]New Search Modules[/h2]
We've added two new search modules to help provide you with the ways to make content easier to find. Additionally, all search modules can be found in the new Content category while editing pages within Site Builder.

[b]Trending Topics Module[/b]
The first module will show Trending Topics. Trending topics are the topics receiving activity on your site. These topics have replies created over the last 96 hours (configurable) and are at least 4 hours old (configurable). Based on vBulletin 5's standard search module, this module can provide an easy way to provide your users with a look at your active content and encourage participation.

Visit your AdminCP to change the lookback and time delay settings for Trending Topics. Go to Settings -> Options -> Message Searching Options. The new options will be at the bottom of the page. For other settings, edit the module where it is located on the page. Once you have changed this, you will need to until the Scheduled Tasks system rebuilds the Trending Topics index. This will happen once per hour on active sites. If you want to update them immediately, you can manually run the Scheduled Task in the Task Manager.

You can view the output of this module here: https://www.vbulletin.com/forum/trending

[b]Friend's Activity Module[/b]
The second search module is the Friend's Activity module. Showing users what their friends are up to will encourage participation on the site. This is a great module to add to a custom page or to replace the Latest Topics module. Users can increase their friend's list by visiting the profiles of their favorite people and subscribing to them.

[h2]Share to Social Networks[/h2]
In vBulletin 5.3.3, users can easily share content to Facebook and Twitter. Each Article, Topic, Blog Entry and Group Discussion can be shared to Facebook and Twitter through a simple click or tap while being viewed. This will allow your end users to share your content and encourage others to visit. Want to share to other social networks? The system is easily expandable to include more options using the vBulletin 5 Template Hook system.

[h2]Push Notification Enhancements[/h2]
We have enhanced the Push Notification API to handle subscriptions, topic replies and reported posts. These will be added to an upcoming version of the Mobile Suite. 

[h2]Sphinx Search[h2]
Due to new search fields, you must rebuild your Sphinx Search index. To do this:
[list=1]
    [*]Delete your current index
    [*]Replace the sphinx files with those in the vBulletin 5.3.3 package
    [*]Rebuild your index following the instructions for your OS in the do_not_upload folder of your vBulletin package.
[/list]

[h2]Other Issues[/h2]
[list]
    [*]Member's List has been updated to work better with Responsive.
    [*]The default filter of a module can be set to events.
    [*]Menus now behave properly on iOS.
    [*]Edited posts are now properly checked against anti-spam tools.
    [*]Site Builder should work on Touch-Enabled Devices such as Tablets.
    [*]Error Handling has been improved in several areas of the application.
    [*]To see a complete list of resolved issues view the [url=http://tracker.vbulletin.com/secure/ReleaseNote.jspa?projectId=10091&version=11650]Issue Tracker[/url].
[/list]

[h2]System Requirements[/h2]
Minimum PHP Version: 5.6.0
Minimum MySQL Version: 5.5.0

Recommended PHP Version: 7.1 or higher
Recommended MySQL Version: 5.7.0 or higher
Recommended MariaDB Version: 10+

[h2]Current Version Support Schedule[/h2]
[list]
    [*]Active Version - 5.3.3
    [*]Security Patch - 5.3.2
    [*]Security Patch - 5.3.1
    [*]No Patch Release - 5.3.0 or earlier.
[/list]

[h2]Discussion[/h2]
If you have any questions about these changes you may discuss them here: [node]4375980[/node]