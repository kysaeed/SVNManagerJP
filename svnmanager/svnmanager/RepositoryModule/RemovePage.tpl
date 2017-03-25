<%include SVNManagerApp.global.header %>
<h1>リポジトリ削除</h1>
<com:TPanel ID="RemovePanel" Visible="true">
<script type="text/javascript">
var Repos = new Array();
var i = 0;
</script>
<table cellspacing="0" cellpadding="5">
<com:TRepeater ID="RepositoryTable" OnItemCommand="onDeleteRepository" >
	<prop:HeaderTemplate>
		<tr><th>リポジトリ名</th><th>オーナー</th></tr>
	</prop:HeaderTemplate>
	<prop:ItemTemplate>
		<tr class="row1">
			<td><%= htmlspecialchars($this->Parent->Data['repositoryname']) %></td>
			<td><%= htmlspecialchars($this->Parent->Data['owner']) %></td>
			<td>
			  <com:TLinkButton class="warning" Text="削除" CommandName="delete" CommandParameter="#$this->Parent->Data['id']" onclick="if (!confirmDelete(this)) return false;"/>
			  <script type="text/javascript">
                            Repos[i] = "<%= htmlspecialchars($this->Parent->Data['repositoryname']) %>";
			    i++;
                          </script>
                        </td>
		</tr>
	</prop:ItemTemplate>
	<prop:AlternatingItemTemplate>
		<tr class="row2">
			<td><%= htmlspecialchars($this->Parent->Data['repositoryname']) %></td>
			<td><%= htmlspecialchars($this->Parent->Data['owner']) %></td>
			<td>
                          <com:TLinkButton class="warning" Text="削除" CommandName="delete" CommandParameter="#$this->Parent->Data['id']" onclick="if (!confirmDelete(this)) return false;"/>
			  <script type="text/javascript">
                            Repos[i] = "<%= htmlspecialchars($this->Parent->Data['repositoryname']) %>";
                            i++;
                          </script>
                        </td>
		</tr>
	</prop:AlternatingItemTemplate>
	<prop:FooterTemplate>
	</prop:FooterTemplate>
</com:TRepeater>
	<tr>
		<td></td>
		<td></td>
		<td>
			<com:TButton Text="削除" OnClick="onCancelBtn" CausesValidation="false" />
		</td>
	</tr>
</table>
</com:TPanel>
<com:TPanel ID="ConfirmationPanel" Visible="false" >
	<h3 class="message">リポジトリを削除しました！</h3>
	<com:TLinkButton Text="リポジトリ管理のメニューに戻る" OnClick="onGoBack"/></br>
</com:TPanel>
<com:TPanel ID="FailedPanel" Visible="false" >
	<h3 class="warning">リポジトリを削除できませんでした！</h3>
	<com:TLinkButton Text="リポジトリ管理のメニューに戻る" OnClick="onGoBack"/></br>
</com:TPanel>
<script text="text/javascript">
function confirmDelete(project)
{
	var id = project.id.split(":")[1].substr(4);
	return confirm("リポジトリ'" + Repos[id] + "'を削除します。よろしいですか?");
}
</script>
<%include SVNManagerApp.global.footer %>
