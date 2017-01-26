<?php
class ModelOcorrenciaOcorrencia extends Model {

	public function getOcorrencias($data = array()) {
    $sql = "SELECT * FROM " . DB_PREFIX . "ocorrencia ";

		if (!empty($data['status'])) {
			$sql .= " AND status = '" . $this->db->escape($data['status']) . "'";
		}

    $query = $this->db->query($sql);
    return $query->rows;
  }

  public function getTotalOcorrencias($data = array()) {
    $sql = "SELECT count(*) AS total FROM " . DB_PREFIX . "ocorrencia";

		if (!empty($data['status'])) {
			$sql .= " AND status = '" . $this->db->escape($data['status']) . "'";
		}

    $query = $this->db->query($sql);
    return $query->rows['total'];
  }

}
?>
