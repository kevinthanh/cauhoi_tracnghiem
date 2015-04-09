<?php

class Baithi extends Eloquent {
	public $table = 'baithi';
	protected $fillable = array('cauhoi_id','dapan_id','user_id','monhoc_id');
	
	public function cauhoi() {
		return $this->hasMany('Cauhoi','cauhoi_id');
	}
	public function dapan() {
		return $this->hasMany('Dapan','dapan_id');
	}
	public function users() {
		return $this->belongsTo('User','user_id');
	}
}

