<?php
class CauhoiController extends BaseController {
	public function getList() {
		$cauhois = Cauhoi::with('monhoc')->orderBy('id')->paginate(10);
		return View::make('backend.cauhoi.list')->with('title','Danh sách câu hỏi')->with('cauhois',$cauhois);
	}
	public function getCreate() {
		$monhoc = Monhoc::lists('tenmonhoc','id');
		return View::make('backend.cauhoi.create')->with('title','Tạo mới câu hỏi')->with('monhoc',$monhoc);
	}
	public function postCreate() {
		$valid = Validator::make(Input::all(),Cauhoi::$cauhoi_rules,Cauhoi::$cauhoi_langs);
	
		if($valid->passes()) {
			$datainsert = array(
			'tencauhoi' =>  Input::get('tencauhoi'),
			'diem'      =>  Input::get('diem'),
			'monhoc_id' =>  Input::get('monhoc'),
			'user_id'   =>  Auth::user()->id
		);

		Cauhoi::create($datainsert);
	
		return Redirect::route('listcauhoi_get')->with('success','Thêm câu hỏi thành công');
		}else {
			return Redirect::route('createcauhoi_get')->with('error',$valid->errors()->first());
		}
	}
	public function getEdit($id) {
		$cauhois = Cauhoi::find($id);
		$monhoc = Monhoc::lists('tenmonhoc','id');
		if($cauhois) {
			return View::make('backend.cauhoi.edit')->with('title','Sửa câu hỏi')->with('cauhois',$cauhois)->with('monhoc',$monhoc);
		}else {
			return Redirect::route('listcauhoi_get')->with('error','Câu hỏi không tồn tại');
		}
	}
	public function postEdit() {
		$cauhoi_model = new Cauhoi();
		$id = Input::get('cauhoi_id');
	
		$cauhoi_model = Cauhoi::find($id);
		$cauhoi_model->tencauhoi = Input::get('tencauhoi');
		$cauhoi_model->monhoc_id = Input::get('monhoc');
		$cauhoi_model->diem = Input::get('diem');
		$cauhoi_model->save();
		return Redirect::route('listcauhoi_get')->with('success','Sửa câu hỏi thành công');
	}
	public function getDelete($id) {
		$cauhoi = Cauhoi::find($id);
	
		if($cauhoi) {
			$cauhoi->delete();
			return Redirect::route('listcauhoi_get')->with('success','Xóa câu hỏi thành công');
		}else {
			return Redirect::route('listcauhoi_get')->with('error','Không tồn tại câu hỏi này');
		}
	}
	public function getCauhoiByMonhoc($id,$title) {
		
		$monhoc = Monhoc::find($id);
		$user = Auth::user();
		if($monhoc) {
			
			if(Baithi::checkLanThi($user->id, $monhoc)) {
				
				$questions = $monhoc->cauhoi()
				->orderBy(DB::raw('RAND()'))
				->paginate($monhoc->socauhoitrongbaithi);
				
				return View::make('frontend.tracnghiem.index', compact('id'))
					->with('title','Câu hỏi thuộc chuyên mục: ' . $monhoc->tenmonhoc)
					->with('questions',$questions)
					->with('monhoc',$monhoc);
			
			}else {
				return View::make('frontend.tracnghiem.gioihanthi')->with('title','Giới hạn bài thi')->with('monhoc',$monhoc);
				//echo 'khong duoc thi qua ' . $monhoc->solanthi . ' lan';
			}
		}else {
			return Redirect::route('frontend.tracnghiem.index')
				->with('error','Không tồn tại chuyên mục này');
		}
	}
	
}