<%include SVNManagerApp.global.header %>
<h1>ユーザ追加</h1>
<com:TPanel ID="AddPanel" Visible="true">
<table cellspacing="0" cellpadding="5">
	<tr>
		<th align="right">ユーザ名</th>
		<td>
			<com:TTextBox ID="UserName"/>
			<com:TRequiredFieldValidator ControlToValidate="UserName" ErrorMessage="ユーザ名を入力してください"/>
			<com:TCustomValidator 		ControlToValidate="UserName" OnServerValidate="onCheckUsername" ErrorMessage="このユーザ名はすでに使われています" Display="Dynamic" />
		</td>
	</tr>
	<tr>
		<th align="right">パスワード</th>
		<td>
			<com:TTextBox ID="Password" TextMode="Password" />
			<com:TRequiredFieldValidator ControlToValidate="Password" ErrorMessage="パスワードは必須です"/>
		</td>
	</tr>
	<tr>
		<th align="right">パスワード（確認）</th>
		<td>
			<com:TTextBox ID="RepeatPassword" TextMode="Password" />
			<com:TCompareValidator ControlToValidate="Password" ControlToCompare="RepeatPassword" Display="Dynamic">再入力されたパスワードが違います</com:TCompareValidator>
			<com:TRequiredFieldValidator ControlToValidate="RepeatPassword" ErrorMessage="パスワードは必須です"/>
		</td>
	</tr>
	<tr>
		<th align="right">メールアドレス</th>
		<td>
			<com:TTextBox ID="Email" Columns="32" />
			<com:TRequiredFieldValidator ControlToValidate="Email" ErrorMessage="メールアドレスは必須です"/>
			<com:TEmailAddressValidator ControlToValidate="Email" Display="Dynamic">無効なメールアドレスです</com:TEmailAddressValidator>
		</td>
	</tr>
	<tr>
		<th align="right">管理者権限</th><td><com:TCheckBox ID="Admin" /></td>
	</tr>
	<tr>
		<th align="right">保持可能なリポジトリ数</th>
			<td>
				<com:TTextBox ID="Grants" Text="0" />
				<com:TRequiredFieldValidator ControlToValidate="Grants" ErrorMessage="保持可能なリポジトリ数の入力は必須です"/>
				<com:TRangeValidator ControlToValidate="Grants" MinValue="0" MaxValue="99" ValueType="Integer" ErrorMessage="0～99の数値を入力してください" />
			</td>
	</tr>
	<tr>
		<th class="altth" align="right">管理者パスワード</th>
		<td>
			<com:TTextBox ID="UserPassword" TextMode="Password" />
			<com:TRequiredFieldValidator ControlToValidate="UserPassword" ErrorMessage="管理者パスワードを入力してください" Display="Dynamic"/>
			<com:TCustomValidator ControlToValidate="UserPassword" OnServerValidate="onCheckPassword" ErrorMessage="パスワードが違います" Display="Dynamic" />
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
	<h3 class="message">ユーザを追加しました！</h3>
	<com:TLinkButton Text="ユーザ管理メニューに戻る" OnClick="onGoBack"/>
</com:TPanel>
<%include SVNManagerApp.global.footer %>
