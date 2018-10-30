<?php

namespace Controllers {

    use Core\Auth;
	use Core\Router;
	use Helpers\{
        Validator, Helper, Data\Currency
    };
	use Libraries\File;
	use \Models\Hyip as Model;

	class Hyip extends Layout{
		private $model;

		function __construct() {
			parent::__construct();
			$this->model = new Model();
		}

		final public function registration() {
		    $data = $this->model->getRegistrationData();
            $data['currency'] = Currency::getCurrency();
            $return['c']['content'] = ['Hyip/Registration', $data];
            $return['f']['content'] = ['ProjectRegistration' => []];

            return IS_AJAX ? Helper::json($return) : $this->layout($return);
		}

		public function show(array $params = []) {
		    $return = [];
            $data = $this->model->getShowData();

            if ($data) {
                $file = new File(-1);

                foreach ($data['projects'] as $project_id => &$val) {
                    $val['file_name']   = $file->get_file_path($project_id);
                }
                /*$user = Auth::getUserInfo();
                foreach ($data['chats'] as $project_id => &$val) {
                    $val = (new View('Hyip/ChatMessage', ['messages' => $val, 'user' => $user]))->get();
                }*/
            }

//            $return['f']['content'] = ['myFunc' => ['aa' => 'aaa', 'bb' => 'bbb'], 'myFunc2' => ['aa2' => 'aaa2', 'bb2' => 'bbb2']];

            $chat_params = array_map(function($a){return ['id'=>$a,'max_id'=>0];}, $data['project_ids']);
            $chats = $this->getChatMessages($chat_params);

            $return['c']['content'] = ['Hyip/Show', $data];
            $return['f']['content'] = array_merge(['initChat', 'panelScrollerInit'], $chats);

            return IS_AJAX ? Helper::jsonv($return) : $this->layout($return);
		}


		final public function add(array $params = []) {
            $data = $this->post
                ->checkAll('projectname', 		1, 		null, 	Validator::TEXT)
				->checkAll('paymenttype', 		1, 		3, 	Validator::NUM)
				->checkAll('date', 				10, 	    10, 	Validator::DATE)

            	->checkAll('percents', 			1, 		null,  Validator::FLOAT,    'plan_percents', 		true, 0)
            	->checkAll('period', 			1, 		null,  Validator::NUM,      'plan_period', 			true, 0)
            	->checkAll('periodtype', 		1, 		6, 	Validator::NUM,      'plan_period_type', 	    true, 0)
            	->checkAll('minmoney', 			1, 		null, 	Validator::FLOAT, 	'plan_start_deposit', 	true, 0)
				->checkAll('currency', 			1, 		8, 	Validator::NUM,		'plan_currency_type', 	true, 0)

				->checkAll('ref_percent', 		null, 	    null, 	Validator::FLOAT,     null,                   true)
				->checkAll('payment', 			1, 		null, 	Validator::NUM,		'payments')
                ->checkAll('description', 		1, 		null, 	null,                 null,                  null,  1)
                ->checkAll('lang', 				1, 		null, 	Validator::NUM,		'languages',            null,  1)

                ->addErrors($this->checkWebsite()['error'] ?? [])->checkErrors()->getData();

            foreach ($data['languages'] as $key => $val) {
			    if (!isset($data['description'][$val])) {
                    return Helper::alert(['is_absent' => [$val]]);
                }
            }

            $this->post->addFields(['url' => $this->checkWebsite()['success']['url']]);
            if ($project_id = $this->model->addProject($this->post)) {
                // Save screenshots
                $file = new File($project_id);
                $file->save($_POST['screen_data']);
                $file->save($_POST['thumb_data'], true);

                return Helper::json(['success' => $project_id]);
            }
		}

		final private function checkWebsite():array {
            $ref_url = $this->post->checkAll('website', 1, 128, Validator::URL, 'ref_url')->getData()['ref_url'];
            $url = 'http://'.str_replace(['www.', 'https://', 'http://'], '', strtolower($ref_url));
            $url = array_reverse(explode('.', parse_url($url, PHP_URL_HOST)));

            if (count($url) < 2) {
                $ret = ['error' => ['fields' => ['website' => 'Wrong site', 'projectname' => 'xxx projectname xxx']]];
            }
            else {
                $url_str = $url[1] . '.' . $url[0];
                if (($res = $this->model->db->getRow('project', 'id', "url = '{$url_str}'"))) {
                    $ret = ['error' => ['fields' => ['website' => ['exists', $res['id']]]]];
                }
                else $ret = ['success' => ['url' => $url_str, 'ref_url' => $ref_url, 'fields' => ['website' =>
					['OK']]]];
            }
            return $ret;
        }

        final public function check() {
            return Helper::json($this->checkWebsite());
        }

        final public function sendMessage(array $params = []) {
            $project_id = (int)$params['project'];

            $post = $this->post
                ->checkAll('message', 		1, 		2047)
                ->checkErrors();

            $info = Auth::getUserInfo();
            $data = [
                'user_id'       => [[$info['id']]],
                'project_id'    => [[$project_id]],
                'lang_id'       => [[217]],
                'message'       => [[$post->message]],
                'session_id'    => [[$info['session_id']]],
            ];
            $this->model->db->insert('message', $data);

            $return['f']['content'][] = 'checkChats';

            return Helper::json($return);
        }

        final public function getChatMessages(array $params = []) {
		    // если есть $params, значит вызвали из $this->show()
            $chats = $params ?: $this->post->checkAll('chats')->checkErrors()->chats;

            if ($new_messages = $this->model->getChatMessages($chats)) {
            	$return['f']['content']['setNewChatMessages'] = $new_messages;
			}
            $return['f']['content'][] = 'startChatCheck';
//            sleep(2);
            return $params ? $return['f']['content'] : Helper::json($return);
        }
	}

}