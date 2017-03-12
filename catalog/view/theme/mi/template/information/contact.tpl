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
	<?php if ($geocode) { ?>
		<div class="map-geo">
			<div></div>
		              <?php echo html_entity_decode($geocode, ENT_QUOTES, 'UTF-8'); ?>
		</div>
		<script type="text/javascript">
			$('.map-geo').click(function () {
			    $('.map-geo iframe').css("pointer-events", "auto");
			});
		</script>
	<?php } ?>
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

		<div class="row">
			<div class="col-sm-6">
				<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
				        <fieldset>
				          <h3><?php echo $text_contact; ?></h3>
				          <div class="form-group required">
				            <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
				            <div class="col-sm-10">
				              <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" />
				              <?php if ($error_name) { ?>
				              <div class="text-danger"><?php echo $error_name; ?></div>
				              <?php } ?>
				            </div>
				          </div>
				          <div class="form-group required">
				            <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
				            <div class="col-sm-10">
				              <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control" />
				              <?php if ($error_email) { ?>
				              <div class="text-danger"><?php echo $error_email; ?></div>
				              <?php } ?>
				            </div>
				          </div>
				          <div class="form-group required">
				            <label class="col-sm-2 control-label" for="input-enquiry"><?php echo $entry_enquiry; ?></label>
				            <div class="col-sm-10">
				              <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control"><?php echo $enquiry; ?></textarea>
				              <?php if ($error_enquiry) { ?>
				              <div class="text-danger"><?php echo $error_enquiry; ?></div>
				              <?php } ?>
				            </div>
				          </div>
				          <?php echo $captcha; ?>
				        </fieldset>
				        <div class="buttons">
				          <div class="pull-right">
				            <input class="btn btn-primary" type="submit" value="<?php echo $button_submit; ?>" />
				          </div>
				        </div>
				      </form>
			</div>
			<div class="col-sm-6">
				<h3><?php echo $text_location; ?></h3>
				<div class="panel panel-default product-thumb">
				        <div class="panel-body">
				          <div class="row">
				            <?php if ($image) { ?>
				            <div class="col-sm-12"><img src="<?php echo $image; ?>" alt="<?php echo $store; ?>" title="<?php echo $store; ?>" class="img-thumbnail" /></div>
				            <?php } ?>
				            <div class="col-sm-4"><strong><?php echo $store; ?></strong><br />
				              <address>
				              <?php echo $address; ?>
				              </address>

				            </div>
				            <div class="col-sm-4"><strong><?php echo $text_telephone; ?></strong><br>
				              <?php echo $telephone; ?><br />
				              <br />
				              <?php if ($fax) { ?>
				              <strong><?php echo $text_fax; ?></strong><br>
				              <?php echo $fax; ?>
				              <?php } ?>
				            </div>
				            <div class="col-sm-4">
				              <?php if ($open) { ?>
				              <strong><?php echo $text_open; ?></strong><br />
				              <?php echo $open; ?><br />
				              <br />
				              <?php } ?>
				              <?php if ($comment) { ?>
				              <strong><?php echo $text_comment; ?></strong><br />
				              <?php echo $comment; ?>
				              <?php } ?>
				            </div>
				          </div>
				        </div>
				      </div>
				      <?php if ($locations) { ?>
				      <h3><?php echo $text_store; ?></h3>
				      <div class="panel-group" id="accordion">
				        <?php foreach ($locations as $location) { ?>
				        <div class="panel panel-default">
				          <div class="panel-heading">
				            <h4 class="panel-title"><a href="#collapse-location<?php echo $location['location_id']; ?>" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion"><?php echo $location['name']; ?> <i class="fa fa-caret-down"></i></a></h4>
				          </div>
				          <div class="panel-collapse collapse" id="collapse-location<?php echo $location['location_id']; ?>">
				            <div class="panel-body">
				              <div class="row">
				                <?php if ($location['image']) { ?>
				                <div class="col-sm-3"><img src="<?php echo $location['image']; ?>" alt="<?php echo $location['name']; ?>" title="<?php echo $location['name']; ?>" class="img-thumbnail" /></div>
				                <?php } ?>
				                <div class="col-sm-3"><strong><?php echo $location['name']; ?></strong><br />
				                  <address>
				                  <?php echo $location['address']; ?>
				                  </address>
				                  <?php if ($location['geocode']) { ?>
				                  <a href="https://maps.google.com/maps?q=<?php echo urlencode($location['geocode']); ?>&hl=<?php echo $geocode_hl; ?>&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> <?php echo $button_map; ?></a>
				                  <?php } ?>
				                </div>
				                <div class="col-sm-3"> <strong><?php echo $text_telephone; ?></strong><br>
				                  <?php echo $location['telephone']; ?><br />
				                  <br />
				                  <?php if ($location['fax']) { ?>
				                  <strong><?php echo $text_fax; ?></strong><br>
				                  <?php echo $location['fax']; ?>
				                  <?php } ?>
				                </div>
				                <div class="col-sm-3">
				                  <?php if ($location['open']) { ?>
				                  <strong><?php echo $text_open; ?></strong><br />
				                  <?php echo $location['open']; ?><br />
				                  <br />
				                  <?php } ?>
				                  <?php if ($location['comment']) { ?>
				                  <strong><?php echo $text_comment; ?></strong><br />
				                  <?php echo $location['comment']; ?>
				                  <?php } ?>
				                </div>
				              </div>
				            </div>
				          </div>
				        </div>
				        <?php } ?>
				      </div>
				      <?php } ?>
			</div>
		</div>


	      
	      
	      <?php echo $content_bottom; ?></div>
	    <?php echo $column_right; ?></div>
	</div>
</div>
<?php echo $footer; ?>