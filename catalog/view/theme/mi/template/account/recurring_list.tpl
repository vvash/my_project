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
	      <?php if ($recurrings) { ?>
	      <div class="table-responsive">
	        <table class="table table-bordered table-hover">
	          <thead>
	            <tr>
	              <td class="text-left"><?php echo $column_recurring_id; ?></td>
	              <td class="text-left"><?php echo $column_date_added; ?></td>
	              <td class="text-left"><?php echo $column_status; ?></td>
	              <td class="text-left"><?php echo $column_product; ?></td>
	              <td class="text-right"><?php echo $column_action; ?></td>
	            </tr>
	          </thead>
	          <tbody>
	            <?php foreach ($recurrings as $recurring) { ?>
	              <tr>
	                <td class="text-left">#<?php echo $recurring['id']; ?></td>
	                <td class="text-left"><?php echo $recurring['date_added']; ?></td>
	                <td class="text-left"><?php echo $status_types[$recurring['status']]; ?></td>
	                <td class="text-left"><?php echo $recurring['name']; ?></td>
	                <td class="text-right"><a href="<?php echo $recurring['href']; ?>" class="btn btn-info"><?php echo $button_view; ?></a></td>
	              </tr>
	            <?php } ?>
	          </tbody>
	        </table>
	      </div>
	      <div class="text-right"><?php echo $pagination; ?></div>
	      <?php } else { ?>
	      <p><?php echo $text_empty; ?></p>
	      <?php } ?>
	      <div class="buttons clearfix">
	        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
	      </div>
	      <?php echo $content_bottom; ?></div>
	    <?php echo $column_right; ?></div>
	</div>
</div>
<?php echo $footer; ?>