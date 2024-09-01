<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');
    $router->get('/about', 'HomeController@about')->name('about');
    $router->get('/customuser', 'HomeController@customuser')->name('customuser');
    $router->post('/customuser', 'HomeController@customuserstore')->name('customuserstore');
});
