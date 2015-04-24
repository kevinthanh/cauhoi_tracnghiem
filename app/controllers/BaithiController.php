<?php

class BaithiController extends BaseController {

	public function postTracnghiem() {

		$diem = 0;
		$mytime = Carbon\Carbon::now();
		$baithis = Baithi::create(array(
			'user_id' => Sentry::getUser()->id,
			'monhoc_id' => Input::get('monhoc_id'),
			'ngay_tao' => $mytime->toDateTimeString(),
			'diem' => $diem,
		));
		
		$input = Input::all();
		
		foreach ($input['dapan'] as $key => $value) {

			$data = Chitietbaithi::create(array(
				'baithi_id' => $baithis->id,
				'cauhoi_id' => $key,
				'dapan_id' => $value,
			));
			
			$diem += Cauhoi::tinhDiem($key, $value);
		}
		
		$baithis->diem = $diem;
		Baithi::find($baithis->id)->take(5);
		$baithis->save();
	
		return View::make('frontend.tracnghiem.thongbao', compact('baithis'))->with('title', 'Thi thành công')->with('baithis', $baithis);
	}

}
