<?php

use Illuminate\Auth\UserInterface;
use Illuminate\Auth\Reminders\RemindableInterface;
use Zizaco\Entrust\HasRole;

class User extends Eloquent implements UserInterface, RemindableInterface {

	use HasRole;

	protected $fillable = array('username', 'email', 'password', 'first_name', 'last_name');
	public static $login_rules = array(
	    'username' => 'required',
	    'password' => 'required',
	);

	public function getAuthIdentifier() {
		return $this->getKey();
	}

	public function getAuthPassword() {
		return $this->password;
	}

	public function getReminderEmail() {
		return $this->email;
	}

	public function getRememberToken() {
		return $this->remember_token;
	}

	public function setRememberToken($value) {
		$this->remember_token = $value;
	}

	public function getRememberTokenName() {
		return 'remember_token';
	}

	public function cauhoi() {
		return $this->hasMany('Cauhoi', 'user_id');
	}

	public function dapan() {
		return $this->hasMany('Dapan', 'user_id');
	}

	public function baithi() {
		return $this->hasMany('Baithi', 'user_id');
	}

	public function setPasswordAttribute($value)
	{
	    $this->attributes['password'] = Hash::make($value);
	}
	public static $user_langs = array(
	    'username.required' => 'Vui lòng nhập tên truy cập của bạn',
	    'password.required' => 'Vui lòng nhập mật khẩu của bạn',
	    'first_name.required' => 'Vui lòng nhập tên gọi của bạn',
	    'last_name.required' => 'Vui lòng nhập họ của bạn',
	    'email' => 'Địa chỉ email không hợp lệ',
	    'email.unique' => 'Địa chỉ email này đã tồn tại',
	    'username.min' => 'Tên truy cập tối thiểu phải :min ký tự',
	    'username.unique' => 'Tên truy cập này đã tồn tại',
	    'password.min' => 'Mật khẩu tối thiểu phải :min ký tự',
	    'repassword.same' => 'Mật khẩu và xác nhận mật khẩu không chính xác',
	);
	public static $register_rules = array(
	    'first_name' => 'required',
	    'last_name' => 'required',
	    'email' => 'required|email|unique:users,email', //unique dung de kiem tra xem da co trong db chua
	    'username' => 'required|min:4|unique:users,username',
	    'password' => 'required|min:5',
	    'repassword' => 'required|same:password', // same kiem tra xem co giong password khong
	);

}
