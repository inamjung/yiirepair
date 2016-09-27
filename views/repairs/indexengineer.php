<?php

use yii\helpers\Html;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\RepairsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Repairs';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="repairs-index">

<!--    <h1><?= Html::encode($this->title) ?></h1>-->
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

<!--    <p>
    <?= Html::a('Create Repairs', ['create'], ['class' => 'btn btn-success']) ?>
    </p>-->
    <div class="panel panel-warning">
        <div class="panel-heading">
            <i class="glyphicon glyphicon-wrench"></i>
             รายการแจ้งซ่อมมาใหม่
        </div>
        <div class="panel-body"> 
            <?=
            GridView::widget([
                'dataProvider' => $dataProvider,
                'formatter' => ['class' => 'yii\i18n\Formatter','nullDisplay' => '-'],
                'filterModel' => $searchModel,
                'columns' => [
                    ['class' => 'yii\grid\SerialColumn'],
                    //'id',
                    'createDate',                    
                    [
                        'attribute' => 'department_id',
                        'value' => 'repairdepartment.name',
                    ],
                    //'datenotuse',                    
                    [
                        'attribute' => 'tool_id',
                        'value' => 'repairtool.name',
                    ],
                    'problem:ntext',
                    // 'stage',
                    // 'startdate',
                    'satatus',
                    'approve',
                    // 'dateplan',
                    // 'remark:ntext',
                    // 'answer',
                    // 'engineer_id',
                    // 'enddate',
                    // 'user_id',            
                    // 'updateDate',
                    [
                        'class' => 'yii\grid\ActionColumn',
                        'options' => ['style' => 'width:50px;'],
                        'template' => '<div class="btn-group btn-group-sm" role="group" aria-label="...">{update}</div>',
                        'buttons' => [
//                    'view'=>function($url,$model,$key){
//                        return Html::a('<i class="glyphicon glyphicon-eye-open"></i>',$url,['class'=>'btn btn-default']);
//                    }, 
                            'update' => function($url, $model, $key) {
                                return Html::a('<i class="glyphicon glyphicon-edit"></i>', ['update', 'id' => $model->id], ['class' => 'btn btn-warning']);
                            },
//                    
//                    'delete'=>function($url,$model,$key){
//                         return Html::a('<i class="glyphicon glyphicon-trash"></i>', $url,[
//                                'title' => Yii::t('yii', 'Delete'),
//                                'data-confirm' => Yii::t('yii', 'คุณต้องการลบไฟล์นี้?'),
//                                'data-method' => 'post',
//                                'data-pjax' => '0',
//                                'class'=>'btn btn-default'
//                                ]);
//                    }
                                ]
                            ],
                        //[
                        //'class' => 'yii\grid\ActionColumn'
                        //],
                        ],
                    ]);
                    ?>
        </div>
    </div>
</div>