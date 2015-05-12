<?php
class AuthController extends BaseController {
    public function postLogin() {
        $valid = Validator::make(Input::all(),User::$login_rules,User::$user_langs);
        
        if($valid->passes()) {
         
                $datalogin = array(
                    'username'  =>  Input::get('username'),
                    'password'  =>  Input::get('password')
                );
                
		
		if(Auth::attempt($datalogin)){
			$user = Auth::user();
			if('admin' == $user->permissions){
				// go to admin
				
				return Redirect::route('index')->with('success','Đăng nhập thành công');
			}else{
				// go to front end
				return Redirect::route('frontend')->with('success','Đăng nhập thành công');
			}
			
		}else{
			// login fail
			return Redirect::route('index')->with('errorTop',$valid->errors()->first());
		}

                
        }else {
            return Redirect::route('index')->with('errorTop',$valid->errors()->first());
        }
    }
    public function getLogout() {
        Auth::logout();
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
            
            User::create($datainsert);
	    
            if(Auth::attempt($datalogin)) {
		
		return Redirect::route('frontend')->with('success','Chúc mừng bạn đăng ký thành công');
	    }else {
		return Redirect::route('register_get')->with('success','Đăng nhập không thành công');
	    }
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