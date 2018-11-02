<!DOCTYPE html>
<html>
<head>
	<title>Ürün Detayı <?php echo $product->title; ?> | Bidolu</title>
	<meta property="og:title" content="<?php echo $product->title; ?>" />
	<meta property="og:description" content="<?php echo character_limiter(strip_tags($product->product_desc), 255); ?>" />
	<meta property="og:keywords" content="<?php echo character_limiter(strip_tags($product->product_keyw), 255); ?>" />
	<meta property="title" content="<?php echo $product->title; ?>" />
	<meta name="description" content="<?php echo character_limiter(strip_tags($product->product_desc), 255); ?>">
	<meta name="keywords" content="<?php echo character_limiter(strip_tags($product->product_keyw), 255); ?>" />
	<?php $this->load->view("includes/head"); ?>
</head>
<body>
<?php $this->load->view("includes/top_bar"); ?>
<?php $this->load->view("includes/nav"); ?>
<?php $this->load->view("includes/mobile_search_button"); ?>
<?php $this->load->view("includes/nav_bar"); ?>
<?php $this->load->view("{$viewFolder}/content"); ?>
<?php $this->load->view("includes/footer"); ?>
<?php $this->load->view("includes/include_script"); ?>
</body>
</html>