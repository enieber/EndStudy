<?php namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests\ContatoRequest;

class ContatoController extends Controller {

	/**
	 * Mostra o formulário de contato
	 */
	public function getIndex() {
		return view('contato.index');
	}

	/**
	 * Trata o formulário de contato e mostra os dados
	 */
	public function postIndex(ContatoRequest $request) {
		$data = $request->all();

		dd($data);
	}

}
