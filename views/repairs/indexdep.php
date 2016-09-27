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
            รายการซ่อมของแผนก 
        </div>
        <div class="panel-body"> 
            <?=
            GridView::widget([
                'dataProvider' => $dataProvider,
                'formatter' => ['class' => 'yii\i18n\Formatter','nullDisplay' => '-'],    
                'filterModel'=>$searchModel,    
                'filterModel' => $searchModel,
                'columns' => [
                    ['class' => 'yii\grid\SerialColumn'],
                    //'id',
                    'createDate',
                    'satatus',
                    //'department_id',
//                    [
//                        'attribute' => 'department_id',
//                        'value' => 'repairdepartment.name',
//                    ],
                    //'datenotuse',                    
                    [
                        'attribute' => 'tool_id',
                        'value' => 'repairtool.name',
                    ],
                    'problem:ntext',
                    // 'stage',
                    // 'startdate',
                    // 'dateplan',
                    'remark:ntext',
                    'answer',
                    // 'engineer_id',
                    // 'enddate',
                    // 'user_id',            
                    // 'updateDate',
                    //['class' => 'yii\grid\ActionColumn'],
                ],
            ]);
            ?>
        </div>
    </div>
</div>