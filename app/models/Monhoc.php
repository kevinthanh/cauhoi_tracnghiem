<?php
class Monhoc extends Eloquent {
    public $table='monhoc';
    protected $fillable = array('tenmonhoc');

    public static $monhoc_rules = array(
        'tenmonhoc'    =>   'required'
    );
    
    public static $monhoc_langs = array(
        'tenmonhoc.required'    =>  'Vui lòng nhập tên môn học'
    );
    public function cauhoi() {
        return $this->hasMany('Cauhoi','monhoc_id');
    }
}