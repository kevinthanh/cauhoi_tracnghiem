<?php

class Chitietbaithi extends Eloquent {
    public $table = 'chi_tiet_bai_thi';
    protected $fillable = array('baithi_id','cauhoi_id','dapan_id');
    
    public function cauhoi() {
	return $this->hasMany('Cauhoi','cauhoi_id');
    }
    public function dapan() {
	return $this->hasMany('Dapan','dapan_id');
    }
    public function baithi() {
        return $this->belongsTo('Baithi','baithi_id');
    }
}
