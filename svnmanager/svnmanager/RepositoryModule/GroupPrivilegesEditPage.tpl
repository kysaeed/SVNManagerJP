<%include SVNManagerApp.global.header %>
<h1>グループ権限設定</h1>
<table cellspacing="0" cellpadding="5">
<tr>
	<th>リポジトリ名:</th>
	<td><com:TLabel ID="RepositoryName" /></td>
	<th>オーナー:</th>
	<td><com:TLabel ID="RepositoryOwner" /></td>
</tr>
<tr>
<td> </td>
</tr>
<tr>
	<th align="left" >グループ</th>
	<th align="left" >ファイルパス</th>
	<th align="left" >Read権限</th>
	<th align="left" >Write権限</th>
</tr>
<com:TRepeater ID="RightsTable" OnItemCommand="onRemovePrivileges" >
	<prop:HeaderTemplate>
	</prop:HeaderTemplate>
	<prop:ItemTemplate>
		<tr class="row1">
			<td><%= htmlspecialchars($this->Parent->Data['groupname']) %></td>
			<td><%= htmlspecialchars($this->Parent->Data['path']) %></td>
			<td><com:TLabel Text="#$this->Parent->Data['read']" /></td>
			<td><com:TLabel Text="#$this->Parent->Data['write']" /></td>
			<td><com:TLinkButton class="warning" Text="削除" CommandName="remove" CommandParameter="#$this->Parent->Data['id']" CausesValidation="false" onclick="if(!confirm('Are you sure?')) return false;"/></td>
		</tr>
	</prop:ItemTemplate>
	<prop:AlternatingItemTemplate>
		<tr class="row2">
			<td><%= htmlspecialchars($this->Parent->Data['groupname']) %></td>
			<td><%= htmlspecialchars($this->Parent->Data['path']) %></td>
			<td><com:TLabel Text="#$this->Parent->Data['read']" /></td>
			<td><com:TLabel Text="#$this->Parent->Data['write']" /></td>
			<td><com:TLinkButton class="warning" Text="削除" CommandName="remove" CommandParameter="#$this->Parent->Data['id']" CausesValidation="false" onclick="if(!confirm('Are you sure?')) return false;"/></td>
		</tr>
	</prop:AlternatingItemTemplate>
	<prop:FooterTemplate>
	</prop:FooterTemplate>
</com:TRepeater>
<tr>
	<td>
		<com:TListBox ID="GroupSelector" Rows="1" />
	</td>
	<td>
		<com:TPlaceHolder ID="PathHolder" />
	</td>
	<td>
		<com:TCheckBox ID="Read" />
	</td>
	<td>
		<com:TCheckBox ID="Write" />
	</td>
	<td>
		<com:TButton ID="AddButton" Text="追加" OnClick="onClickAddBtn" />
	</td>
</tr>
<tr>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td align="right">
		<com:TButton ID="DoneButton" Text="設定を反映" OnClick="onClickDoneBtn" CausesValidation="false" />
	</td>
</tr>
</table>
<%include SVNManagerApp.global.footer %>
