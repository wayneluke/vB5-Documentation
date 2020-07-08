Creating Customized Searches in vBulletin 5 Connect.

In previous versions of vBulletin, we allowed you to create customized searches using parameters in your URL. This allowed highly customized searches such as all threads in the forum with the ID of 5 with 8 replies. In vBulletin 5 we have improved on this using a JSON filter system that allows customization through URLs, Search Modules and in custom templates. This filter system allows us to provide a robust searching engine where you can make the most of customized urls and searches.

What is JSON?
JSON, or JavaScript Object Notation, is a text-based open standard designed for human-readable data interchange. It is derived from the JavaScript scripting language for representing simple data structures and associative arrays, called objects. Despite its relationship to JavaScript, it is language-independent, with parsers available for many languages.

Basics
A search JSON will have the following format:
[code]
{
	"filter": <value>,
	"filter": <value>,
	…
}
[/code]
 
<value> may be any valid string, number or JSON structure and will be interpreted by the specified filter. Filters not listed below are ignored. Some filters take further parameters as JSON strings.

A basic JSON string to return all new unread posts since the last visit would look like this:
[code]
{"date":{"from":"lastVisit"},"view":"topic","unread_only":1,"sort":{"lastcontent":"desc"},"exclude_type":["vBForum_PrivateMessage"]}
[/code]

Using JSON in the URL

Using JSON in a Search Module

Using JSON in a custom template

JSON Filters
[b]keywords[/b]
string – list of words that you want to search for. Accepts “AND” (default), “OR” and “NOT” operators. Short, common and bad words are omitted from the search criteria. 
Example: 
[code]{"keywords":"string bass NOT fishing"}[/code]

[b]title_only[/b]
Boolean – search will be reduced to the title only. 
Example: 
[code]{"title_only":"1"}[/code]

[b]channel[/b]
number – the channel id that the results should belong to. 
Example: 
[code]{"channel":"3"}[/code]

[b]depth[/b]
number - Used in conjunction with the channel filter. This tells the system how deep to go into the parent's descendents 
Example: 
[code]{"depth":"1"}[/code]


[b]include_starter[/b]
Boolean - will also include the starter nodes in the search results
Ex: {"include_starter":"1"}

[b]featured[/b]
Boolean – filters the results to return only the featured ones. Ex:
Ex: {"featured":"1"}

[b]contenttypeid[/b]
number – the id of the contentype – will return only this type of results. 
Ex: {"contenttypeid":"22"}

array – list of contentype ids – will return only the specified type results. 
Ex: {"contenttypeid":[9,22]}

[b]type[/b]
string – the name of the contentype - will return only this type of results. 
Ex: {"type":"vBForum_Gallery"}

array – list of contentypes – will return only the specified type results. 
Ex:{"type":["vBForum_Gallery","vBForum_Poll"]}

If private messages are requested, an "include_private_messages" filter is enforced. If private message is the only type requested a "private_messages_only" filter is enforced instead.
If visitor message is the only type requested a "visitor_messages_only" filter is enforced.
If photo is the only type requested an "include_attach" filter is enforced.
These rules aplly to both "type" and "contenttypeid" filters.


[b]exclude_type[/b]
number – the id of the contentype – will exclude this type from the results. Ex:
{
	"exclude_type":"22"
}
string – the name of the contentype - will exclude this type from the results. Ex:
{
	"exclude_type":"vBForum_Gallery"
}
array – list of contentype ids of classes – will exclude the specified type from results. Ex:
{
	"exclude_type":[9,22]
}
{

	"exclude_type":["vBForum_Gallery","vBForum_Poll"]
}
{
	"exclude_type":[9,"vBForum_Poll"]
}
Unless specifically excluded, private messages are always included in the results by enforcing a "include_private_messages" filter.
To prevent private messages from showing up in the search results, use the "exclude_type":"vBForum_PrivateMessage" filter.
Ususally it makes no sense using this filter in a "channel" filter is applied.

