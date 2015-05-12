<!-- Phan noi dung top login -->
@if(Session::has('errorTop'))
    <div class="centerfix" id="infobar">
        <div class="centercontent">{{Session::get('errorTop')}}</div>
    </div>
@endif

@if(!Auth::check())
    <div class="centerfix" id="login">
        <div class="centercontent">
            {{Form::open(array('route'=>'login_post','style'=>'float:left'))}}
                {{Form::text('username','',array('class'=>'input','placeholder'=>'Tên đăng nhập'))}}
                {{Form::password('password',array('class'=>'input','placeholder'=>'Mật khẩu'))}}
                {{Form::submit('Đăng nhập')}}
            {{Form::close()}}
            
            <a href="{{URL::route('register_get')}}" class="wybutton">Đăng ký</a>
        </div>
    </div>
@else
    <div class="centerfix" id="login">
        <div class="centercontent">
            <div id="userblock">
		
		Xin chào , {{Auth::user()->username}} (<a href="{{URL::route('logout_get')}}">Thoát</a>) </div>
        </div>
    </div>
@endif