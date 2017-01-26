<?php
class ControllerOcorrenciaOcorrencia extends Controller {

	private $error = array();

	public function index() {
		$this->document->setTitle('Ocorrências');
		$this->load->model('ocorrencia/ocorrencia'); // Carrega o model
		$this->getList(); // Inicializa a lista
	}

  protected function getList() {

    $url = ''; //TODO: não está sendo usado

		// Carrega parametro status
    if (isset($this->request->get['status'])) {
      $status = $this->request->get['status'];
			$url .= '&status=' . $status;
		} else {
      $status = null;
    }

		$data['header'] = $this->load->controller('common/header');
    $data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

    $data['ocorrencias'] = array();

    $filter_data = array(
			'status' => $status
		);

    $results = $this->model_ocorrencia_ocorrencia->getOcorrencias($filter_data);

    foreach ($results as $result) {
			$data['ocorrencias'][] = array(
				'idOcorrencia'    => $result['idOcorrencia'],
				'ocorrencia'      => $result['ocorrencia'],
				'lancamento'      => $result['lancamento'],
        'autor'           => $result['idUsuario_Autor']
			);
		}

    $this->response->setOutput($this->load->view('ocorrencia/ocorrencia_list', $data));
  }
}
?>
