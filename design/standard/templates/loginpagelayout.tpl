{*?template charset=latin1?*}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="no" lang="no">

<head>
    <title>{$site.title} - {section name=Path loop=$module_result.path}{$Path:item.text}{delimiter} / {/delimiter}{/section}</title>

    <link rel="stylesheet" type="text/css" href={"stylesheets/core.css"|ezdesign} />
    <link rel="stylesheet" type="text/css" href={"stylesheets/admin.css"|ezdesign} />
    <link rel="stylesheet" type="text/css" href={"stylesheets/debug.css"|ezdesign} />

{* check if we need a http-equiv refresh *}
{section show=$site.redirect}
<meta http-equiv="Refresh" content="{$site.redirect.timer}; URL={$site.redirect.location}" />
{/section}

<!-- Meta information START -->

{section name=meta loop=$site.meta}
<meta name="{$meta:key}" content="{$meta:item}" />
{/section}

<meta name="MSSmartTagsPreventParsing" content="TRUE" />

<meta name="generator" content="eZ publish" />

<!-- Meta information END -->

</head>

<body style="background: url(/design/standard/images/grid-background.gif);">


<table class="layout" width="100%" cellpadding="0" cellspacing="0" border="0">
<tr>
    <td class="topline" width="40%" colspan="2">
    <img src={"ezpublish-logo.gif"|ezimage} width="210" height="60" alt="" />
   </td>
</tr>
<tr>
    <td class="pathline" colspan="2">
<table class="path" width="100%" cellpadding="0" cellspacing="0" border="0">
<tr>
    <td class="bullet" width="1">
    <img src={"bullet.gif"|ezimage} width="12" height="12" alt="" align="middle" hspace="2" /><br />
    </td>
    <td width="99%">
    <p class="path">
    {section name=Path loop=$module_result.path}
        {section show=$Path:item.url}
        <a class="path" href={$Path:item.url|ezurl}>{$Path:item.text}</a>
        {section-else}
        {$Path:item.text}
        {/section}

        {delimiter}
        <span class="slash">/</span>
        {/delimiter}
    {/section}
    &nbsp;</p>
    </td>
</tr>
</table>
   </td>
</tr>
<tr>
    <td colspan="2">


<table width="100%" border="0" cellspacing="0" cellpadding="0">

{* Header *}
<tr>
	<td>
<table width="100%"  cellspacing="0" cellpadding="4">
<tr>

{* This is the main content *}
<td width="20%" bgcolor="#ffffff">
</td>
<td width="30%" bgcolor="#ffffff">
<form method="post" action="/user/login/">

<b>{"Login"|i18n('logon')}:</b><br />
<input type="text" name="Login" /><br/>
<b>{"Password"|i18n('logon')}:</b><br />
<input type="password" name="Password" /><br/>


<input type="submit" value="{'Login'|i18n('logon','Button')}" />

</form>

</td>
<td width="50%" bgcolor="#ffffff" valign="top">
<h2>{"Welcome to eZ publish administration"|i18n('logon')}</h2>
<p>{"To log in enter a valid login and password."|i18n('logon')}</p>

</td>

</tr>
</table>

</td>
</tr>

{* Bottom *}
<tr><td></td></tr>

</table>


<div align="center" style="padding-top: 0.5em;">
<p class="small"><a href="http://developer.ez.no">eZ publish&trade;</a> copyright &copy; 1999-2002 <a href="http://ez.no">eZ systems as</a></p>
</div>

</body>
</html>


