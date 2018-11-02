<!DOCTYPE html>
<html>
<head>
	<title>Kullanım Koşulları | Bidolu</title>
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