[b]author[/b]
string – the name of the user (default behavior is partial search – see exactname filter)
{
	"author":"John Doe"
}
array – the list of user names. Ex:
{
	"author":["John", "Luke", "Mark"]
}
"myFriends" – will match all the current users' friends Ex:
{
	"author":"myFriends"
} 
"iFollow" – will match all the posts by the users the current users follows. Ex:
{
	"author":"iFollow"
} 

[b]exactname[/b]
If only one user name is specified as an array, an "exactname" filter is enforced.
Boolean – used in conjunction with the author filter(when a string is given) and specifies whether the author name is an exact string Ex:
{
	"author":"John","exactname":"1"
}
will match "John" but not "Johnny"

[b]sentto[/b]
This filter is used in conjunction with the visitor message content type filter and specifies the user the message was sent to.
number – the id of the user
{
	"sentto":10
}
array – the list of user ids. Ex:
{
	"sentto":[10,12,13]
}
It is similar to what you can achieve with an author filter and a type or contenttypeid filter except the sentto will return only the VMs reveived by the user specified as oppsed to VMs received AND sent by the specified user.
This filter enforces a "visitor_messages_only" filter.

[b]visitor_messages_only[/b]
Boolean – used in conjunction with the authorid filter and will include only the visitor messages that the author sent OR received
{
	"authorid":"10","visitor_messages_only":"1"
}
There's no need to specify the "visitor_messages_only" filter when using the "sentto" filter as it is enforced anyway.

[b]tag[/b]
string – list of tags to filter by Ex:
{
	"tag":"tag1 tag2 tag3"
}
array – list of tags to filter by Ex:
{
	"tag":["tag1","tag2","tag3"]
}

[b]prefix[/b]
string – the prefixid Ex:
{
	"prefix":"interesting"
}

[b]has_prefix[/b]
boolean – Ex:
{
	"has_prefix":"1"
}
Will limit the search results to those that have any type of prefix specified

[b]no_prefix[/b]
boolean – Ex:
{
	"no_prefix":"1"
}
Will limit the search results to those that don't have any prefix specified
array – list of tags to filter by Ex:
{
	"prefix":["interesting","awesome","great"]
}
date

[b]lastVisit[/b]
Will show results from the current user's last visit

[b]topicAge[/b]
Will show results starting from <"max_age_topic" setting> days

[b]channelAge[/b]
Will show results starting from <"max_age_channel" setting> days

