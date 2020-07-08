While previous versions of vBulletin have had template hooks which allowed administrators to insert data within existing templates, these have been revamped and improved in vBulletin 5 Connect. In older versions, you needed PHP code to pull, process and render your code or a sub-template and then pass it to the original template. In vBulletin 5 Connect, the system can do all that for you. All you have to do is create your sub-template and vBulletin's engine will handle all the back-end work for you. To demonstrate this, I have create a little tutorial that will add a "Back to Top" link to the bottom of your footer navigation. Works on every page and doesn't require any PHP code to pull URLS.

[list=1]
[*][*]On the drop down in the Style Manager add a new template.
[*]Give it the title of: footer_goto_top.
[*]Add this code to the template and save it:
[html]
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
[/html]
[*] In the Admin CP goto: Products & Hooks -> Hook Manager.
[*]Select Add New Hook.
[*]Set the Hook Location to "footer_end"
[*]Give it a title... Such as "Go To Top Link"
[*]In the Template Name field enter footer_goto_top to reference the template that you made above
[/list]

While this is a simple tutorial, you can do anything in your template that vBulletin 5 is capable of accomp"shing in templates. This includes API calls using the vb:data tag.