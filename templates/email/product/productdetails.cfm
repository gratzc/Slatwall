<cfparam name="email" type="any" />	
<cfparam name="emailData" type="struct" default="#structNew()#" />
<cfparam name="product" type="any" />

<cfsavecontent variable="emailData.emailBodyHTML">
	<cfoutput>
		<h1>#product.getTitle()#</h1>
		<a href="http://www.medplus.com/?slatAction=medplus:product.inforequest&productID=#product.getProductID()#"><img src="http://www.medplus.com/#product.getResizedImagePath(width=200)#" /></a>
		#product.getProductDescription()#
		<hr />
		<a href="http://www.medplus.com/?slatAction=medplus:product.inforequest&productID=#product.getProductID()#">Get More Info</a>
	</cfoutput>
</cfsavecontent>
<cfsavecontent variable="emailData.emailBodyText">
	<cfoutput>
		#product.getTitle()#
		#product.getProductDescription()#
		MORE INFO HERE: http://www.medplus.com/?slatAction=product:main.inforequest&productID=#product.getProductID()#
	</cfoutput>
</cfsavecontent>