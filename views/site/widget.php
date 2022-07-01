<?php

/** @var yii\web\View $this */

use app\widgets\Alert;
use yii\helpers\Html;
use yii\jui\DatePicker;
use yii\widgets\ActiveForm;

$this->title = 'Widget';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-about">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        This is the About page. You may modify the following file to customize its content:
    </p>

    <?= DatePicker::widget([
        'name' => 'date',
        'attribute' => 'from_date',
        'language' => 'id',
        'dateFormat' => 'php:d-m-Y',
    ]) ?>
    <br>
    <br>
    
    <?= Yii::$app->session->setFlash('error', 'This is the message'); ?> 
    <br>
    <code><?= __FILE__ ?></code>
</div>