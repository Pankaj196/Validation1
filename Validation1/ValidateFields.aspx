<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidateFields.aspx.cs" Inherits="Validation1.ValidateFields" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function ValidateCustomfn(sender, args) {
            debugger;
            if (args.Value.length <= 5) {
                args.IsValid = false;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
            
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Text Box 2 and 3 should have same vakues" ControlToCompare="TextBox2" ControlToValidate="TextBox3"></asp:CompareValidator>
            <br />
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator" ControlToValidate="TextBox4" ForeColor="Red" MaximumValue="d" MinimumValue="a"></asp:RangeValidator>
            <br />
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />            
            <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="CompareValidator" Display="Dynamic"></asp:CompareValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
