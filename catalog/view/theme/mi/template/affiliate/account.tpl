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
	  <div class="row"><?php echo $column_left; ?>
	    <?php if ($column_left && $column_right) { ?>
	    <?php $class = 'col-sm-6'; ?>
	    <?php } elseif ($column_left || $column_right) { ?>
	    <?php $class = 'col-sm-9'; ?>
	    <?php } else { ?>
	    <?php $class = 'col-sm-12'; ?>
	    <?php } ?>
	    <div id="content" class="<?php echo $class; ?>">
	      <h2><?php echo $text_my_account; ?></h2>
	      <ul class="list-unstyled">
	        <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
	        <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
	        <li><a href="<?php echo $payment; ?>"><?php echo $text_payment; ?></a></li>
	      </ul>
	      <h2><?php echo $text_my_tracking; ?></h2>
	      <ul class="list-unstyled">
	        <li><a href="<?php echo $tracking; ?>"><?php echo $text_tracking; ?></a></li>
	      </ul>
	      <h2><?php echo $text_my_transactions; ?></h2>
	      <ul class="list-unstyled">
	        <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
	      </ul>
	      <?php echo $content_bottom; ?></div>
	    <?php echo $column_right; ?></div>
	</div>
</div>
<?php echo $footer; ?>