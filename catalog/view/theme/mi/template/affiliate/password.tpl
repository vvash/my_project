<?php echo $header; ?>
<div class="greyfon in">
	<div class="container">
	  <ul class="breadcrumb" >
		<?php
		$breadcount =count($breadcrumbs)-1;
		foreach ($breadcrumbs as $iterator => $breadcrumb) {
		if ($iterator != $breadcount) {
		echo '<li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="'.$breadcrumb['href'].'" itemprop="url"><span itemprop="title">'.$breadcrumb['text'].'</span></a></li>';

		} else {
		echo '<li itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="end"><span itemprop="title">'.$breadcrumb['text'].'</span></li>';
		}
		} ?>
    	</ul>
	</div>
</div>
<div class="container">
	<?php echo $content_top; ?>
</div>
<div class="greyfon main">
	<div class="container">
	  <div class="row"><?php echo $column_left; ?>
	    <?php if ($column_left && $column_right) { ?>
	    <?php $class = 'col-sm-6'; ?>
	    <?php } elseif ($column_left || $column_right) { ?>
	    <?php $class = 'col-sm-9'; ?>
	    <?php } else { ?>
	    <?php $class = 'col-sm-12'; ?>
	    <?php } ?>
	    <div id="content" class="<?php echo $class; ?>">
	      <h1><?php echo $heading_title; ?></h1>
	      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
	        <fieldset>
	          <legend><?php echo $text_password; ?></legend>
	          <div class="form-group required">
	            <label class="col-sm-2 control-label" for="input-password"><?php echo $entry_password; ?></label>
	            <div class="col-sm-10">
	              <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
	              <?php if ($error_password) { ?>
	              <div class="text-danger"><?php echo $error_password; ?></div>
	              <?php } ?>
	            </div>
	          </div>
	          <div class="form-group required">
	            <label class="col-sm-2 control-label" for="input-confirm"><?php echo $entry_confirm; ?></label>
	            <div class="col-sm-10">
	              <input type="password" name="confirm" value="<?php echo $confirm; ?>" placeholder="<?php echo $entry_confirm; ?>" id="input-confirm" class="form-control" />
	              <?php if ($error_confirm) { ?>
	              <div class="text-danger"><?php echo $error_confirm; ?></div>
	              <?php } ?>
	            </div>
	          </div>
	        </fieldset>
	        <div class="buttons clearfix">
	          <div class="pull-left"><a href="<?php echo $back; ?>" class="btn btn-default"><?php echo $button_back; ?></a></div>
	          <div class="pull-right">
	            <input type="submit" value="<?php echo $button_continue; ?>" class="btn btn-primary" />
	          </div>
	        </div>
	      </form>
	      <?php echo $content_bottom; ?></div>
	    <?php echo $column_right; ?></div>
	</div>
</div>
<?php echo $footer; ?>