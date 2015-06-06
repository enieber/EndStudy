<?php namespace App\Http\Controllers;

class HomeController extends Controller {

	/*
	|--------------------------------------------------------------------------
	| Home Controller
	|--------------------------------------------------------------------------
	|
	| This controller renders your application's "dashboard" for users that
	| are authenticated. Of course, you are free to change or remove the
	| controller as you wish. It is just here to get your app started!
	|
	 */

	/**
	 * Create a new controller instance.
	 *
	 * @return void
	 */
	public function __construct() {
		$this->middleware('auth');
	}

	/**
	 * Show the application dashboard to the user.
	 *
	 * @return Response
	 */
	public function index() {
		$userId = \Auth::user()->id;

		$user = \App\User::with('files')->find($userId);

		return view('home')->with(compact('user'));
	}

	public function upload() {

		/**
		 * Request related
		 */
		$file = \Request::file('book');

		$userId = \Request::get('userId');

		/**
		 * Storage related
		 */
		$storagePath = storage_path() . '/books/' . $userId;

		$fileName = $file->getClientOriginalName();

		/**
		 * Database rekated
		 */
		$fileModel = new \App\File();
		$fileModel->name = $fileName;

		$user = \App\User::find($userId);
		$user->files()->save($fileModel);

		return $file->move($storagePath, $fileName);
	}

	public function download($userId, $fileId) {
		$file = \App\File::find($fileId);

		$storagePath = storage_path() . '/books/' . $userId;

		return \Response::download($storagePath . '/' . $file->name);
	}

	public function destroy($userId, $fileId) {
		$file = \App\File::find($fileId);

		$storagePath = storage_path() . '/books/' . $userId;

		$file->delete();

		return redirect()->back()->with('success', 'Arquivo removido com sucesso!');
	}
}
