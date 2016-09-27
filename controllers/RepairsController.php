<?php

namespace app\controllers;

use Yii;
use app\models\Repairs;
use app\models\RepairsSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use app\models\Tools;
use app\models\Departments;
use yii\helpers\Json;
use yii\helpers\Url;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use kartik\widgets\DepDrop;
use dektrium\user\models\User;
use yii\data\ArrayDataProvider;
/**
 * RepairsController implements the CRUD actions for Repairs model.
 */
class RepairsController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Repairs models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new RepairsSearch(['answer'=>'รอซ่อม']);
        $searchModel->satatus = 'รับงานแล้ว';
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }
    public function actionIndexall()
    {
        $searchModel = new RepairsSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }
    public function actionIndexengineer()
    {
        $searchModel = new RepairsSearch();
        $searchModel->approve = 'รอพิจารณา';
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('indexengineer', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }
    public function actionIndexdep()
    {
        $searchModel = new RepairsSearch();
        $searchModel->department_id = Yii::$app->user->identity->depname;
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('indexdep', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Repairs model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Repairs model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Repairs();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }
    public function actionCreateuser()
    {
        $model = new Repairs();

         if ($model->load(Yii::$app->request->post())) {
             $model->createDate = date('Y-m-d');
             $model->user_id = Yii::$app->user->identity->id;
             $model->save();
            //return $this->redirect(['view', 'id' => $model->id]);
            return $this->redirect(['indexdep']);
        } else {
            return $this->render('createuser', [
                'model' => $model,
                't'=>[]
            ]);
        }
    }

    /**
     * Updates an existing Repairs model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Repairs model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Repairs model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Repairs the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Repairs::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
    public function actionGetTool(){
        $out = [];
        if (isset($_POST['depdrop_parents'])){
            $parents = $_POST['depdrop_parents'];
            if ($parents != NULL){
                $department_id = $parents[0];
                $out = $this->getTool($department_id);
                echo Json::encode(['output'=>$out, 'selected'=>'']);
                return;
            }
        }
        echo Json::encode(['output'=>'', 'selected'=>'']);
    }
    protected function getTool($id){
        $datas = Tools::find()->where(['department_id'=>$id])->all();
        return $this->MapData($datas,'id','name');
    }
    protected function MapData($datas,$fieldID,$fieldName){
        $obj = [];
        foreach ($datas as $key => $value){
            array_push($obj, ['id'=>$value->{$fieldID},'name'=>$value->{$fieldName}]);
        }
        return $obj;
    }
    
    public function actionReport1($date1 = null, $date2 = null,$answer=null,$total=null) {

        if ($date1 == null) {
            $date1 = date('Y-m-d');
            $date2 = date('Y-m-d');           
        }
        $connection = Yii::$app->db;
        $data = $connection->createCommand("
                SELECT r.answer,COUNT(r.id)as total FROM repairs r
                WHERE r.createDate BETWEEN '$date1' and '$date2'
                GROUP BY r.answer")->queryAll();
        
        
       for ($i = 0; $i < sizeof($data); $i++) {           
            $answer[] = $data[$i]['answer'];
            $total[] = $data[$i]['total']*1;
            
        }
        $dataProvider = new ArrayDataProvider([
                'allModels'=>$data, 
            ]);
        return $this->render('report1',[
                'dataProvider'=>$dataProvider,               
                'date1'=>$date1,
                'date2'=>$date2,
                'total'=>$total,  
                'answer'=>$answer
            ]);       
    }
    
    public function actionReport2($date1 = null, $date2 = null,$total=null) {

        if ($date1 == null) {
            $date1 = date('Y-m-d');
            $date2 = date('Y-m-d');           
        }
        $connection = Yii::$app->db;
        $data = $connection->createCommand("SELECT d.`name`,COUNT(r.id)as total 
            FROM repairs r
            LEFT JOIN departments d on d.id=r.department_id
            WHERE r.createDate BETWEEN '$date1' and '$date2'
            GROUP BY d.id")->queryAll();
        
        
       for ($i = 0; $i < sizeof($data); $i++) {           
            $name[] = $data[$i]['name'];
            $total[] = $data[$i]['total']*1;
            
        }
        $dataProvider = new ArrayDataProvider([
                'allModels'=>$data, 
            ]);
        return $this->render('report2',[
                'dataProvider'=>$dataProvider,               
                'date1'=>$date1,
                'date2'=>$date2,
                'total'=>$total,  
                'name'=>$name
            ]);       
    }
}
