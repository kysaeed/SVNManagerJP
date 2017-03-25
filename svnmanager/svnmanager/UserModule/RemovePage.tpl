<%include SVNManagerApp.global.header %>
<h1>ユーザ削除</h1>
<com:TPanel ID="RemovePanel" Visible="true" >
<table cellspacing="0" cellpadding="5">
<tr><th>ユーザ名</th><th>メールアドレス</th></tr>
<com:TRepeater ID="UserTable" OnItemCommand="onDeleteUser" >
	<prop:HeaderTemplate>
	</prop:HeaderTemplate>
	<prop:ItemTemplate>
		<tr class="row1">
			<td><%= htmlspecialchars($this->Parent->Data['username']) %></td>
			<td><%= htmlspecialchars($this->Parent->Data['email']) %></td>
			<td><com:TLinkButton class="warning" Text="削除" CommandName="delete" CommandParameter="#$this->Parent->Data['userid']" onclick="if(!confirm('削除します。よろしいですか？')) return false;"/></td>
		</tr>
	</prop:ItemTemplate>
	<prop:AlternatingItemTemplate>
		<tr class="row2">
			<td><%= htmlspecialchars($this->Parent->Data['username']) %></td>
			<td><%= htmlspecialchars($this->Parent->Data['email']) %></td>
			<td><com:TLinkButton class="warning" Text="削除" CommandName="delete" CommandParameter="#$this->Parent->Data['userid']" onclick="if(!confirm('削除します。よろしいですか？')) return false;"/></td>
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
</com:TPanel>
<com:TPanel ID="ConfirmationPanel" Visible="false" >
	<h3 class="message">ユーザを削除しました</h3>
	<com:TLinkButton Text="ユーザ管理のメニューに戻る" OnClick="onGoBack"/>
</com:TPanel>
<%include SVNManagerApp.global.footer %>
