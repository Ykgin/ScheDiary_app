# README

# アプリケーション名
  ScheDiray-app

# アプリケーション概要
  カレンダーで日々のスケジュールを管理することができます。
  日記を付けることもでき、毎日の記録ができます。

# URL
  

# テスト用アカウント
  ・Basic認証ID：admin
  ・Basic認証パスワード：2222
  ・メールアドレス：test@test.com
  ・パスワード：11111a

# 利用方法
  1. トップページ（一覧ページ）のヘッダーからユーザー新規登録を行う
  2. 予定を登録するボタンから、新規投稿ページで予定（日時、タイトル、内容）を登録する
  3. 日記ボタンから、日記の投稿をする

# アプリケーションを作成した背景
  簡単なスケジュール管理ができる、尚且つ、日記を書くことで自分の考えていること整理したり、「楽しい」「もやもやする」など様々な感情を自由に吐き出せる場所があればいいな、
  という思いからこのアプリを作成しました。

# 洗い出した要件
  https://docs.google.com/spreadsheets/d/1R0nv1IZTiQ54EIx7lzDTDFB0YB93P646bj3pV2gZaGs/edit?usp=sharing

# 実装した機能についての画像やGIFおよびその説明

# 実装予定の機能
  ・画像投稿機能
  ・マイページ


