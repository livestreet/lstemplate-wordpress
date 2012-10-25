{assign var="sidebarPosition" value='left'}
{include file='header.tpl'}

{include file='actions/ActionProfile/profile_top.tpl'}
<h2>{$aLang.user_menu_profile_friends}</h2>
<br />

{include file='user_list.tpl' aUsersList=$aFriends}



{include file='footer.tpl'}