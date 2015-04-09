@extends('master')
@section('content')
    <h2 id="replyh">{{$title}}</h2>
    <p class="bluey">Vui lòng nhập liệu các thông tin yêu cầu bên dưới</p>
    {{Form::open(array('route'=>'register_post'))}}
        <p class="minihead">Tên gọi:</p>
        {{Form::text('first_name',Input::old('first_name'),array('class'=>'fullinput'))}}
        <p class="minihead">Họ:</p>
        {{Form::text('last_name',Input::old('last_name'),array('class'=>'fullinput'))}}
        <p class="minihead">Email:</p>
        {{Form::email('email',Input::old('email'),array('class'=>'fullinput'))}}
        <p class="minihead">Tên truy cập:</p>
        {{Form::text('username',Input::old('username'),array('class'=>'fullinput'))}}
        <p class="minihead">Mật khẩu:</p>
        {{Form::password('password',array('class'=>'fullinput'))}}
        <p class="minihead">Xác nhận mật khẩu:</p>
        {{Form::password('repassword',array('class'=>'fullinput'))}}
        <p class="minihead">Thông tin của bạn sẽ được bảo mật tuyệt đối.</p>
        {{Form::submit('Đăng ký')}}
    {{Form::close()}}
@endsection