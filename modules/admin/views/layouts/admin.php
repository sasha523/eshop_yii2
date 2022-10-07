<?php

/** @var yii\web\View $this */
/** @var string $content */

use app\assets\AppAsset;
use app\assets\ltAppAsset;
use app\widgets\Alert;
use yii\bootstrap\Breadcrumbs;
use yii\bootstrap\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\bootstrap\Model;

AppAsset::register($this);
ltAppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>" >
<head>
<meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" charset="utf-8"></script>
    <?php $this->registerCsrfMetaTags() ?>
    <title>Админка | <?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>

    <?php 
 $this->registerJsFile('js/html5shiv.js',['position' => \yii\web\View::POS_HEAD, 'condition' => 'lte IE9']);
 $this->registerJsFile('js/respond.min.js', ['position' => \yii\web\View::POS_HEAD ,'condition' => 'lte IE9']);
 $this->registerCssFile("@web/css/admin.css");
 $this->registerJsFile("@web/js/admin.js");
?>
    
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
<?php $this->beginBody() ?>
	



<input type="checkbox" id="check">
    <!--header area start-->
    <header>
      <label for="check">
        <i class="fas fa-bars" id="sidebar_btn"></i>
      </label>
      <div class="left_area">
     <?= Html::img("@web/images/admin/icon-32.png{$product->img}",['alt' => 'Dior'])?>
        <p  class="text-logotip">Dior</p>
        
      </div>
      
     
    </header>
    <!--header area end-->
    <!--mobile navigation bar start-->
    <div class="mobile_nav">
      <div class="nav_bar">
        <i class="fa fa-bars nav_btn"></i>
      </div>
      <div class="mobile_nav_items">
        <a href="<?= \yii\helpers\Url::to(['/admin'])?>"><i class="fas fa-desktop"></i><span>Home</span></a>
        <a href="<?= \yii\helpers\Url::to(['category/index'])?>"><i class="fas fa-th"></i><span>Список категорий</span></a>
        <a href="<?= \yii\helpers\Url::to(['category/create'])?>"><i class="fa fa-pencil fa-fw"></i><span>Добавить категорию</span></a>
        <a href="<?= \yii\helpers\Url::to(['product/index'])?>"><i class="fas fa-th"></i><span>Список товаров</span></a>
        <a href="<?= \yii\helpers\Url::to(['product/create'])?>"><i class="fa fa-pencil fa-fw"></i><span>Добавить товар</span></a>
        <a href="<?= \yii\helpers\Url::to(['page/index'])?>"><i class=" 	fa fa-edit"></i><span>Страницы</span></a>
        <a href="<?= \yii\helpers\Url::home()?>"><i class="fa fa-globe"></i><span>Перейти на сайт</span></a>
        <?php if(!Yii::$app->user->isGuest): ?>
        <a href="<?= \yii\helpers\Url::to(['/site/logout'])?>"><i class="fas fa-sliders-h"></i><span><?= Yii::$app->user->identity['username']?> (Выход)</span></a>
   <?php endif;?>   
</div>
    </div>
    <!--mobile navigation bar end-->
    <!--sidebar start-->
    <div class="sidebar">

      <a href="<?= \yii\helpers\Url::to(['/admin'])?>"><i class="fas fa-desktop"></i><span>Home</span></a>
      <a href="<?= \yii\helpers\Url::to(['category/index'])?>"><i class="fas fa-th"></i><span>Список категорий</span></a>
      <a href="<?= \yii\helpers\Url::to(['category/create'])?>"><i class="fa fa-pencil fa-fw"></i><span>Добавить категорию</span></a>
      <a href="<?= \yii\helpers\Url::to(['product/index'])?>"><i class="fas fa-th"></i><span>Список товаров</span></a>
      <a href="<?= \yii\helpers\Url::to(['product/create'])?>"><i class="fa fa-pencil fa-fw"></i><span>Добавить товар</span></a>
      <a href="<?= \yii\helpers\Url::to(['page/index'])?>"><i class=" 	fa fa-edit"></i><span>Страницы</span></a>
      <a href="<?= \yii\helpers\Url::home()?>"><i class="fa fa-globe"></i><span>Перейти на сайт</span></a>
 <?php if(!Yii::$app->user->isGuest): ?>
      <a href="<?= \yii\helpers\Url::to(['/site/logout'])?>"><i class="fa fa-sign-out"></i><span><?= Yii::$app->user->identity['username']?> (Выход)</span></a>
    <?php endif;?>
</div>
    <!--sidebar end-->

    <div class="container" style="margin-top:130px;">
	<?php if(Yii::$app->session->hasFlash('success') ): ?>
       <div class="alert alert-success alert-dismissible" role="alert">
           <button type="button" class="close" data-dismiss="alert" aria-label="Close">
               <span aria-hidden="true">&times;</span>
           </button>
           <?php echo Yii::$app->session->getFlash('success'); ?>
       </div>
    <?php endif; ?>
<?= $content ?>
</div>
	

  
    <?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>