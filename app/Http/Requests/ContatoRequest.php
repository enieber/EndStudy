<?php namespace App\Http\Requests;

use App\Http\Requests\Request;

class ContatoRequest extends Request {

	/**
	 * Determine if the user is authorized to make this request.
	 *
	 * @return bool
	 */
	public function authorize() {
		return true;
	}

	/**
	 * Get the validation rules that apply to the request.
	 *
	 * @return array
	 */
	public function rules() {
		return [
			'name' => 'required|min:3|alpha', //obrigatório com pelomenos 3 caracteres alfabéticos
			'email' => 'required|email', //obrigatório e deve ser um email
			'message' => 'required|min:15', //obrigatório com pelo menos 30 caracteres
		];
	}

}
