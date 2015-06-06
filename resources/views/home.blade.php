@extends('app')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<div class="panel panel-default">
				<div class="panel-heading">Strore</div>

				<div class="panel-body">
					<span class="btn btn-success fileinput-button">
				        <i class="glyphicon glyphicon-plus"></i>
				        <span>Selecionar arquivos...</span>
				        <input id="fileupload" type="file" name="book"
				         data-token="{{ csrf_token() }}" data-user-id="{{ $user->id }}">
				    </span>
				    <br>
				    <br>
				    <!-- The global progress bar -->
				    <div id="progress" class="progress">
				        <div class="progress-bar progress-bar-success"></div>
				    </div>

				    <table class="table table-bordered table-striped table-hover">
				    	<thead>
				    		<tr>
				    			<th>Nome</th>
				    			<th>Enviado em</th>
				    			<th>Usuário</th>
				    			<th>Ações</th>
				    		</tr>
				    	</thead>
				    	<thead>
				    		@foreach($user->files as $file)
				    		<tr>
				    			<td>{{ $file->name }}</td>
				    			<td>{{ $file->created_at }}</td>
				    			<td>{{ $user->name }}</td>
				    			<td>
				    				<a href="{!! route('files.download', [$user->id, $file->id]) !!}" class="btn btn-xs btn-success">download</a>
				    				<a href="{!! route('files.destroy', [$user->id, $file->id]) !!}" class="btn btn-xs btn-danger">excluir</a>
				    			</td>
				    		</tr>
				    		@endforeach
				    	</thead>
				    </table>



				</div>
			</div>
		</div>
	</div>
</div>
@endsection

@section('scripts')
@parent
<script>
	;(function($)
	{
	  'use strict';
	  $(document).ready(function()
	  {
	  	var $fileupload     = $('#fileupload'),
	  		$upload_success = $('#upload-success');
	    $fileupload.fileupload({
	        url: '/upload',
	        formData: {_token: $fileupload.data('token'), userId: $fileupload.data('userId')},
	        progressall: function (e, data) {
	            var progress = parseInt(data.loaded / data.total * 100, 10);
	            $('#progress .progress-bar').css(
	                'width',
	                progress + '%'
	            );
	        },
	        done: function (e, data) {
	        	$upload_success.removeClass('hide').hide().slideDown('fast');
			    setTimeout(function(){
			    	location.reload();
			    }, 2000);
			}
	    });
	  });
	})(window.jQuery);
</script>
@stop