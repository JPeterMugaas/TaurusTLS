object frmConnect: TfrmConnect
  Left = 195
  Top = 108
  BorderStyle = bsDialog
  Caption = 'Tabbed Notebook Dialog'
  ClientHeight = 300
  ClientWidth = 427
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBtnText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 427
    Height = 266
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    ParentColor = True
    TabOrder = 0
    ExplicitWidth = 425
    ExplicitHeight = 258
    object PageControl1: TPageControl
      Left = 5
      Top = 5
      Width = 417
      Height = 256
      ActivePage = TabSheet1
      Align = alClient
      Images = VirtualImageList1
      TabOrder = 0
      ExplicitWidth = 415
      ExplicitHeight = 248
      object TabSheet1: TTabSheet
        Caption = 'C&onnection'
        ImageName = 'libre-gui-server'
        DesignSize = (
          409
          226)
        object lblHost: TLabel
          Left = 18
          Top = 50
          Width = 72
          Height = 23
          Alignment = taRightJustify
          AutoSize = False
          Caption = '&Host:'
          FocusControl = edtHostname
          Layout = tlCenter
        end
        object lblUsername: TLabel
          Left = 18
          Top = 124
          Width = 72
          Height = 23
          Alignment = taRightJustify
          AutoSize = False
          Caption = '&User name:'
          FocusControl = edtUsername
          Layout = tlCenter
        end
        object lblPassword: TLabel
          Left = 18
          Top = 161
          Width = 72
          Height = 23
          Alignment = taRightJustify
          AutoSize = False
          Caption = '&Password:'
          FocusControl = edtPassword
          Layout = tlCenter
        end
        object lblProfileName: TLabel
          Left = 18
          Top = 13
          Width = 72
          Height = 23
          AutoSize = False
          Caption = 'P&rofile Name:'
          FocusControl = edtProfileName
          Layout = tlCenter
        end
        object lblConnectionType: TLabel
          Left = 18
          Top = 198
          Width = 72
          Height = 23
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Pro&tocol:'
          FocusControl = cboConnectionType
          Layout = tlCenter
        end
        object spdShowPassword: TSpeedButton
          Left = 367
          Top = 161
          Width = 23
          Height = 23
          GroupIndex = 1
          ImageIndex = 4
          ImageName = 'libre-gui-unlock'
          Images = VirtualImageList1
          OnClick = spdShowPasswordClick
        end
        object edtHostname: TEdit
          Left = 96
          Top = 50
          Width = 295
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = edtHostnameChange
          ExplicitWidth = 293
        end
        object chkAnonymousFTP: TCheckBox
          Left = 96
          Top = 87
          Width = 179
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          Caption = '&Anonymous FTP'
          TabOrder = 2
          OnClick = chkAnonymousFTPClick
          ExplicitWidth = 177
        end
        object edtUsername: TEdit
          Left = 96
          Top = 124
          Width = 295
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnChange = edtUsernameChange
          ExplicitWidth = 293
        end
        object edtPassword: TEdit
          Left = 96
          Top = 161
          Width = 263
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          PasswordChar = '*'
          TabOrder = 4
          OnChange = edtPasswordChange
          ExplicitWidth = 261
        end
        object cboConnectionType: TComboBox
          Left = 96
          Top = 198
          Width = 295
          Height = 23
          Style = csDropDownList
          Anchors = [akLeft, akTop, akRight]
          ItemIndex = 0
          TabOrder = 5
          Text = 'Unencrypted FTP Connection'
          OnChange = cboConnectionTypeChange
          Items.Strings = (
            'Unencrypted FTP Connection'
            'Use Explicit FTP TLS (FTPS) if Available'
            'Require Explicit FTP TLS (FTPS)'
            'Implicit TLS FTP Connection (FTPS)')
          ExplicitWidth = 293
        end
        object edtProfileName: TEdit
          Left = 96
          Top = 13
          Width = 301
          Height = 23
          TabOrder = 0
          OnChange = edtProfileNameChange
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'SSL C&ertificate'
        ImageIndex = 3
        ImageName = 'libre-gui-certificate'
        DesignSize = (
          409
          226)
        object lblPrivateKeyFile: TLabel
          Left = 18
          Top = 16
          Width = 72
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Private &Key:'
          FocusControl = edtPrivateKeyFile
        end
        object lblPublicKey: TLabel
          Left = 18
          Top = 46
          Width = 72
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'P&ublic Key:'
          FocusControl = edtPublicKey
        end
        object spdbtnPrivateKeyFile: TSpeedButton
          Left = 362
          Top = 16
          Width = 23
          Height = 22
          Anchors = [akTop]
          ImageIndex = 2
          ImageName = 'libre-gui-key'
          Images = VirtualImageList1
          OnClick = spdbtnPrivateKeyFileClick
          ExplicitLeft = 368
        end
        object spdbtnPublicKey: TSpeedButton
          Left = 362
          Top = 45
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          ImageIndex = 2
          ImageName = 'libre-gui-key'
          Images = VirtualImageList1
          OnClick = spdbtnPublicKeyClick
          ExplicitLeft = 368
        end
        object spdbtnCAKey: TSpeedButton
          Left = 362
          Top = 75
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          ImageIndex = 2
          ImageName = 'libre-gui-key'
          Images = VirtualImageList1
          OnClick = spdbtnCAKeyClick
          ExplicitLeft = 368
        end
        object lblCAKey: TLabel
          Left = 18
          Top = 76
          Width = 72
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CA Key:'
          FocusControl = edtCAKey
        end
        object edtPublicKey: TEdit
          Left = 96
          Top = 43
          Width = 259
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          AutoSelect = False
          TabOrder = 1
          ExplicitWidth = 261
        end
        object edtPrivateKeyFile: TEdit
          Left = 96
          Top = 13
          Width = 259
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          AutoSelect = False
          TabOrder = 0
          ExplicitWidth = 261
        end
        object edtCAKey: TEdit
          Left = 96
          Top = 73
          Width = 259
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          AutoSelect = False
          TabOrder = 2
          ExplicitWidth = 261
        end
      end
      object TabSheet2: TTabSheet
        Caption = '&Advanced'
        ImageIndex = 1
        ImageName = 'libre-gui-idea'
        DesignSize = (
          409
          226)
        object lblTransferType: TLabel
          Left = 17
          Top = 45
          Width = 73
          Height = 15
          Alignment = taRightJustify
          Caption = '&Transfer Type:'
          FocusControl = cboTransferTypes
        end
        object lblAccount: TLabel
          Left = 18
          Top = 16
          Width = 72
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'A&ccount:'
          FocusControl = edtAccount
        end
        object lblPort: TLabel
          Left = 65
          Top = 75
          Width = 25
          Height = 15
          Alignment = taRightJustify
          Caption = 'Po&rt:'
          FocusControl = spnedtPort
        end
        object lblSecurityLevel: TLabel
          Left = 15
          Top = 107
          Width = 75
          Height = 15
          Caption = 'Security &Level:'
        end
        object cboTransferTypes: TComboBox
          Left = 96
          Top = 42
          Width = 295
          Height = 23
          Style = csDropDownList
          Anchors = [akLeft, akTop, akRight]
          ItemIndex = 0
          TabOrder = 1
          Text = 'Use Default Setting'
          Items.Strings = (
            'Use Default Setting'
            'Use PASV Transfers'
            'Use PORT Transfers')
        end
        object edtAccount: TEdit
          Left = 96
          Top = 13
          Width = 301
          Height = 23
          TabOrder = 0
        end
        object spnedtPort: TSpinEdit
          Left = 96
          Top = 72
          Width = 121
          Height = 24
          MaxValue = 65535
          MinValue = 1
          TabOrder = 2
          Value = 21
        end
        object cboSecurityLevel: TComboBox
          Left = 96
          Top = 104
          Width = 301
          Height = 23
          Style = csDropDownList
          ItemIndex = 2
          TabOrder = 3
          Text = '2 - Accept only 112 security bits or greater'
          Items.Strings = (
            '0 - Accept everything'
            '1 - Accept only 80 security bits or greater'
            '2 - Accept only 112 security bits or greater'
            '3 - Accept only 238 security bits or greater'
            '4 - Accept only 192 security bits or greater'
            '5 - Accept only 256 security bits or greater')
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 266
    Width = 427
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    TabOrder = 1
    ExplicitTop = 258
    ExplicitWidth = 425
    object OKBtn: TButton
      Left = 266
      Top = 2
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      Enabled = False
      ModalResult = 1
      TabOrder = 0
    end
    object CancelBtn: TButton
      Left = 347
      Top = 2
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object ImageCollection1: TImageCollection
    Images = <
      item
        Name = 'libre-gui-server'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004900000049080600000071730B
              DC000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              019F49444154785EED9AB151C4301405CF544009944009500947298444B44009
              846447098494404807E6FD913CD8927C3C3B3B7B77E68DE591A21D7D49A773D7
              F7FD01CE73959F7006241920C90049064832409201920C9064802403241920C9
              0049064832409241F3AAA4EBBA5B3D5ED2DBEE789693F7DC4E84A432E22EBA76
              9A63E98372335823E97E269FCA3629A75644CC965B397688388DC75D7028B735
              20C90049064832983B4CC6C21D0B718BA7FC2C79506E52F3A2799493D7DC4E8C
              57F12182C3E428949B01BFDD6AAADF6E7C0B6040B919CC95DBB51E51727BE44B
              4EBE733B1192CA0876B75128370324192C96A4E917EB5815757DA411DB839964
              802403241920C90049068B25E9347E6A455DDB3DA16BFBAE2238718F42B919C4
              413037FF50F9C435EC31BDED8E373999FCD1DA940453283703CAADA62AB7C92A
              3E44B0BB8D42B919AC91145722ADFC28DBA49C5A11315B6EE5D821824F6FF60C
              920C906480240324192C96A4D378DF8ABA6247DC24CC24032419705562C04C32
              409201920C9064802403241920C90049064832409201920C906480A47F391C7E
              01A438EB56B1D6B1570000000049454E44AE426082}
          end>
      end
      item
        Name = 'libre-gui-idea'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004900000049080600000071730B
              DC000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              099149444154785EED9C5D6C1C5715C7CFBDE3CF5D3BB11D9C38A86EDC3A6E0A
              A8515A48D352040EAA4A438B7000A90912E036AD4878A1F4A5AA8414221EA015
              2295408DA536A92950125E62D48AA44894F4A1E08A42230517306D70A334719A
              90C4B177BDFE98B99C73F76CB2DE7A67CE8C6777FDE09F64EFBD779DDDB9FF39
              F77CDC998932C6C012FE687E5DC2872591042C8924604924014B2209A85C749B
              78AE1BB4EEC66FDF84BD3A00D3A640DD9C7D330B1EDB082835426D05F01A8E1C
              87847314A03763FFA04C9451A4FE3A33E1F680565FC0C9F6A0204DFC4628F078
              3328DC001EF82B30E30C4053EF657EAB64945EA4CBFD4DA6C67D1C0C3CAA9442
              8B89173CFC3E057A0F247B477928764A2812598EB713B4D91DD56AA49075E109
              7812A6F5D3A5B0ACD28894DEDF831FBB170FBC8347CA820143023DA1123BFAB2
              23F110BF48E9033FC0DFBBB39DCA80333AA812FAC1B81C7C7C2291EFA9F69E57
              0A7A78A4A2E0AC8E2BADB7425DAF8D8E0B211E9132FD1DC6F30E6398DEC0238B
              025C7EE8CCBDAD2AF1C8200F4562E122A5FADB0CB87F29B7FF9182F3CB28F0EE
              84E423C77928340B14092358CAFB132EB13B7820322673116026CD3DA63A01AA
              AE853BD1C1398E287050A86869C2824432A903FB50A09DDC0DC74C0ABC0B6F83
              197B0F3F8756C52CBF5180AE02956C03D5B01A544B17A8C44A7E231C38CD4195
              D49BA338F3C8229989038F2A0D7BB92BC6A43F0073E60DF02EBDCB23E150CBD7
              805E759B7D0D0B4EB54F251FDAC55D31D1444A3DBB0194F316F764B853E09D19
              046F34DC3F2B866ABC0E9CCE2DB824933C22C56C85C48E01EE8888B40B60C009
              950791BF71877E1D9B4084193F0DB3275EB0CB350C06141E7B7FA8F228BC4868
              456172219A84FBF621305357782446D03ADDE1C3E09DFD2B0F0443698A2D9742
              105A24B4A27DDC0C84CEB6FBCE4B7632A5C43BFDBA0D0262B4793C8C35851309
              6B3269B827CB71FF8302158B5A31E3BDF7AA78E961C1DD16C69A428984EBF9DB
              DC0CC47BE7E5925BD01CF064B8FFFD83FC3B95F92EB7020921129AA731DDDCF1
              851C3485FAB243B917465009542198F4B3A2552116897615459B6614EA47DFE4
              4EF9F13E38213E419885DFCB4D5FE49664B75D83F1CEA303C5335A3170D999D1
              BF71C71F2C801FE0A62F429128121851D837E74F70AB72D86C5E1030EC85874C
              7F60612E13691C3A245BB014F26DA12A848A5767ED97ECCFBC85AC530B7ACDE7
              C1B9F96BA03FF2711E14800289CB1ED70DF4B33291D46C1BB77C311367B9158C
              5EBD119C4F7C1D5473A7FDA1368DE5A0DAACEA966F825EB9DE9620FA867BC0B9
              69ABBC0C193BC98D2054E0DC842209F78A262F70A338D67A3EB60DF47577E1B7
              57F128826D1AA3F79CCE2FCE2B484E3849716B52E7B9E58FD16615378B22F449
              C16A1366F212B7E6C70A44D6D370EDE32801CCCF96E93DD57213F7C83A47B361
              3DE76370099280F956371F461A3C4C4C962451DBE2FA6FD5580BC8B31ECA926D
              ED854920BD16464512C7FDE741F0DEC7D7A117E7D47FB4047DA1A4529658C6B4
              DC4C3CD7CDBC8BC3730E3C7FA2645154D5DB3A2C4F9CABD43682AA5DC61DFCAC
              0B43DC2A8E991588644C4CD12D2ED052F2EB395A567AD5ADB66DA144142B7A12
              8796590EBB4CD14FE5F0CE61464F8207A0B4C32D3F54E096AE482405106ED3C6
              074A13C85A72E8EB3FE7BF74280DE8BADFBE12D6879D7ACDB67DA1652D8B84F1
              8894BD3423A03AC10D7FC812F29DB5D3857952DE52CA872C289743D99D85777F
              6FDB41A89AF93F6F1E62B32491486A99FCAA92DDDAC82D29B2164C28E7A40408
              A50457C33D2588C30352676C7D9804A5E01C378B22B4244F2652F38DDC128093
              B61B721CD154A2359B3B313681CC0BF3EEC923E1B2F9A0E89783EE810A406649
              D3D5FFE2A62F74B9A7D8B2991772E424144342E550CBAE4D92A29D097975455C
              C6C42512DDCE62008E71CF17B53CDC85DCFC28560C73E534B764582B12386D7B
              174AC3C381F392894478F03B6EF9A23FBA097FCDF52DE546898B6125BAB42416
              495569D9B52A3C83BAED53DC293F54D648979A02233BF1FC1A4C5DEF082E39D1
              4D077A358A24ADD6E3042D98B6562418BAF7D2DEA41A8C5C24C2835F70CB1F3A
              D8F6CF72A77C50F62EBE5740D15293DD17104A24D5A0FBA489A55EB1CEEE0195
              0BCAA7AC3F14A28CFB243703096749A4BCA7E41F8EBEA11C429140B4BB290D18
              4699A7C3DCAF145224B626416E91C30A25F41351082D10DDD4E539E2134D8416
              89AC0953F9EF7147046DC186DAA3164289ABDD1D08937268E80B7B3357049190
              C48E018C74A2C89083AC29EA0D58F342C1E1461488770724D00A5053CE1EEE8A
              892612A2A6F5F630CBCE4E6AEDFDDC5938E4A4F3B78183A0EC1A97D9962837C3
              471689BE8CBED4A6F6426879880B4F3F68D7207FB34E8231DBA1B15754831612
              5D2482BE94BE3C0457B73E16806EC2FA308C1F32F0844A3E1CCA3DE4B3F05B94
              1193DEBF538112DDB774F6E4157865E83EEE45E3AE3547A06B7D03F7FC897A9F
              643E0BB324C63ECBE1799B454BAF7E0537C23376651A2E8D4DC1687A358F1487
              423D1ECFAE850A44C4624957B14F06B847EC35F6228CFEAF098EFEF916EE7D18
              126176C6C0787A0666663C48A5662135390BD3D32EFF0540CFDD19F8EA3DEF73
              EFC3644F96B765A14F02E488572422E019939133CD70F8D52EC8645C989C7221
              9D26013C181B9F4663941D8B9F48389D41E5E8ED713C5392237E91724C3CD76D
              B4DE5BF8BCC9EB6FB542DF6F42EC5E22F5750ED4D5564163433538550ABE72F7
              286C5837371FC4798C5807DDB0E3200FC546E94462CCC4FE6DA0E047B9674F8A
              89542844F3F21AA872B4ED17F2990DC3B0B63DBB7F8F4B6B94EA492A97E27A74
              AB90928B94A5BF0E52EE3603EACB6F0EB5DC37F0C7F6EA2021FC20913ADBCF1D
              43890EA969E760A99FC32D9348D7F8EDCB43B7A753356F70D717F251E4AB0A1D
              F9CA15CEDEEF3FB6F131FEB39253769188E70F0D4F6204B4F75F661D3846309C
              FCF4AC0713A9192B8A9F236F6DAEF9D64F7F78E70BDC2D39151169F7537F1F3C
              7F31B3697C628647E42413D599BEA73E5DCFDDB2104B3219969549780097CEB5
              C4671EC84F352FAF858EF646E8EC6884DBD6AF80DB6F6D853B3ED9BA99FFA46C
              54C492889F3CF38F8DA7CE4C1CD54AB52C5B560D35551A92C92AA8C708578791
              AE103CCC5165BC077BB7AF8B5C8345A56222E5E83FF4EF9E53A7D3FB1A1B6BE6
              DDF7B83C3E337B7D5BFD434EB2F6A5DE9E8E9246B162545C24E21BDF3946FF3D
              C761EECE01F3A03DBFFA79373D465F312AE2930AF9E533DD0318C976E1E92A4C
              067F5C698188456149397A771EEB703596311AEA5C05C75FFC5977A44DB2B859
              54222D5616C5725BEC2C89246049A44000FE0FE407E075DCC757DB0000000049
              454E44AE426082}
          end>
      end
      item
        Name = 'libre-gui-key'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004900000049080600000071730B
              DC000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              03DF49444154785EED9B315014311486131B1D47677046C72BE9A4F33AE984CE
              123A3B96920AAC2CD14AADD44A3B424789A595D89D1D7658711D7432144A17FF
              B7F7E6C661E02EFB924D36906F0676DF1E77BBFBED4BF27673686BAD2A4CE606
              2F0B1328921C28921C28921C28921C8837BA19BD803DF5B4527356AB87D83247
              9B112FD0721A78EF3E1627F839D656FD427C8CF71E20DE5795A5EDADD18E24A3
              FBF8BD04198FB1ECE36466EBED2D8133204903C8FB81E51EA4EDD52F0422AC24
              CA16ADDE40CA3C6F4902CE680861AF21CBF0262FC24932FA15DACE26479D0067
              B60359AB9075C69B4404E9B8ADD11B5D134420A39F23B3DF7328C63F938CEEE1
              688E38EA26562D239B76396A8C7726E14ABDE4D5CE82635CE15511DE9964B7F5
              61D3D10B7B1C607186FEE2FB68CB98F3A3120D00B746ABF5C93EC182E279EC73
              BCDD09ABEE494B053F4946CFA0A9FDE66822D8CB01A4AC051B9E8DA67A6BCB79
              24F56872BECDCDA9106406C104119525E95F399A0A67A1082F493E3B4E80B876
              F3CD24AAAC5D69D687842799A4261D767DAF161264F2235E9D4ADDD153B922C0
              5792F34E71907D149DCF38F4071D377E2F8D026744D9EC37BA6DA3EB6C00FE98
              6E0F3EE35D5F465BC4D03DE23AC4CF70EC86558B92C1432EC9E859A4C7214779
              202C03C4CD0D6A45ED3B31CD328FF1ED93AE056249E80F8E79351BB84F6C8C3C
              932A3BE4B56C905E58AFE6862BD3EAB3E516882F09E4D6E44417D557525E4DAE
              B2493289A679B2005D83F858BD24A172A6299C5C482309049DDF6A135CD0F34F
              419DF19354D913A4712EFD92F882FA6612219E8588052E243D15155F4C6F4948
              E377BCDA597C8FD13F9330AC5AAB5E70D4399045BB3846AF6C0FD1DC94AEEC07
              1CCC5B0E3B03353364D12A8762BCE7DDFEC71A3D8F1BA44DDC23857B02290067
              445FCFF9880C0A72E1824A1A63740F9FBA00614F11D14462930983C6605F74BB
              4175D000C14F64F64EFD4220DA91741146F7B1A73988FBD4F8B1EB05E0B0D7F0
              39197F896B0293A6C54FFE2875C4A77BFFAE520FF073292B161F1387201DF755
              A74872A04872204B493C9A45233B49240835D0228751C84AD2585065A33EECCB
              4A527D8B115910915726D13769697A3D327965128A5088FA165B54761DF75854
              44B293445C765BD316594A8A4D9692500A449D7CC84E12092AC5E404C682227F
              A3252B495C4C469FE7CB2B93B4DA2AC5E4144A31E94829261D29C564074921C9
              7B74BAF2C52486F1659CA4F899D0F528262B5B3F5D9488BA5EC5A440542A4144
              BA8EBB81A89482887492080751A90511D1BF0B7021F45FE14A6D9CFE55BDD3B3
              D17F58DEB9A98633B7EB51CCA41444744352C749DBDC32A14872A0489A8A52FF
              005C515BDE3E3155B80000000049454E44AE426082}
          end>
      end
      item
        Name = 'libre-gui-certificate'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004900000049080600000071730B
              DC000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              046C49444154785EED9A4B4F534114804F6B1168A18A8A8044541491188D1AA3
              688C1237FE00176A6222EEFC17EE4C4C4C8CFF80A5C48DAE342E7C2E141F08A2
              A214051F44110BD80785B6B4DE33CCA4B594DED387735B395F72D339B74D433F
              66CE9C99B9B6783C0E4C66ECF295C9004B22C09208B024022C89004B22C09208
              B024022C89004B22C09208B024026917B85D3786F6C463B6AB325C56D862B1CB
              9D675AEFC850905ED2F5E10EE39DFB325C5EC4E3E73B4F6FEF929180871B819C
              7AD2CED61AA8723A64547AF4BC9A90AD34A4E94939493AD1D10876BB4D46A5C7
              A39E71080623324AA110C3ADA1CE59D28290A60D4ED9A29195A4D5EE95D0D6B2
              4A46A5CBE68DD550575B2923734C259595D9A0B1C125F2D0A1FDEBA17CE50AF9
              4E69B36FD75AD8B3730D3435BA4C7F93A9A4EAAA72D8DD5623BEEC7F035307FE
              F3D7ADAD9077D2C3250001D3D96D4D4D051CDCBB4EDC5F8A48340E7E7F5846C5
              85CBE5301D4EAF07A760EC7B7021C8A504A0489A9C9ACB5C7B5808A60ACCA999
              3093C4C38D004B22C09208B024020549DCBE4004063DBF65545C34375541AD49
              1DA465762B7578762B002C89004B22C09208149DA4695F582C738A89A29034E1
              9D85272F7EC2ED7BDFC42BAE03B18DDBAC9F3EFBE4A7ACC35249B87B80D3EF8B
              FE5FA207A582FBD01F3EFA84B8D06C54DED58FA592DE7E48AA4F0C704B03EB32
              BC2A2B12A73128B077C00BB1D8E29A4E079649FA3E3E232E45F326371C3FD220
              0A57BC3A0ED78B6D0E75E8E0F347C033E2176DDD5826098791A2658B1B5AB7BA
              659400F781509402F3130E51DD5822097FA8CA3138C49A37558B763A701F1A87
              9FC28A1D504B2425FF50777599E9391E7E46E10B2C134991F9986C197F00E1A0
              D36E4B7CC68AE46D89243CE4540466CCA7F6E04CE248DAE54AF42A5D5822499C
              5EC8CE81B5507219900A4EFF3FBD2119FD2D58179648BAFB700C464613D3F980
              512F61D59D0A0A7AD9EF85B81C9D5E63B972F3F697854023DA25A1A0BB0FC660
              F45B00FCF2C90E9480553756D6C3233E71A9381C99179F098763F06E680A9EF7
              4D40F7AD11714F175A2529410826E0B7C69224184AE424EC391E43105EC93D2B
              6A247A1484A210DDA2B4494A16A44041CF7A2760F46B40DE590C0E31EC51F89A
              8C4E515A24A513A4C01E356B149647DBEB8DE548ADA8BCB102C7F6B1F63AF19E
              EA41A9E812F5CF2565128434D63BE1C2B93670391D46655D2ED670DB0C49D876
              3ACBA0F3540BECD8B6F433513A44D9749F965CBAD60F93D30B434709AAACC8FC
              4043341A83AE6E0FBC1F4E1C5B5DB97840B6F227EFD3929091373089167A3F87
              2A087138ECA63D2A17E6C2F36217D46FB2D4319764C8C1E9F8D1D3C2ED126623
              48516851E3BF42F0B8E787D805C56D984C9073122658DCDEF832B674754C6143
              0E8214851285A546DF9B49884468EBC0AC13F7A0675AB672E3ECC9AD39095228
              51F93038349DD542396B49F8E54B3E034D007F64BEE4FB1DF8EC423698CE6ECB
              0E7E162037581281B4C38DF91BEE490458120196448025116049045812019644
              80251160490458120196640AC01FA72A35BDA3CFF86B0000000049454E44AE42
              6082}
          end>
      end
      item
        Name = 'libre-gui-unlock'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000004900000049080600000071730B
              DC000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              049749444154785EED9B4F6C0C511CC77FB37F588DB2FE17078D0415170E124E
              AAED81133D11276E1C2425449CB4271C4413174EB8D01B4E1CDAAA5B13975E44
              FD49F4820A92FAD318ECEEF8FEEC0F55B3BBEF8D7933B3EDFB249BFDBD37DB9D
              99CFBCDF6FDE74671CCFF3C8529D94BC5BAA60252960252960252960252910EB
              D9ADB5B5359F4EA777611BF6388EB30D5DCDE525BF19C3B2112CBB532C16EF0D
              0D0D8D4B7FA4C42209729A52A9D419ECFC61E95202DB7ABB542A1D83AC31E98A
              84C825B5B5B57543CE2984B9728F3ED8E6CB22CB952EA3442689530BA3E72A04
              ED95AEFF650429D819C5A88A4492D49EFB0837977B42631CA27643D488B48D60
              5C1204E520E82E87E59ED01983A8ED268BBAF1290052EC22DE6A091AC5C1EA45
              2AEE9CFA42DF692CAB354A9A71106EF1C19076E8181D491D1D1DADF87E4EB34A
              B858DE333838784EDABEB4B7B71FC41BCBCEFFECF0E7D8C0C040AFC4A1627424
              4100EF58258691265B6A0962B0F3D7F0D98DF8BE7BD2E5C729AE7D12878A3149
              38FA7C16AB54A8B9E0F2996954DA35E19A83D37E27C24AE9C773AF2E8943C598
              241CF57D12FAC1731CED428BBF7121F71042DFF911EA58B57506C688242EA2D8
              E05DD2FC0BC8EB43FAF449531B881AC1779C97E6745AB0EE168943C3D448E234
              F3AD0F48892B12060669C705DA7734F1B5A084A161441236B4D2D19CE8EFEF1F
              923830184D13781B2EB7FE6185BC8786114948872609A7A35CA86B8175F85E8E
              545977604CA59BEFD1C40E84362B46DA5EC7F7F54C7FA1163E908F848691C924
              AEF4F9429627807F81755DC3BC88CF4E7585A99134A3B09214B09214B0921408
              A770F73AF942E1CF75DAA547EB0FBC77E76E95E66F96E4BE3E3CBAE9E90D6946
              42214363B92EFFE9822AC125753BB9C27C3A430EED476BFAAF1C8902BB38E138
              D49749D369EAF27822AA4520496EAFD39C29D05D080AFD3AC924D8D3716C7367
              F6B85769B6EE4BA09A942ED2D57A13C438444D8E4737390BA44B096D49DF2E38
              07B13253FFAF8E82E642239D9558096D492987764858CF681D64FD74F342FF59
              280E36EBA45C909A341324919B27E5FF16042ADCB30D2B49012B49012B49012B
              49012B49012B49012B498144499AFC4AF4FA23D1AB0F449F10278544482A9488
              9EBD257AFC86E8E54459D213C4DC76BFCB87622411925EBC27FAF0451A53E091
              F5FC1D5129FC5FBDB4885D12CBF113F40B1E496F3F4B2326629734F94D822A7C
              8EB93EC52EA9887A548B599F6E0D7325A84243568298885DD2A27944B92A1232
              D8C2E58DD28889D825A51CA2B54B89B269E998020B5AB3D87F5994C42E89E174
              DAB49268759E68214656638E68D5C272DFA206F9508C244212C3A366E502A275
              CB88362C2F4B8A7B04FD223192928C95A48095A48095A48095A48095A48095A4
              8095A4401049913E6E6E0A4CEA95EF78D396E478351FF74C3E1E8DEADC16A82D
              A9E451E88F25444EAAE2C33BBE684BCA4ED2E59F47A24EE19B4C3345E207A095
              D1AF49DD9EEBA5E810AF4C7AEA068FC8C5EB089DD47B102848E126BE7B35EBD1
              46ACB0DA83C3C9C2A3E112D19639273CEDA736FFFF66F73F37BA27F36653C8C9
              F0C3CD9AA3672A461EE59A69044AB7D98695A480955413A21FC0309661EED6E4
              110000000049454E44AE426082}
          end>
      end>
    Left = 225
    Top = 205
  end
  object VirtualImageList1: TVirtualImageList
    Images = <
      item
        CollectionIndex = 0
        CollectionName = 'libre-gui-server'
        Name = 'libre-gui-server'
      end
      item
        CollectionIndex = 1
        CollectionName = 'libre-gui-idea'
        Name = 'libre-gui-idea'
      end
      item
        CollectionIndex = 2
        CollectionName = 'libre-gui-key'
        Name = 'libre-gui-key'
      end
      item
        CollectionIndex = 3
        CollectionName = 'libre-gui-certificate'
        Name = 'libre-gui-certificate'
      end
      item
        CollectionIndex = 4
        CollectionName = 'libre-gui-unlock'
        Name = 'libre-gui-unlock'
      end>
    ImageCollection = ImageCollection1
    Left = 177
    Top = 221
  end
  object odlgPublicCertificate: TOpenDialog
    Filter = 'PEM (*.pem)|*.pem|Key (*.key)|*.key|Certificate (*.crt)|*.crt'
    Title = 'Select Public Key'
    Left = 225
    Top = 159
  end
  object odlgPrivateKey: TOpenDialog
    Filter = 'PEM (*.pem)|*.pem|Key (*.key)|*.key|Certificate (*.crt)|*.crt'
    Title = 'Select Private Key'
    Left = 289
    Top = 207
  end
  object odlgCAKey: TOpenDialog
    Filter = 'PEM (*.pem)|*.pem|Key (*.key)|*.key|Certificate (*.crt)|*.crt'
    Title = 'Select CA Key'
    Left = 321
    Top = 175
  end
end
