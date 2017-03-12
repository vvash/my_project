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
	      <h2><?php echo $heading_title; ?></h2>
	      <table class="table cart-goods-list2">
	        <thead>
	          <tr>
	            <td class="text-left" colspan="2"><?php echo $text_order_detail; ?></td>
	          </tr>
	        </thead>
	        <tbody>
	          <tr>
	            <td class="text-left" style="width: 50%;"><?php if ($invoice_no) { ?>
	              <b><?php echo $text_invoice_no; ?></b> <?php echo $invoice_no; ?><br />
	              <?php } ?>
	              <b><?php echo $text_order_id; ?></b> #<?php echo $order_id; ?><br />
	              <b><?php echo $text_date_added; ?></b> <?php echo $date_added; ?></td>
	            <td class="text-left"><?php if ($payment_method) { ?>
	              <b><?php echo $text_payment_method; ?></b> <?php echo $payment_method; ?><br />
	              <?php } ?>
	              <?php if ($shipping_method) { ?>
	              <b><?php echo $text_shipping_method; ?></b> <?php echo $shipping_method; ?>
	              <?php } ?></td>
	          </tr>
	        </tbody>
	      </table>
	      <table class="table cart-goods-list2">
	        <thead>
	          <tr>
	            <td class="text-left" style="width: 50%;"><?php echo $text_payment_address; ?></td>
	            <?php if ($shipping_address) { ?>
	            <td class="text-left"><?php echo $text_shipping_address; ?></td>
	            <?php } ?>
	          </tr>
	        </thead>
	        <tbody>
	          <tr>
	            <td class="text-left"><?php echo $payment_address; ?></td>
	            <?php if ($shipping_address) { ?>
	            <td class="text-left"><?php echo $shipping_address; ?></td>
	            <?php } ?>
	          </tr>
	        </tbody>
	      </table>
	      <div class="table-responsive">
	        <table class="table cart-goods-list2">
	          <thead>
	            <tr>
	              <td class="text-left"><?php echo $column_name; ?></td>
	              <td class="text-left"><?php echo $column_model; ?></td>
	              <td class="text-right"><?php echo $column_quantity; ?></td>
	              <td class="text-right"><?php echo $column_price; ?></td>
	              <td class="text-right"><?php echo $column_total; ?></td>
	              <?php if ($products) { ?>
	              <td style="width: 20px;"></td>
	              <?php } ?>
	            </tr>
	          </thead>
	          <tbody>
	            <?php foreach ($products as $product) { ?>
	            <tr>
	              <td class="text-left"><?php echo $product['name']; ?>
	                <?php foreach ($product['option'] as $option) { ?>
	                <br />
	                &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
	                <?php } ?></td>
	              <td class="text-left"><?php echo $product['model']; ?></td>
	              <td class="text-right"><?php echo $product['quantity']; ?></td>
	              <td class="text-right"><?php echo $product['price']; ?></td>
	              <td class="text-right"><?php echo $product['total']; ?></td>
	              <td class="text-right" style="white-space: nowrap;"><?php if ($product['reorder']) { ?>
	                <a href="<?php echo $product['reorder']; ?>" data-toggle="tooltip" title="<?php echo $button_reorder; ?>" class="btn btn-primary"><i class="fa fa-shopping-cart"></i></a>
	                <?php } ?>
	                <a href="<?php echo $product['return']; ?>" data-toggle="tooltip" title="<?php echo $button_return; ?>" class="btn btn-danger"><i class="fa fa-reply"></i></a></td>
	            </tr>
	            <?php } ?>
	            <?php foreach ($vouchers as $voucher) { ?>
	            <tr>
	              <td class="text-left"><?php echo $voucher['description']; ?></td>
	              <td class="text-left"></td>
	              <td class="text-right">1</td>
	              <td class="text-right"><?php echo $voucher['amount']; ?></td>
	              <td class="text-right"><?php echo $voucher['amount']; ?></td>
	              <?php if ($products) { ?>
	              <td></td>
	              <?php } ?>
	            </tr>
	            <?php } ?>
	          </tbody>
	          <tfoot>
	            <?php foreach ($totals as $total) { ?>
	            <tr>
	              <td colspan="3"></td>
	              <td class="text-right"><b><?php echo $total['title']; ?></b></td>
	              <td class="text-right"><?php echo $total['text']; ?></td>
	              <?php if ($products) { ?>
	              <td></td>
	              <?php } ?>
	            </tr>
	            <?php } ?>
	          </tfoot>
	        </table>
	      </div>
	      <?php if ($comment) { ?>
	      <table class="table cart-goods-list2">
	        <thead>
	          <tr>
	            <td class="text-left"><?php echo $text_comment; ?></td>
	          </tr>
	        </thead>
	        <tbody>
	          <tr>
	            <td class="text-left"><?php echo $comment; ?></td>
	          </tr>
	        </tbody>
	      </table>
	      <?php } ?>
	      <?php if ($histories) { ?>
	      <h3><?php echo $text_history; ?></h3>
	      <table class="table cart-goods-list2">
	        <thead>
	          <tr>
	            <td class="text-left"><?php echo $column_date_added; ?></td>
	            <td class="text-left"><?php echo $column_status; ?></td>
	            <td class="text-left"><?php echo $column_comment; ?></td>
	          </tr>
	        </thead>
	        <tbody>
	          <?php foreach ($histories as $history) { ?>
	          <tr>
	            <td class="text-left"><?php echo $history['date_added']; ?></td>
	            <td class="text-left"><?php echo $history['status']; ?></td>
	            <td class="text-left"><?php echo $history['comment']; ?></td>
	          </tr>
	          <?php } ?>
	        </tbody>
	      </table>
	      <?php } ?>
	      <div class="buttons clearfix">
	        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
	      </div>
	      <?php echo $content_bottom; ?></div>
	    <?php echo $column_right; ?></div>
	</div>
</div>
<?php echo $footer; ?>