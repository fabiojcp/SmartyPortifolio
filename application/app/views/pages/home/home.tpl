{include file="app/views/pages/home/components/animatedLogo/index.tpl"}
{include file="app/views/pages/home/components/description/index.tpl"}
{include file="app/views/pages/home/components/dropAnimation/index.tpl"}

{literal}
<style>
    body {
        overflow: hidden;
        min-height: 100vh;
        min-height: 100svh;

        z-index: 999;
        position: relative;
        * {
            z-index: 1;
            /* border: 1px solid red; */
        }
    }
</style>
{/literal}

