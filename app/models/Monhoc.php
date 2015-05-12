<?php
class Monhoc extends Eloquent {
	public $table='monhoc';
	protected $fillable = array('tenmonhoc','socauhoitrongbaithi','solanthi');

	public static $monhoc_rules = array(
		'tenmonhoc'		=>	'required',
		'socauhoitrongbaithi'	=>	'required|integer',
		'solanthi'		=>	'required|integer',
	);
	
	public static $monhoc_langs = array(
		'tenmonhoc.required'		=>	'Vui lòng nhập tên môn học',
		'socauhoitrongbaithi.required'	=>	'Vui lòng nhập số bài thi',
		'socauhoitrongbaithi.integer'	=>	'Bạn phải nhập số',
		'solanthi.required'		=>	'Vui lòng nhập số lần thi',
		'solanthi.integer'		=>	'Bạn phải nhập số'
	);
	public function cauhoi() {
		return $this->hasMany('Cauhoi','monhoc_id');
	}
}