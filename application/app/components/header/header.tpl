<link rel="stylesheet" href="app/components/header/header.css">

<header id="header_v1">
    <nav class="header_v1_nav">
        <ul id="header_v1_list">
            <li class="header_items" id="nav_home"><a href="./home">Home</a></li>
            <li class="header_items" id="nav_projects"><a href="./projects">Projetos</a></li>
            <li class="header_items" id="nav_contact"><a href="./contact">Contato</a></li>
        </ul>
    </nav>
</header>

<script> 
const navItems = document.querySelectorAll('.header_items');

const colors = ['#f6f6f6', '#b2ef95', '#EBDB49']

navItems.forEach((element, index) => {
    if (element.id.includes(window.location.pathname.replace('/', ''))) {
        element.style.backgroundColor = colors[index];
    }

    element.addEventListener('mouseover', () => {
        element.style.backgroundColor = colors[index];
    });

    element.addEventListener('mouseout', () => {
        if (!element.id.includes(window.location.pathname.replace('/', ''))) {
            element.style.backgroundColor = '';
        }
    });
});
</script>