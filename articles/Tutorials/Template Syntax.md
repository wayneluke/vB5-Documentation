# Template Syntax

> - The general syntax here is: `{vb:method arg1[, arg2...]}`
> - Inside curly braces, variables can be accessed without using a separate set of surrounding braces. For example: `{vb:raw array.variable}`

## Variable Access

### {vb:var variable}

Variables accessed in this manner are 'made safe' by being run through htmlspecialchars() as they are output. To access array elements, use a dot operator, rather than standard PHP square brackets:

```text
{vb:var variable.foo} // accesses htmlspecialchars($variable['foo'])
{vb:var variable.$varkey} // accesses htmlspecialchars($variable[$varkey])
```

### {vb:raw variable}

To access variables without htmlspecialchars(), use the raw syntax. No treatment is applied to the variable. This should be used with extreme caution and only with variables with previously cleaned contents. The method shouldn't be used on user input that has not been sanitized. The same dot operator is used to access array elements.

### Curly-Brace Syntax 

### Built-in Methods

vBulletin comes with a variety of methods that can be used to control the output of your templates.

#### phrase

```text
{vb:phrase phrase_name[, arguments for phrase...]}
```

Inserts the specified phrase. If arguments are provided, they will be run through htmlspecialchars().

Example:

```text 
{vb:rawphrase message_by_x_on_y_at_z, {vb:link member, postinfo}, postinfo.username, postinfo.postdate, postinfo.posttime}
```

#### rawphrase

```text 
{vb:rawphrase phrase_name[, arguments for phrase...]}
```

As above, though arguments bypass htmlspecialchars().

Example:

```text 
{vb:rawphrase message_by_x_on_y_at_z, {vb:link member, postinfo}, username, postinfo.postdate, postinfo.posttime}
```

#### date

`{vb:date timestamp[, format]}`

Formats a UNIX timestamp using the default date format for the active language. A format may also be explicitly specified. Timezone will be corrected for the viewing user.

#### time

`{vb:time timestamp[, format]}`

As above, though uses the default time format instead of date format.

#### number

`{vb:number number[, decimals]}`

Outputs a number having run through vb_number_format for correct locale formatting. Number of decimal places to display can be optionally specified.

#### escapejs

```text 
{vb:escapejs variable}
```

Returns the variable prepared for use as a Javascript single-quoted string instead of running htmlspecialchars().

#### urlencode

```text 
{vb:urlencode variable}
```

Escapes the variable using urlencode().

#### if

```text 
{vb:if condition, true[, false]}
```

Use this in instances where the full <vb:if> tag can not be used, such as within HTML tags.

#### link

```text 
{vb:link type, info[, extra-info]}
```

Used to build a hyperlink URL of the specified type and into the correct 'friendly' format.

#### math

```text
{vb:math expression}
```

Primarily used within CSS, this is used to evaluate the result of the mathematical expression specified.

#### stylevar

```text 
{vb:stylevar name[.sub-part]}
```

Primarily used in CSS Templates. This allows you to output the specified value from a style variable. No escaping is performed.

### Tags

All tags make use of the vb namespace for ease of identification and parsing. The following tags are available -

#### literal

`<vb:literal>misc code</vb:literal>`

Any code inside vb:literal tags will be treated as plain HTML. No curly-brace syntax or vb:tag markup will be evaluated. This will be useful if you need to include JavaScript in a template.

#### comment

`<vb:comment>a comment</vb:comment>`

In cases where a comment is necessary but the usual <!-- comment --> syntax is undesirable, the vb:comment tag allows its contents to be completely removed upon compiling, so they will not be delivered to the browser. Useful for internal commenting.

#### if/elseif/else/then

`<vb:if condition="condition">true result</vb:if>`

If the expression specified in condition is true, the contents of the vb:if tags will be output, otherwise nothing will be output.

##### elseif

`<vb:elseif condition="condition" />true result`

Used in conjunction with vb:if, this allows a secondary condition to be checked and the true result to be output if the condition is met.

##### else

`<vb:else />true result`

Used in conjunction with vb:if, the true result will be output if the vb:if condition failed, and so did any vb:elseif checks.

##### then

#### each

<vb:each from="array" key="key" value="value"></vb:each>

This tag will iterate through an array, in a similar manner to foreach. See the example use below.

##### Example Use of vb:each

```
// We have an array of users available in PHP.
// It looks like this:
// $users = array(
//	1 => array('username' => 'Adam', 'email' => 'adam@adam.com'),
//	2 => array('username' => 'Ben', 'email' => 'ben@ben.com'),
//	3 => array('username' => 'Chris', 'email' => 'chris@chris.com')
// );

<!-- our template code... -->
<vb:each from="users" key="userid" value="userinfo">
	<li><a href="member.php?u={vb:var userid}">{vb:var userinfo.username}</a></li>
</vb:each>

<!-- will output... -->
	<li><a href="member.php?u=1">Adam</a></li>
	<li><a href="member.php?u=2">Ben</a></li>
	<li><a href="member.php?u=3">Chris</a></li>
```
