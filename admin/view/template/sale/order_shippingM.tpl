<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<link href="view/javascript/bootstrap/css/bootstrap.css" rel="stylesheet" media="screen" />
<script type="text/javascript" src="view/javascript/bootstrap/js/bootstrap.min.js"></script>
<link href="view/javascript/font-awesome/css/font-awesome.min.css" type="text/css" rel="stylesheet" />
<link type="text/css" href="view/stylesheet/stylesheet.css" rel="stylesheet" media="screen" />
</head>
<body>
<div class="container">
  <?php foreach ($orders as $order) { ?>
  <div style="page-break-after: always;">

    <table class="table table-bordered">
      <thead>
        <tr>
          <td style="width: 50%;"><?php echo $text_from; ?></td>

        </tr>
      </thead>
      <tbody>
        <tr>
          <td><address>
            <strong></strong><br />
            <?php echo $order['store_address']; ?>
            </address>
          </td>
        </tr>
      </tbody>
        <thead>
        <tr>
            <td style="width: 50%;"><?php echo $text_to; ?></td>

        </tr>
        </thead>
        <tbody>
        <tr>
            <td><address>
                    <?php echo $order['shipping_address']; ?>
                </address>
            </td>
        </tr>
        </tbody>
    </table>
  </div>
  <?php } ?>
</div>
</body>
</html>