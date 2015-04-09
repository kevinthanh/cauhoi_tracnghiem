@extends('master')
@section('content')
<h2>Chúc mừng bạn đã hoàn thành bài thi</h2>
<h3>
	@if($baithis->sum)
		Điểm của bạn là <span style="color:red">{{$baithis->sum}}</span> điểm
	@else
	<span style="color:red">0</span>điểm
	@endif
</h3>
@stop
