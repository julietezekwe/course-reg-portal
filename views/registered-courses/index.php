<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\RegisteredCoursesSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Registered Courses';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="registered-courses-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Registered Courses', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            // 'reg_id',
            'user.user_id',
            'user.user_name',
            'fac.fac_name',
            'dept.dept_name',
            'course.course_name',
            // 'updated_at',
            // 'created_at',
            // 'status',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
