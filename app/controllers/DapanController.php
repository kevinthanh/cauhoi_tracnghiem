<?php
class DapanController extends BaseController {
    public function getList() {
        $dapans = Dapan::with('cauhoi')->orderBy('id')->paginate(10);
		
        return View::make('backend.dapan.list')->with('title','Danh sách đáp án')->with('dapans',$dapans);
    }
    public function getCreate() {
        $cauhoi = Cauhoi::lists('tencauhoi','id');
        return View::make('backend.dapan.create')->with('title','Tạo mới đáp án')->with('cauhoi',$cauhoi);
    }
    public function postCreate() {
        $valid = Validator::make(Input::all(),Dapan::$dapan_rules,Dapan::$dapan_langs);
        
        if($valid->passes()) {
            $datainsert = array(
                'tendapan'  =>  Input::get('tendapan'),
                'dapan_dung'=>  Input::get('dapan_dung'),
                'cauhoi_id' =>  Input::get('cauhoi'),
                'user_id'   =>  Sentry::getUser()->id
            );
            Dapan::create($datainsert);
            return Redirect::route('listdapan_get')->with('success','Thêm đáp án thành công');
        }else {
            return Redirect::route('createdapan_get')->with('error',$valid->errors()->first());
        }
    }
    public function getEdit($id) {
        $cauhoi = Cauhoi::lists('tencauhoi','id');
        $dapans = Dapan::find($id);
        
        if($dapans) {
            return View::make('backend.dapan.edit')->with('title','Sửa đáp án')->with('dapans',$dapans)->with('cauhoi',$cauhoi);
        }else {
            return Redirect::route('listdapan_get')->with('error','Câu hỏi không tồn tại');
        }
    }
    public function getDelete($id) {
        $dapan = Dapan::find($id);
        
        if($dapan) {
            $dapan->delete();
            return Redirect::route('listdapan_get')->with('success','Xóa đáp án thành công');
        }else {
            return Redirect::route('listdapan_get')->with('error','Không tồn tại đáp án này');
        }
    }
	public function getCauhoiDapan() {
        $questions = Cauhoi::all();
		
		//var_dump($questions->count());die;
        //return View::make('backend.dapan.list')->with('title','Danh sách đáp án')->with('dapan',$dapan);
        return View::make('frontend.tracnghiem.index', array('title' => 'Danh sách câu hỏi trắc nghiệm', 'questions' => $questions));
    }
}