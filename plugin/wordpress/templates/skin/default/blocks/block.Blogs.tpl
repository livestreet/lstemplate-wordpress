<div class="block">
	<h2>{$aLang.plugin.wordpress.block_blogs}</h2>
	
	<ul>
		{foreach from=$wp_aBlogs item=oBlogItem}
			<li><a href="{$oBlogItem->getUrlFull()}">{$oBlogItem->getTitle()|escape:'html'}</a></li>						
		{/foreach}
	</ul>
</div>