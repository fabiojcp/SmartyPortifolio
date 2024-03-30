<link rel="stylesheet" href="app/views/pages/home/components/animatedLogo/style.css">

<section id="logo_animation_wrapper" class="animation_drop" loading="lazy">
    <img loading="lazy" src="app/assets/images/title/title-t.png" alt="Logo da Empresa Tekoa em letras serifadas pretas" id="logo_animation_t" class="logo_animation_image animation_rotate_right">
    <img loading="lazy" src="app/assets/images/title/title-e.png" alt="Logo da Empresa Tekoa em letras serifadas pretas" id="logo_animation_e" class="logo_animation_image animation_rotate_right">
    <img loading="lazy" src="app/assets/images/title/title-k.png" alt="Logo da Empresa Tekoa em letras serifadas pretas" id="logo_animation_k" class="logo_animation_image">
    <img loading="lazy" src="app/assets/images/title/title-o.png" alt="Logo da Empresa Tekoa em letras serifadas pretas" id="logo_animation_o" class="logo_animation_image animation_rotate_left">
    <img loading="lazy" src="app/assets/images/title/title-a.png" alt="Logo da Empresa Tekoa em letras serifadas pretas" id="logo_animation_a" class="logo_animation_image animation_rotate_left">

    <div id="logo_animation_line">
        <img loading="lazy" src="app/assets/images/title/title-t.png" alt="Logo da Empresa Tekoa em letras serifadas pretas" id="support_logo_animation_t">
        <img loading="lazy" src="app/assets/images/title/title-e.png" alt="Logo da Empresa Tekoa em letras serifadas pretas" id="support_logo_animation_e">
        <img loading="lazy" src="app/assets/images/title/title-k.png" alt="Logo da Empresa Tekoa em letras serifadas pretas" id="support_logo_animation_k">
        <img loading="lazy" src="app/assets/images/title/title-o.png" alt="Logo da Empresa Tekoa em letras serifadas pretas" id="support_logo_animation_o">
        <img loading="lazy" src="app/assets/images/title/title-a.png" alt="Logo da Empresa Tekoa em letras serifadas pretas" id="support_logo_animation_a">
    </div>
</section>
{literal}
    
    <script>
    const wrapper = document.getElementById('logo_animation_wrapper')
    const line = document.getElementById('logo_animation_line')
    
    wrapper.addEventListener('mouseover', () => {
        let index = 0
        for (const child of wrapper.children) {
            if (child.tagName === 'DIV') {
                break
            }
            const animation = `logo_animation_in 1s ease forwards ${index * 100}ms`
            child.style.animation = animation
            line.children[index].style.animation = animation
            
            index++
        }
    })

    wrapper.addEventListener('mouseout', () => {
        let index = 0
        for (const child of wrapper.children) {
            if (child.tagName === 'DIV') {
                break
            }
            const animation = `logo_animation_out 1s ease forwards ${index * 100}ms`
            child.style.animation = animation
            line.children[index].style.animation = animation
            
            index++
        }
    })
    
    </script>
{/literal}