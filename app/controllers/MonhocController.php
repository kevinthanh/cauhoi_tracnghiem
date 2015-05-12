<?php
class MonhocController extends BaseController {
	public function getList() {
		$monhocs = Monhoc::paginate(10);
		return View::make('backend.monhoc.list')->with('title','Danh sách môn học')->with('monhocs',$monhocs);
	}
	public function getCreate() {
		return View::make('backend.monhoc.create')->with('title','Thêm mới môn học');
	}
	public function postCreate() {
		$valid = Validator::make(Input::all(),Monhoc::$monhoc_rules,Monhoc::$monhoc_langs);
		
		if($valid->passes()) {
			$datainsert = array(
				'tenmonhoc'		=>	Input::get('tenmonhoc'),
				'socauhoitrongbaithi'	=>	Input::get('socauhoitrongbaithi'),
				'solanthi'		=>	Input::get('solanthi'),
			);
		Monhoc::create($datainsert);

		return Redirect::route('list_get')->with('success','Thêm môn học thành công');
		}else {
			return Redirect::route('create_get')->with('error',$valid->errors()->first());
		}
	}
	public function getDelete($id) {
		$monhoc = Monhoc::find($id);
		if($monhoc) {
			$monhoc->delete();
			return Redirect::route('list_get')->with('success','Xóa môn học thành công');
		}else {
			return Redirect::route('list_get')->with('error','Không tồn tại môn học này');
		}
	}
	public function getEdit($id) {
		$monhocs = Monhoc::find($id);
	
		if($monhocs) {
			return View::make('backend.monhoc.edit')->with('title','Sửa môn học')->with('monhocs',$monhocs);
		}else {
			return Redirect::route('list_get')->with('error','Không tồn tại môn học này');
		}
	}
	public function postEdit() {
		$monhoc_model = new Monhoc();
		$id = Input::get('monhoc_id');
	
		$monhoc_model = Monhoc::find($id);
		$monhoc_model->tenmonhoc = Input::get('tenmonhoc');
		$monhoc_model->socauhoitrongbaithi = Input::get('socauhoitrongbaithi');
		$monhoc_model->solanthi = Input::get('solanthi');
		$monhoc_model->save();
	
		return Redirect::route('list_get')->with('success','Sửa môn học thành công');
	}
}