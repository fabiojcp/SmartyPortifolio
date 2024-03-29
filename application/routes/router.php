<?php


class Route
{
    public $route;
    public $element;
}

function newRoute ($route, $element) {
    $page = new Route();
    $page->route = $route;
    $page->element = $element;

    return $page;
}

function router (array $routes, $template) {
    $path = $_SERVER['REQUEST_URI'];
    $findRoute = array_obj_search($routes, 'route', $path);

    if (!$findRoute) {
        header('Location: /home');
        return;
    }

    $template->display($findRoute->element);
}