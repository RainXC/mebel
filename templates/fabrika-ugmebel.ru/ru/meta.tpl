<!DOCTYPE html>
<html lang="ru">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

<!--    <link rel="icon" type="image/png" href="/favicon-meri.ico" />-->
<!--    <link rel="shortcut icon" type="image/png" href="/favicon-meri.ico" />-->

    <title><?=$this->getMetaTitle();?></title>
    <meta name="description" content="<?=$this->getMetaDescription();?>" />
    <meta name="keywords" content="<?=$this->getMetaKeywords();?>" />

    <link href="/templates/node_modules/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <?
    $this->getController('imploder')
        ->css()
        ->add('bootstrap-theme.css', '/css/'.$this->getCurrentDomainAlias().'/')
        ->add('theme.css', '/css/'.$this->getCurrentDomainAlias().'/')
//        ->add('jquery-ui-1.10.1.custom.min.css','/js/extensions/ui/')
        ->add('errors.css', '/admin/js/base/actions/styles/')
        ->add('loaderBlock.css', '/admin/js/base/actions/styles/')
        ->printf('compact');
    ?>
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script type="text/javascript">
        var date_format = '<?=DATE_FORMAT?>';
        var dir_https   = '<?=DIR_HTTPS?>';
        var dir_http    = '<?=DIR_HTTP?>';
        var part        = '<?//=($this->isPart($this->getPart())) ? $this->getPart() : '';?>';
        var controller  = '<?=$this->getMainController()?>';
        var action      = '<?=$this->action?>';
    </script>

    <?
    $js = $this->getController('imploder')->js();
    $js
        ->add('jquery.min.js', '/templates/node_modules/jquery/dist/')
        ->add('bootstrap.min.js', '/templates/node_modules/bootstrap/dist/js/')
//        ->add('theme.js', '/js/meriMebel/')
//        ->add('jquery.deparam.js', '/admin/js/jquery/extensions/')
        ->add('browserMsieAdapter.js', '/js/')
        ->add('pageHeightAdjuster.js', '/js/')
        ->add('jquery.htmlFromServer.js', '/admin/js/jquery/extensions/')
        ->add('jquery.autoScroll-1.0.js', '/admin/js/jquery/extensions/')
        ->add('loaderBlock.class.js', '/admin/js/base/actions/')
//        ->add('slides.min.jquery.js')
//        ->add('jquery-ui-1.10.1.custom.min.js','/js/extensions/ui/')
//        ->add('js.js')
        ->add('ajaxLoader.class.js')
        ->add('loaderLight.class.js', '/admin/js/base/actions/')
        ->add('errors.class.js','/admin/js/base/actions/')
        ->add('error.class.js','/admin/js/base/actions/')
        ->add('form.class.js','/admin/js/base/actions/')
        ->add('buttons.class.js','/admin/js/base/actions/')
        ->add('jquery.inputmask.js','/admin/js/jquery/extensions/')
        ->add('loader.class.js','/admin/js/base/actions/')
        ->add('shopcartHandler.js', '/js/shopcart/')
        ->add('shopcart.class.js', '/js/shopcart/')
        ->add('ajaxCapcha.js', '/js/feedback/')
        ->add('catalog.js', '/js/catalog/')
        ->add('shopcartBar.js', '/js/shopcart/')
        ->tagsPrint();
    ?>

    <!-- Google Tag Manager -->
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
            new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
            j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
            'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','GTM-PW4SHLK');</script>
    <!--EndGoogleTagManager -->

        <script type="text/javascript">
            var _alloka = {
                objects: {
                    'dd05d58fe04504fb': {
                        block_class: 'phone_alloka'
                    }
                },
                trackable_source_types:  ["type_in", "utm"],
                last_source: false,
                use_geo: true
            };
        </script>
        <script src="https://analytics.alloka.ru/v4/alloka.js" type="text/javascript"></script>        <script>
            function metrika(goal){
                yaCounter43501239.reachGoal(call);
            };
        </script>
</head>

<?if($this->isDeveloperDomain()):?>
<div style="position: absolute;margin: 60px 0px 0px 0px;background: red;float: left;">ТЕСТОВЫЙ ДОМЕН</div>
<? endif; ?>