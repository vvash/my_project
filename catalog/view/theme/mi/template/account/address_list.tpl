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
	      <h2><?php echo $text_address_book; ?></h2>
	      <?php if ($addresses) { ?>
	      <table class="table table-bordered table-hover">
	        <?php foreach ($addresses as $result) { ?>
	        <tr>
	          <td class="text-left"><?php echo $result['address']; ?></td>
	          <td class="text-right"><a href="<?php echo $result['update']; ?>" class="btn btn-info"><?php echo $button_edit; ?></a> &nbsp; <a href="<?php echo $result['delete']; ?>" class="btn btn-danger"><?php echo $button_delete; ?></a></td>
	        </tr>
	        <?php } ?>
	      </table>
	      <?php } else { ?>
	      <p><?php echo $text_empty; ?></p>
	      <?php } ?>
	      <div class="buttons clearfix">
	        <div class="pull-left"><a href="<?php echo $back; ?>" class="btn btn-default"><?php echo $button_back; ?></a></div>
	        <div class="pull-right"><a href="<?php echo $add; ?>" class="btn btn-primary"><?php echo $button_new_address; ?></a></div>
	      </div>
	      <?php echo $content_bottom; ?></div>
	    <?php echo $column_right; ?></div>
	</div>
</div>
<?php echo $footer; ?>