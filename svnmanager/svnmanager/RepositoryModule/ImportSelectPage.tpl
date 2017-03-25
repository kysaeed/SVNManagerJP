<%include SVNManagerApp.global.header %>
<h1>リポジトリ インポート</h1>
<com:TPanel ID="ImportPanel" Visible="true" >
<table cellspacing="0" cellpadding="5">
	<tr><th>リポジトリ名</th></tr>
<com:TRepeater ID="RepositoryTable" OnItemCommand="onSelectRepository" >
	<prop:HeaderTemplate>
	</prop:HeaderTemplate>
	<prop:ItemTemplate>
		<tr class="row1">
			<td><%= htmlspecialchars($this->Parent->Data['repositoryname']) %></td>
			<td ><com:TLinkButton Text="選択" CommandName="select" CommandParameter="#$this->Parent->Data['repositoryname']" /></td>
		</tr>
	</prop:ItemTemplate>
	<prop:AlternatingItemTemplate>
		<tr class="row2">
			<td><%= htmlspecialchars($this->Parent->Data['repositoryname']) %></td>
			<td ><com:TLinkButton Text="選択" CommandName="select" CommandParameter="#$this->Parent->Data['repositoryname']" /></td>
		</tr>
	</prop:AlternatingItemTemplate>
	<prop:FooterTemplate>
	</prop:FooterTemplate>
</com:TRepeater>
	<tr>
		<td></td>
		<td>
			<com:TButton Text="キャンセル" OnClick="onCancelBtn" CausesValidation="false" />
		</td>
	</tr>
</table>
</com:TPanel>
<com:TPanel ID="RepoImportedPanel" Visible="false" >
	<h3 class="message">リポジトリをインポートしました！</h3>
	<com:TLinkButton Text="リポジトリ インポートのメニューに戻る" OnClick="onGoBack"/></br>
</com:TPanel>

<%include SVNManagerApp.global.footer %>
