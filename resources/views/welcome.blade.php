@extends('app')

@section('content')

<div class="container">
<div class="title">Bem Vindo a um novo mundo</div>
	<div class="content">
		<div><li><a href="{{ url('/auth/login') }}">Entrar-></a></li></div>
		<div class="quote">{{ Inspiring::quote() }}</div>
	</div>
</div>
@endsection
