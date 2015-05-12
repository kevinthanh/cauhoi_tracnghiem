@if(Auth::check())
    @if(Auth::user()->permissions == 'admin')
	<div class="col-md-3" id="rightcontent">
	    <ul class="nav nav-sidebar">
		<li class="active"><a href="{{URL::route('list_get')}}">Quản lý môn học</a></li>
		<li><a href="{{URL::route('listcauhoi_get')}}">Quản lý câu hỏi</a></li>
		<li><a href="{{URL::route('listdapan_get')}}">Quản lý đáp án</a></li>
		<li><a href="{{URL::route('listuser_get')}}">Quản lý user</a></li>
	    </ul>
	</div>
    @endif
@endif