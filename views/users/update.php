<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Users */

$this->title = 'แก้ไขข้อมูล: ' . $model->username;
//$this->params['breadcrumbs'][] = ['label' => 'Users', 'url' => ['index']];
//$this->params['breadcrumbs'][] = ['label' => $model->username, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="users-update">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <i class="glyphicon glyphicon-user"></i>
            แก้ไขข้อมูลส่วนตัว
        </div>
        <div class="panel-body">
            <?=
            $this->render('_form', [
                'model' => $model,
                't' => []
            ])
            ?>
        </div>
    </div> 
</div>
