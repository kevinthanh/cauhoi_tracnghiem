@extends('master')
@section('content')
	<h2>{{$title}}</h2>
	<div class="sub-header">
		<a href="{{URL::route('create_get')}}" class="btn btn-primary table-permmission">Thêm môn học</a>
	</div>
	<table class="table table-bordered table-striped table-hover">
		<tr class="info">
			<td>Tên môn học</td>
			<td>Số câu hỏi</td>
			<td>Số lần thi</td>
			<td>Sửa</td>
			<td>Xóa</td>
		</tr>
		@foreach($monhocs as $monhoc)
			<tr>
				<td>{{$monhoc->tenmonhoc}}</td>
				<td>{{$monhoc->socauhoitrongbaithi}}</td>
				<td>{{$monhoc->solanthi}}</td>
				<td><a href="{{URL::route('edit_get',array($monhoc->id))}}" class="table-permmission"><img src="{{URL::to('/')}}/public/ontap/image/edit.png"></a></td>
				<td><a href="{{URL::route('delete_get',array($monhoc->id))}}" onclick='return confirm_delete("Bạn có muốn xóa môn học này không?")'><img src="{{URL::to('/')}}/public/ontap/image/delete.png"></a></td>
				
			</tr>
		@endforeach
	</table>
	{{$monhocs->links()}}
@endsection

@section('data_code')
    <script language="javascript">
		$('.table-permmission').on('click', function ( e ) {
		   e.preventDefault();

		   var $modalPermissionUpdate = $('<div class="modal">').appendTo('body');

		   $modalPermissionUpdate.modal({backdrop: 'static', keyboard: false});
		   $modalPermissionUpdate.load(this.href);
		 });
		$(function () {
		  $('[data-toggle="popover"]').popover()
		});
		function confirm_delete(err){
			if(!window.confirm(err)){
				return false;
			}
		}
	</script>
@endsection