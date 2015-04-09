<?php

class BaithiController extends BaseController {
	
	public function postTracnghiem() {
		
		//$total = $baithis['cauhoi']->sum('diem');
		//$baithi = Baithi::with('cauhoi','dapan','users');
		foreach($_POST['dapan'] as $key => $value) {
			
			$data = Baithi::create(array(
				'cauhoi_id'	=>	$key,
				'dapan_id'	=>	$value,
				'user_id'	=>	Sentry::getUser()->id,
				'monhoc_id'	=>	'',
			));
		}
//		var_dump($baithis);
//		print_r($baithis);
//		echo $baithis->sum;
		$baithis = DB::table('baithi')->select(DB::raw('sum(cauhoi.diem) as `sum`'))->join('cauhoi','baithi.cauhoi_id','=','cauhoi.id')->join('dapan','baithi.dapan_id','=','dapan.id')->where('dapan.dapan_dung','=','1')->where('baithi.user_id','=',Sentry::getUser()->id)->first();
		
		return View::make('frontend.tracnghiem.thongbao', compact('baithis'))->with('title','Thi thành công')->with('baithis',$baithis);
		
	}
	
}
