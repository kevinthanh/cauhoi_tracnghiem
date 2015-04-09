
<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8" />
<title>{{$title}}</title>
{{HTML::style("public/ontap/css/bootstrap.css")}}
{{HTML::style("public/ontap/css/bootstrap.min.css")}}
{{HTML::style("public/ontap/css/style.css")}}


</head>
<body>
    @include('backend.template.top')
    
    <div class="col-md-12 centerfix" id="main" role="main">
        <div class="centercontent clearfix">
        @include('backend.template.menungang')
		@include('frontend.template.menudoc')
            <div class="col-md-9" id="contentblock">
                @if(Session::has('error'))
                    <div class="warningx wredy">{{Session::get('error')}}</div>
                @endif
                
                @if(Session::has('success'))
                    <div class="warningx wgreeny">{{Session::get('success')}}</div>
                @endif
                
                @yield('content')
            </div>
            
        </div>
    </div>
    
    
    <div class="qinfo" align="center">
	   Copyright &copy; 2015 By Kevin thanh
    </div>
    
{{HTML::script("public/ontap/js/jquery.js")}}
{{HTML::script("public/ontap/js/bootstrap.js")}}
{{HTML::script("public/ontap/js/bootstrap.min.js")}}



@yield("data_code")

</body>
</html>