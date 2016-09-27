<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Repairs;

/**
 * RepairsSearch represents the model behind the search form about `app\models\Repairs`.
 */
class RepairsSearch extends Repairs
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id',  'engineer_id', 'user_id'], 'integer'],
            [['approve','department_id', 'tool_id','datenotuse', 'problem', 'stage', 'startdate', 'satatus', 'dateplan', 'remark', 'answer', 'enddate', 'createDate', 'updateDate'], 'safe'],
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
        $query = Repairs::find();

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
        $dataProvider->query->joinWith('repairtool');
        $dataProvider->query->joinWith('repairdepartment');
        
        $query->andFilterWhere([
            'id' => $this->id,
            //'department_id' => $this->department_id,
            'datenotuse' => $this->datenotuse,
            //'tool_id' => $this->tool_id,
            'startdate' => $this->startdate,
            'dateplan' => $this->dateplan,
            'engineer_id' => $this->engineer_id,
            'enddate' => $this->enddate,
            'user_id' => $this->user_id,
            'createDate' => $this->createDate,
            'updateDate' => $this->updateDate,
        ]);

        $query->andFilterWhere(['like', 'problem', $this->problem])
            ->andFilterWhere(['like', 'stage', $this->stage])
            ->andFilterWhere(['like', 'satatus', $this->satatus])
            ->andFilterWhere(['like', 'remark', $this->remark])
            ->andFilterWhere(['like', 'answer', $this->answer])
            ->andFilterWhere(['like', 'approve', $this->approve])   
            ->andFilterWhere(['like', 'departments.name', $this->department_id]) 
                
            ->andFilterWhere(['like', 'tools.name', $this->tool_id])      
                ;

        return $dataProvider;
    }
}
