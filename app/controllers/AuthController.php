<?php
class AuthController extends BaseController {
    public function postLogin() {
        $valid = Validator::make(Input::all(),User::$login_rules,User::$user_langs);
        
        if($valid->passes()) {
            try {
                $datalogin = array(
                    'username'  =>  Input::get('username'),
                    'password'  =>  Input::get('password')
                );
                Sentry::Authenticate($datalogin,false);
                if(Sentry::hasAccess('admin')) {
                    return Redirect::route('index')->with('success','Đăng nhập thành công');
                }else {
                    return Redirect::route('frontend')->with('success','Đăng nhập thành công');
                }
                
            }catch (Cartalyst\Sentry\Users\WrongPasswordException $e) {
                
                return Redirect::route('index')->with('errorTop','Mật khẩu không chính xác');   
                             
			}catch (Cartalyst\Sentry\Users\UserNotFoundException $e) {
			 
                return Redirect::route('index')->with('errorTop','Tên truy cập không tồn tại');
			}
        }else {
            return Redirect::route('index')->with('errorTop',$valid->errors()->first());
        }
    }
    public function getLogout() {
        Sentry::logout();
        return Redirect::route('home')->with('success','Đăng xuất thành công');    
    }
    public function getRegister() {
        
        return View::make('frontend.member.register')->with('title','Đăng ký thành viên');
    }
    public function postRegister() {
        $valid = Validator::make(Input::all(),User::$register_rules,User::$user_langs);
        
        if($valid->passes()) {
            $datainsert = array(
                'first_name'    =>  Input::get('first_name'),
                'last_name'     =>  Input::get('last_name'),
                'email'         =>  Input::get('email'),
                'username'      =>  Input::get('username'),
                'password'      =>  Input::get('password'),
                'activated'     =>  1,
            );
            $datalogin = array(
                'username'  =>  Input::get('username'),
                'password'  =>  Input::get('password'),
            );
            
            Sentry::getUserProvider()->create($datainsert);
            Sentry::Authenticate($datalogin,false);
            return Redirect::route('index')->with('success','Chúc mừng bạn đăng ký thành công');
        }else {
            return Redirect::route('register_get')->withInput(Input::except('password','repassword'))->with('error',$valid->errors()->first());
        }
    }
    
    public function creategroup() {
        try{
                $group = Sentry::findGroupById(1);
        }
        catch (Cartalyst\Sentry\Groups\GroupNotFoundException $e) {
                echo 'Group was not found.';
        }
        echo '<pre>';
        print_r($group);
        echo '</pre>';
    }
}