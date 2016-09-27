<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Users */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="users-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'username')->textInput(['readonly'=>true,'maxlength' => true]) ?>
    <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>

    

    <?= $form->field($model, 'department_id')->widget(kartik\select2\Select2::className(),[
                'data'=> yii\helpers\ArrayHelper::map(app\models\Departments::find()->all(),'id','name'),
                'options'=>['placeholder'=>'เลือกหน่วยงาน'],
                'pluginOptions'=>['allowClear'=>true]
            ]) ?>
    <?= $form->field($model, 'depname')->widget(kartik\select2\Select2::className(),[
                'data'=> yii\helpers\ArrayHelper::map(app\models\Departments::find()->all(),'name','name'),
                'options'=>['placeholder'=>'ยืนยัน-หน่วยงาน'],
                'pluginOptions'=>['allowClear'=>true]
            ]) ?>

    <?= $form->field($model, 'role')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
