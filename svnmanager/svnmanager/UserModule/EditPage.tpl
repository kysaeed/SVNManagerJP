<%include SVNManagerApp.global.header %>
<h1>ユーザ情報の設定変更</h1>
<com:TPanel ID="EditPanel" Visible="true">
<table cellspacing="0" cellpadding="5">
	<tr>
		<th align="right">ID</th><td><com:TLabel ID="UserID" /></td>
	</tr>
	<tr>
		<th align="right">ユーザ名</th>
		<td>
			<com:TTextBox ID="UserName" />
			<com:TCustomValidator ControlToValidate="UserName" Display="Dynamic" OnServerValidate="onCheckUsername" Text="別のユーザ名を入力してください" />
		</td>
	</tr>
	<tr>
		<th align="right">新しいパスワード</th><td><com:TTextBox ID="NewPassword" TextMode="Password" /></td>
	</tr>
	<tr>
		<th align="right">新しいパスワード（確認）</th>
		<td>
			<com:TTextBox ID="RepeatNewPassword" TextMode="Password" />
			<com:TCompareValidator ControlToValidate="NewPassword" ControlToCompare="RepeatNewPassword" Display="Dynamic">再入力されたパスワードが違います</com:TCompareValidator>
		</td>
	</tr>
	<tr>
		<th align="right">メールアドレス</th>
		<td>
			<com:TTextBox ID="Email" Columns="32" />
			<com:TEmailAddressValidator ControlToValidate="Email" Display="Dynamic">無効なメールアドレスです</com:TEmailAddressValidator>
		</td>
	</tr>
	<tr>
		<th align="right">管理者権限</th><td><com:TCheckBox ID="Admin" /></td>
	</tr>
	<tr>
		<th align="right">保持可能なリポジトリ数</th><td><com:TTextBox ID="Grants" /></td>
	</tr>
	<tr>
		<th class="altth" align="right">管理者パスワード</th>
		<td>
			<com:TTextBox ID="Password" TextMode="Password" />
			<com:TCustomValidator ControlToValidate="Password" OnServerValidate="onRequirePassword" ErrorMessage="パスワードは必須です" Display="Dynamic" />
		</td>
	</tr>
	<tr>
		<tr></td>
		<tr></td>
		<td><com:TButton ID="ConfirmButton" Text="登録" OnClick="onConfirmBtn" /></td>
		<td><com:TButton ID="CancelButton" Text="キャンセル" CausesValidation="false" OnClick="onCancelBtn"/></td>
	</tr>
</table>
</com:TPanel>
<com:TPanel ID="ConfirmationPanel" Visible="false">
	<h3 class="message">変更が反映されました！</h3>
	<com:TLinkButton Text="ユーザ管理のメニューに戻る" OnClick="onGoBack"/>
</com:TPanel>
<%include SVNManagerApp.global.footer %>
