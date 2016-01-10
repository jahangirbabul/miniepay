<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MiniEpay_PaymentGateway.Models.Me_Step3>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>SecurityDetails</title>
</head>
<body>
    <div>
        <% Html.EnableClientValidation(); %>
        <% using(Html.BeginForm("AlmostDone","Merchant",FormMethod.Post))
        {%> 

        <p>
            <%: Html.LabelFor(m => m.User_name, "User Name:")%> 
            <%: Html.TextBoxFor(m => m.User_name)%> 
            <%: Html.ValidationMessageFor(m => m.User_name)%> 

        </p>

        <p>
            <%: Html.LabelFor(m => m.Password, "Password:")%> 
            <%: Html.TextBoxFor(m => m.Password)%> 
            <%: Html.ValidationMessageFor(m => m.Password)%> 

        </p
         <p>
            <%: Html.LabelFor(m => m.Con_password, "Password:")%> 
            <%: Html.TextBoxFor(m => m.Con_password)%>
            <%: Html.ValidationMessageFor(m => m.Con_password)%> 

        </p>
          <p>
            <%: Html.LabelFor(m => m.Website_link, "Website Link:")%> 
            <%: Html.TextBoxFor(m => m.Website_link)%>
            <%: Html.ValidationMessageFor(m => m.Website_link)%> 

        </p>
        

        <p> <input type="submit" value="Next" /> </p>
        <%}%>  
    
    </div>
</body>
</html>
