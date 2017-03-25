<%include SVNManagerApp.global.header %>
<h1>グループ管理</h1>
<table class="buttonmenu">
<com:TPanel Visible="#$this->User->isAdmin()">
	<tr class="buttonmenu">
		<td width="460">
			グループを新規作成
		</td>
		<td width="80">
			<com:TButton ID="CreateButton" Text="作成" OnClick="onClickCreateBtn" />
		</td>
	</tr>
<com:TPanel Visible="#$this->Module->areGroups()">
	<tr class="buttonmenu">
		<td>
			グループを削除
		</td>
		<td>
			<com:TButton ID="RemoveButton" Text="削除" OnClick="onClickRemoveBtn"  />
		</td>
	</tr>
	<tr class="buttonmenu">
		<td>
			グループを変更
		</td>
		<td>
			<com:TButton ID="EditButton" Text="変更" OnClick="onClickEditBtn" />
		</td>
	</tr>
	<tr class="buttonmenu">
		<td>
			mailer.confにメールアドレスをエクスポート
		</td>
		<td>
			<com:TButton ID="ExportButton" Text="エクスポート" OnClick="onClickExportBtn" />
		</td>
	</tr>
</com:TPanel>
</table>
</com:TPanel>
<%include SVNManagerApp.global.footer %>
