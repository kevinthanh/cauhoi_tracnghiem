<?php

class BaithiController extends BaseController {
	
	public function postTracnghiem() {
		
		//$total = $baithis['cauhoi']->sum('diem');
		//$baithi = Baithi::with('cauhoi','dapan','users');
            $mytime = Carbon\Carbon::now();
            $baithi = Baithi::create(array(
                'user_id'	=>	Sentry::getUser()->id,
                'monhoc_id'	=>	Input::get('monhoc_id'),
                'ngay_tao'      =>      $mytime->toDateTimeString(),
            ));
            
              
            foreach($_POST['dapan'] as $key => $value) {
			
		$data = Chitietbaithi::create(array(
                    'baithi_id' =>      $baithi->id,
                    'cauhoi_id'	=>	$key,
                    'dapan_id'	=>	$value,
			
		));
            }
		  echo '<pre>';
		print_r($data);
                echo '</pre>';
                die;
		
            $baithis = DB::table('baithi')->select(DB::raw('sum(cauhoi.diem) as `sum`'))->join('cauhoi','baithi.cauhoi_id','=','cauhoi.id')->join('dapan','baithi.dapan_id','=','dapan.id')->where('dapan.dapan_dung','=','1')->where('baithi.user_id','=',Sentry::getUser()->id)->first();
		
            return View::make('frontend.tracnghiem.thongbao', compact('baithis'))->with('title','Thi thành công')->with('baithis',$baithis);
		
	}
	
}
