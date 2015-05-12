<?php

/*
  |--------------------------------------------------------------------------
  | Application Routes
  |--------------------------------------------------------------------------
  |
  | Here is where you can register all of the routes for an application.
  | It's a breeze. Simply tell Laravel the URIs it should respond to
  | and give it the Closure to execute when that URI is requested.
  |
 */
View::composer('frontend.template.menudoc', function($view) {
	$menu = Monhoc::all();
	$view->with('menus',$menu);
});
Route::get('/', function() {
	return View::make('hello');
});

//Route::get('create_user', function() {
//	$user = Sentry::getUserProvider()->create(array(
//		'email' => 'teacher@gmail.com',
//		'password' => '12345',
//		'username' => 'teacher',
//		'first_name' => 'Van thanh',
//		'last_name' => 'Nguyen',
//		'activated' => 1,
//		'permissions' => array(
//			'admin' => 1
//		)
//	));
//
//	return 'done';
//});


Route::group(array('before' => 'check_access'), function() {
	Route::get('/backend', array('as' => 'index', 'uses' => 'MainController@index'));
	Route::get('backend/user-list', array('as' => 'listuser_get', 'uses' => 'UserController@getList'));
	Route::get('backend/user-delete-{id}', array('as' => 'userdelete_get', 'uses' => 'UserController@getDelte'))->where(array('id' => '[0-9]+'));
	Route::get('backend/monhoc-list', array('as' => 'list_get', 'uses' => 'MonhocController@getList'));
	Route::get('backend/monhoc-create', array('as' => 'create_get', 'uses' => 'MonhocController@getCreate'));
	Route::post('backend/monhoc-create', array('as' => 'create_post', 'before' => 'csrf', 'uses' => 'MonhocController@postCreate'));
	Route::get('backend/monhoc-delete-{id}', array('as' => 'delete_get', 'uses' => 'MonhocController@getDelete'))->where(array('id' => '[0-9]+'));
	Route::get('backend/monhoc-edit-{id}', array('as' => 'edit_get', 'uses' => 'MonhocController@getEdit'))->where(array('id' => '[0-9+]'));
	Route::post('backend/monhoc-edit', array('as' => 'edit_post', 'before' => 'csrf', 'uses' => 'MonhocController@postEdit'));

	Route::get('backend/cauhoi-list', array('as' => 'listcauhoi_get', 'uses' => 'CauhoiController@getList'));
	Route::get('backend/cauhoi-create', array('as' => 'createcauhoi_get', 'uses' => 'CauhoiController@getCreate'));
	Route::post('backend/cauhoi-create', array('as' => 'createcauhoi_post', 'before' => 'csrf', 'uses' => 'CauhoiController@postCreate'));
	Route::get('backend/cauhoi-delete-{id}', array('as' => 'deletecauhoi_get', 'uses' => 'CauhoiController@getDelete'))->where(array('id' => '[0-9+]'));
	Route::get('backend/cauhoi-edit-{id}', array('as' => 'editcauhoi_get', 'uses' => 'CauhoiController@getEdit'))->where(array('id' => '[0-9+]'));
	Route::post('backend/cauhoi-edit', array('as' => 'editcauhoi_post', 'before' => 'csrf', 'uses' => 'CauhoiController@postEdit'));

	Route::get('backend/dapan-list', array('as' => 'listdapan_get', 'uses' => 'DapanController@getList'));
	Route::get('backend/dapan-create', array('as' => 'createdapan_get', 'uses' => 'DapanController@getCreate'));
	Route::post('backend/dapan-create', array('as' => 'createdapan_post', 'uses' => 'DapanController@postCreate'));
	Route::get('backend/dapan-delete-{id}', array('as' => 'deletedapan_get', 'uses' => 'DapanController@getDelete'))->where(array('id' => '[0-9]'));
	Route::get('backend/dapan-edit-{id}', array('as' => 'editdapan_get', 'uses' => 'DapanController@getEdit'))->where(array('id' => '[0-9]+'));
	Route::post('backend/dapan-edit',array('as'=>'editdapan_post','before'=>'csrf','uses'=>'DapanController@postEdit'));
});

Route::get('member/register', array('as' => 'register_get', 'before' => 'is_login', 'uses' => 'AuthController@getRegister'));
Route::post('member/register', array('as' => 'register_post', 'before' => 'csrf|is_login', 'uses' => 'AuthController@postRegister'));

Route::post('member/login', array('as' => 'login_post', 'before' => 'csrf|is_login', 'uses' => 'AuthController@postLogin'));
Route::get('member/logout', array('as' => 'logout_get', 'before' => 'check_user', 'uses' => 'AuthController@getLogout'));





//quan ly front-end
Route::get('/', array('as' => 'home', 'uses' => 'MainController@home'));

Route::group(array('before' => 'check_user_frontend'), function() {
	Route::get('/frontend', array('as' => 'frontend', 'uses' => 'MainController@indexfrontend'));
	//Route::get('create_group', 'AuthController@creategroup');
	Route::get('monhoc/{id}-{title}',array('as'=>'monhoc_cauhoi_get','uses'=>'CauhoiController@getCauhoiByMonhoc'))->where(array('id'=>'[0-9]+','title'=>'[a-zA-Z0-9._\-]+'));
	Route::get('frontend/trac-nghiem',array('as'=>'tracnghiem_get','uses'=>'DapanController@getCauhoiDapan'));

	Route::post('frontend/trac-nghiem',array('as'=>'tracnghiem_post','uses'=>'BaithiController@postTracnghiem'));
});









