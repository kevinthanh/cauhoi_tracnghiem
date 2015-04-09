@extends('master')
@section('content')
    <div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
		   		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		   		<h4 class="modal-title" id="exampleModalLabel"><h2>{{$title}}</h2></h4>
		  	</div>
		  	<div class="modal-body">
                
                {{Form::open(array('route'=>'createdapan_post'))}}
                    <p class="minihead">Câu hỏi:</p>
                    {{Form::select('cauhoi',$cauhoi)}}<br />
                    <p class="minihead">Đáp án:</p>
                    {{Form::text('tendapan',Input::old('tendapan'),array('class'=>'form-control'))}}<br />
                    <p class="minihead">Đáp án đúng:</p>
                    {{Form::text('dapan_dung',Input::old('dapan_dung'),array('class'=>'form-control'))}}<br />
                    
                    {{Form::submit('Thêm mới',array('class'=>'btn btn-primary btn-lg'))}}
                {{Form::close()}}
            </div>
		  	<div class="modal-footer">
		   		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		  	</div>
	 	</div>
	</div>
@endsection