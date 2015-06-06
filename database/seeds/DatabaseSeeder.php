<?php

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run() {
		Model::unguard();

		$this->call('UserTableSeeder');
	}

}

/**
 *
 */
class UserTableSeeder extends Seeder {

	public function run() {
		$user = new \App\User();
		$user->name = 'Enieber Cunha';
		$user->email = 'eniebercunha@gmail.com';
		$user->password = bcrypt('123456');

		$i = 1;
		while ($i < 10) {

			$user = new \App\User();
			$user->name = 'Fabio Vedovelli';
			$user->email = $i . 'eniebersilva@hotmail.com';
			$user->password = bcrypt('123456');
			$i++;
		}
	}
}
