@extends('master')
@section('content')
    <h2>{{$title}}</h2>
	@if(Auth::user()->username)
    <table class="table table-bordered table-striped table-hover">
        <tr class="info">
            <td>Username</td>
            <td>Email</td>
            <td>First name</td>
            <td>Last name</td>
            
            <td>Xóa</td>
        </tr>
        @foreach($users as $user)
		
            <tr>
                <td>{{$user->username}}</td>
                <td>{{$user->email}}</td>
                <td>{{$user->first_name}}</td>
                <td>{{$user->last_name}}</td>
                
                <td><a href="{{URL::route('userdelete_get',array($user->id))}}" onclick='return confirm_delete("Bạn có muốn xóa môn học này không?")'><img src="{{URL::to('/')}}/public/ontap/image/delete.png"></a></td>
                
            </tr>
			
        @endforeach
    </table>
	@endif
    {{$users->links()}}
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