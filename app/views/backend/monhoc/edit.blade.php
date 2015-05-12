@extends('master')
@section('content')
	<div class="modal-dialog" style="width:700px">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="exampleModalLabel"><h2>{{$title}}</h2></h4>
			</div>
			<div class="modal-body">
				{{Form::open(array('route'=>'edit_post'))}}
					<p class="minihead">Tên môn học:</p>
                    
					{{Form::text('tenmonhoc',$monhocs->tenmonhoc,array('class'=>'form-control'))}}<br />
                    
					<p class="minihead">Số câu hỏi:</p>
					{{Form::text('socauhoitrongbaithi',$monhocs->socauhoitrongbaithi,array('class'=>'form-control'))}}<br />
					
					<p class="minihead">Số lần thi:</p>
					{{Form::text('solanthi',$monhocs->solanthi,array('class'=>'form-control'))}}<br />
					
					<input type="hidden" name="monhoc_id" value="{{$monhocs->id}}" />
                    
					{{Form::submit('Sửa môn học',array('class'=>'btn btn-primary btn-lg'))}}
				{{Form::close()}}
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
@endsection