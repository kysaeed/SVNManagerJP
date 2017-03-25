<%include SVNManagerApp.global.header %>
<h1>リポジトリの設定変更</h1>
<com:TPanel ID="EditPanel" Visible="true">
<table cellspacing="0" cellpadding="5">
	<tr>
		<th>リポジトリ名</th>
		<td>
			<com:TTextBox ID="Name" />
			<com:TRequiredFieldValidator ControlToValidate="Name" Display="Dynamic">リポジトリ名を入力してください</com:TRequiredFieldValidator>
			<com:TCustomValidator ControlToValidate="Name" OnServerValidate="isValidName" Display="Dynamic">別のリポジトリ名を入力してください</com:TCustomValidator>
		</td>
	</tr>
	<tr>
		<th>説明</th>
		<td>
			<com:TTextBox ID="Description" MaxLength="127" Columns="40"/>
			<com:TRequiredFieldValidator ControlToValidate="Description" Display="Dynamic">
			リポジトリの説明を入力してください！
			</com:TRequiredFieldValidator>
		</td>
	</tr>
	<tr>
		<th>オーナー</th>
		<td><com:TListBox ID="Owner" Rows="1"/></td>
	</tr>
	<tr>
		<td><com:TButton ID="ConfirmButton" Text="実行" OnCommand="onConfirmButton" /></td>
		<td><com:TButton ID="CancelButton" Text="キャンセル" OnCommand="onCancelButton" CausesValidation="false" /></td>
	</tr>
</table>
</com:TPanel>
<com:TPanel ID="ConfirmationPanel" Visible="false" >
	<h3 class="message">リポジトリの設定が変更されました！</h3>
	<com:TLinkButton Text="リポジトリ管理のメニューに戻る" OnClick="onGoBack"/></br>
</com:TPanel>
<%include SVNManagerApp.global.footer %>
