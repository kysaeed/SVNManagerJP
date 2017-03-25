<%include SVNManagerApp.global.header %>
<h1>ユーザのアクティベーション</h1>
<br/>
<com:TPanel Visible="#$this->Page->isValidTicket()" >
希望するユーザ名とパスワードを入力してください
	<table>
		<tr>
		  <td align="right" valign="top">ユーザ名</td>
		  <td><com:TTextBox ID="Username" AutoTrim="true" />
		  <com:TRequiredFieldValidator ControlToValidate="Username" Display="Dynamic"><br/>希望するユーザ名を入力してください</com:TRequiredFieldValidator>
		  <com:TRegularExpressionValidator ControlToValidate="Username" Display="Dynamic" RegularExpression="[\w]{3,16}"><br/>ユーザ名は3～16文字で入力してください（使用可能な文字は英数またはアンダーバーのみです）</com:TRegularExpressionValidator>
		  <com:TCustomValidator ControlToValidate="Username" OnServerValidate="isUsernameTaken" Display="Dynamic"><br/>このユーザ名はすでに使われています。別のユーザ名を入力してください</com:TCustomValidator>
		  </td>
		</tr>
		<tr>
		  <td align="right" valign="top">パスワード</td>
		  <td><com:TTextBox ID="Password" TextMode="Password" />
		  <com:TRequiredFieldValidator ControlToValidate="Password" Display="Dynamic"><br/>希望するパスワードを入力してください</com:TRequiredFieldValidator>
		  <com:TRegularExpressionValidator ControlToValidate="Password" Display="Dynamic" RegularExpression="[\w\.]{6,16}"><br/>パスワードは6～16文字で入力してください（使用可能な文字は英数またはアンダーバーのみです）</com:TRegularExpressionValidator>
		  </td>
		</tr>
		<tr>
		  <td align="right" valign="top">パスワード（確認）</td>
		  <td><com:TTextBox ID="Password2" TextMode="Password" />
		  <com:TRequiredFieldValidator ControlToValidate="Password2" Display="Dynamic"><br/>パスワードを再度入力してください</com:TRequiredFieldValidator>
		  <com:TCompareValidator ControlToValidate="Password2" ControlToCompare="Password" Display="Dynamic"><br/>再入力されたパスワードが違います</com:TCompareValidator>
		  </td>
		</tr>
		<tr><td><com:TButton ID="ConfirmButton" Text="登録" OnClick="onConfirmBtn" /></td></tr>
	</table>
</com:TPanel>
<com:TPanel Visible="#!$this->Page->isValidTicket()" >
	<div style="color : red;">
		<h2>チケットが無効です！管理者に問い合わせてください</h2>
	</div>
</com:TPanel>
<%include SVNManagerApp.global.footer %>
