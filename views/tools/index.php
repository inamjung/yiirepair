<?php

use yii\helpers\Html;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\ToolsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Tools';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tools-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Tools', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            //'id',
            'name',
            'tooltooltype.name',//// แบบที่1 
            [ // แบบที่2
               'attribute'=>'tooltype_id',
                'value'=>'tooltooltype.name',
            ],
            [ 
               'attribute'=>'department_id',
                'value'=>'tooldepartment.name',
            ],
            [ 
               'attribute'=>'price',
                'format'=>['decimal',2]
            ],
            
            'datebuy',
            [
                'class' => '\kartik\grid\BooleanColumn',
                'attribute' => 'use',            
            ],            

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
