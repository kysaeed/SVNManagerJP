<%include SVNManagerApp.global.header %>
<h1>リポジトリのリカバリ</h1>
<com:TPanel ID="TablePanel" Visible="true">
		<table cellspacing="0" cellpadding="5">
		<tr><th>リポジトリ名</th><th>オーナー</th></tr>
	<com:TRepeater ID="RepositoryTable" OnItemCommand="onSelectRepository" >
		<prop:HeaderTemplate>
		</prop:HeaderTemplate>
		<prop:ItemTemplate>
			<tr class="row1">
				<td><%= htmlspecialchars($this->Parent->Data['repositoryname']) %></td>
				<td><%= htmlspecialchars($this->Parent->Data['owner']) %>
				<td ><com:TLinkButton Text="選択" CommandName="select" CommandParameter="#$this->Parent->Data['id']" /></td>
			</tr>
		</prop:ItemTemplate>
		<prop:AlternatingItemTemplate>
			<tr class="row2">
				<td><%= htmlspecialchars($this->Parent->Data['repositoryname']) %></td>
				<td><%= htmlspecialchars($this->Parent->Data['owner']) %>
				<td><com:TLinkButton Text="選択" CommandName="select" CommandParameter="#$this->Parent->Data['id']" /></td>
			</tr>
		</prop:AlternatingItemTemplate>
		<prop:FooterTemplate>
		</prop:FooterTemplate>
	</com:TRepeater>
		<tr>
			<td></td>
			<td></td>
			<td>
				<com:TButton Text="キャンセル" OnClick="onCancelBtn" CausesValidation="false" />
			</td>
		</tr>
	</table>
</com:TPanel>
<com:TPanel ID="ResultPanel" Visible="false">
	<h3 class="message"><com:TLabel ID="MessageLabel"/></h3>
	<com:TLinkButton Text="リポジトリ管理のメニューに戻る" OnClick="onGoBack"/></br>
</com:TPanel>

<%include SVNManagerApp.global.footer %>
