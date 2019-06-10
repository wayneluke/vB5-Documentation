# Using Template Hooks with vBulletin Cloud

With the release of vBulletin 5.5.0, we have made limited template customization available for vBulletin Cloud customers. The goal here is to make many customizations easier to manage on a cloud site. Without access to template hooks, customers had to put custom Javascript in modules or notices and then hide that addition with CSS. Or they would overload the Search Engine identification fields with their javascript. These methods are not only difficult to maintain but they also make it more difficult to provide support.

Using the various template hooks, you can add code to different locations throughout individual pages and pieces of content while managing everything within your chosen style. This will also simplify maintenance and support.

## Introducing the Template Editor

## Creating a Template Hook

### Template Hook Locations

### Example Hooks

#### Including Google Fonts

Currently if you want to include fonts from Google Fonts, you need to use an @import directive in your custom CSS. However, this method doesn't provide the best performance. With access to Text Only Template and Template Hooks, you can now use the &lt;link&gt; method. This can provide a minor performance benefit to your site.

## The Future

vBulletin Templates have a wide range of functionality. At this time, a small portion of this is available to vBulletin Cloud customers. As time goes on, we will be looking to expand this customization option.