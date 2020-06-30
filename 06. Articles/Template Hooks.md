# Template Hooks

vBulletin 5 has new functionality around template hooks. These allow users to embed custom templates within the default without using PHP Code. All they need is the Hook Interface in the Admin CP under Products & Hooks. When possible, using template hooks should be recommended instead of editing default templates. This will help with troubleshooting in the long run and provide an easy way for customers to customize their sites without waiting for an extension to be written.

## Creating a Template Hook

Three things must occur to create and use a template hook.

- A new custom template needs to be added to the system. This can contain any valid HTML and vB Markup.
- A new Hook must be created under Products & Hooks-> Hook Manager.
- The Hook needs to be Active.

Here is an example of a template hook which adds a back to top link in the footer.

- On the drop down in the Style Manager add a new template.
- Give it the title of: footer_goto_top.
- Add the code shown below to the template and save it.
- In the Admin CP goto: Products & Hooks-> Hook Manager.
- Select Add New Hook.
- Set the Hook Location to "footer_end"
- Give it a title... Such as "Go To Top Link"
- In the Template Name field enter footer_goto_top to reference the template that you made above

Code for demo:

```html
<style>
#toTop {
  float:right;
}
div#toTop:hover { cursor: hand; cursor: pointer; }
</style>
<script type="text/javascript">
$(function() {
    $(window).scroll(function() {
        if($(this).scrollTop() != 0) {
            $('#toTop').fadeIn();    
        } else {
            $('#toTop').fadeOut();
        }
    });

    $('#toTop').click(function() {
        $('body,html').animate({scrollTop:0},800);
    });
});
</script>
<div id="toTop">^ Back to Top</div>
```

## Hook Locations

Descriptions and exact locations are forthcoming.

- Announcement
  - announcement_total
  - announcement_after_list
  - announcement_no_announcement
- Conversation
  - conversation_userstats
  - conversation_footerleft
  - conversation_footerright
- Editor
  - editor_input_text
  - editor_input_link
  - editor_input_video
  - editor_input_photos
  - editor_input_poll
  - editor_input_gallery
- Footer
  - footer_left
  - footer_right
  - footer_start
  - footer_end
  - footer_copyright
  - topics_after_sticky
- Header
  - header_head
  - header_toolbar
  - header_tabbar
  - header_navright
  - header_before_content
- User Profile
  - profile_activity_start
  - profile_activity_end
  - profile_about_posts
  - profile_about_vms
  - profile_about_general
  - profile_about_sectionend
  - profile_basics_end
  - profile_contacts_end
  - profile_tabs_1
  - profile_tabs_2
- User Settings
  - settings_tab_list
  - settings_tab_page
  - settings_profile
  - settings_account
  - settings_notifications
  - settings_privacy
  - settings_privacy_profile
- Screen Layout
  - Screen 1 (1 column (100%) Layout)
  -- screen1_section0
  -- screen1_section2
  -- screen1_section3
  - Screen 2 (70-30 Layout)
  -- screen2_section0
  -- screen2_section1
  -- screen2_section2
  -- screen2_section3
  - Screen 4 (30-70 Layout)
  -- screen4_section0
  -- screen4_section1
  -- screen4_section2
  -- screen4_section3
- Subcriptions
  - subscribed_start
  - subscribed_no_subs
  - following_list_start
  - following_list_end
- Widgets
  - blog_display_controls
  - channel_display_controls
  - conversation_display_controls
  - group_display_controls
- Test Hooks
  - generic_test

## Requesting a New Hook Location

Requests for new Hook Locations should go into JIRA in the vBulletin 5 Project (VBV). They should use the Hook Location component and marked as an Improvement Request.

Most Hook Requests will probably be prioritized as Minor. As such, make a good strong case about why the hook is needed and if possible, provide the exact code where you would like the hook located in the template.
