@extends('master')
@section('content')
    <div class="modal-dialog" style="width:700px">
		<div class="modal-content">
			<div class="modal-header">
		   		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		   		<h4 class="modal-title" id="exampleModalLabel"><h2>{{$title}}</h2></h4>
		  	</div>
            <div class="modal-body">
                {{Form::open(array('route'=>'editcauhoi_post'))}}
                    <p class="minihead">Tên môn học:</p>
                    {{Form::select('monhoc',$monhoc,$cauhois->monhoc_id)}}<br />
                    <p class="minihead">Tên câu hỏi:</p>
                    {{Form::text('tencauhoi',$cauhois->tencauhoi,array('class'=>'form-control'))}}<br />
                    <input type="hidden" name="cauhoi_id" value="{{$cauhois->id}}" />
                    <p class="minihead">Điểm:</p>
                    {{Form::text('diem',$cauhois->diem,array('class'=>'form-control'))}}<br />
                    {{Form::submit('Sửa câu hỏi',array('class'=>'btn btn-primary btn-lg'))}}
                {{Form::close()}}
            </div>
		  	<div class="modal-footer">
		   		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		  	</div>
	   </div>
    </div>
@endsection