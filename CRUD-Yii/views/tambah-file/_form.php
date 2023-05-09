<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/** @var yii\web\View $this */
/** @var app\models\TambahFile $model */
/** @var yii\widgets\ActiveForm $form */
?>

<div class="tambah-file-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'file_upload')->textInput() ?>

    <?= $form->field($model, 'avatar_id')->textInput() ?>

    <?= $form->field($model, 'user_id')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
