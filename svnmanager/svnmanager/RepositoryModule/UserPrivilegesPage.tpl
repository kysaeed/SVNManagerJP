<%include SVNManagerApp.global.header %>
<h1>ユーザ権限の設定</h1>
<table cellspacing="0" cellpadding="5">
	<tr><th>リポジトリ名</th><th>オーナー</th></tr>
<com:TRepeater ID="RepositoryTable" OnItemCommand="onSelectRepository" >
	<prop:HeaderTemplate>
	</prop:HeaderTemplate>
	<prop:ItemTemplate>
		<tr class="row1">
			<td><%= htmlspecialchars($this->Parent->Data['repositoryname']) %></td>
			<td><%= htmlspecialchars($this->Parent->Data['owner']) %>
			<td><com:TLinkButton Text="選択" CommandName="select" CommandParameter="#$this->Parent->Data['id']" /></td>
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
		<td align="right">
			<com:TButton Text="キャンセル" OnClick="onCancelBtn" CausesValidation="false" />
		</td>
	</tr>
</table>
<%include SVNManagerApp.global.footer %>
