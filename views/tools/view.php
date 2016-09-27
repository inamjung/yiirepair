<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Tools */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Tools', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tools-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            //'id',
            'name',
            'tooltooltype.name',
            [ // แบบที่2
               'attribute'=>'tooltype_id',
                'value'=>$model->tooltooltype->name
            ],
            [ // แบบที่2
               'attribute'=> 'department_id',
                'value'=>$model->tooldepartment->name
            ],           
            'price',
            'datebuy',
            [ // แบบที่2
               'attribute'=> 'use',
               'format'=>'html',
               'value'=>$model->use == '1' ? "<i class=\"glyphicon glyphicon-ok\"></i>" : "<i class=\"glyphicon glyphicon-remove\"></i>",
            ],            
        ],
    ]) ?>

</div>
