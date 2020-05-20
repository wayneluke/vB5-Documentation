vBulletin 5.4.1 Alpha 4 is now available to licensed customers. This is a development release and should not be used in production environments.

[h2]Third-Party Authorization[h2]
The login/authorization system has been reworked to allow third-party logins beyond Facebook. This is a modular system and can be expanded via the Package system in vBulletin. This will allow sites to create custom authentication systems that fit the needs of their users. We've included Twitter OAuth as a working example of how to use the system. Users can connect their accounts to multiple third-party sites.

[b]Twitter Authentication[/b]
vBulletin can now connect to Twitter's OAuth system to allow users to login. Once configured in the AdminCP, you can allow users to login on your site using Twitter. During the first login, if the user does not have a vBulletin account, they will be directed to the registration screen to create one. After that time the user can use their twitter credentials to log into the system regularly.

[b]Quick Twitter Configuration[/b]
This is a quick setup for configuring Twitter Login within vBulletin 5.4.1
- If you do not already have a twitter account, you need to create one. https://twitter.com
- Create an app with your twitter account. https://apps.twitter.com/app/new
    - Fill in the "Name", "Description", "Website", and "Callback URL" fields.
    - For the "Callback URL" field, it should be {forumurl}/twitterlogin/auth_callback (e.g.
https://yourdomain.com/yourforum/twitterlogin/auth_callback )
- Check App Settings Go to the application settings (e.g. https://apps.twitter.com/app/12345/settings where 12345 references the app created in 2)
and check "Allow this application to be used to Sign in with Twitter"
- In your AdminCP go to Settings -> Options -> Thirdparty Login Options
- Enable Twitter Login
- Enter in your Consumer Key (API KEY) and Consumer Secret (API Secret) values obtained from Twitter.

See http://tracker.vbulletin.com/browse/VBV-18253 for more information. A more indepth guide is in development and will be available soon.

[h2]CSS Gradient Backgrounds[/h2]
Continuing our effort to allow easier style customizations, we have replaced the image based gradients in vBulletin 5 with CSS Gradients. This is controlled through existing Style Variable. Gradients are an extension of the Background Style Variables. Gradients can be combined with background colors and images to create unique effects and can be applied to any element. Users can choose the type of gradient (e.g. linear, radial), the direction of the gradient, plus two colors (start and end). More advanced gradients can be created using your style's additional CSS template. To learn about CSS Gradients please visit https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Images/Using_CSS_gradients. 

The new options on Background Style Variables are:
- Gradient Type: Linear, Radial, Repeating Linear Gradient, and Repeating Radial Gradient
- Gradient Direction: To Top, To Top Right, To Right, To Bottom Right, To Bottom, To Bottom Left, To Left, and To Top Left, 
- Gradient Start Color: Uses the standard color palette tool. Accepts the same color values as any color field with the Style Variable system.
- Gradient End Color: Uses the standard color palette tool. Accepts the same color values as any color field with the Style Variable system.

[h2]Post Moderation[/h2]
Post Moderation Permissions have been updated. The logic for "Require Moderation for Posts" was backwards and caused issues with inheritance. This has been updated. The permission is now labeled "Skip Moderation for Posts". The value would be Yes for those who should be able to post directly and No for those you want to moderate. The duplicate permission of "Follow Channel Moderation Rules" has been removed from the system. These changes bring this permission in line with inheritance and enforce that a Yes overrides a No when a user is in multiple usergroups. If you moderate user posts, please review these permissions after upgrade.

[h2]Search Results[/h2]
A number of items could appear in search results that shouldn't. These include private messages and visitor messages. While users only see the items they have permission to see, this is confusing. Often these linked to the wrong location as well. This has been resolved and these items should not show up in search results. In addition, Media Albums should properly link to the user's profile instead of the /special/albums channel.

[h2]Removed Files[/h2]
A number of unused image files have been removed from the download package. You can find the list here: http://tracker.vbulletin.com/browse/VBV-18206

Other Issues
- Navigation Tabs can wrap at smaller screen sizes.
- Custom Usergroup Permissions Sanitized out from AdminCP
- Responsive: Top Pagination on Search Results redirects to forum home.
- Navigation bar selected tab URL-based matching fails when using absolute URLs

A full list of issues resolved can be seen here: http://tracker.vbulletin.com/secure/ReleaseNote.jspa?projectId=10091&version=11723


[h2]System Requirements[/h2]
Minimum PHP Version: 5.6.0
Minimum MySQL Version: 5.5.8

Recommended PHP Version: 7.1 or higher
Recommended MySQL Version: 5.7.0 or higher
Recommended MariaDB Version: 10+

[h2]Current Version Support Schedule[/h2]
[list]
    [*]Active Version - 5.4.0
    [*]Security Patch - 5.3.4
    [*]Security Patch - 5.3.3
    [*]No Patch Release - 5.3.2 or earlier.
[/list]

[h2]Discussion[/h2]
If you have any questions about these changes you may discuss them here: [node]4387611[/node]

If you find an issue with the software or wish to place a feature request please visit our [url=https://tracker.vbulletin.com]tracker[/url].

In order to receive support for your vBulletin Product please visit our [url=https://www.vbulletin.com/forum/]community forums[/url].