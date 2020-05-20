# Email Handling and vBulletin Cloud

Due to the configuration of the vBulletin Cloud servers, there is no email daemon directly available. There are various technical reasons for this. In order to send emails to your users, we have contracted with a third-party provider. This service is provided using SMTP which is a standard feature of vBulletin 5 Connect. This provider serves many different clients in addition to vBulletin Cloud. Due to this, some issues can arise from time to time. One of the most problematic issues is that emails can be inadvertently marked as unsolicited emails or SPAM. As a cloud site owner, there are some things you can do to help mitigate this issue. These include:

- Making sure your email accounts are valid on your account and in the AdminCP under `Settings -> Options -> Site Name / Contact Details`.
- Instructing your end-users how to manage incoming notifications from their settings page. `%%yourcloudurl%%\settings\notifications`.
- Managing spam on your site with the tools provided under `Settings -> Spam Management` and `Settings -> Human Verification Manager`.

## Email Forwarding

Many popular email providers (e.g. AOL, Yahoo, Gmail) place restrictions on where emails with their addresses can originate. This can cause problems with vBulletin Cloud customers and their end-users when using these email providers. When we detect that a Cloud Customer is using one of these emails, we will use a Forwarding Email to work around this issue. The system will create an email alias for these sites with the vbulletin.net domain. This forwarding alias will allow your emails to be received by the end-user instead of being discarded or marked as SPAM.

## Spam Blacklist

As stated above, we use a third-party service to send emails. This is done through a company called SendGrid. Due to using a third-party provider, there are times when emails are inappropriately marked as SPAM. This probably has nothing to do with your site but instead on how SPAM Blacklists are created in general. When this happens, the issue is generally resolved in 24 hours. However, it can be frustrating to receive email notifications about the issue from SendGrid.

When you receive a notice, please note that your site isn't blocked. It is the address of the email server. In addition to this, there are other things to note:

- The blocking is not being accomplished by SendGrid. It is occurring at one or more email servers used by your end-users.
- Asking your end-users to whitelist your email address and the Sendgride IP can help alleviate the issues.
- The blacklist usually resolves after 24 hours.

## Using External SMTP Server

As an alternative to having us manage your email server, you can use an external SMTP server. This will remove a lot of the issues above from your site. If you have access to an SMTP server through your email provider and would like to take advantage of this, you can email support@vbulletin.com. We will need the server name/IP, ports, username, password, and whether to use SSL or TLS encryption. With that information, we can configure your vBulletin Cloud site to use the external SMTP server.
