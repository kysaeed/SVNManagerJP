<%include SVNManagerApp.global.header %>
<h1>ユーザ管理</h1>
<table class="buttonmenu">
	<com:TPanel Visible="#$this->User->isAdmin()">
		<tr class="buttonmenu">
			<td width="460">
				新規ユーザをリポジトリに招待
			</td>
			<td width="80">
				<com:TButton ID="InviteButton" Text="招待" OnClick="onClickInviteBtn" />
			</td>
		</tr>
		<tr class="buttonmenu">
			<td>
				招待情報の管理
			</td>
			<td>
				<com:TButton ID="InviteManageButton" Text="管理" OnClick="onClickManageInviteBtn" />
			</td>
		</tr>
		<tr class="buttonmenu">
			<td>
				ユーザの追加
			</td>
			<td>
				<com:TButton ID="AddButton" Text="追加" OnClick="onClickAddBtn" />
			</td>
		</tr>
	</com:TPanel>
	<tr class="buttonmenu">
		<td>
			ユーザの設定変更
		</td>
		<td>
			<com:TButton ID="EditButton" Text="変更" OnClick="onClickEditBtn" />
		</td>
	</tr>
	<com:TPanel Visible="#$this->User->isAdmin()">
		<tr class="buttonmenu">
			<td>
				ユーザの削除
			</td>
			<td>
				<com:TButton ID="RemoveButton" Text="削除" OnClick="onClickRemoveBtn" Visible="#$this->User->isAdmin()"/>
			</td>
		</tr>
	</com:TPanel>
</table>
<%include SVNManagerApp.global.footer %>
