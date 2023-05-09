<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\TambahFile $model */

$this->title = 'Update Tambah File: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Tambah Files', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="tambah-file-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
