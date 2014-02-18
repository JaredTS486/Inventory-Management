<%@ Page language="c#" Codebehind="WebForm1.aspx.cs" AutoEventWireup="false" Inherits="DLS_SDK_Sample.WebForm1" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm1</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:label id="Label2" style="Z-INDEX: 101; LEFT: 24px; POSITION: absolute; TOP: 80px" runat="server"
				Width="200px">Select a label object here:</asp:label><asp:dropdownlist id="ObjectNameCmb" style="Z-INDEX: 102; LEFT: 24px; POSITION: absolute; TOP: 104px"
				runat="server" Width="248px"></asp:dropdownlist><asp:button id="PrintLabelBtn" style="Z-INDEX: 103; LEFT: 32px; POSITION: absolute; TOP: 376px"
				runat="server" Text="Print Label"></asp:button><asp:dropdownlist id="LabelFileCmb" style="Z-INDEX: 104; LEFT: 24px; POSITION: absolute; TOP: 40px"
				runat="server" Width="504px" AutoPostBack="True"></asp:dropdownlist><asp:label id="Label1" style="Z-INDEX: 105; LEFT: 24px; POSITION: absolute; TOP: 16px" runat="server"
				Width="384px" Height="8px">Select a label file here:</asp:label><asp:label id="Label3" style="Z-INDEX: 106; LEFT: 288px; POSITION: absolute; TOP: 80px" runat="server"
				Width="184px">Set label object data here:</asp:label><asp:textbox id="ObjectDataEdit" style="Z-INDEX: 107; LEFT: 288px; POSITION: absolute; TOP: 104px"
				runat="server" Width="232px" Height="120px" TextMode="MultiLine" Wrap="False"></asp:textbox><asp:label id="Label4" style="Z-INDEX: 108; LEFT: 32px; POSITION: absolute; TOP: 304px" runat="server">Select a LabelWriter here:</asp:label><asp:dropdownlist id="LabelWriterCmb" style="Z-INDEX: 109; LEFT: 32px; POSITION: absolute; TOP: 336px"
				runat="server" Width="288px" AutoPostBack="True"></asp:dropdownlist><asp:label id="Label5" style="Z-INDEX: 110; LEFT: 344px; POSITION: absolute; TOP: 288px" runat="server"
				Width="200px" Height="32px">Set Tray (only available with LabelWriter TWIN TURBO)</asp:label><asp:dropdownlist id="TrayCmb" style="Z-INDEX: 111; LEFT: 344px; POSITION: absolute; TOP: 336px" runat="server"
				Width="144px"></asp:dropdownlist><asp:button id="SetDataBtn" style="Z-INDEX: 112; LEFT: 432px; POSITION: absolute; TOP: 240px"
				runat="server" Width="88px" Text="Set Data"></asp:button></form>
	</body>
</HTML>
