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
  <?php if ($success) { ?>
  		<div class="alert popup__overlay">
			<div class="popup">
				<div class="alert-success  acn-notification">
					<button type="button" class="close" data-dismiss="alert">&times;</button>
				<?php echo $success; ?>
				</div>
			</div>
		</div>
  <?php } ?>
  <?php if ($error_warning) { ?>
		<div class="alert popup__overlay">
			<div class="popup">
				<div class="alert alert-warning  acn-notification">
					<button type="button" class="close" data-dismiss="alert">&times;</button>
				<i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
				</div>
			</div>
		</div>
  <?php } ?>
	  <div class="row"><?php echo $column_left; ?>
	    <?php if ($column_left && $column_right) { ?>
	    <?php $class = 'col-sm-6'; ?>
	    <?php } elseif ($column_left || $column_right) { ?>
	    <?php $class = 'col-sm-9'; ?>
	    <?php } else { ?>
	    <?php $class = 'col-sm-12'; ?>
	    <?php } ?>
	    <div id="content" class="<?php echo $class; ?>">
	      <div class="row">
	        <div class="col-sm-6">
	          <div class="well">
	            <h2><?php echo $text_new_customer; ?></h2>
	            <p><strong><?php echo $text_register; ?></strong></p>
	            <p><?php echo $text_register_account; ?></p>
	            <a href="<?php echo $register; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
	        </div>
	        <div class="col-sm-6">
	          <div class="well">
	            <h2><?php echo $text_returning_customer; ?></h2>
	            <p><strong><?php echo $text_i_am_returning_customer; ?></strong></p>
	            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
	              <div class="form-group">
	                <label class="control-label" for="input-email"><?php echo $entry_email; ?></label>
	                <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
	              </div>
	              <div class="form-group">
	                <label class="control-label" for="input-password"><?php echo $entry_password; ?></label>
	                <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
	                <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a></div>
	              <input type="submit" value="<?php echo $button_login; ?>" class="btn btn-primary" />
	              <?php if ($redirect) { ?>
	              <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
	              <?php } ?>
	            </form>
	          </div>
	        </div>
	      </div>
	      <?php echo $content_bottom; ?></div>
	    <?php echo $column_right; ?></div>
	</div>
</div>
<?php echo $footer; ?>