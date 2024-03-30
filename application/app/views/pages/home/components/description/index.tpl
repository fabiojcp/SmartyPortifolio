<link rel="stylesheet" href="app/views/pages/home/components/description/style.css">


<setion id="home_description_wrapper">
    <article id="home_description_article">
        <div class="home_description_animation_wrapper animation_drop">
            <p id="home_description_title">Da concepção à realidade digital</p>
        </div>

        <div class="home_description_animation_wrapper animation_drop_right">
            <p class="home_description_text">Somos </p>
        </div>
        
        <div class="home_description_animation_wrapper animation_drop_right">
            <p class="home_description_text">mais </p>
        </div>

        <div class="home_description_animation_wrapper animation_drop_right">
            <p class="home_description_text">que </p>
        </div>

        <div class="home_description_animation_wrapper animation_drop_right">
            <p class="home_description_text">uma </p>
        </div>

        <div class="home_description_animation_wrapper animation_drop_left">
            <p class="home_description_text">agência</p>
        </div>

        <div class="home_description_animation_wrapper animation_drop_left">
            <p class="home_description_text">de</p>
        </div>

        <div class="home_description_animation_wrapper animation_drop_left">
            <p class="home_description_text">criação</p>
        </div>

        <div class="home_description_animation_wrapper animation_drop_left">
            <p class="home_description_text">de</p>
        </div>

        <div class="home_description_animation_wrapper animation_drop_left">
            <p class="home_description_text">sites/apps.</p>
        </div>

        <div class="home_description_animation_wrapper animation_drop_right">
            <p class="home_description_text">Transformamos</p>
        </div>

        <div class="home_description_animation_wrapper animation_drop_right">
            <p class="home_description_text">empresas</p>
        </div>

        <div class="home_description_animation_wrapper animation_drop_right">
            <p class="home_description_text">em</p>
        </div>

        <div class="home_description_animation_wrapper home_description_animation_wrapper_emphasis" id="home_description_animation_drop_wrapper">
            <p class="home_description_text home_description_text_emphasis txtBgGreen" id="home_description_animation_drop">experiências</p>
            
            <div class="home_description_animation_wrapper" id="home_description_animation_drop_text_secondary">
                <p class="home_description_text">Podemos ajudar com novas</p>
            </div>

            <div id="home_description_animation_click">
                <img src="app/assets/animations/click.gif" alt="Indicador estendido de uma mão fechada apontando para uma fonte de luz brilhante, como fosse clicar no local">
            </div>
        </div>

        <div class="home_description_animation_wrapper animation_drop_left">
            <p class="home_description_text">únicas</p>
        </div>

        <div class="home_description_animation_wrapper animation_drop_left">
            <p class="home_description_text">na</p>
        </div>

        <div class="home_description_animation_wrapper animation_drop_left">
            <p class="home_description_text">web.</p>
        </div>

        <div class="home_description_animation_wrapper animation_drop_right">
            <p class="home_description_text">Seu</p>
        </div>

        <div class="home_description_animation_wrapper animation_drop_right">
            <p class="home_description_text">negócio</p>
        </div>

        <div class="home_description_animation_wrapper animation_drop_right">
            <p class="home_description_text">merece</p>
        </div>

        <div class="home_description_animation_wrapper animation_drop_right">
            <p class="home_description_text">se</p>
        </div>

        <div class="home_description_animation_wrapper home_description_animation_wrapper_emphasis animation_drop">
            <p class="home_description_text home_description_text_emphasis txtBgYellow">destacar</p>
        </div>
        
        <div id="home_description_call" class="home_description_animation_wrapper_emphasis animation_drop_left">
            <p class="home_description_text home_description_text_emphasis textBgWhite">Vamos juntos?</p>
        </div>

    </article>
</setion>

<script>
    function textSize () {
        const texts = document.querySelectorAll('.home_description_text')
        const title = document.getElementById('home_description_title')
        const article = document.getElementById('home_description_article')
        const dropSecundaryText = document.getElementById('home_description_animation_drop_text_secondary')
        const windowWidth = window.screen.width

        const secondaryMobile = () => {
            dropSecundaryText.style.left = '0'
            dropSecundaryText.style.top = '-200%'
        }

        if (windowWidth < 450) {
            texts.forEach(text => {
                text.style.fontSize = '3rem'
            })
            home_description_title.style.fontSize = '4.5rem'
            article.style.width = "clamp(80%, 80%, 80%)"
            secondaryMobile()
        return;
        }

        article.style.width = "clamp(250px, 600px, 70rem)"

        if (windowWidth < 768) {
            texts.forEach(text => {
                text.style.fontSize = '2rem'
            })
            home_description_title.style.fontSize = '3.5rem'
            secondaryMobile()
        return;
        }

    texts.forEach(text => {
        text.style.fontSize = '1.2rem'
    })
    home_description_title.style.fontSize = '2.5rem'
    dropSecundaryText.style.left = '-206%'
    dropSecundaryText.style.top = '5px'
    }

    let displayClickGif = false;
    let userInteration = false;
    const gifClickWrapper = document.getElementById('home_description_animation_click')

    const interacionWrapper = document.getElementById('home_description_animation_drop_wrapper')

    const hideGifClickWrapper = () => {
        gifClickWrapper.style.opacity = '0'

        setTimeout(() => {
            gifClickWrapper.style.display = 'none'
        }, 400);
    }

    interacionWrapper.addEventListener('mousemove', () => {
        userInteration = true;

        hideGifClickWrapper()
    })
    interacionWrapper.addEventListener('click', () => {
        userInteration = true;

        hideGifClickWrapper()
    })

    window.addEventListener('resize', () => {
        textSize()

    })

    window.addEventListener('load', () => {
        textSize()
        setTimeout(() => {
            if (!userInteration) {
                displayClickGif = true;
                
                gifClickWrapper.style.display = 'flex'

                setTimeout(() => {
                    gifClickWrapper.style.opacity = '1'
                }, 100);
            }
        }, 4000);
    })        
</script>