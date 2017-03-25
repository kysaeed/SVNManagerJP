<%include SVNManagerApp.global.header %>
<h1>SVN管理</h1>
<h2>グループ設定</h2>
<com:TPanel ID="ChangePanel" Visible="true" >
<table cellspacing="0" cellpadding="5">
	<th>グループ名</th>
	<tr>
		<td>
			<com:TTextBox ID="Name" />
			<com:TRequiredFieldValidator ControlToValidate="Name" Display="Dynamic">グループ名を入力してください</com:TRequiredFieldValidator>
			<com:TCustomValidator ControlToValidate="Name" OnServerValidate="isValidName" Display="Dynamic">別のグループ名を入力してください！</com:TCustomValidator>
		</td>
	</tr>
	<tr>
		<th>オーナー</th>
		<td><com:TListBox ID="Owner" Rows="1" /></td>
	</tr>
	<tr>
		<th>メンバー</th>
		<td><com:TListBox ID="Members" SelectionMode="Multiple" Rows="10" /></td>
	</tr>
	<tr>
		<td><com:TButton ID="ConfirmButton" Text="実行" OnCommand="onConfirmButton" /></td>
		<td align="right"><com:TButton ID="CancelButton" Text="キャンセル" OnCommand="onCancelButton" CausesValidation="false" /></td>
	</tr>
</table>
</com:TPanel>
<com:TPanel ID="ConfirmationPanel" Visible="false" >
	<h3 class="message">グループの設定を更新しました！</h3>
	<com:TLinkButton Text="グループ管理のメニューに戻る" OnClick="onGoBack"/>
</com:TPanel>
<%include SVNManagerApp.global.footer %>
