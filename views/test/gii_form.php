<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Test */
/* @var $form ActiveForm */
?>
<div class="test-gii_form">

    <?php $form = ActiveForm::begin(); ?>

        <?= $form->field($model, 'content') ?>
        <?= $form->field($model, 'title') ?>
    
        <div class="form-group">
            <?= Html::submitButton('Submit', ['class' => 'btn btn-primary']) ?>
        </div>
    <?php ActiveForm::end(); ?>

</div><!-- test-gii_form -->
