<%include SVNManagerApp.global.header %>
<h1>ユーザを招待</h1>
<com:TPanel ID="InvitationPanel" Visible="true">
	<table>
	<tr>
		<th align="right">メールアドレス:</th>
		<td align="leftt">
			<com:TTextBox ID="Email" Columns="64" />
			<com:TRequiredFieldValidator ControlToValidate="Email" Display="Dynamic"><br/>メールアドレスを入力してください</com:TRequiredFieldValidator>
		    <com:TEmailAddressValidator ControlToValidate="Email" Display="Dynamic"><br/>無効なメールアドレスです</com:TEmailAddressValidator>
		    <com:TCustomValidator ControlToValidate="Email" OnServerValidate="isEmailTaken" Display="Dynamic"><br/>登録済みのメールアドレスです</com:TCustomValidator>
		    <com:TCustomValidator ControlToValidate="Email" OnServerValidate="hasTicket" Display="Dynamic"><br/>招待済みのメールアドレスです</com:TCustomValidator>
		</td>
	</tr>
	<tr>
		<th align="right">作成可能なリポジトリ数:</th>
		<td align="left">
			<com:TTextBox ID="Repos" Columns="2" MaxLength="2" Text="0"/>
			<com:TRangeValidator ControlToValidate="Repos" MinValue="0" MaxValue="99" ValueType="Integer" Display="Dynamic"><br/>0～99の数値を入力してください</com:TRangeValidator>
		</td>
	</tr>
	<tr>
		<td><com:TButton ID="Confirm" Text="実行" OnClick="onConfirmBtn"/></td>
		<td align="right" ><com:TButton ID="キャンセル" Text="Cancel" OnClick="onCancelBtn" CausesValidation="false" />
	</tr>
</com:TPanel>
<com:TPanel ID="ConfirmationPanel" Visible="false">
	<h3 class="message">招待メールを送信しました</h3>
	<com:TLinkButton Text="ユーザ情報管理のメニューに戻る" OnClick="onGoBack"/>
</com:TPanel>
<%include SVNManagerApp.global.footer %>
