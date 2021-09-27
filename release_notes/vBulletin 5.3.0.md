vBulletin 5.3.0 is now available. Customers with valid licenses are encouraged to use the software.

Two-Factor Authentication
We are proud to introduce Two-Factor Authentication for control panel sessions. Two-factor Authentication provides additional security using your smartphone. You would enable this feature in your configuration files. Then each user can generate their own secret token from their user settings panel. Once enabled, the user will retrieve their login token from the app they choose to use. We recommend using Google Authenticator on most platforms. Once the user has created a security key it will be required on appropriate logins. Currently, this functionality covers the AdminCP, ModCP, Inline Moderation, and Site Builder. These are locations controlled by the cpsession system of the software.

<<insert mfa1.png here>>

Read more about Two-Factor Authentication in this article (https://www.vbulletin.com/forum/articles/vbulletin-5-connect-aa/vbulletin-5-tutorials-aa/4367717-enabling-two-factor-authentication).

Calendar
Following the implementation of events, we have added a Calendar Page, and corresponding modules, to the system. This allows you to present your upcoming events in a traditional calendar format. This should allow your users to discover events easily. The calendar can be accessed from any Upcoming Events module. It will inherit any search parameters of that module. It can also be accessed by adding /calendar to your site address. 

New modules
Calendar - This is the calendar module used for the new page. You can also place this module on any page where you might want to display this information.

<<insert resized calendar.png here.>>

Tab Container - This new module can contain other modules. This will allow you to create a custom tabbed page on your site. We use it on the Calendar page as an example. There the tab container module holds two modules: the calendar module, and the upcoming events module.

<<insert resized tab-container.png here>>

[h2]System Requirements[/h2]
Minimum PHP Version: 5.6.0
Minimum MySQL Version: 5.1.5

Recommended PHP Version: 7.1 or higher
Recommended MySQL Version: 5.7.0 or higher
Recommended MariaDB Version: 10+

Current Version Support Schedule:
[list]
    [*]Active Version - 5.3.0
    [*]Security Patch - 5.2.6
    [*]Security Patch - 5.2.5
    [*]No Patch Release - 5.2.4 or earlier.
[/list]

[h2]Discussion[/h2]
If you have any questions about these changes you may discuss them here: [node]4365959[/node]