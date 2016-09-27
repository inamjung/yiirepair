<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Repairs */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="repairs-form">

    <?php $form = ActiveForm::begin(); ?>

    <div class="row">
        <div class="col-xs-3 col-sm-3 col-md-3">            
            <?=$form->field($model,'createDate')->widget(\yii\jui\DatePicker::classname(),[
                    'language' => 'th',
                    'dateFormat' => 'yyyy-MM-dd',
                    'clientOptions' => [
                        'changeMonth' => true,
                        'changeYear' => true,
                     ],
                      'options'=>['class'=>'form-control',
                      'disabled'=>true
                     ],
                ]);
            ?>
        </div>
        <div class="col-xs-3 col-sm-3 col-md-3">
            <?=$form->field($model,'datenotuse')->widget(\yii\jui\DatePicker::classname(),[
                    'language' => 'th',
                    'dateFormat' => 'yyyy-MM-dd',
                    'clientOptions' => [
                        'changeMonth' => true,
                        'changeYear' => true,
                     ],
                      'options'=>['class'=>'form-control',
                      'disabled'=>true
                     ],
                ]);
            ?>
        </div>
         <div class="col-xs-6 col-sm-6 col-md-6">
               <?= $form->field($model, 'department_id')->widget(kartik\select2\Select2::className(),[
                'data'=> yii\helpers\ArrayHelper::map(app\models\Departments::find()->all(),'id','name'),
                'options'=>['placeholder'=>'เลือกหน่วยงาน'],
                'disabled'=>true,
                'pluginOptions'=>['allowClear'=>true]
            ]) ?>
         </div>
     </div>
   <div class="row">
       <div class="col-xs-6 col-sm-6 col-md-6">
          
           <?= $form->field($model, 'tool_id')->widget(kartik\select2\Select2::className(),[
                'data'=> yii\helpers\ArrayHelper::map(\app\models\Tools::find()->all(),'id','name'),
                'options'=>['placeholder'=>'เลือกรายการ'],
                'disabled'=>true,
                'pluginOptions'=>['allowClear'=>true]
            ]) ?>
           
       </div>
       <div class="col-xs-6 col-sm-6 col-md-6">
           <?= $form->field($model, 'problem')->textarea(['readonly'=>true,'rows' => 6]) ?>
       </div>
</div>

    <?= $form->field($model, 'stage')->radioList([ 'รอได้ภายใน 3 วัน' => 'รอได้ภายใน 3 วัน', 'รอได้ภายใน 7 วัน' => 'รอได้ภายใน 7 วัน',
        'รอได้ภายใน 1 วัน' => 'รอได้ภายใน 1 วัน', ], ['prompt' => '']) ?>
    <hr>
    <span class="label label-danger">หัวหน้าพิจารณา</span><br>
    <div class="row">        
        <div class="col-xs-3 col-sm-3 col-md-3">
            <?= $form->field($model, 'satatus')->radioList([ 'รอรับงาน' => 'รอรับงาน', 'รับงานแล้ว' => 'รับงานแล้ว', ], ['prompt' => '']) ?>
        </div>
        <div class="col-xs-9 col-sm-9 col-md-9">
            <?= $form->field($model, 'approve')->radioList([ 'อนุมัติ-ซ่อมเอง' => 'อนุมัติ-ซ่อมเอง',
                'อนุมัติ-เคลม' => 'อนุมัติ-เคลม', 'อนุมัติ-ช่างนอก' => 'อนุมัติ-ช่างนอก',
                'ไม่อนุมัติ' => 'ไม่อนุมัติ','รอพิจารณา' => 'รอพิจารณา'
                ], ['prompt' => '']) ?>
        </div>
    </div>
    <hr>
    <div class="row">
         <div class="col-xs-3 col-sm-3 col-md-3">           
             <?=$form->field($model,'startdate')->widget(\yii\jui\DatePicker::classname(),[
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
        <div class="col-xs-3 col-sm-3 col-md-3">           
            <?=$form->field($model,'dateplan')->widget(\yii\jui\DatePicker::classname(),[
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
</div>
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <?= $form->field($model, 'remark')->textarea(['rows' => 6]) ?>
        </div>
</div>
 </div>
    <div class="row">
        <div class="col-xs-4 col-sm-4 col-md-4">
            <?= $form->field($model, 'answer')->radioList([ 'รอซ่อม' => 'รอซ่อม', 'กำลังซ่อม' => 'กำลังซ่อม', 
                'ซ่อมเสร็จแล้ว' => 'ซ่อมเสร็จแล้ว', 'ซ่อมไม่ได้' => 'ซ่อมไม่ได้', ], ['prompt' => '']) ?>
        </div>
        <div class="col-xs-4 col-sm-4 col-md-4">           
            <?=$form->field($model,'enddate')->widget(\yii\jui\DatePicker::classname(),[
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
        <div class="col-xs-4 col-sm-4 col-md-4">           
            <?= $form->field($model, 'engineer_id')->widget(kartik\select2\Select2::className(),[
                'data'=> yii\helpers\ArrayHelper::map(app\models\Engineers::find()->all(),'id','user_id'),
                'options'=>['placeholder'=>'เลือกรายการ'],
                'pluginOptions'=>['allowClear'=>true]
            ]) ?>
        </div>
</div>  
    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
