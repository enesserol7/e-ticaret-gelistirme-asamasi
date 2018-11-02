<?php $settings = get_settings(); ?>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="<?php echo base_url("assets/"); ?>css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<?php echo base_url("assets/"); ?>fonts/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<?php echo base_url("assets/"); ?>css/custom.css">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description" content="<?php echo character_limiter(strip_tags($settings->meta_description), 255); ?>">
<meta name="keywords" content="<?php echo character_limiter(strip_tags($settings->meta_keywords), 255); ?>" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="author" content="enes erol">
<meta property="og:image" content="path/to/image.jpg">
<meta property="og:title" content="<?php echo $settings->company_name; ?>" />
<meta property="og:description" content="<?php echo character_limiter(strip_tags($settings->meta_description), 255); ?>" />
<meta property="og:keywords" content="<?php echo character_limiter(strip_tags($settings->meta_keywords), 255); ?>" />
<?php if($settings->logo == "default") { $favicon_image = base_url("assets") . "/assets/images/logo.png";
} else { $favicon_image = get_picture("settings_v", $settings->favicon, "32x32"); }?>
<!-- favicon -->
<link rel="shortcut icon" href="<?php echo $favicon_image; ?>" type="image/x-icon">
<?php echo $settings->analytics; ?>
<?php echo $settings->metrica; ?>
<!-- Live Support -->
<?php echo $settings->live_support; ?>