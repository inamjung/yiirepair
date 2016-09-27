<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Repairs */

$this->title = 'Create Repairs';
$this->params['breadcrumbs'][] = ['label' => 'Repairs', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="repairs-create">

   <div class="panel panel-success">
        <div class="panel-heading">
            <i class="glyphicon glyphicon-wrench"></i>
            แจ้งซ่อม
        </div>
        <div class="panel-body">
<!--            <h3><?= Html::encode($this->title) ?></h3>-->

    <?= $this->render('_formuser', [
        'model' => $model,
        't'=>[]
    ]) ?>

        </div>
    </div> 
</div>
