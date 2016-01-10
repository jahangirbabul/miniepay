<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MiniEpay_PaymentGateway.Models.Me_step1>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Index</title>
</head>
<body>
    <div>
           <% Html.EnableClientValidation(); %>
        <% using(Html.BeginForm("ContactDetails","Merchant",FormMethod.Post))
        {%> 

        <p>
            <%: Html.LabelFor(m => m.F_name, "First Name:")%> 
            <%: Html.TextBoxFor(m => m.F_name)%> 
            <%: Html.ValidationMessageFor(m => m.F_name)%> 

        </p>

        <p>
            <%: Html.LabelFor(m => m.L_name, "Last Name:")%> 
            <%: Html.TextBoxFor(m => m.L_name)%> 
            <%: Html.ValidationMessageFor(m => m.L_name)%> 

        </p>
         <p>
            <%: Html.LabelFor(m => m.Designation, "Designation:")%> 
            <%: Html.TextBoxFor(m => m.Designation)%>
            <%: Html.ValidationMessageFor(m => m.Designation)%> 

        </p>
          <p>
            <%: Html.LabelFor(m => m.Company_name, "Company Name:")%> 
            <%: Html.TextBoxFor(m => m.Company_name)%>
            <%: Html.ValidationMessageFor(m => m.Company_name)%> 

        </p>
        <p>
            <%: Html.LabelFor(m => m.Company_email, "Company's Email Address:")%> 
            <%: Html.TextBoxFor(m => m.Company_email)%>
            <%: Html.ValidationMessageFor(m => m.Company_email)%> 

        </p>

        <p>
            <%: Html.LabelFor(m => m.Con_email , "Confirm Email Address:")%> 
            <%: Html.TextBoxFor(m => m.Con_email )%>
            <%: Html.ValidationMessageFor(m => m.Con_email )%> 

        </p>
        <p> <input type="submit" value="Next" /> </p>
        <%}%>  
    
    </div>
</body>
</html>
