<%include SVNManagerApp.global.header %>
<h1>招待情報の管理</h1>
<com:TPanel ID="MainPanel" Visible="true">
<table cellspacing="0" cellpadding="5">
	<tr><th>メールアドレス</th></tr>
<com:TRepeater ID="UserTable">
	<prop:HeaderTemplate>
	</prop:HeaderTemplate>
	<prop:ItemTemplate>
		<tr class="row1">
			<td><com:TLabel ID="emailField" Text="#$this->Parent->Data['email']" /></td>
			<td><com:TButton Text="削除" CommandName="deleteInvite" OnCommand="Page.deleteInvite" /></td>
			<td><com:TButton Text="再送信" CommandName="sendInviteAgain" OnCommand="Page.sendInviteAgain" /></td>
		</tr>
	</prop:ItemTemplate>
	<prop:AlternatingItemTemplate>
		<tr class="row2">
			<td><com:TLabel ID="emailField" Text="#$this->Parent->Data['email']" /></td>
			<td><com:TButton Text="削除" CommandName="deleteInvite" OnCommand="Page.deleteInvite" /></td>
			<td><com:TButton Text="再送信" CommandName="sendInviteAgain" OnCommand="Page.sendInviteAgain" /></td>
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
<com:TPanel ID="SendAgainPanel" Visible="false">
	<h3 class="message">招待メールを再送しました</h3>
	<com:TLinkButton Text="招待情報の管理へ戻る" OnClick="onGoBack"/>
</com:TPanel>
<com:TPanel ID="SendAgainErrorPanel" Visible="false">
	<h3 class="message">招待メールの再送がエラーとなりました</h3>
	<com:TLinkButton Text="招待情報の管理へ戻る" OnClick="onGoBack"/>
</com:TPanel>
<com:TPanel ID="DeletePanel" Visible="false">
	<h3 class="message">招待情報を削除しました</h3>
	<com:TLinkButton Text="招待情報の管理へ戻る" OnClick="onGoBack"/>
</com:TPanel>
<%include SVNManagerApp.global.footer %>
