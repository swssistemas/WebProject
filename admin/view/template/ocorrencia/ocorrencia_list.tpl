 <?php echo $header; ?>
 <?php echo $column_left; ?>
<div class="row">
  <table class="striped">
    <tbody>
      <?php if ($ocorrencias) { ?>
      <?php foreach ($ocorrencias as $ocorrencia) { ?>
      <tr>
        <td>
          <a href=\"views/ocorrencias/exibeOcorrencia.php?id=$resultOcorrencia->idOcorrencia\">
            <h6> <i class=\"material-icons\" style=\"vertical-align: middle;\" >error_outline</i> $ocorrencia->ocorrencia</h6>
          </a>
          <span class=\"small\"># $ocorrencia->idOcorrencia  lançado "; echo date('d/m/Y', strtotime($ocorrencia->lancamento));
            echo " às ";
            echo date('H:i', strtotime($ocorrencia->lancamento));
            echo " por $ocorrencia->autor";
            echo "
          </span>
        </td>
      </tr>
      <?php } ?>
      <?php } else { ?>
      <tr>
        <td class="text-center" colspan="8"><?php echo $text_no_results; ?></td>
      </tr>
      <?php } ?>
    </tbody>
  </table>
</div>
 <?php echo $footer; ?>
