<?php if (!empty($_SESSION['is_admin'])) : ?>

  <a href="<?= ROOT_URL ?>admin_editPost_<?= $oPost->id ?>.html"><button class="btn pink lighten-4 waves-effect waves-light">Modifier</button></a>
  <a href="<?= ROOT_URL ?>admin_delete_<?= $oPost->id ?>.html"><button class="btn red accent-4 waves-effect waves-light">Supprimer</button></a>

<?php endif ?>