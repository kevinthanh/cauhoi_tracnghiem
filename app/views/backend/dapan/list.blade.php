@extends('master')
@section('content')
    <h2>{{$title}}</h2>
    <div class="sub-header">
        <a href="{{URL::route('createdapan_get')}}" class="btn btn-primary table-permmission">Thêm đáp án</a>
    </div>
    <table class="table table-bordered table-striped table-hover">
        <tr class="info">
            <td>Tên đáp án</td>
            <td>Đáp án đúng</td>
            <td>Câu hỏi</td>
            <td>Người đăng</td>
            <td>Sửa</td>
            <td>Xóa</td>
        </tr>
        @foreach($dapans as $dapan)
            <tr>
                <td>{{$dapan->tendapan}}</td>
                <td>{{$dapan->dapan_dung}}</td>
                <td class="alert alert-danger">{{$dapan->cauhoi->tencauhoi}}</td>
                <td>{{$dapan->users->username}}</td>
              
                <td><a href="{{URL::route('editdapan_get',array($dapan->id))}}" class="table-permmission"><img src="{{URL::to('/')}}/public/ontap/image/edit.png"></a></td>
                <td><a href="{{URL::route('deletedapan_get',array($dapan->id))}}" onclick='return confirm_delete("Bạn có muốn xóa đáp án này không?")'><img src="{{URL::to('/')}}/public/ontap/image/delete.png"></a></td>
                
            </tr>
        @endforeach
    </table>
    {{$dapans->links()}}
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