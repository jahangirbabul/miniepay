<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MiniEpay_PaymentGateway.Models.Me_Step4>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>AlmostDone</title>
</head>
<body>
    <div>
         <% Html.EnableClientValidation(); %>
        <h2>Terms and Services</h2><br/>
        <%=Html.CheckBox("ab",Model)%> I accept Terms and Services
        <%: Html.ValidationMessageFor(m => m.ab)%> 

        <div><Input type="submit" value="Done" ></div>
    </div>
</body>
</html>
