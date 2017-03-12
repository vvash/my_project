<?php echo $header; ?>
<div class="container">
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
  <div class="row">
			<div class="col-md-offset-3 col-sm-12 col-md-9 col-lg-9 ">
				<?php echo $content_top; ?>
			</div>

</div>

</div>
<div class="greyfon main">
	<div class="container">
	  <div class="row">
	    <div id="content" class="<?php echo $class; ?>"><?php echo $content_bottom; ?></div>
	    <?php echo $column_right; ?></div>
	</div>
</div>
<?php echo $footer; ?>