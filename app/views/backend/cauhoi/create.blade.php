@extends('master')
@section('content')
     <div class="modal-dialog" style="width:700px">
		<div class="modal-content">
			<div class="modal-header">
		   		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		   		<h4 class="modal-title" id="exampleModalLabel"><h2>{{$title}}</h2></h4>
		  	</div>
            <div class="modal-body">
                {{Form::open(array('route'=>'createcauhoi_post'))}}
                    <p class="minihead">Môn học:</p>
                    {{Form::select('monhoc',$monhoc)}}<br />
                    <p class="minihead">Câu hỏi:</p>
                    {{Form::text('tencauhoi',Input::old('tencauhoi'),array('class'=>'form-control'))}}<br />
                    <p class="minihead">Điểm:</p>
                    {{Form::text('diem',Input::old('diem'),array('class'=>'form-control'))}}<br />
                    
                    {{Form::submit('Thêm mới',array('class'=>'btn btn-primary btn-lg'))}}
                {{Form::close()}}
            </div>
		  	<div class="modal-footer">
		   		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		  	</div>
        </div>
     </div>
@endsection