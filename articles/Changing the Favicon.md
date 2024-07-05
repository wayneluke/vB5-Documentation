# Changing the Favicon

The favicon allows you to extend your brand identity to the browser tab. This can often be the only thing a user sees if they have many tabs open.

The favicon is a special 16 X 16 icon that the browser automatically looks for in the root directory of your site. vBulletin also ships with one in its root directory. If vBulletin is installed in the root directory of your site, you can overwrite the provided icon to change it for your users. However, you will need to remember to do this with every version upgrade.

## Using Site Builder

You can change your Favicon for one or more styles using the Header tool within Site Builder. In order to do this, you would need to follow these steps:

1. Enable Site Builder by clicking "Edit Site" at the top of any page. 
2. Click on the Header link within the Site Builder Menu.
3. Click on the Edit button to the right of the Favicon.
4. Upload your new Favicon image.
5. Select which styles you want to apply it to.
6. Save the Header of your site.

## Style Variable

An alternative method is to change the style variable that controls the location of the style variable image. Once changed, you will not need to reapply this change on upgrades. To do this, follow these steps:

1. Upload your desired image into the `/images` directory via FTP or online file manager.
   - Cloud Users will need to use the vBCloud File Manager in their AdminCP.
2. Enter the AdminCP.
3. Go to Styles -> Style Manager
4. On the row for your default style choose "Style Variable Editor" from the Choose Action... drop down menu.
5. In the Style Variable Editor type favicon in the Search box.
6. Double click the variable in the left column.
7. Change the values in the right column and save them.