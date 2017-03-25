<%include SVNManagerApp.global.header %>
<h1>SVN管理</h1>
<h2>グループの新規作成</h2>
<com:TPanel ID="CreatePanel" Visible="true">
<table>
	<tr>
		<th>メニュー</th>
		<td>
			<com:TTextBox ID="Name" MaxLength="32" Columns="16"/>
			<com:TRequiredFieldValidator ControlToValidate="Name" Display="Dynamic">
			新規作成するグループの名前を入力してください
			</com:TRequiredFieldValidator>
			<com:TCustomValidator ControlToValidate="Name" OnServerValidate="isNotTaken" Display="Dynamic" >
			このグループ名はすでに存在します。別のグループ名を入力してください
			</com:TCustomValidator>
		</td>
	</tr>
	<tr>
		<td>
			<com:TButton ID="Confirm" Text="Confirm" OnClick="onConfirmBtn" />
		</td>
		<td align="right">
			<com:TButton ID="Cancel" Text="Cancel" CausesValidation="false" OnClick="onCancelBtn" />
		</td>
	</tr>
</table>
</com:TPanel>
<com:TPanel ID="ConfirmationPanel" Visible="false" >
	<h3 class="message">グループを作成しました</h3>
	<com:TLinkButton Text="グループ管理のメニューに戻る" OnClick="onGoBack"/></br>
	<com:TLinkButton Text="新規作成したグループの設定を変更する" OnClick="onEdit" />
</com:TPanel>
<%include SVNManagerApp.global.footer %>
