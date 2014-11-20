<div class="product_hit"> <!--col-lg-3 col-md-3 col-sm-6 col-xs-12">-->
<div class="module-title-green"><?php echo $heading_title; ?></div>


<div class="row product-layout">
  <?php foreach ($products as $product) { ?>

    <div class="product-thumb transition">
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption">
        <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
        <p><?php echo $product['description']; ?></p>
        <?php if ($product['rating']) { ?>
        <div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
        <?php } ?>

          <?php if ($product['price']) { ?>
          <p class="price">

              <?php if (!$product['special']) { ?>
              <?php if ($product['tax'] == $product['price'] || $product['tax'] =="0" ) { ?>
              <?php echo $product['price']; ?>
          <div class="delivery"> </div>
          <?php } else { ?>
          <?php echo $product['price']; ?>
          <div class="delivery_pay">  </div>
          <?php $cur = strripos($product['price'], '€');
                      if ( $cur == true ){ ?>
          :<span class="price-delivery"><?php echo substr($product['price'],0, -1) - substr($product['tax'],0, -1); echo '€'; ?></span>
          <?php } else { ?>
          :<span class="price-delivery"><?php echo substr($product['price'],0, -1) - substr($product['tax'],0, -1); echo substr($product['price'], -1); ?></span>
          <?php } ?>
          <?php } ?>

          <?php } else { ?>

          <span class="price-new">
             <?php echo $product['tax']; ?></span> <span class="price-old"><?php echo substr($product['price'],0, -1)-(substr($product['special'],0, -1) - substr($product['tax'],0, -1)); ?></span>
          <?php if ($product['tax'] == $product['special'] || $product['tax'] =="0" ) { ?>
          <?php echo $product['special']; ?>
          <div class="delivery"> </div>
          <?php } else { ?>
          <div class="delivery_pay">  </div>
          <?php $cur = strripos($product['special'], '€');
                            if ( $cur == true ){ ?>
          :<span class="price-delivery"><?php echo substr($product['special'],0, -1) - substr($product['tax'],0, -1); echo '€'; ?></span>
          <?php } else { ?>
          :<span class="price-delivery"><?php echo substr($product['special'],0, -1) - substr($product['tax'],0, -1); echo substr($product['price'], -1); ?></span>
          <?php } ?>
          <?php } ?>
          <?php } ?>

          <?php if ($product['tax']) { ?>
          <span class="price-tax"><?php //echo $product['tax']; ?></span>
          <?php } ?>
          </p>
          <?php } ?>



      </div>
      <div class="button-group">
        <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
      </div>

    </div>
  </div>
  <?php } ?>
</div>
