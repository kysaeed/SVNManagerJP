<%include SVNManagerApp.global.header %>
<h1>リポジトリ ダンプ</h1>
	<table cellspacing="0" cellpadding="5">
<com:TRepeater ID="RepositoryTable" OnItemCommand="onDumpRepository" >
	<prop:HeaderTemplate>
		<tr><th>リポジトリ名</th><th>オーナー</th></tr>
	</prop:HeaderTemplate>
	<prop:ItemTemplate>
		<tr class="row1">
			<td><%= htmlspecialchars(ucfirst($this->Parent->Data['repositoryname'])) %></td>
			<td><%= htmlspecialchars($this->Parent->Data['owner']) %>
			<td><com:TLinkButton Text="ダンプ" CommandName="dump" CommandParameter="#$this->Parent->Data['id']" /></td>
		</tr>
	</prop:ItemTemplate>
	<prop:AlternatingItemTemplate>
		<tr class="row2">
			<td><%= htmlspecialchars(ucfirst($this->Parent->Data['repositoryname'])) %></td>
			<td><%= htmlspecialchars($this->Parent->Data['owner']) %>
			<td><com:TLinkButton Text="ダンプ" CommandName="dump" CommandParameter="#$this->Parent->Data['id']" /></td>
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
<%include SVNManagerApp.global.footer %>
