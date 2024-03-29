<?php

require './vendor/autoload.php';
require './app/helpers/constants.php';
require './routes/router.php';
require './app/libraries/SiteTemplate.php';
require './helpers/index.php';

use app\libraries\SiteTemplate;
$site = new SiteTemplate;

$home = newRoute('/home', 'home.tpl');

$project = newRoute('/projects', 'projects.tpl');

router([$home, $project], $site);
