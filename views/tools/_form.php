<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use app\models\Tooltypes;
use kartik\select2\Select2;
use kartik\checkbox\CheckboxX;

/* @var $this yii\web\View */
/* @var $model app\models\Tools */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tools-form">

    <?php $form = ActiveForm::begin(); ?>

    <div class="row">

        <div class="col-xs-8 col-sm-8 col-md-8">
            <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>
        </div>        
        <div class="col-xs-4 col-sm-4 col-md-4">
            <?= $form->field($model, 'tooltype_id')->widget(kartik\select2\Select2::className(),[
                'data'=> yii\helpers\ArrayHelper::map(Tooltypes::find()->all(),'id','name'),
                'options'=>['placeholder'=>'เลือกประเภท'],
                'pluginOptions'=>['allowClear'=>true]
            ]) ?>
            
        </div>        

    </div>
    <div class="row">

        <div class="col-xs-6 col-sm-6 col-md-6">            
            <?= $form->field($model, 'department_id')->widget(kartik\select2\Select2::className(),[
                'data'=> yii\helpers\ArrayHelper::map(app\models\Departments::find()->all(),'id','name'),
                'options'=>['placeholder'=>'เลือกหน่วยงาน'],
                'pluginOptions'=>['allowClear'=>true]
            ]) ?>
        </div>        
        <div class="col-xs-6 col-sm-6 col-md-6">
            <?= $form->field($model, 'price')->textInput(['maxlength' => true]) ?>
        </div>        

    </div>
    <div class="row">

        <div class="col-xs-6 col-sm-6 col-md-6">
            <?=$form->field($model,'datebuy')->widget(\yii\jui\DatePicker::classname(),[
                    'language' => 'th',
                    'dateFormat' => 'yyyy-MM-dd',
                    'clientOptions' => [
                        'changeMonth' => true,
                        'changeYear' => true,
                     ],
                      'options'=>['class'=>'form-control'
                     ],
                ]);
            ?>
        </div>        
        <div class="col-xs-6 col-sm-6 col-md-6">
             <?= $form->field($model, 'use')->widget(CheckboxX::classname(), [
                                //'disabled'=>true,
                                'pluginOptions' => ['threeState' => false],
                            ])->label('ใช้งานอยู่');
            ?>
            
        </div>        

    </div>

  

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
