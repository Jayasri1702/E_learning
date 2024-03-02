<!DOCTYPE html>
<html>
<head>
<title>PHP Razorpay Payment Gateway Integration Example</title>

</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> 
<style>
.card-product .img-wrap {
border-radius: 3px 3px 0 0;
overflow: hidden;
position: relative;
height: 220px;
text-align: center;
}
.card-product .img-wrap img {
max-height: 100%;
max-width: 100%;
object-fit: cover;
}
.card-product .info-wrap {
overflow: hidden;
padding: 15px;
border-top: 1px solid #eee;
}
.card-product .bottom-wrap {
padding: 15px;
border-top: 1px solid #eee;
}
.label-rating { margin-right:10px;
color: #333;
display: inline-block;
vertical-align: middle;
}
.card-product .price-old {
color: #999;
}
</style>
<body>




<h1>Merchant Check Out Page</h1>
	<pre>
	</pre>
    <form><!--  method="post" action="pgRedirect.php"> -->
		<table border="1">
			<tbody>
				<tr>
					<th>S.No</th>
					<th>Label</th>
					<th>Value</th>
				</tr>
				<tr>
					<td>1</td>
					<td><label>ORDER_ID::*</label></td>
					<td><input id="ORDER_ID" tabindex="1" maxlength="20" size="20"
						name="ORDER_ID" autocomplete="off"
						value="<?php echo  "ORDS" . rand(10000,99999999)?>">
					</td>
				</tr>
				<tr>
					<td>2</td>
					<td><label>CUSTID ::*</label></td>
					<td><input id="CUST_ID" tabindex="2" maxlength="12" size="12" name="CUST_ID" autocomplete="off" value="<?php echo  "CUST" . rand(1001,9999)?>"></td>
				</tr>
				<tr>
					<td>3</td>
					<td><label>INDUSTRY_TYPE_ID ::*</label></td>
					<td><input id="INDUSTRY_TYPE_ID" tabindex="4" maxlength="12" size="12" name="INDUSTRY_TYPE_ID" autocomplete="off" value="Retail"></td>
				</tr>
				<tr>
					<td>4</td>
					<td><label>Channel ::*</label></td>
					<td><input id="CHANNEL_ID" tabindex="4" maxlength="12"
						size="12" name="CHANNEL_ID" autocomplete="off" value="WEB">
					</td>
				</tr>
				<tr>
					<td>5</td>
					<td><label>txnAmount*</label></td>
					<td><input title="TXN_AMOUNT" tabindex="10"
						type="text" name="TXN_AMOUNT"
						value="1">
					</td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td><a href="javascript:void(0)" class="btn btn-sm btn-primary float-right buy_now" data-amount="1000" data-id="1">Pay Now</a> </td>
				</tr>
			</tbody>
		</table>
		
	</form>











<!-- <div class="container">
<br><br><br>
<div class="row">
<div class="col-md-4">
<figure class="card card-product">
<div class="img-wrap"><img src="//www.tutsmake.com/wp-content/uploads/2019/03/c05917807.png"></div>
<figcaption class="info-wrap">
<h4 class="title">Mouse</h4>
<p class="desc">Some small description goes here</p>
<div class="rating-wrap">
<div class="label-rating">132 reviews</div>
<div class="label-rating">154 orders </div>
</div> 
</figcaption>
<div class="bottom-wrap">
<a href="javascript:void(0)" class="btn btn-sm btn-primary float-right buy_now" data-amount="1000" data-id="1">Order Now</a> 
<div class="price-wrap h5">
<span class="price-new">₹1000</span> <del class="price-old">₹1200</del>
</div> 
</div> 
</figure>
</div> 
<div class="col-md-4">
<figure class="card card-product">
<div class="img-wrap"><img src="//www.tutsmake.com/wp-content/uploads/2019/03/vvjghg.png"> </div>
<figcaption class="info-wrap">
<h4 class="title">Sony Watch</h4>
<p class="desc">Some small description goes here</p>
<div class="rating-wrap">
<div class="label-rating">132 reviews</div>
<div class="label-rating">154 orders </div>
</div> 
</figcaption>
<div class="bottom-wrap">
<a href="javascript:void(0)" class="btn btn-sm btn-primary float-right buy_now" data-amount="1280" data-id="2">Order Now</a> 
<div class="price-wrap h5">
<span class="price-new">₹1280</span> <del class="price-old">₹1400</del>
</div> 
</div> 
</figure>
</div> 
<div class="col-md-4">
<figure class="card card-product">
<div class="img-wrap"><img src="//www.tutsmake.com/wp-content/uploads/2019/03/jhgjhgjg.jpg"></div>
<figcaption class="info-wrap">
<h4 class="title">Mobile</h4>
<p class="desc">Some small description goes here</p>
<div class="rating-wrap">
<div class="label-rating">132 reviews</div>
<div class="label-rating">154 orders </div>
</div> 
</figcaption>
<div class="bottom-wrap">
<a href="javascript:void(0)" class="btn btn-sm btn-primary float-right buy_now" data-amount="1280" data-id="3">Order Now</a> 
<div class="price-wrap h5">
<span class="price-new">₹1500</span> <del class="price-old">₹1980</del>
</div> 
</div> 
</figure>
</div> 
</div> 
</div>  -->

<?php
if(@$_GET['p']== 'pay') {
$eid=@$_GET['eid'];
}
?>

<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<script>
$('body').on('click', '.buy_now', function(e){
var totalAmount = $(this).attr("data-amount");
var product_id =  $(this).attr("data-id");
var abc = "<?php echo "$eid"?>";
var options = {
"key": "rzp_test_GgUSxsbcZG3bCw",
"amount": (1*100), 
"name": "Learnsmasher",
"description": "Payment",
"image": "Examinate.png",
"handler": function (response){
$.ajax({
url: 'payment-proccess.php?p=pay&eid='+abc,
type: 'post',
dataType: 'json',
data: {
razorpay_payment_id: response.razorpay_payment_id , totalAmount : totalAmount ,product_id : product_id,
}, 
success: function (msg,valid) {
var abc = "<?php echo "$eid"?>";
window.location.href = "payment-success.php?p=pay&eid="+abc;
}
});
},
"theme": {
"color": "#528FF0"
}
};
var rzp1 = new Razorpay(options);
rzp1.open();
e.preventDefault();
});
</script>


</body>
</html>