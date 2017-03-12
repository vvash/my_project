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
	      <h2><?php echo $heading_title; ?></h2>
	      <?php if ($downloads) { ?>
	      <table class="table table-bordered table-hover">
	        <thead>
	          <tr>
	            <td class="text-right"><?php echo $column_order_id; ?></td>
	            <td class="text-left"><?php echo $column_name; ?></td>
	            <td class="text-left"><?php echo $column_size; ?></td>
	            <td class="text-left"><?php echo $column_date_added; ?></td>
	            <td></td>
	          </tr>
	        </thead>
	        <tbody>
	          <?php foreach ($downloads as $download) { ?>
	          <tr>
	            <td class="text-right"><?php echo $download['order_id']; ?></td>
	            <td class="text-left"><?php echo $download['name']; ?></td>
	            <td class="text-left"><?php echo $download['size']; ?></td>
	            <td class="text-left"><?php echo $download['date_added']; ?></td>
	            <td><a href="<?php echo $download['href']; ?>" data-toggle="tooltip" title="<?php echo $button_download; ?>" class="btn btn-primary"><i class="fa fa-cloud-download"></i></a></td>
	          </tr>
	          <?php } ?>
	        </tbody>
	      </table>
	      <div class="row">
	        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
	        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
	      </div>
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