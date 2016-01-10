<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MiniEpay_PaymentGateway.Models.Me_Step2>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>ContactDetails</title>
</head>
<body>
    <div>
         <% Html.EnableClientValidation(); %>
        <% using(Html.BeginForm("SecurityDetails","Merchant",FormMethod.Post))
        {%> 

        <p>
            <%: Html.LabelFor(m => m.Street_address, "Street Address:")%> 
            <%: Html.TextBoxFor(m => m.Street_address)%> 
            <%: Html.ValidationMessageFor(m => m.Street_address)%> 

        </p>

        <p>
            <%: Html.LabelFor(m => m.City, "City:")%> 
            <%: Html.TextBoxFor(m => m.City)%> 
            <%: Html.ValidationMessageFor(m => m.City)%> 

        </p>
         <p>
            <%: Html.LabelFor(m => m.Postal_code, "Postal_code:")%> 
            <%: Html.TextBoxFor(m => m.Postal_code)%>
            <%: Html.ValidationMessageFor(m => m.Postal_code)%> 

        </p>
          <p>
            <%: Html.LabelFor(m => m.Office_no, "Office #:")%> 
            <%: Html.TextBoxFor(m => m.Office_no)%>
            <%: Html.ValidationMessageFor(m => m.Office_no)%> 

        </p>
        

        <p> <input type="submit" value="Next" /> </p>
        <%}%>  
    
    </div>
</body>
</html>
