<?php

function array_obj_search(array $array, string $key, string $search) {
    for ($index = 0; $index < count($array); $index++) {
        if ($array[$index]->{$key} == $search) {
            return $array[$index];
        }
    }
    
    return 0;
}