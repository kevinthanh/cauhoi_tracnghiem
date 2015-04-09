@extends('master')
@section('content')
    <h2>{{$title}}</h2>
    <div class="sub-header">
        <a href="{{URL::route('createcauhoi_get')}}" class="btn btn-primary table-permmission">Thêm câu hỏi</a>
    </div>
    <table class="table table-bordered table-striped table-hover">
        <tr class="info">
            <td>Tên câu hỏi</td>
            <td>Diem</td>
            <td>Tên môn học</td>
            <td>Người đăng</td>
            <td>Sửa</td>
            <td>Xóa</td>
        </tr>
        @foreach($cauhois as $cauhoi)
            <tr>
                <td>{{$cauhoi->tencauhoi}}</td>
                <td>{{$cauhoi->diem}}</td>
                <td class="alert alert-danger">{{$cauhoi->monhoc->tenmonhoc}}</td>
                <td>{{$cauhoi->users->username}}</td>
                <td><a href="{{URL::route('editcauhoi_get',array($cauhoi->id))}}" class="table-permmission"><img src="{{URL::to('/')}}/public/ontap/image/edit.png"></a></td>
                <td><a href="{{URL::route('deletecauhoi_get',array($cauhoi->id))}}" onclick='return confirm_delete("Bạn có muốn xóa câu hỏi này không?")'><img src="{{URL::to('/')}}/public/ontap/image/delete.png"></a></td>
            </tr>
        @endforeach
    </table>
    {{$cauhois->links()}}
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