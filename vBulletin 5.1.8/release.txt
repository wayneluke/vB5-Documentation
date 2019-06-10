We're happy to announce the release of vBulletin 5.1.8.  All together over 100 issues have been resolved in vBulletin 5.1.8.  While most of these issues are bug fixes, there are a few enhancements to the software.

[h2]Interface Updates[/h2]
Several updates to the interface have been applied to the software. These include:
[list]
[*]Indicator in which topics user has posted [VBV-4849]: Topics will now show a green check mark on the status indicator for users that have posted in the topic.
[*]Front End Interface for HTML State [VBV-7616]: For those users with permission to post HTML directly, they can now choose whether that permission is applied on each post that they make. This should give greater control over creating content on your sites.
[*]Change Style & Templates navigation block to Styles & Themes [VBV-14530]: To correspond with changes in the functionality of the Style and Templates area for Cloud customers, the terminology has been updated. This is only a phrasing change and does not affect any functionality on Cloud or Standard licenses.
[*]Send notification to end user on content quote [VBV-3889]: Users should now get a notification when their posts are quoted within a topic.
[*]Various fixes have been applied to Attachments and viewing attachments so that permissions are properly applied.
[*]Debug options not working in admincp [VBV-14601]: Debugging should now work properly in the AdminCP
[/list]

[h2]MariaDB Support[/h2]
While MariaDB has been a drop in replacement for MySQL for many years, vBulletin 5 has never actually supported this database engine. Recently the versioning on MariaDB has diverged from MySQL. This can cause problems down the road. Starting with 5.1.8, the installation tools will specifically check for MariaDB versions. Minimum version supported is 5.1.5. To use MariaDB with your vBulletin installation, all you need to do is update your /core/includes/config.php file to point to a MariaDB database server.

[h2]Legacy API - Mobile Apps[/h2]
To improve functionality with the mobile apps, a number of fixed have been applied to the legacy API in vBulletin 5. This will allow these functions to behave more appropriately and return improved JSON data so the Mobile Apps can parse the data better.

[h2]Responsive[/h2]
We are continuing ongoing work to update responsive display on mobile devices.
[list]
[*]Updates have been made where text is supposed to wrap or truncate in order to provide a better display in limited space.
[*]Avatars are now used instead of topic status icons in thread views.
[*]Changes to the Content Slider have been made for a better display on responsive devices.
[*]The time has been added to Last Post Information.

More information can be found [url=http://tracker.vbulletin.com/secure/ReleaseNote.jspa?projectId=10091&version=11205]here[/url]

Discuss this release here: [node]4323347[/node]
