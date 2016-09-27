<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tools".
 *
 * @property integer $id
 * @property string $name
 * @property integer $tooltype_id
 * @property integer $department_id
 * @property string $price
 * @property string $datebuy
 * @property integer $use
 */
class Tools extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tools';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['tooltype_id', 'department_id', 'use'], 'integer'],
            [['price'], 'number'],
            [['datebuy'], 'safe'],
            [['name'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'รายการอุปกรณ์',
            'tooltype_id' => 'ประเภทอุปกรณ์',
            'department_id' => 'แผนก',
            'price' => 'ราคา',
            'datebuy' => 'วันที่ซื้อ',
            'use' => 'ใช้/ไม่ใช้',
        ];
    }
    public function getTooltooltype(){
        return $this->hasOne(Tooltypes::className(), ['id'=>'tooltype_id']);
    }
    public function getTooldepartment(){
        return $this->hasOne(Departments::className(), ['id'=>'department_id']);
    }
}
