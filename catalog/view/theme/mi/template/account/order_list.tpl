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
	      <?php if ($orders) { ?>
	      <div class="table-responsive">
	        <table class="table cart-goods-list">
	          <thead>
	            <tr>
	              <td class="text-right"><?php echo $column_order_id; ?></td>
	              <td class="text-left"><?php echo $column_status; ?></td>
	              <td class="text-left"><?php echo $column_date_added; ?></td>
	              <td class="text-right"><?php echo $column_product; ?></td>
	              <td class="text-left"><?php echo $column_customer; ?></td>
	              <td class="text-right"><?php echo $column_total; ?></td>
	              <td></td>
	            </tr>
	          </thead>
	          <tbody>
	            <?php foreach ($orders as $order) { ?>
	            <tr>
	              <td class="text-right">#<?php echo $order['order_id']; ?></td>
	              <td class="text-left"><?php echo $order['status']; ?></td>
	              <td class="text-left"><?php echo $order['date_added']; ?></td>
	              <td class="text-right"><?php echo $order['products']; ?></td>
	              <td class="text-left"><?php echo $order['name']; ?></td>
	              <td class="text-right"><?php echo $order['total']; ?></td>
	              <td class="text-right"><a href="<?php echo $order['href']; ?>" data-toggle="tooltip" title="<?php echo $button_view; ?>" class="btn btn-info"><i class="fa fa-eye"></i></a></td>
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