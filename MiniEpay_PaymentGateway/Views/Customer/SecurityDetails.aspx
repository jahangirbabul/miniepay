<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MiniEpay_PaymentGateway.Models.Cu_step3>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>SecurityDetails</title>
</head>
<body>
    <div>
         <% Html.EnableClientValidation(); %>
        <% using (Html.BeginForm("AlmostDone", "Customer", FormMethod.Post))
        {%> 
 <p>
            <%: Html.LabelFor(m => m.User_name, "User name:")%> 
            <%: Html.TextBoxFor(m => m.User_name)%> 
            <%: Html.ValidationMessageFor(m => m.User_name)%> 

        </p>
        <p>
            <%: Html.LabelFor(m => m.Password, "Password:")%> 
            <%: Html.TextBoxFor(m => m.Password)%> 
            <%: Html.ValidationMessageFor(m => m.Password)%> 

        </p>
        <p>
            <%: Html.LabelFor(m => m.Con_password, "Confirm password:")%> 
            <%: Html.TextBoxFor(m => m.Con_password)%> 
            <%: Html.ValidationMessageFor(m => m.Con_password)%> 

        </p>
        <p>
            <%: Html.LabelFor(m => m.Mobile, "Mobile #:")%> 
            <%: Html.TextBoxFor(m => m.Mobile)%> 
            <%: Html.ValidationMessageFor(m => m.Mobile)%> 

        </p>
        <p>
            <%: Html.LabelFor(m => m.Verify_code, "Verification Code:")%> 
            <%: Html.TextBoxFor(m => m.Verify_code)%> 
            <%: Html.ValidationMessageFor(m => m.Verify_code)%> 

        </p>
         <p> <input type="submit" value="Next" /> </p>
        <%}%>  


    </div>
</body>
</html>
