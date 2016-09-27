<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Tools;

/**
 * ToolsSearch represents the model behind the search form about `app\models\Tools`.
 */
class ToolsSearch extends Tools
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id',  'use'], 'integer'],
            [['name', 'datebuy','tooltype_id', 'department_id'], 'safe'],
            [['price'], 'number'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Tools::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
                'sort' => [                
                'defaultOrder'=>[
                'id'=> 'SORT_DESC',
                        ]
                   ],
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $dataProvider->query->joinWith('tooltooltype');
        $dataProvider->query->joinWith('tooldepartment');
        
        $query->andFilterWhere([
            'id' => $this->id,
            //'tooltype_id' => $this->tooltype_id,
            //'department_id' => $this->department_id,
            'price' => $this->price,
            'datebuy' => $this->datebuy,
            'use' => $this->use,
        ]);

        $query->andFilterWhere(['like', 'name', $this->name])
              ->andFilterWhere(['like', 'tooltypes.name', $this->tooltype_id])
              ->andFilterWhere(['like', 'departments.name', $this->department_id])
                
                ;

        return $dataProvider;
    }
}
