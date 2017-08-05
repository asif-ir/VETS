<form> ... </form> to your shopping cart page.

<form action="paypal_ec_redirect.php" method="POST">

    <input type="hidden" name="PAYMENTREQUEST_0_AMT" value="10.00"></input>

    <input type="hidden" name="currencyCodeType" value="INR"></input>

    <input type="hidden" name="paymentType" value="Sale"></input>

    <input type="image" src="https://www.paypalobjects.com/webstatic/en_US/i/buttons/ppcredit- logo-large.png" alt="PayPal Credit">

    </input>

    </form>