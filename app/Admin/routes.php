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
    $router->get('/customusershow', 'HomeController@customusershow');
    $router->get('/customusergridshow', 'HomeController@customusergridshow');
    $router->get('/dynamicsave', 'HomeController@dynamicsave')->name('dynamcisave');
    $router->post('/dynamicsave', 'HomeController@dynamicsavestore')->name('dynamicsavestore');
    $router->get('/dynamicsave1', 'HomeController@dynamicsave1')->name('dynamcisave1');
    $router->post('/dynamicsave1', 'HomeController@dynamicsavestore1')->name('dynamicsavestore1');
});
