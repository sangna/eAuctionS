<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>E-Auction</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<!--[if IE]>
<link href="style/style-ie.css" rel="stylesheet" type="text/css" />
<![endif]-->

<script type="text/javascript">

function hintText(hText) {
	hText.value = '';
	//document.getElementById('username').value = 'Hello World';
}
</script>
</head>
<body>
<center>
  <div class="wrapper">
	
	<?php include("header/header.php"); ?>
	
    <div class="menu">
      <ul class="solidblockmenu">
        <li><a href="#">Home</a></li>
        <li><a href="#">Categories</a></li>
        <li><a href="#">User Guide</a></li>
        <li><a href="#">Reviews</a></li>
        <li><a href="#">Hot Deals</a></li>
        <li><a href="#">FAQ's</a></li>
       <li><a href="#">Sign Up</a></li>
      </ul>
      <div class="clear">
	  <div align="right"> 
	  
	    <table cellpadding="1" cellspacing="1" width="270">
	 <!--<tr> 
		<tdUsername :</td>
		<td>Password : </td>
		<td></td>
	 </tr>-->
	 
	 <tr>
		<td>
			<input type="text" size="20" name="username" id="username" value="USERNAME" style="color:#a2a2a2;font-family:times;" onfocus="hintText(this);"/>		</td>
		<td><input type="password" id="password" name="password"  value="PASSWORD" style="color:#a2a2a2;font-family:times;" onfocus="hintText(this);" size="20"/></td>
		<td>
			<input type="image" src="images/login.jpg"/>	</td>
			<td><select>
			<option value="r1">Buyer</option>
			<option value="r1">
				Seller</option>
				</select>
			<!--<input type= "checkbox"  value="buyer"/>As Buyer	</td> <td> <input type="checkbox" value="seller"/>As Seller--></td>
			<tr><td><a href="#">Create an account</a></td></tr>
	</tr>
	</table>
	  </div>
	  </div>
    </div>
  </div>
  <div class="search">
    <div class="search-text"> 
      <input type="text" size="20" />
     <!-- &nbsp;&nbsp;-->
	</div>
    <div style="float:left; margin-left:5px; margin-top:10px;">
      <input type="image" src="images/search.jpg" />
	</div>
  </div>
  <div class="hot-search">
  <div class="body-wrapper">
    <div class="body-right">
      <div class="body-right-box1">
        <div class="right-topic-title"> Favourite Items</div>
        <br />
        <div style="width:170px;padding-left:10px;"> <img src="images/mobile.jpg" style="float:left; margin-right: 0px;" alt="" />
          <div style="width:140px; text-align:right; padding-left:3px;">
            <div class="product-title"> Nokia 8800 Arte</div>
            <div class="product-price"> prices &nbsp;from &nbsp;&pound;749.99</div>
            <div class="product-compare"> <u>Compare..</u>&nbsp;<img src="images/proceed.jpg" style="padding-top: 3px;" alt="" /></div>
          </div>
        </div>
        <br />
        <div style="width:170px;padding-left:10px;padding-top:3px;"> <img src="images/mobile.jpg" style="float:left; margin-right: 0px;" alt="" />
          <div style="width:140px; text-align:right; padding-left:3px;">
            <div class="product-title"> Nokia 8800 Arte</div>
            <div class="product-price"> prices &nbsp;from &nbsp;&pound;749.99</div>
            <div class="product-compare"> <u>Compare..</u>&nbsp;<img src="images/proceed.jpg" style="padding-top: 3px;" alt="" /></div>
          </div>
        </div>
        <br />
        <div style="width:170px;padding-left:10px;padding-top:1px;"> <img src="images/mobile.jpg" style="float:left; margin-right: 0px;" alt="" />
          <div style="width:140px; text-align:right; padding-left:3px;">
            <div class="product-title"> Nokia 8800 Arte</div>
            <div class="product-price"> prices &nbsp;from &nbsp;&pound;749.99</div>
            <div class="product-compare"> <u>Compare..</u>&nbsp;<img src="images/proceed.jpg" style="padding-top: 3px;" alt="" /></div>
          </div>
        </div>
        <br />
        <div style="width:170px;padding-left:10px;padding-top:2px;"> <img src="images/mobile.jpg" style="float:left; margin-right: 0px;" alt="" />
          <div style="width:140px; text-align:right; padding-left:3px;">
            <div class="product-title"> Nokia 8800 Arte</div>
            <div class="product-price"> prices &nbsp;from &nbsp;&pound;749.99</div>
            <div class="product-compare"> <u>Compare..</u>&nbsp;<img src="images/proceed.jpg" style="padding-top: 3px;" alt="" /></div>
          </div>
        </div>
        <br />
        <div style="width:170px;padding-left:10px;padding-top:2px;"> <img src="images/mobile.jpg" style="float:left; margin-right: 0px;" alt="" />
          <div style="width:140px; text-align:right; padding-left:3px;">
            <div class="product-title"> Nokia 8800 Arte</div>
            <div class="product-price"> prices &nbsp;from &nbsp;&pound;749.99</div>
            <div class="product-compare"> <u>Compare..</u>&nbsp;<img src="images/proceed.jpg" style="padding-top: 3px;" alt="" /></div>
          </div>
        </div>
      </div>
      <div class="separator"> &nbsp;</div>
      <div class="body-right-ad1"> &nbsp;</div>
      <div class="separator"> &nbsp;</div>
      <div class="body-right-ad2"> &nbsp;</div>
      <div class="separator"> &nbsp;</div>
      <div class="body-right-ad3"> &nbsp;</div>
    </div>
    <div class="divider1"> &nbsp;</div>
    <div class="body-middle">
      <div class="body-middle-box1">
        <div class="lcd-title"> New Year Sale!<br />
          Great HDTV Deals! <br />
          <br />
          <img src="images/findout.jpg" alt="" /></div>
      </div>
      <div class="separator-middle"> &nbsp;</div>
      <div class="body-middle-box2">
        <div class="sale-title"> New Year Sale!</div>
        <div class="sale-desc"> Lorem ipsum dolor sit amet, consectetdipisicing elit, sed do eiusmod tempor incididabore et dolore magna aliqua. Ut enim ad mieniauis nostrud exercitation ullamco laboris nisiliquip ex ea. Lorem ipsum dolor sit amet, consecur adipisicing elit, sed do eiusmod tempcidi <br />
          <br />
          <img src="images/findout.jpg" alt="" /></div>
      </div>
      <div class="separator-middle"> &nbsp;</div>
      <div class="body-middle-box3">
        <div class="gallery-name" style="margin-left:15px;padding-top:7px;"> New Stuff&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Top Sellers&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hot Deals</div>
        <div style="clear:both;">
          <div class="gallery-product3"> <img src="images/ipod.jpg" alt="" />
            <div class="gallery-name">iPod Classic!</div>
            <div class="gallery-price">From &pound;129.99</div>
            <img src="images/goshop.jpg" alt="" /></div>
          <div class="gallery-product2"> <img src="images/ipod.jpg" alt="" />
            <div class="gallery-name">iPod Classic!</div>
            <div class="gallery-price">From &pound;129.99</div>
            <img src="images/goshop.jpg" /></div>
          <div class="gallery-product1"> <img src="images/ipod.jpg" alt="" />
            <div class="gallery-name">iPod Classic!</div>
            <div class="gallery-price">From &pound;129.99</div>
            <img src="images/goshop.jpg" alt="" /></div>
        </div>
      </div>
    </div>
    <div class="divider2"> &nbsp;</div>
    <div class="body-left">
      <div class="left-main-title"> Bidding Categories</div>
      <div class="left-topic-title"> Books, DVD&#8217;s &amp; Music</div>
      <div class="left-topic-desc"> CD&#8217;s, Magazine Subscriptions, 300: The Movie, &amp; more..</div>
      <div class="left-topic-title"> Books, DVD&#8217;s &amp; Music</div>
      <div class="left-topic-desc"> CD&#8217;s, Magazine Subscriptions, 300: The Movie, &amp; more..</div>
      <div class="left-topic-title" style="padding-top:25px;"> Books, DVD&#8217;s &amp; Music</div>
      <div class="left-topic-desc"> CD&#8217;s, Magazine Subscriptions, 300: The Movie, &amp; more..</div>
      <div class="left-topic-title" style="padding-top:28px;"> Books, DVD&#8217;s &amp; Music</div>
      <div class="left-topic-desc"> CD&#8217;s, Magazine Subscriptions, 300: The Movie, &amp; more..</div>
      <div class="left-topic-title" style="padding-top:30px;"> Books, DVD&#8217;s &amp; Music</div>
      <div class="left-topic-desc"> CD&#8217;s, Magazine Subscriptions, 300: The Movie, &amp; more..</div>
      <div class="left-topic-title" style="padding-top:30px;"> Books, DVD&#8217;s &amp; Music</div>
      <div class="left-topic-desc"> CD&#8217;s, Magazine Subscriptions, 300: The Movie, &amp; more..</div>
      <div class="left-topic-title" style="padding-top:30px;"> Books, DVD&#8217;s &amp; Music</div>
      <div class="left-topic-desc"> CD&#8217;s, Magazine Subscriptions, 300: The Movie, &amp; more..</div>
      <div class="left-topic-title" style="padding-top:30px;"> Books, DVD&#8217;s &amp; Music</div>
      <div class="left-topic-desc"> CD&#8217;s, Magazine Subscriptions, 300: The Movie, &amp; more..</div>
    </div>
  </div>
  <div class="separator-main"> &nbsp;</div>
	<?php include("./footer/footer.php"); ?>
</center>
</body>
</html>
