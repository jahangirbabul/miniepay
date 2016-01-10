<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MiniEpay_PaymentGateway.Models.Cu_step1>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Index</title>
    <link href="../style.css" type="text/css" rel="stylesheet" />
    <style>
        .hea{
            background-color:#4cff00; 
        }
    </style>
</head>
<body>
    <header class="hea" >
        header section
    </header>

    <section>
    <div>
           <% Html.EnableClientValidation(); %>
        <% using(Html.BeginForm("ContactDetails","Customer",FormMethod.Post))
        {%> 
 <p>
            <%: Html.LabelFor(m => m.F_Name, "First Name:")%> 
            <%: Html.TextBoxFor(m => m.F_Name)%> 
            <%: Html.ValidationMessageFor(m => m.F_Name)%> 

        </p>

        <p>
            <%: Html.LabelFor(m => m.L_Name, "Last Name:")%> 
            <%: Html.TextBoxFor(m => m.L_Name)%> 
            <%: Html.ValidationMessageFor(m => m.L_Name)%> 

        </p>
         <p>
            <%: Html.LabelFor(m => m.Email_Address, "Email Address:")%> 
            <%: Html.TextBoxFor(m => m.Email_Address)%>
            <%: Html.ValidationMessageFor(m => m.Email_Address)%> 

        </p>
          <p>
            <%: Html.LabelFor(m => m.Con_Email, "Confirm Email Address:")%> 
            <%: Html.TextBoxFor(m => m.Con_Email)%>
            <%: Html.ValidationMessageFor(m => m.Con_Email)%> 

        </p>
        <p>
            <%: Html.LabelFor(m => m.Dob, "Date Of Birth:")%> 
            <%: Html.TextBoxFor(m => m.Dob)%>
            <%: Html.ValidationMessageFor(m => m.Dob)%> 

        </p>

        <p> <input type="submit" value="Next" /> </p>
        <%}%>  
    
        
    </div>
        </section>
    <footer></footer>
</body>
</html>
