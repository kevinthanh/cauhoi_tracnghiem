<?php

class Baithi extends Eloquent {
	public $table = 'baithi';
	protected $fillable = array('monhoc_id','user_id','diem','ngay_tao');
	
	
	public function users() {
            return $this->belongsTo('User','user_id');
	}
        public function chitietbaithi() {
            return $this->belongsTo('Chitietbaithi','baithi_id');
        }
}

