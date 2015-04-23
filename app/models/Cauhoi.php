<?php
class Cauhoi extends Eloquent {
    public $table = 'cauhoi';
    protected $fillable = array('tencauhoi','diem','viewed','monhoc_id','user_id');
    
    public static $cauhoi_rules = array(
        'tencauhoi'     =>  'required',
        'diem'          =>  'required|integer',
    );
    
    public static $cauhoi_langs = array(
        'tencauhoi.required'    =>  'Vui lòng nhập tên câu hỏi',
        'diem.required'         =>  'Vui lòng nhập điểm',
        'diem.integer'          =>  'Bạn vui lòng nhập số?'
    );
    public function monhoc() {
        return $this->belongsTo('Monhoc','monhoc_id');
    }
    public function users() {
        return $this->belongsTo('User','user_id');
    }
    public function dapan() {
        return $this->hasMany('Dapan','cauhoi_id');
    }
    public function chitietbaithi() {
	return $this->belongsTo('Chitietbaithi','cauhoi_id');
    }
}