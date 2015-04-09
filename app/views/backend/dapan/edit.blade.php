@extends('master')
@section('content')
    <div class="modal-dialog" style="width:700px">
		<div class="modal-content">
			<div class="modal-header">
		   		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		   		<h4 class="modal-title" id="exampleModalLabel"><h2>{{$title}}</h2></h4>
		  	</div>
            <div class="modal-body">
                {{Form::open()}}
                    <p class="minihead">Tên câu hỏi:</p>
                    {{Form::select('cauhoi',$cauhoi,$dapans->cauhoi_id)}}<br />
                    <p class="minihead">Tên đáp án:</p>
                    {{Form::text('tendapan',$dapans->tendapan,array('class'=>'form-control'))}}<br />
                    <input type="hidden" name="dapan_id" value="{{$dapans->id}}" />
                    <p class="minihead">Đáp án đúng:</p>
                    {{Form::text('dapan_dung',$dapans->dapan_dung,array('class'=>'form-control'))}}<br />
                    {{Form::submit('Sửa đáp án',array('class'=>'btn btn-primary btn-lg'))}}
                {{Form::close()}}
            </div>
		  	<div class="modal-footer">
		   		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		  	</div>
	   </div>
    </div>
@endsection