# データベース設計
  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" width="559px" viewBox="-0.5 -0.5 559 240" content="&lt;mxfile&gt;&lt;diagram id=&quot;GlgQSg_s2s95c2FE_Ztf&quot; name=&quot;ページ1&quot;&gt;&lt;mxGraphModel dx=&quot;657&quot; dy=&quot;349&quot; grid=&quot;1&quot; gridSize=&quot;10&quot; guides=&quot;1&quot; tooltips=&quot;1&quot; connect=&quot;1&quot; arrows=&quot;1&quot; fold=&quot;1&quot; page=&quot;1&quot; pageScale=&quot;1&quot; pageWidth=&quot;827&quot; pageHeight=&quot;1169&quot; background=&quot;#ffffff&quot; math=&quot;0&quot; shadow=&quot;0&quot;&gt;&lt;root&gt;&lt;mxCell id=&quot;0&quot;/&gt;&lt;mxCell id=&quot;1&quot; parent=&quot;0&quot;/&gt;&lt;mxCell id=&quot;2&quot; value=&quot;user&quot; style=&quot;swimlane;fontStyle=0;childLayout=stackLayout;horizontal=1;startSize=26;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=1;marginBottom=0;align=center;fontSize=14;shadow=0;fillColor=#ffe6cc;strokeColor=#d79b00;rounded=1;swimlaneFillColor=#FFFFFF;fontColor=#1A1A1A;swimlaneLine=1;&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;&lt;mxGeometry x=&quot;40&quot; y=&quot;40&quot; width=&quot;160&quot; height=&quot;146&quot; as=&quot;geometry&quot;&gt;&lt;mxRectangle x=&quot;40&quot; y=&quot;40&quot; width=&quot;70&quot; height=&quot;30&quot; as=&quot;alternateBounds&quot;/&gt;&lt;/mxGeometry&gt;&lt;/mxCell&gt;&lt;mxCell id=&quot;3&quot; value=&quot;nickname&quot; style=&quot;text;strokeColor=none;fillColor=none;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;fontSize=12;rounded=1;fontColor=#1A1A1A;shadow=0;&quot; parent=&quot;2&quot; vertex=&quot;1&quot;&gt;&lt;mxGeometry y=&quot;26&quot; width=&quot;160&quot; height=&quot;30&quot; as=&quot;geometry&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=&quot;4&quot; value=&quot;email&quot; style=&quot;text;strokeColor=none;fillColor=none;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;fontSize=12;rounded=1;fontColor=#1A1A1A;&quot; parent=&quot;2&quot; vertex=&quot;1&quot;&gt;&lt;mxGeometry y=&quot;56&quot; width=&quot;160&quot; height=&quot;30&quot; as=&quot;geometry&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=&quot;5&quot; value=&quot;password&quot; style=&quot;text;strokeColor=none;fillColor=none;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;fontSize=12;rounded=1;fontColor=#1A1A1A;&quot; parent=&quot;2&quot; vertex=&quot;1&quot;&gt;&lt;mxGeometry y=&quot;86&quot; width=&quot;160&quot; height=&quot;30&quot; as=&quot;geometry&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=&quot;7&quot; value=&quot;birthday&quot; style=&quot;text;strokeColor=none;fillColor=none;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;fontSize=12;rounded=1;fontColor=#1A1A1A;&quot; parent=&quot;2&quot; vertex=&quot;1&quot;&gt;&lt;mxGeometry y=&quot;116&quot; width=&quot;160&quot; height=&quot;30&quot; as=&quot;geometry&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=&quot;8&quot; value=&quot;schedule&quot; style=&quot;swimlane;fontStyle=0;childLayout=stackLayout;horizontal=1;startSize=26;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=1;marginBottom=0;align=center;fontSize=14;rounded=1;fillColor=#d5e8d4;swimlaneFillColor=#FFFFFF;strokeColor=#82b366;fontColor=#1A1A1A;&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;&lt;mxGeometry x=&quot;400&quot; y=&quot;40&quot; width=&quot;160&quot; height=&quot;116&quot; as=&quot;geometry&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=&quot;9&quot; value=&quot;title&quot; style=&quot;text;strokeColor=none;fillColor=none;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;fontSize=12;rounded=1;fontColor=#1A1A1A;&quot; parent=&quot;8&quot; vertex=&quot;1&quot;&gt;&lt;mxGeometry y=&quot;26&quot; width=&quot;160&quot; height=&quot;30&quot; as=&quot;geometry&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=&quot;10&quot; value=&quot;start_time&quot; style=&quot;text;strokeColor=none;fillColor=none;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;fontSize=12;rounded=1;fontColor=#1A1A1A;&quot; parent=&quot;8&quot; vertex=&quot;1&quot;&gt;&lt;mxGeometry y=&quot;56&quot; width=&quot;160&quot; height=&quot;30&quot; as=&quot;geometry&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=&quot;11&quot; value=&quot;content&quot; style=&quot;text;strokeColor=none;fillColor=none;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;fontSize=12;rounded=1;fontColor=#1A1A1A;&quot; parent=&quot;8&quot; vertex=&quot;1&quot;&gt;&lt;mxGeometry y=&quot;86&quot; width=&quot;160&quot; height=&quot;30&quot; as=&quot;geometry&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=&quot;12&quot; value=&quot;diary&quot; style=&quot;swimlane;fontStyle=0;childLayout=stackLayout;horizontal=1;startSize=26;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=1;marginBottom=0;align=center;fontSize=14;rounded=1;fillColor=#b0e3e6;swimlaneFillColor=#FFFFFF;strokeColor=#0e8088;fontColor=#1A1A1A;&quot; parent=&quot;1&quot; vertex=&quot;1&quot;&gt;&lt;mxGeometry x=&quot;400&quot; y=&quot;220&quot; width=&quot;160&quot; height=&quot;56&quot; as=&quot;geometry&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=&quot;13&quot; value=&quot;content&quot; style=&quot;text;strokeColor=none;fillColor=none;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;fontSize=12;rounded=1;fontColor=#1A1A1A;&quot; parent=&quot;12&quot; vertex=&quot;1&quot;&gt;&lt;mxGeometry y=&quot;26&quot; width=&quot;160&quot; height=&quot;30&quot; as=&quot;geometry&quot;/&gt;&lt;/mxCell&gt;&lt;mxCell id=&quot;16&quot; value=&quot;&quot; style=&quot;edgeStyle=entityRelationEdgeStyle;fontSize=12;html=1;endArrow=ERoneToMany;entryX=0;entryY=0.5;entryDx=0;entryDy=0;rounded=1;strokeColor=#000066;&quot; parent=&quot;1&quot; target=&quot;10&quot; edge=&quot;1&quot;&gt;&lt;mxGeometry width=&quot;100&quot; height=&quot;100&quot; relative=&quot;1&quot; as=&quot;geometry&quot;&gt;&lt;mxPoint x=&quot;200&quot; y=&quot;110&quot; as=&quot;sourcePoint&quot;/&gt;&lt;mxPoint x=&quot;300&quot; y=&quot;10&quot; as=&quot;targetPoint&quot;/&gt;&lt;/mxGeometry&gt;&lt;/mxCell&gt;&lt;mxCell id=&quot;17&quot; value=&quot;&quot; style=&quot;edgeStyle=entityRelationEdgeStyle;fontSize=12;html=1;endArrow=ERoneToMany;entryX=0;entryY=0.25;entryDx=0;entryDy=0;rounded=1;strokeColor=#000066;&quot; parent=&quot;1&quot; target=&quot;12&quot; edge=&quot;1&quot;&gt;&lt;mxGeometry width=&quot;100&quot; height=&quot;100&quot; relative=&quot;1&quot; as=&quot;geometry&quot;&gt;&lt;mxPoint x=&quot;200&quot; y=&quot;163&quot; as=&quot;sourcePoint&quot;/&gt;&lt;mxPoint x=&quot;300&quot; y=&quot;63&quot; as=&quot;targetPoint&quot;/&gt;&lt;/mxGeometry&gt;&lt;/mxCell&gt;&lt;mxCell id=&quot;20&quot; value=&quot;&quot; style=&quot;edgeStyle=entityRelationEdgeStyle;fontSize=12;html=1;endArrow=ERoneToMany;entryX=1;entryY=0.5;entryDx=0;entryDy=0;exitX=1;exitY=0.5;exitDx=0;exitDy=0;rounded=1;strokeColor=#000066;&quot; parent=&quot;1&quot; source=&quot;13&quot; target=&quot;10&quot; edge=&quot;1&quot;&gt;&lt;mxGeometry width=&quot;100&quot; height=&quot;100&quot; relative=&quot;1&quot; as=&quot;geometry&quot;&gt;&lt;mxPoint x=&quot;360&quot; y=&quot;270&quot; as=&quot;sourcePoint&quot;/&gt;&lt;mxPoint x=&quot;460&quot; y=&quot;170&quot; as=&quot;targetPoint&quot;/&gt;&lt;/mxGeometry&gt;&lt;/mxCell&gt;&lt;/root&gt;&lt;/mxGraphModel&gt;&lt;/diagram&gt;&lt;/mxfile&gt;" onclick="(function(svg){var src=window.event.target||window.event.srcElement;while (src!=null&amp;&amp;src.nodeName.toLowerCase()!='a'){src=src.parentNode;}if(src==null){if(svg.wnd!=null&amp;&amp;!svg.wnd.closed){svg.wnd.focus();}else{var r=function(evt){if(evt.data=='ready'&amp;&amp;evt.source==svg.wnd){svg.wnd.postMessage(decodeURIComponent(svg.getAttribute('content')),'*');window.removeEventListener('message',r);}};window.addEventListener('message',r);svg.wnd=window.open('https://viewer.diagrams.net/?client=1&amp;page=0&amp;edit=_blank');}}})(this);" style="cursor:pointer;max-width:100%;max-height:240px;"><defs><clipPath id="mx-clip-4-31-152-30-0"><rect x="4" y="31" width="152" height="30"/></clipPath><clipPath id="mx-clip-4-61-152-30-0"><rect x="4" y="61" width="152" height="30"/></clipPath><clipPath id="mx-clip-4-91-152-30-0"><rect x="4" y="91" width="152" height="30"/></clipPath><clipPath id="mx-clip-4-121-152-30-0"><rect x="4" y="121" width="152" height="30"/></clipPath><clipPath id="mx-clip-364-31-152-30-0"><rect x="364" y="31" width="152" height="30"/></clipPath><clipPath id="mx-clip-364-61-152-30-0"><rect x="364" y="61" width="152" height="30"/></clipPath><clipPath id="mx-clip-364-91-152-30-0"><rect x="364" y="91" width="152" height="30"/></clipPath><clipPath id="mx-clip-364-211-152-30-0"><rect x="364" y="211" width="152" height="30"/></clipPath></defs><g><path d="M 160 26 L 160 11.7 Q 160 0 148.3 0 L 11.7 0 Q 0 0 0 11.7 L 0 26" fill="#ffe6cc" stroke="#d79b00" stroke-miterlimit="10" pointer-events="all"/><path d="M 0 26 L 0 134.3 Q 0 146 11.7 146 L 148.3 146 Q 160 146 160 134.3 L 160 26" fill="#ffffff" stroke="#d79b00" stroke-miterlimit="10" pointer-events="all"/><path d="M 0 26 L 160 26" fill="none" stroke="#d79b00" stroke-miterlimit="10" pointer-events="all"/><g fill="#1A1A1A" font-family="Helvetica" text-anchor="middle" font-size="14px"><text x="79.5" y="18.5">user</text></g><rect x="0" y="26" width="160" height="30" rx="4.5" ry="4.5" fill="none" stroke="none" pointer-events="all"/><g fill="#1A1A1A" font-family="Helvetica" clip-path="url(#mx-clip-4-31-152-30-0)" font-size="12px"><text x="5.5" y="43.5">nickname</text></g><rect x="0" y="56" width="160" height="30" rx="4.5" ry="4.5" fill="none" stroke="none" pointer-events="all"/><g fill="#1A1A1A" font-family="Helvetica" clip-path="url(#mx-clip-4-61-152-30-0)" font-size="12px"><text x="5.5" y="73.5">email</text></g><rect x="0" y="86" width="160" height="30" rx="4.5" ry="4.5" fill="none" stroke="none" pointer-events="all"/><g fill="#1A1A1A" font-family="Helvetica" clip-path="url(#mx-clip-4-91-152-30-0)" font-size="12px"><text x="5.5" y="103.5">password</text></g><rect x="0" y="116" width="160" height="30" rx="4.5" ry="4.5" fill="none" stroke="none" pointer-events="all"/><g fill="#1A1A1A" font-family="Helvetica" clip-path="url(#mx-clip-4-121-152-30-0)" font-size="12px"><text x="5.5" y="133.5">birthday</text></g><path d="M 520 26 L 520 11.7 Q 520 0 508.3 0 L 371.7 0 Q 360 0 360 11.7 L 360 26" fill="#d5e8d4" stroke="#82b366" stroke-miterlimit="10" pointer-events="all"/><path d="M 360 26 L 360 104.3 Q 360 116 371.7 116 L 508.3 116 Q 520 116 520 104.3 L 520 26" fill="#ffffff" stroke="#82b366" stroke-miterlimit="10" pointer-events="all"/><path d="M 360 26 L 520 26" fill="none" stroke="#82b366" stroke-miterlimit="10" pointer-events="all"/><g fill="#1A1A1A" font-family="Helvetica" text-anchor="middle" font-size="14px"><text x="439.5" y="18.5">schedule</text></g><rect x="360" y="26" width="160" height="30" rx="4.5" ry="4.5" fill="none" stroke="none" pointer-events="all"/><g fill="#1A1A1A" font-family="Helvetica" clip-path="url(#mx-clip-364-31-152-30-0)" font-size="12px"><text x="365.5" y="43.5">title</text></g><rect x="360" y="56" width="160" height="30" rx="4.5" ry="4.5" fill="none" stroke="none" pointer-events="all"/><g fill="#1A1A1A" font-family="Helvetica" clip-path="url(#mx-clip-364-61-152-30-0)" font-size="12px"><text x="365.5" y="73.5">start_time</text></g><rect x="360" y="86" width="160" height="30" rx="4.5" ry="4.5" fill="none" stroke="none" pointer-events="all"/><g fill="#1A1A1A" font-family="Helvetica" clip-path="url(#mx-clip-364-91-152-30-0)" font-size="12px"><text x="365.5" y="103.5">content</text></g><path d="M 520 206 L 520 191.7 Q 520 180 508.3 180 L 371.7 180 Q 360 180 360 191.7 L 360 206" fill="#b0e3e6" stroke="#0e8088" stroke-miterlimit="10" pointer-events="all"/><path d="M 360 206 L 360 224.3 Q 360 236 371.7 236 L 508.3 236 Q 520 236 520 224.3 L 520 206" fill="#ffffff" stroke="#0e8088" stroke-miterlimit="10" pointer-events="all"/><path d="M 360 206 L 520 206" fill="none" stroke="#0e8088" stroke-miterlimit="10" pointer-events="all"/><g fill="#1A1A1A" font-family="Helvetica" text-anchor="middle" font-size="14px"><text x="439.5" y="198.5">diary</text></g><rect x="360" y="206" width="160" height="30" rx="4.5" ry="4.5" fill="none" stroke="none" pointer-events="all"/><g fill="#1A1A1A" font-family="Helvetica" clip-path="url(#mx-clip-364-211-152-30-0)" font-size="12px"><text x="365.5" y="223.5">content</text></g><path d="M 160 70 L 180 70 Q 190 70 200 70.07 L 320 70.93 Q 330 71 340 71 L 360 71" fill="none" stroke="#000066" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 352 75 L 352 67 M 360 67 L 352 71 L 360 75" fill="none" stroke="#000066" stroke-miterlimit="10" pointer-events="all"/><path d="M 160 123 L 180 123 Q 190 123 198.92 127.52 L 321.08 189.48 Q 330 194 340 194 L 360 194" fill="none" stroke="#000066" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 352 198 L 352 190 M 360 190 L 352 194 L 360 198" fill="none" stroke="#000066" stroke-miterlimit="10" pointer-events="all"/><path d="M 520 221 L 540 221 Q 550 221 550 211 L 550 81 Q 550 71 540 71 L 520 71" fill="none" stroke="#000066" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 528 67 L 528 75 M 520 75 L 528 71 L 520 67" fill="none" stroke="#000066" stroke-miterlimit="10" pointer-events="all"/></g></svg>

# 画面遷移図

# 開発環境

# ローカルでの動作方法
以下のコマンドを順に実行。


# 工夫したポイント


# テーブル設計
  
## users テーブル

| Column   | Type    | Options     |
| -------- | ------- | ----------- |
| nickname | string  | null: false |
| email    | string  | null: false |
| password | string  | null: false |
| birthday | date    | null: false |

### Association
- has_many :schedules
- has_many :diaries

## schedules テーブル
| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| title      | string     | null: false                    |
| start_time | datetime   | null: false                    |
| content    | text       |                                |
| user       | references | null: false, foreign_key: true |
| diary      | references |                                |

### Association
- belongs_to :user
- has_many :diary


## diaries テーブル
| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| content  | text       | null: false                    |
| user     | references | null: false, foreign_key: true |
| schedule | references |                                |

### Association
- belongs_to :user
- belongs_to :schedule