<%include SVNManagerApp.global.header %>
<h1>ログイン</h1>
<table border="0" cellspacing="0" cellpadding="5" width="400">
<tr><th colspan="2">ログイン</th></tr>
<tr>
  <td align="right">ユーザ名</td><td><com:TTextBox ID="Username" />
  <com:TRequiredFieldValidator ControlToValidate="Username" ErrorMessage="ユーザ名の入力は必須です" Display="Dynamic" />
  </td>
</tr>
<tr>
  <td align="right">パスワード</td><td><com:TTextBox ID="Password" TextMode="Password" />
  <com:TRequiredFieldValidator ControlToValidate="Password" ErrorMessage="パスワードの入力は必須です" Display="Dynamic" />
  <com:TCustomValidator ControlToValidate="Password" OnServerValidate="onLogin" ErrorMessage="ログイン失敗" Display="Dynamic" />
  </td>
</tr>
<tr>
  <td></td><td><com:TButton Text="ログイン" OnClick="onClickLoginBtn" /></td>
</tr>
</table>
<%include SVNManagerApp.global.footer %>