JSON:
"from" with a low integer will filter the results that are newer than the number of days specified Ex:
{
	"date":{"from":"10"}
}
will show results newer than 10 days. With a timestamp will filter the results that are newer than the date specified in the timestamp Ex:
{
	"date":{"from":"1315515930"}
}
will show results newer than Thu, 08 Sep 2011 21:05:30 GMT.
"to" will filter the results that are older than the number of days specified Ex:
{
	"date":{"to":"10"}
}
will show results older than 10 days. With a timestamp will filter the results that are older than the date specified in the timestamp Ex:
{
	"date":{"to":"1315515930"}
}
will show results older than Thu, 08 Sep 2011 21:05:30 GMT.
special values for "from" and "to":
lastDay - will translate to 1 day (+ or - depending of what you assigned, to "from" or "to")
lastWeek - will translate to 1 week
lastMonth - will translate to 1 month
lastYear - will translate to 1 year
exclude
array – list of node ids that need to be excluded from the results. Ex:
{
	"exclude":[1,2,3,4]
}
number – the id of the node that needs to be excluded from the results. Ex:
{
	"exclude":"24"
}
specific
array – list of node ids that the search is limited to. Ex:
{
	"specific":[1,2,3,4]
}
number – the id of the node that the search is limited to. Ex:
{
	"specific":"24"
}
starter_only
{
	"starter_only":"1"
}
Will include the starter nodes only and will enforce a "include_starter" filter
follow
string - the follow type, valid values are:
followContent - will match the content the current user is specifically following
followChannel - will match content from channels the current user is following
followMembers - will match content created by users the user current is following
followBoth - same as followContent and followChannel
followAll - matches anything the the current user is following, including posts from followed users
{
	"follow":"followContent"
}
array - has be in a form of:
{
	"follow":{<follow_type>:<userid>}
}
where
<follow_type> is on of the types specified above
<userid> is the id of the user the following is based of
my_following
{
	"my_following":"1"
}
Will match the nodes in channels that the current user is following
include_blocked
{
	"include_blocked":"1"
}
Will also include the nodes posted by people listed in the globalignore option - needs moderatorpermissions.canbanusers privileges
Also includes posts by users in the ignorelist of the current user
ignore_protected
{
	"ignore_protected":"1"
}
Will exclude the content marked as protected
deleted_only
{
	"deleted_only":"1"
}
Will return only the content that has been soft deleted
The current user has to be the author of the nodes or have moderatorpermissions.canremoveposts privileges
unapproved_only
{
	"unapproved_only":"1"
}
Will return only the content that has been unapproved
The current user has to be the author of the nodes or have moderatorpermissions.canmanagethreads privileges
include_attach
{
	"include_attach":"1"
}
If not specified or has a value of 0, will return only the inlist type content.
Set it to 1 to include the attachments in the result
sticky_only
{
	"sticky_only":"1"
}
Will filter nodes that are marked sticky
exclude_sticky
{
	"exclude_sticky":"1"
}
Will exclude nodes that are marked sticky
include_sticky
{
	"include_sticky":"1"
}
Behaves just as if no stiky filter is specified except the search results are ordered giving priority to the sticky content
view
{
	"view":"activity"
}
can have one of the following values:
activity
Only include the latest reply or comment (or the starter itself if no replies/comments yet) per starter in all the channels
topic
Filters out the Channel nodes from the Search API nodes results. The Topic view should only return the starter nodes for the specified channel.
conversation_thread
Only display the descendant nodes of (and including) the specified starter (works in conjunction with the channel filter) and filters out the Comment nodes Enforces an "include_starter" and "depth":1 fitler
conversation_stream
Only display the descendant nodes of (and including) the specified starter (works in conjunction with the channel filter) Enforces an "include_starter" and "depth":2 fitler
ignore_cache
{
	"ignore_cache":"1"
}
Will ignore the caches search results and will enforce a new search
sort
string – any of the following:
"username", "publishdate","title","relevance". The default sort order is "desc", except for title in which case is "asc" Ex:
{
	"sort":"relevance"
}
will sort the results by relevance, starting with the most relevant.
{
	"sort":"title"
}
will sort the results alphabetically.
JSON
{
	"<field>":"<direction>"
}
pair, where <field> is one of the above mentioned values and <direction> is either "asc" or "desc". Ex:
{
	"sort":{"title":"desc"}
}
or
{
	"sort":{"publishdate":"asc"}
}
custom
{
	"custom":{"somecustomfield":{"anything":"value can be anything, including array and JSON"}}
}
This criteria has no effect on search, it's just passed back in the response in the same way as it is received.
The value can be anything that can be encoded in a JSON.


Examples
{
	"author":"myFriends",
	"date":{"from":"7"},
	"type":"vBForum_Photo"
}
will return the photos that were added by my friends in the past one week
{
	"featured":"1",
	"date":{"from":"2010/10/01","to":"31"},
	"keywords":"fishing OR camping"
}
returns everything that's been featured in the month of October, 2010 about fishing or camping
{
	"author":"admin",
	"exactname":"1",
	"tag":["important","crucial","paramount"]
}
gets all the posts by the user "admin" (will not match "administrator" nor "badminton") that were tagged "important","crucial" or "paramount"
{
	"author":["fred","john"],
	"date":"last_visit",
	"channel":4
}
will get all the content that "fred" or "john" john posted in the channel 4 since my last visit
{
	"author":"olly",	
	"contenttypeid":[22,24],
	"sort":{"author":"asc"}
}
fetches the content of type with id 22 or 24 that's been posted by users with usernames containing "olly" (will match Polly, Holly, hollywood, Olly) ordered alphabetically by their usernames
{
	"keywords":"cooking",
	"title_only":"1",
	"author":[7,12],	
	"date":{"from":"1315515930"}
	"sort":"relevance"
}
Gets the content about cooking (that has the word "cooking" in the title) posted by the users with ids 7 or 12 since Thu, 08 Sep 2011 21:05:30 GMT, ordered by relevance



JSON Definition courtesy of Wikipedia