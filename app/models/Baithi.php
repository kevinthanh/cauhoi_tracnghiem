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
	
	/**
	 * Check User can test
	 * @param User $user
	 * @param Monhoc $monhoc
	 * @return boolean
	 */
	public static function checkLanThi($userId, Monhoc $monhoc){
		$lanThi = self::where('monhoc_id', $monhoc->id)->where('user_id', $userId)->count();
		
		return ($monhoc->solanthi > $lanThi);
	}
}

