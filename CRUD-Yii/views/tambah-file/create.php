<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\TambahFile $model */

$this->title = 'Create Tambah File';
$this->params['breadcrumbs'][] = ['label' => 'Tambah Files', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tambah-file-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
