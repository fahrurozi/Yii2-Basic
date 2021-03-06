<?php

/** @var yii\web\View $this */

use yii\helpers\Html;
use yii\jui\DatePicker;

$this->title = 'About';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-about">
    <?= DatePicker::widget(['name' => 'date']) ?>
    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        This is the About page. You may modify the following file to customize its content:
    </p>

    <code><?= __FILE__ ?></code>
</div>