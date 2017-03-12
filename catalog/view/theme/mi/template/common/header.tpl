
<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

<link href="catalog/view/theme/mi/stylesheet/stylesheet.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<nav id="top">
  <div class="container">
	<div class="row">
		<div class="col-xs-12 col-sm-3">
			<div id="logo">
			          <?php if ($logo) { ?>
			          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive h30" /></a>
			          <?php } else { ?>
			          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
			          <?php } ?>
			</div>
		</div>
		<div class="col-xs-12 col-sm-9">
			<div class="pull-left pt6 btn-link"><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span><?php echo $telephone; ?></span></div>
				<div class="pull-right">
					<?php echo $cart; ?>
				</div>
			<div id="top-links" class="nav pull-right">
				<?php echo $currency; ?>
				<?php echo $language; ?>
			      <ul class="list-inline pull-right">
			        
			        <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
			          <ul class="dropdown-menu dropdown-menu-right">
			            <?php if ($logged) { ?>
			            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
			            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
			            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
			            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
			            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
			            <?php } else { ?>
			            <li><a href="<?php echo $register; ?>"><i class="fa fa-user-plus"></i> <?php echo $text_register; ?></a></li>
			            <li><a href="<?php echo $login; ?>"><i class="fa fa-sign-in"></i> <?php echo $text_login; ?></a></li>
			            <?php } ?>
				<li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <?php echo $text_wishlist; ?></a></li>
				<li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <?php echo $text_shopping_cart; ?></a></li>
				<li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <?php echo $text_checkout; ?></a></li>
			          </ul>
			        </li>
			      </ul>
				
			    </div>
		</div>
	</div>

  </div>
</nav>
<header>
  <div class="container">
    <div class="row">
      <div class="col-sm-12 col-md-3 col-lg-3 catmenu">
			<?php if ($categories) { ?>
				  <nav id="menu" class="btn-group btn-block">
					<div class="navbar-header"><span id="category"></span>
					      <button type="button" class="btn btn-primary" data-toggle="collapse" data-target=".navbar-ex1-cat"><i class="fa fa-bars"></i> Категории</button>
					    </div>
				    <div class="collapse navbar-collapse navbar-ex1-cat">
				      <ul class="nav navbar-nav">
				        <?php foreach ($categories as $category) { ?>
				        <?php if ($category['children']) { ?>
				        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle"><?php echo $category['name']; ?></a>
						<span class="ochow-menu-item-toggle ochow-close visible-xs visible-sm">
					            <i class="fa fa-plus"></i>
					            <i class="fa fa-minus"></i>
					          </span>
					          <span class="ochow-menu-item-arrow hidden-xs hidden-sm">
					            <i class="fa fa-angle-right arrow"></i>
					          </span>
				          <div class="dropdown-menu child-box">

				            <div class="dropdown-inner">
				              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
				              <ul class="list-unstyled">
				                <?php foreach ($children as $child) { ?>
				                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
				                <?php } ?>
				              </ul>
				              <?php } ?>
				            </div>
				            </div>
				        </li>
				        <?php } else { ?>
				        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
				        <?php } ?>
				        <?php } ?>
				      </ul>
				    </div>
				  </nav>

			<?php } ?>


     </div>
	<div class="col-sm-12 col-md-6 col-lg-6 upmenu"><div class="upmenu"></div></div>

      <div class="col-sm-12 col-md-3 col-lg-3 "><?php echo $search; ?></div>
    </div>
  </div>
</header>

