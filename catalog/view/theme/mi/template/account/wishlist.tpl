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
	      <h2><?php echo $heading_title; ?></h2>
	      <?php if ($products) { ?>
	      <table class="table table-bordered table-hover">
	        <thead>
	          <tr>
	            <td class="text-center"><?php echo $column_image; ?></td>
	            <td class="text-left"><?php echo $column_name; ?></td>
	            <td class="text-left"><?php echo $column_model; ?></td>
	            <td class="text-right"><?php echo $column_stock; ?></td>
	            <td class="text-right"><?php echo $column_price; ?></td>
	            <td class="text-right"><?php echo $column_action; ?></td>
	          </tr>
	        </thead>
	        <tbody>
	          <?php foreach ($products as $product) { ?>
	          <tr>
	            <td class="text-center"><?php if ($product['thumb']) { ?>
	              <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
	              <?php } ?></td>
	            <td class="text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></td>
	            <td class="text-left"><?php echo $product['model']; ?></td>
	            <td class="text-right"><?php echo $product['stock']; ?></td>
	            <td class="text-right"><?php if ($product['price']) { ?>
	              <div class="price">
	                <?php if (!$product['special']) { ?>
	                <?php echo $product['price']; ?>
	                <?php } else { ?>
	                <b><?php echo $product['special']; ?></b> <s><?php echo $product['price']; ?></s>
	                <?php } ?>
	              </div>
	              <?php } ?></td>
	            <td class="text-right"><button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');" data-toggle="tooltip" title="<?php echo $button_cart; ?>" class="btn btn-primary"><i class="fa fa-shopping-cart"></i></button>
	              <a href="<?php echo $product['remove']; ?>" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-times"></i></a></td>
	          </tr>
	          <?php } ?>
	        </tbody>
	      </table>
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