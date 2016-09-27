<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "engineers".
 *
 * @property integer $id
 * @property integer $user_id
 * @property string $speciallist
 */
class Engineers extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'engineers';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id'], 'integer'],
            [['speciallist'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'user_id' => 'ช่าง',
            'speciallist' => 'ประเภทช่าง',
        ];
    }
}
