<table class="menu">
	<tr><th>-----[メニュー]-----<br/>v1.10-JP</tr>
	<com:TPanel ID="MenuPanel" Visible="#$this->User->isAuthenticated()" >
		<tr><td><com:TLinkButton ID="UserAdminButton" Text="ユーザ管理" CausesValidation="false" OnClick="onClickUserBtn" class="menu" /></td></tr>
		<tr><td><com:TLinkButton ID="GroupAdminButton" Text="グループ管理" CausesValidation="false" OnClick="onClickGroupBtn" class="menu" Visible="#$this->User->isAdmin()&&!$this->User->isConfigAdmin()" /></td></tr>
		<tr><td><com:TLinkButton ID="RepositoryAdminButton" Text="リポジトリ管理" CausesValidation="false" OnClick="onClickRepositoryBtn" class="menu" Visible="#$this->User->needsRepositoryMenu()" /></td></tr>
		<tr><td><com:TLinkButton ID="LogoutButton" Text="ログアウト" CausesValidation="false" OnClick="onClickLogoutBtn" class="menu" /></td></tr>
	</com:TPanel>
	<tr><td><com:TLinkButton ID="LoginButton" Text="ログイン" CausesValidation="false" OnClick="onClickLoginBtn" Visible="#!$this->User->isAuthenticated()" class="menu" /></td></tr>
</table>
