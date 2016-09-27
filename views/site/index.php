<?php
use yii\helpers\Html;
use miloschuman\highcharts\Highcharts;

/* @var $this yii\web\View */

$this->title = 'Yii-Repair';
?>
<div class="site-index">

    <div class="row">
        <div class="col-lg-3 col-xs-6">
        <div class="info-box">  
            <span class="info-box-icon bg-green"><i class="fa fa-star-o"></i></span>
            <div class="info-box-content">
              <span class="info-box-text">แจ้งซ่อม</span>
              <span class="info-box-number">
                  <h3><?php echo app\models\Repairs::find()->count(); ?>
                  </h3>
              </span>
            </div><!-- /.info-box-content -->
          </div><!-- /.info-box -->
    </div>
        <div class="col-lg-3 col-xs-6">
        <div class="info-box">  
            <span class="info-box-icon bg-red"><i class="fa fa-star-o"></i></span>
            <div class="info-box-content">
              <span class="info-box-text">แจ้งซ่อม</span>
              <span class="info-box-number">
                  <h3><?php echo app\models\Repairs::find()->count(); ?>
                  </h3>
              </span>
            </div><!-- /.info-box-content -->
          </div><!-- /.info-box -->
    </div>
    <div class="col-lg-3 col-xs-6">
        <div class="info-box">  
            <span class="info-box-icon bg-blue"><i class="fa fa-comment-o"></i></span>
            <div class="info-box-content">
              <span class="info-box-text">อุปกรณ์</span>
              <span class="info-box-number">
                  <h3><?php echo app\models\Tools::find()->count(); ?>
                  </h3>
              </span>
            </div><!-- /.info-box-content -->
          </div><!-- /.info-box -->
    </div>
        <div class="col-lg-3 col-xs-6">
        <div class="info-box">  
            <span class="info-box-icon bg-yellow"><i class="fa fa-comment-o"></i></span>
            <div class="info-box-content">
              <span class="info-box-text">อุปกรณ์</span>
              <span class="info-box-number">
                  <h3><?php echo app\models\Tools::find()->count(); ?>
                  </h3>
              </span>
            </div><!-- /.info-box-content -->
          </div><!-- /.info-box -->
    </div>
   </div>
<!--    /////////////-->
    <div class="row">   
        <div class="col-md-6">     
            <div id="chart1"></div>                    
        </div>
        <div class="col-md-6">     
            <div id="chart2"></div>                    
        </div>
    </div> 
    <div style="display: none">
    <?=
        Highcharts::widget([
            'scripts' => [
                'highcharts-more', // enables supplementary chart types (gauge, arearange, columnrange, etc.)
                //'modules/exporting', // adds Exporting button/menu to chart
                'themes/grid',       // applies global 'grid' theme to all charts
                'highcharts-3d',
                'modules/drilldown'
            ]
        ]);
    ?>                  
        
    </div>

            <?php
            $sql = "SELECT r.answer,COUNT(r.id)as total FROM repairs r
                WHERE r.createDate BETWEEN '2015-10-01' and '2016-09-30'
                GROUP BY r.answer";
            $rawData = Yii::$app->db->createCommand($sql)->queryAll();
            $main_data = [];
            foreach ($rawData as $data) {
                $main_data[] = [
                    'name' => $data['answer'],
                    'y' => $data['total'] * 1,                    
                ];
            }
            $main = json_encode($main_data);
          
$this->registerJs("$(function () {

    $('#chart1').highcharts({
        chart: {
            type: 'pie'
        },
        title: {
            text: 'สรุปผลการซ่อม'
        },
        xAxis: {
            type: 'category'
        },
        

        legend: {
            enabled: true
        },

        plotOptions: {
            series: {
                borderWidth: 0,
                dataLabels: {
                    enabled: true
                }
            }
        },

        series: [
        {
            name: 'คลินิก',
            colorByPoint: true,
            data:$main
            
        }
        ],
         
    });
});", yii\web\View::POS_END);
?>       
                                
                            
<!--   //////////////-->
    <?php
            $sql = "SELECT d.`name`,COUNT(r.id)as total 
            FROM repairs r
            LEFT JOIN departments d on d.id=r.department_id
            WHERE r.createDate BETWEEN '2015-10-01' and '2016-09-30'
            GROUP BY d.id";
            $rawData = Yii::$app->db->createCommand($sql)->queryAll();
            $main_data = [];
            foreach ($rawData as $data) {
                $main_data[] = [
                    'name' => $data['name'],
                    'y' => $data['total'] * 1,                    
                ];
            }
            $main = json_encode($main_data);
          
$this->registerJs("$(function () {

    $('#chart2').highcharts({
        chart: {
            type: 'pie'
        },
        title: {
            text: 'สรุปการซ่อมตามแผนก'
        },
        xAxis: {
            type: 'category'
        },        

        legend: {
            enabled: true
        },
        plotOptions: {
            series: {
                borderWidth: 0,
                dataLabels: {
                    enabled: true
                }
            }
        },
        series: [
        {
            name: 'คลินิก',
            colorByPoint: true,
            data:$main            
        }
        ],
         
    });
});", yii\web\View::POS_END);
?>
<!--////////////-->

</div>
