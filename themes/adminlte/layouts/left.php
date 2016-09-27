<?php

use yii\bootstrap\Nav;
//use yii\bootstrap\NavBar;
use yii\helpers\Url;
use dektrium\user\models\User;
use yii\helpers\Html;
?>


<aside class="main-sidebar">
    <section class="sidebar">
        <?php if(!Yii::$app->user->isGuest){ ?> 
        <div class="pull-left image">
                <?= Html::img('avatars/' . Yii::$app->user->identity->avatar,
                        ['class' => 'img-circle', 'width' => '40px;'])
                ?>                

            </div>
        <?php } ?>
        <br>
         <?=
        Nav::widget(
                [
                    'encodeLabels' => false,
                    'options' => ['class' => 'sidebar-menu'],
                    'items' => [
                        '<li class="header"></li>',
                        Yii::$app->user->isGuest ?
                                ['label' => '<i class="glyphicon glyphicon-log-in"></i> เข้าสู่ระบบ', 'url' => ['/user/security/login']] :
                                ['label' => 'ผู้ใช้งาน (' . Yii::$app->user->identity->username . ')', 'items' => [
                                ['label' => 'ข้อมูลส่วนตัว', 'url' => ['/users/indexuser']],

                                ['label' => 'Logout', 'url' => ['/user/security/logout'], 'linkOptions' => ['data-method' => 'post']],
                            ]],
                    ],
                ]
        );
        ?>
        <hr>
        <ul class="sidebar-menu">
            <li class="treeview "> 
                <a href="#">
                    <i class="glyphicon glyphicon-cog"></i> <span>ตั้งค่าระบบ</span>
                    <i class="fa pull-right fa-angle-down"></i>
                </a>
                <ul class="treeview-menu">
                   <li><a href="<?php echo Url::to(['departments/index']); ?>"><i class="fa fa-circle text-green"></i> <span> แผนก</span> <small class="label pull-right bg-blue"></small></a> </li>
                   <li><a href="<?php echo Url::to(['tooltypes/index']); ?>"><i class="fa fa-circle text-green"></i> <span> ประเภท</span> <small class="label pull-right bg-blue"></small></a> </li> 
                   <li><a href="<?php echo Url::to(['tools/index']); ?>"><i class="fa fa-circle text-green"></i> <span> รายการ</span> <small class="label pull-right bg-blue"></small></a> </li> 
                   <li><a href="<?php echo Url::to(['engineers/index']); ?>"><i class="fa fa-circle text-green"></i> <span> ช่าง</span> <small class="label pull-right bg-blue"></small></a> </li> 
                </ul>
        </ul>
        <ul class="sidebar-menu">
            <li class="treeview active "> 
                <a href="#">
                    <i class="glyphicon glyphicon-cog"></i> <span>แจ้งซ่อม</span>
                    <i class="fa pull-right fa-angle-down"></i>
                </a>
                <ul class="treeview-menu">
                   <li><a href="<?php echo Url::to(['repairs/createuser']); ?>"><i class="fa fa-circle text-green"></i> <span> แจ้งซ่อม</span> <small class="label pull-right bg-blue"></small></a> </li>
                   <li><a href="<?php echo Url::to(['repairs/indexdep']); ?>"><i class="fa fa-circle text-green"></i> <span> รายการซ่อมของแผนก</span> <small class="label pull-right bg-blue"></small></a> </li> 
                   
                </ul>
        </ul>
        <ul class="sidebar-menu">
            <li class="treeview active "> 
                <a href="#">
                    <i class="glyphicon glyphicon-cog"></i> <span>แจ้งซ่อมAdmin</span>
                    <i class="fa pull-right fa-angle-down"></i>
                </a>
                <ul class="treeview-menu">
                   <li><a href="<?php echo Url::to(['repairs/index']); ?>"><i class="fa fa-circle text-green"></i> <span> รับซ่อม</span> <small class="label pull-right bg-blue"></small></a> </li>
                   <li><a href="<?php echo Url::to(['repairs/indexengineer']); ?>"><i class="fa fa-circle text-green"></i> <span> อนุมัติซ่อม</span> <small class="label pull-right bg-blue"></small></a> </li> 
                   <hr>
                   <li><a href="<?php echo Url::to(['repairs/report1']); ?>"><i class="fa fa-circle text-green"></i> <span> สรุปผลซ่อม</span> <small class="label pull-right bg-blue"></small></a> </li>
                   <li><a href="<?php echo Url::to(['repairs/report2']); ?>"><i class="fa fa-circle text-green"></i> <span> จำนวนซ่อมตามแผนก</span> <small class="label pull-right bg-blue"></small></a> </li> 
                </ul>
        </ul>

    </section>

</aside>
