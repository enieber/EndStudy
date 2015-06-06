@extends('app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">Contato</div>
                <div class="panel-body">
                @unless($errors->isEmpty())
                    <ul>
                    @foreach($errors->getMessages() as $error)
                        <li>{{ $error[0] }}</li>
                    @endforeach
                    </ul>
                @endunless
                <form action="{{url('contato')}}" method="post" class="col-sm-12 form-horizontal" role="form">
                    <div class="form-group">
                        <legend>Formulário de Contato</legend>
                    </div>

                    <div class="form-group">
                      <label for="name" class="sr-only">Nome:</label>
                      <div class="col-sm-6">
                        <input type="text" name="name" id="contact_name" class="form-control" placeholder="Digite seu nome" required>
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="email" class="sr-only">E-mail:</label>
                      <div class="col-sm-6">
                        <input type="email" name="email" id="contact_email" class="form-control" placeholder="Digite seu email" required>
                      </div>
                    </div>

                    <div class="form-group">
                        <label for="message" class="sr-only">Mensagem:</label>
                        <div class="col-sm-6">
                            <textarea name="message" id="contact_message" class='form-control' rows="5" style="resize:none" placeholder="Digite sua mensagem..."></textarea required>
                        </div>
                    </div>

                    <input name="_token" type="hidden" value="{{csrf_token()}}"/>

                    <div class="form-group">
                        <div class="col-sm-10">
                            <button type="submit" class="btn btn-primary">Enviar</button>
                        </div>
                    </div>
                </form>
                </div>
                </div>
                </div>
        </div>
    </div>
</div>

@endsection