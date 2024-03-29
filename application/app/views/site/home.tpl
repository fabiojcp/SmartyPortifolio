{extends file="master.tpl"} {block name=title}Tekoa - Home{/block}

{block name=header}
    {include file="../../components/header/header.tpl"}
{/block}

{block name=body}
      {include file="app/views/pages/home/home.tpl"}  
{/block}
