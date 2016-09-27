<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use app\models\Departments;
use kartik\select2\Select2;
use app\models\Tools;
use kartik\widgets\DepDrop;
use yii\helpers\Url;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model app\models\Repairs */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="repairs-form">

    <?php $form = ActiveForm::begin(); ?>
     <div class="row">
        <div class="col-xs-3 col-sm-3 col-md-3">
            <?=$form->field($model,'datenotuse')->widget(\yii\jui\DatePicker::classname(),[
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
         <div class="col-xs-9 col-sm-9 col-md-9">
               <?= $form->field($model, 'department_id')->widget(kartik\select2\Select2::className(),[
                'data'=> yii\helpers\ArrayHelper::map(app\models\Departments::find()->all(),'id','name'),
                'options'=>['placeholder'=>'เลือกหน่วยงาน'],
                'pluginOptions'=>['allowClear'=>true]
            ]) ?>
         </div>
     </div>
   <div class="row">
       <div class="col-xs-6 col-sm-6 col-md-6">
          
           <?=
            $form->field($model, 'tool_id')->widget(DepDrop::className(), [
                        'data' => [$t],
                        'options' => ['placeholder' => '<--คลิกเลือกรายการ-->'],
                        'type' => DepDrop::TYPE_SELECT2,
                        'select2Options' => ['pluginOptions' => ['allowClear' => true]],
                        'pluginOptions' => [
                            'depends' => ['repairs-department_id'],            
                            'url' => yii\helpers\Url::to(['/repairs/get-tool']),
                            'loadingText' => 'Loading1...',
                        ],
                    ]);
            ?>   
           
       </div>
       <div class="col-xs-6 col-sm-6 col-md-6">
           <?= $form->field($model, 'problem')->textarea(['rows' => 6]) ?>
       </div>
</div>

    <?= $form->field($model, 'stage')->radioList([ 'รอได้ภายใน 3 วัน' => 'รอได้ภายใน 3 วัน', 'รอได้ภายใน 7 วัน' => 'รอได้ภายใน 7 วัน', 'รอได้ภายใน 1 วัน' => 'รอได้ภายใน 1 วัน', ], ['prompt' => '']) ?>

   

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
