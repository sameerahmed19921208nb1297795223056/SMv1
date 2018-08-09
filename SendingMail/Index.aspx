<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Panel ID="Panel1" runat="server" DefaultButton="btnSubmit">
        <p>
            Please Fill the Following to Send Mail.</p>
        <p>
            Your name:
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*"
                ControlToValidate="YourName" ValidationGroup="save" /><br />
            <asp:TextBox ID="YourName" runat="server" Width="250px" /><br />
            Your email address:
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                ControlToValidate="YourEmail" ValidationGroup="save" /><br />
            <asp:TextBox ID="YourEmail" runat="server" Width="250px" Text="same6fine@gmail.com" />
           <%-- <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator23" 
                SetFocusOnError="true" Text="Example: username@gmail.com" ControlToValidate="YourEmail"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
                ValidationGroup="save" />--%><br />
            Subject:
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                ControlToValidate="YourSubject" ValidationGroup="save" /><br />
            <asp:TextBox ID="YourSubject" runat="server" Width="400px" /><br />
            Your Question:
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                ControlToValidate="Comments" ValidationGroup="save" /><br />
            <asp:TextBox ID="Comments" runat="server" TextMode="MultiLine" Rows="10" Width="400px" />
        </p>
        <p>
            <asp:Button ID="btnSubmit" runat="server" Text="Send" OnClick="Button1_Click" ValidationGroup="save" />
        </p>
    </asp:Panel>
    <p>
        <asp:Label ID="DisplayMessage" runat="server" Visible="false" />
    </p>
    </form>
</body>
</html>
