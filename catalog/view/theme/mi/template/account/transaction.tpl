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
	      <p><?php echo $text_total; ?> <b><?php echo $total; ?></b>.</p>
	      <div class="table-responsive">
	        <table class="table cart-goods-list2">
	          <thead>
	            <tr>
	              <td class="text-left"><?php echo $column_date_added; ?></td>
	              <td class="text-left"><?php echo $column_description; ?></td>
	              <td class="text-right"><?php echo $column_amount; ?></td>
	            </tr>
	          </thead>
	          <tbody>
	            <?php if ($transactions) { ?>
	            <?php foreach ($transactions  as $transaction) { ?>
	            <tr>
	              <td class="text-left"><?php echo $transaction['date_added']; ?></td>
	              <td class="text-left"><?php echo $transaction['description']; ?></td>
	              <td class="text-right"><?php echo $transaction['amount']; ?></td>
	            </tr>
	            <?php } ?>
	            <?php } else { ?>
	            <tr>
	              <td class="text-center" colspan="5"><?php echo $text_empty; ?></td>
	            </tr>
	            <?php } ?>
	          </tbody>
	        </table>
	      </div>
	      <div class="row">
	        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
	        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
	      </div>
	      <div class="buttons clearfix">
	        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
	      </div>
	      <?php echo $content_bottom; ?></div>
	    <?php echo $column_right; ?></div>
	</div>
</div>
<?php echo $footer; ?>