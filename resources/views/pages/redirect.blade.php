<html>
<head>
    <title>Payment Transation</title>
</head>
<body>
    <form method="post" name="redirect" action="https://secure.payu.in/_payment">
        <input type=hidden name="key" value="{{ $postData['key'] }}">
        <input type=hidden name="hash" value="{{ $postData['hash'] }}">
        <input type=hidden name="txnid" value="{{ $postData['txnid'] }}">
        <input type=hidden name="amount" value="{{ $postData['amount'] }}">
        <input type=hidden name="firstname" value="{{ $postData['firstname'] }}">
        <input type=hidden name="email" value="{{ $postData['email'] }}">
        <input type=hidden name="phone" value="{{ $postData['phone'] }}">
        <input type=hidden name="productinfo" value="{{ $postData['productinfo'] }}">
        <input type=hidden name="surl" value="{{ $postData['surl'] }}">
        <input type=hidden name="furl" value="{{ $postData['furl'] }}">
        <input type=hidden name="service_provider" value="{{ $postData['service_provider'] }}">
        <input type=hidden name="lastname" value="{{ $postData['lastname'] or '' }}">
        <input type=hidden name="curl" value="{{ $postData['curl'] or '' }}">
        <input type=hidden name="address1" value="{{ $postData['address1'] or '' }}">
        <input type=hidden name="city" value="{{ $postData['city'] or '' }}">
        <input type=hidden name="state" value="{{ $postData['state'] or '' }}">
        <input type=hidden name="country" value="{{ $postData['country'] or '' }}">
        <input type=hidden name="zipcode" value="{{ $postData['zipcode'] or '' }}">
       
    </form>
<script language='javascript'>document.redirect.submit();</script>
</body>
</html>
