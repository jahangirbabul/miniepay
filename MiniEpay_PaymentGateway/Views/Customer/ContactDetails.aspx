<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MiniEpay_PaymentGateway.Models.Cu_step2>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>ContactDetails</title>
</head>
<body>
    <div>
        <% Html.EnableClientValidation(); %>
        <% using(Html.BeginForm("SecurityDetails","Customer",FormMethod.Post))
        {%> 
 <p>
            <%: Html.LabelFor(m => m.City, "City Name:")%> 
            <%: Html.TextBoxFor(m => m.City)%> 
            <%: Html.ValidationMessageFor(m => m.City)%> 

        </p>
        <p>
            <%: Html.LabelFor(m => m. street_address, "Street Address:")%> 
            <%: Html.TextBoxFor(m => m. street_address)%> 
            <%: Html.ValidationMessageFor(m => m.street_address)%> 

        </p>
        <p>
            <%: Html.LabelFor(m => m.Postal_code, "Postal Code:")%> 
            <%: Html.TextBoxFor(m => m.Postal_code)%> 
            <%: Html.ValidationMessageFor(m => m.Postal_code)%> 

        </p>

        

        
        
        <p> <input type="submit" value="Next" /> </p>
        <%}%>  

    </div>
</body>
</html>
