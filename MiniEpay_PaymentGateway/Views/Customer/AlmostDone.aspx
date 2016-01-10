<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MiniEpay_PaymentGateway.Models.Cu_step4>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>AlmostDone</title>
</head>
<body>
    <div>
        <% Html.EnableClientValidation(); %>
        <% using (Html.BeginForm("Confirmation","Customer",FormMethod.Post) )
           { %>
        <p>
            <%: Html.LabelFor(m=> m.Name,"Name On CNIC:") %>
            <%: Html.TextBoxFor(m=> m.Name) %>
            <%:Html.ValidationMessageFor(m=>m.Name) %>
        </p>
        <p>
            <%: Html.LabelFor(m=> m.CNIC," CNIC #:") %>
            <%: Html.TextBoxFor(m=> m.CNIC) %>
            <%:Html.ValidationMessageFor(m=>m.CNIC) %>
        </p>
        <p> <input type="submit" value="Next" /> </p>
        <%} %>
    </div>
</body>
</html>
