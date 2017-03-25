<%include SVNManagerApp.global.header %>
<h1>リポジトリ管理</h1>
<table class="buttonmenu">
<com:TPanel Visible="#$this->Module->hasGrants()">
	<tr class="buttonmenu">
		<td width="460">
			リポジトリを新規作成
		</td>
		<td width="80">
			<com:TButton ID="CreateButton" Text="作成" OnClick="onClickCreateBtn" />
		</td>
	</tr>
</com:TPanel>
<com:TPanel Visible="#$this->Module->ownsRepositories()||$this->User->isAdmin()">
	<tr class="buttonmenu">
		<td>
			リポジトリを削除
		</td>
		<td>
			<com:TButton ID="RemoveButton" Text="削除" OnClick="onClickRemoveBtn" />
		</td>
	</tr>
	<tr class="buttonmenu">
		<td>
			リポジトリ設定変更
		</td>
		<td>
			<com:TButton ID="EditButton" Text="設定変更" OnClick="onClickEditBtn" />
		</td>
	</tr>
	<tr class="buttonmenu"><td> </td></tr>
	<tr class="buttonmenu">
		<td>
			ユーザの権限を設定
		</td>
		<td>
			<com:TButton ID="UserPrivilegesButton" Text="ユーザ権限" OnClick="onClickUserPrivilegesBtn" />
		</td>
	</tr>
	<tr class="buttonmenu">
		<td>
			グループの権限を設定
		</td>
		<td>
			<com:TButton ID="GroupPrivilegesButton" Text="グループ権限" OnClick="onClickGroupPrivilegesBtn" />
		</td>
	</tr>
	<tr class="buttonmenu"><td> </td></tr>
	<tr class="buttonmenu">
		<td>
			リポジトリのダンプをダウンロード
		</td>
		<td>
			<com:TButton ID="DumpRepositoryButton" Text="ダウンロード" OnClick="onClickDumpBtn" />
		</td>
	</tr>
</com:TPanel>
<com:TPanel Visible="#$this->Module->hasGrants()" >
	<tr class="buttonmenu">
		<td>
			リポジトリのダンプをアップロード
		</td>
		<td>
			<com:TButton ID="LoadRepositoryButton" Text="アップロード" OnClick="onClickLoadBtn" />
		</td>
	</tr>
</com:TPanel>
<com:TPanel Visible="#$this->Module->ownsRepositories()||$this->User->isAdmin()">
	<tr class="buttonmenu">
		<td>
			リポジトリのリカバリ
		</td>
		<td>
			<com:TButton ID="RecoverRepositoryButton" Text="リカバリ" OnClick="onClickRecoverBtn" />
		</td>
	<tr class="buttonmenu">
</com:TPanel>
<com:TPanel Visible="#$this->User->isAdmin()">
	<tr class="buttonmenu">
		<td>
			SVNManagerで管理されていないリポジトリをインポート
		</td>
		<td>
			<com:TButton ID="ImportRepositoryButton" Text="インポート" OnClick="onClickImportBtn" />
		</td>
	<tr class="buttonmenu">
</com:TPanel>
</table>
<%include SVNManagerApp.global.footer %>
