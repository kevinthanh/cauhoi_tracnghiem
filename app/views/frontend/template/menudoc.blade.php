@if(Sentry::check())
	@if(!Sentry::hasAccess('admin'))
		<div class="col-md-3" id="rightcontent">
			<ul class="nav nav-sidebar">
				@foreach($menus as $menu)
				<li><a href="{{URL::route('monhoc_cauhoi_get',array($menu->id,Unicode::make($menu->tenmonhoc)))}}">{{$menu->tenmonhoc}}</a></li>
				@endforeach
			</ul>
		</div>
	@endif
@endif

