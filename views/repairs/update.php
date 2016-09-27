<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Repairs */

$this->title = 'Update Repairs: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Repairs', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="repairs-update">
<div class="panel panel-primary">
        <div class="panel-heading">
            <i class="glyphicon glyphicon-wrench"></i>
            รับแจ้งซ่อม
        </div>
        <div class="panel-body">
<!--            <h3><?= Html::encode($this->title) ?></h3>-->

    <?= $this->render('_form', [
        'model' => $model,
        't'=>[]
    ]) ?>

        </div>
    </div> 
</div>