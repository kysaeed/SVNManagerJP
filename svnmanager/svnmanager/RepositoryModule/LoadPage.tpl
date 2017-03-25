<%include SVNManagerApp.global.header %>
<h1>リポジトリ ダンプのアップロード</h1>
<p style="color:red"><com:TLabel ID="MessageLabel" /> </p>
<com:TPanel ID="FormPanel">
<table>
	<tr>
		<th>リポジトリ名</th>
		<td>
			<com:TTextBox ID="Name" MaxLength="32" Columns="16"/>
			<com:TRequiredFieldValidator ControlToValidate="Name" Display="Dynamic">
			新規作成するリポジトリの名前を入力してください
			</com:TRequiredFieldValidator>
			<com:TRegularExpressionValidator ControlToValidate="Name" Display="Dynamic" RegularExpression='[^.<>|"\\\/:*?][^<>|"\\\/:*?]*'>リポジトリ名が無効です。ピリオド(.)で始まるリポジトリ名は作成できません。また、以下の文字は使用できません: &lt; &gt; | &quot; \ / : * ?</com:TRegularExpressionValidator>
			<com:TCustomValidator ControlToValidate="Name" OnServerValidate="isNotTaken" Display="Dynamic" >
			このリポジトリ名はすでに使われています。別の名前を入力してください
			</com:TCustomValidator>
		</td>
	</tr>
	<tr>
		<th>説明</th>
		<td>
			<com:TTextBox ID="Description" MaxLength="127" Columns="40"/>
			<com:TRequiredFieldValidator ControlToValidate="Description" Display="Dynamic">
			リポジトリの説明を入力してください
			</com:TRequiredFieldValidator>
		</td>
	</tr>
	<tr>
		<th>ダンプファイル</th>
		<td>
			<com:TFileUpload ID="FileUpload" OnFileUpload="onFileUpload" OnFileUploadFailed="onFileUploadFailed" />
			<com:TRequiredFieldValidator ControlToValidate="FileUpload" ErrorMessage="ダンプファイルを選択してください"/>
		</td>
	</tr>
	<tr>
		<td>
			<com:TButton ID="Confirm" Text="実行" OnClick="onConfirmBtn" />
		</td>
		<td align="right">
			<com:TButton ID="Cancel" Text="キャンセル" CausesValidation="false" OnClick="onCancelBtn" />
		</td>
	</tr>
</table>
</com:TPanel>
<com:TPanel ID="SuccessPanel" Visible="false">
	<h3 class="message">リポジトリのダンプを読み込みました</h3>
	<com:TLinkButton Text="リポジトリ管理のメニューに戻る" OnClick="onGoBack"/></br>
</com:TPanel>
<%include SVNManagerApp.global.footer %>
