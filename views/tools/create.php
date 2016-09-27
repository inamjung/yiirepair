<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Tools */

$this->title = 'รายการอุปกรณ์';
$this->params['breadcrumbs'][] = ['label' => 'Tools', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tools-create">
    <div class="panel panel-primary">
        <div class="panel-heading"> รายการเครื่องมือ</div>
        <div class="panel-body">
            <h3><?= Html::encode($this->title) ?></h3>

            <?=
            $this->render('_form', [
                'model' => $model,
            ])
            ?>

        </div>
    </div> 
</div>
