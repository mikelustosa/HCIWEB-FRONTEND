object frmPDV: TfrmPDV
  Left = 0
  Top = 0
  ClientHeight = 1099
  ClientWidth = 1295
  Caption = 'frmPDV'
  OnShow = UniFormShow
  BorderStyle = bsNone
  OldCreateOrder = False
  OnClose = UniFormClose
  OnKeyDown = UniFormKeyDown
  MonitoredKeys.Keys = <>
  OnReady = UniFormReady
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel39: TUniPanel
    Left = 0
    Top = 169
    Width = 1295
    Height = 890
    Hint = 't1w500h0;'
    Align = alClient
    TabOrder = 0
    Caption = 'UniPanel3'
    Color = 16249327
    object UniScrollBox1: TUniScrollBox
      Left = 1
      Top = 1
      Width = 1293
      Height = 888
      Hint = ''
      Align = alClient
      Color = 16249327
      TabOrder = 1
      ScrollHeight = 174
      object UniContainerPanel2: TUniContainerPanel
        Left = 0
        Top = 0
        Width = 1291
        Height = 712
        Hint = ''
        ParentColor = False
        Align = alClient
        TabOrder = 0
        object UniPanel42: TUniPanel
          Left = 314
          Top = 0
          Width = 977
          Height = 712
          Hint = 't1w200h0;'
          Align = alClient
          TabOrder = 1
          Caption = 'UniPanel4'
          Color = clWhite
          object gridTela: TUniDBGrid
            Left = 1
            Top = 1
            Width = 975
            Height = 710
            Hint = ''
            DataSource = DSTela
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
            WebOptions.Paged = False
            LoadMask.Message = 'Loading data...'
            ForceFit = True
            LayoutConfig.Cls = 'dbgrid-light responsiva mostrar-mobile'
            Align = alClient
            TabOrder = 1
            OnCellClick = gridTelaCellClick
            Columns = <
              item
                FieldName = 'id'
                Title.Caption = 'Item'
                Width = 64
                Visible = False
              end
              item
                FieldName = 'codpro'
                Title.Caption = 'C'#243'digo'
                Width = 50
              end
              item
                FieldName = 'descr'
                Title.Caption = 'Descri'#231#227'o'
                Width = 200
              end
              item
                FieldName = 'mov'
                Title.Caption = 'Quantidade'
                Width = 124
              end
              item
                FieldName = 'valoru'
                Title.Caption = ' Valor Unit'#225'rio'
                Width = 124
              end
              item
                FieldName = 'total'
                Title.Caption = ' Total'
                Width = 124
              end
              item
                FieldName = 'ativo'
                Title.Caption = 'ativo'
                Width = 64
                Visible = False
              end
              item
                FieldName = 'iconeAtivo'
                Title.Caption = 'AT'
                Width = 20
                Visible = False
              end
              item
                FieldName = 'botaoEditar'
                Title.Caption = ' '
                Width = 150
              end>
          end
        end
        object UniPanel1: TUniPanel
          Left = 0
          Top = 0
          Width = 314
          Height = 712
          Hint = 't1w200h0;'
          Align = alLeft
          TabOrder = 2
          Caption = ''
          Color = 16249327
          object UniPanel40: TUniPanel
            AlignWithMargins = True
            Left = 4
            Top = 45
            Width = 306
            Height = 70
            Hint = 't1w200h0;'
            Margins.Top = 5
            Margins.Bottom = 5
            Align = alTop
            TabOrder = 1
            Caption = 'UniPanel4'
            Color = clWhite
            object compCODPRO: TUniEdit
              Left = 1
              Top = 28
              Width = 304
              Height = 41
              Hint = ''
              MaxLength = 5
              BorderStyle = ubsNone
              Text = ''
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 1
              OnExit = compCODPROExit
              OnKeyDown = compCODPROKeyDown
            end
            object UniContainerPanel23: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 304
              Height = 27
              Hint = ''
              Margins.Left = 8
              Margins.Top = 5
              Margins.Right = 12
              Margins.Bottom = 5
              ParentColor = False
              Align = alTop
              TabOrder = 2
              TabStop = False
              LayoutConfig.Cls = 'body_grdnt_rounded'
              object UniLabel31: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 43
                Height = 17
                Hint = ''
                Margins.Left = 10
                Caption = 'Produto'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
          end
          object UniPanel47: TUniPanel
            AlignWithMargins = True
            Left = 4
            Top = 125
            Width = 306
            Height = 70
            Hint = 't1w200h0;'
            Margins.Top = 5
            Margins.Bottom = 5
            Align = alTop
            TabOrder = 2
            Caption = 'UniPanel4'
            Color = clWhite
            object compMOV: TUniEdit
              Left = 1
              Top = 28
              Width = 304
              Height = 41
              Hint = ''
              MaxLength = 5
              BorderStyle = ubsNone
              Text = ''
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 1
              ClientEvents.UniEvents.Strings = (
                
                  'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
                  '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
                  'n: /^[0-9\s]+$/g, recursive: true },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
              OnChange = compMOVChange
            end
            object UniContainerPanel36: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 304
              Height = 27
              Hint = ''
              Margins.Left = 8
              Margins.Top = 5
              Margins.Right = 12
              Margins.Bottom = 5
              ParentColor = False
              Align = alTop
              TabOrder = 2
              TabStop = False
              LayoutConfig.Cls = 'body_grdnt_rounded'
              object UniLabel36: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 64
                Height = 17
                Hint = ''
                Margins.Left = 10
                Caption = 'Quantidade'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
          end
          object UniPanel48: TUniPanel
            AlignWithMargins = True
            Left = 4
            Top = 205
            Width = 306
            Height = 70
            Hint = 't1w200h0;'
            Margins.Top = 5
            Margins.Bottom = 5
            Align = alTop
            TabOrder = 3
            Caption = 'UniPanel4'
            Color = clWhite
            object compVALORU: TUniEdit
              Left = 1
              Top = 28
              Width = 304
              Height = 41
              Hint = ''
              MaxLength = 5
              BorderStyle = ubsNone
              Text = ''
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 1
              ClientEvents.UniEvents.Strings = (
                
                  'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
                  '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
                  'n: /^[0-9\s]+$/g, recursive: true },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
            end
            object UniContainerPanel38: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 304
              Height = 27
              Hint = ''
              Margins.Left = 8
              Margins.Top = 5
              Margins.Right = 12
              Margins.Bottom = 5
              ParentColor = False
              Align = alTop
              TabOrder = 2
              TabStop = False
              LayoutConfig.Cls = 'body_grdnt_rounded'
              object UniLabel37: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 72
                Height = 17
                Hint = ''
                Margins.Left = 10
                Caption = 'Valor unit'#225'rio'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
          end
          object UniPanel49: TUniPanel
            AlignWithMargins = True
            Left = 4
            Top = 285
            Width = 306
            Height = 70
            Hint = 't1w200h0;'
            Margins.Top = 5
            Margins.Bottom = 5
            Align = alTop
            TabOrder = 4
            Caption = 'UniPanel4'
            Color = clWhite
            object compTOTAL: TUniEdit
              Left = 1
              Top = 28
              Width = 304
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 5
              BorderStyle = ubsNone
              Text = ''
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 1
              ClientEvents.UniEvents.Strings = (
                
                  'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
                  '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
                  'n: /^[0-9\s]+$/g, recursive: true },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
            end
            object UniContainerPanel39: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 304
              Height = 27
              Hint = ''
              Margins.Left = 8
              Margins.Top = 5
              Margins.Right = 12
              Margins.Bottom = 5
              ParentColor = False
              Align = alTop
              TabOrder = 2
              TabStop = False
              LayoutConfig.Cls = 'body_grdnt_rounded'
              object UniLabel38: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 55
                Height = 17
                Hint = ''
                Margins.Left = 10
                Caption = 'Valor total'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
          end
          object UniPanel2: TUniPanel
            Left = 1
            Top = 1
            Width = 312
            Height = 39
            Hint = 't1w200h0;'
            Align = alTop
            TabOrder = 5
            Caption = ''
            Color = 16249327
            object chAlteraQtd: TUniCheckBox
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 304
              Height = 31
              Hint = ''
              Caption = '[F6] Alterar quantidade?'
              Align = alClient
              TabOrder = 1
              OnClick = chAlteraQtdClick
            end
          end
        end
      end
      object UniContainerPanel3: TUniContainerPanel
        Left = 0
        Top = 712
        Width = 1291
        Height = 174
        Hint = ''
        ParentColor = False
        Align = alBottom
        TabOrder = 1
        object UniPanel3: TUniPanel
          Left = 0
          Top = 0
          Width = 1291
          Height = 174
          Hint = 't1w200h0;'
          Align = alClient
          TabOrder = 1
          Caption = ''
          Color = 16249327
          object UniScrollBox2: TUniScrollBox
            Left = 1
            Top = 1
            Width = 1289
            Height = 172
            Hint = ''
            Align = alClient
            TabOrder = 1
            ScrollHeight = 161
            ScrollWidth = 910
            object UniPanel43: TUniPanel
              Left = 249
              Top = 15
              Width = 370
              Height = 70
              Hint = 't1w300h0;'
              TabOrder = 0
              Caption = 'UniPanel4'
              Color = clWhite
              object compNOME: TUniEdit
                Left = 1
                Top = 28
                Width = 368
                Height = 41
                Hint = ''
                Enabled = False
                MaxLength = 5
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 1
                ReadOnly = True
                ClientEvents.UniEvents.Strings = (
                  
                    'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
                    '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
                    'n: /^[0-9\s]+$/g, recursive: true },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
              end
              object UniContainerPanel37: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 368
                Height = 27
                Hint = ''
                Margins.Left = 8
                Margins.Top = 5
                Margins.Right = 12
                Margins.Bottom = 5
                ParentColor = False
                Align = alTop
                TabOrder = 2
                TabStop = False
                LayoutConfig.Cls = 'body_grdnt_rounded'
                object UniLabel34: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 39
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Cliente'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
            end
            object UniPanel44: TUniPanel
              Left = 629
              Top = 13
              Width = 281
              Height = 70
              Hint = 't1w200h0;'
              TabOrder = 1
              Caption = 'UniPanel4'
              Color = clWhite
              object compTOTALGERAL: TUniEdit
                Left = 1
                Top = 28
                Width = 279
                Height = 41
                Hint = ''
                Enabled = False
                MaxLength = 5
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 1
                ReadOnly = True
                ClientEvents.UniEvents.Strings = (
                  
                    'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
                    '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
                    'n: /^[0-9\s]+$/g, recursive: true },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
              end
              object UniContainerPanel22: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 279
                Height = 27
                Hint = ''
                Margins.Left = 8
                Margins.Top = 5
                Margins.Right = 12
                Margins.Bottom = 5
                ParentColor = False
                Align = alTop
                TabOrder = 2
                TabStop = False
                LayoutConfig.Cls = 'body_grdnt_rounded'
                object lb_desconto: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 56
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Total geral'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
            end
            object UniPanel45: TUniPanel
              Left = 624
              Top = 91
              Width = 99
              Height = 70
              Hint = 't1w200h0;'
              TabOrder = 2
              Caption = ''
              Color = clWhite
              object compINT_CODVEN: TUniEdit
                Left = 1
                Top = 28
                Width = 57
                Height = 41
                Hint = ''
                Enabled = False
                MaxLength = 5
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 1
                ReadOnly = True
                ClientEvents.UniEvents.Strings = (
                  
                    'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
                    '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
                    'n: /^[0-9\s]+$/g, recursive: true },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
              end
              object UniContainerPanel24: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 97
                Height = 27
                Hint = ''
                Margins.Left = 8
                Margins.Top = 5
                Margins.Right = 12
                Margins.Bottom = 5
                ParentColor = False
                Align = alTop
                TabOrder = 2
                TabStop = False
                LayoutConfig.Cls = 'body_grdnt_rounded'
                object UniLabel32: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 64
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = '[F2] C'#243'digo'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object btnClassificacao: TUniSFBitBtn
                AlignWithMargins = True
                Left = 63
                Top = 34
                Width = 30
                Height = 29
                Hint = 'Novo registro'
                Margins.Left = 5
                Margins.Top = 6
                Margins.Right = 5
                Margins.Bottom = 6
                ShowHint = True
                ParentShowHint = False
                Caption = '   '
                Align = alRight
                TabOrder = 3
                Scale = bbsSmall
                IconAlign = iaTop
                OnClick = btnClassificacaoClick
                FAIcon.Icon = fa_search
                FAIcon.Size = fs_16
                FAIcon.Color = fc_grey
                ButtonStyles = bs_transparent
              end
            end
            object UniPanel46: TUniPanel
              Left = 733
              Top = 89
              Width = 176
              Height = 70
              Hint = 't1w200h0;'
              TabOrder = 3
              Caption = 'UniPanel4'
              Color = clWhite
              object compNomeVend: TUniEdit
                Left = 1
                Top = 28
                Width = 174
                Height = 41
                Hint = ''
                Enabled = False
                MaxLength = 5
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 1
                ReadOnly = True
                ClientEvents.UniEvents.Strings = (
                  
                    'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
                    '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
                    'n: /^[0-9\s]+$/g, recursive: true },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
              end
              object UniContainerPanel26: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 174
                Height = 27
                Hint = ''
                Margins.Left = 8
                Margins.Top = 5
                Margins.Right = 12
                Margins.Bottom = 5
                ParentColor = False
                Align = alTop
                TabOrder = 2
                TabStop = False
                LayoutConfig.Cls = 'body_grdnt_rounded'
                object UniLabel35: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 108
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Nome do vendedor'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
            end
            object UniPanel50: TUniPanel
              Left = 0
              Top = 0
              Width = 190
              Height = 170
              Hint = 't1w200h0;'
              Align = alLeft
              TabOrder = 4
              Caption = ''
              Color = 16249327
              object UniImage2: TUniImage
                Left = 1
                Top = 1
                Width = 188
                Height = 168
                Hint = ''
                Stretch = True
                Picture.Data = {
                  0954506E67496D61676589504E470D0A1A0A0000000D49484452000000A30000
                  00A30806000000E66CAE800000000467414D410000B18E7CFB519300000A2F69
                  4343504943432050726F66696C65000048C79D96775454D71687CFBD777AA1CD
                  30D2197A932E3080F42E201D045118660618CA00C30C4D6C88A8404411110145
                  90A08001A3A148AC88622128A8600F48105062308AA8A86446D64A7C7979EFE5
                  E5F7C7BDDFDA67EF73F7D97B9FB52E00244F1F2E2F059602209927E0077A38D3
                  578547D0B1FD0006788001A6003059E9A9BE41EEC140242F37177ABAC809FC8B
                  DE0C0148FCBE65E8E94FA783FF4FD2AC54BE0000C85FC4E66C4E3A4BC4F9224E
                  CA14A48AED3322A6C6248A194689992F4A50C472628E5BE4A59F7D16D951CCEC
                  641E5BC4E29C53D9C96C31F788787B86902362C447C405195C4EA6886F8B5833
                  4998CC15F15B716C3287990E008A24B60B38AC78119B8898C40F0E7411F17200
                  70A4B82F38E60B1670B204E243B9A4A466F3B971F102BA2E4B8F6E6A6DCDA07B
                  723293380281A13F9395C8E4B3E92E29C9A94C5E36008B67FE2C19716DE9A222
                  5B9A5A5B5A1A9A19997E51A8FFBAF83725EEED22BD0AF8DC3388D6F787EDAFFC
                  52EA0060CC8A6AB3EB0F5BCC7E003AB6022077FF0F9BE6210024457D6BBFF1C5
                  7968E279891708526D8C8D3333338DB81C9691B8A0BFEB7F3AFC0D7DF13D23F1
                  76BF9787EECA89650A93047471DD58294929423E3D3D95C9E2D00DFF3CC4FF38
                  F0AFF3581AC889E5F0393C5144A868CAB8BC3851BB796CAE809BC2A37379FFA9
                  89FF30EC4F5A9C6B9128F59F0035CA0848DDA002E4E73E80A21001127950DCF5
                  DFFBE6830F05E29B17A63AB138F79F05FDFBAE7089F891CE8DFB1CE712184C67
                  09F9198B6BE26B09D08000240115C80315A001748121300356C016380237B002
                  F88160100ED602168807C9800F32412ED80C0A4011D805F6824A5003EA412368
                  01274007380D2E80CBE03AB809EE800760048C83E76006BC01F3100461213244
                  81E42155480B3280CC2006640FB9413E5020140E454371100F1242B9D016A808
                  2A852AA15AA811FA163A055D80AE4203D03D68149A827E85DEC3084C82A9B032
                  AC0D1BC30CD809F68683E135701C9C06E7C0F9F04EB802AE838FC1EDF005F83A
                  7C071E819FC3B3084088080D51430C1106E282F82111482CC247362085483952
                  87B4205D482F720B1941A69177280C8A82A2A30C51B6284F54088A854A436D40
                  15A32A514751EDA81ED42DD4286A06F5094D462BA10DD036682FF42A741C3A13
                  5D802E4737A0DBD097D077D0E3E837180C8686D1C158613C31E19804CC3A4C31
                  E600A615731E338019C3CC62B15879AC01D60EEB87656205D802EC7EEC31EC39
                  EC20761CFB1647C4A9E2CC70EEB8081C0F97872BC735E1CEE2067113B879BC14
                  5E0B6F83F7C3B3F1D9F8127C3DBE0B7F033F8E9F274813740876846042026133
                  A182D042B844784878452412D589D6C4002297B88958413C4EBC421C25BE23C9
                  90F4492EA4489290B4937484749E748FF48A4C266B931DC91164017927B9917C
                  91FC98FC5682226124E125C196D8285125D12E3128F142122FA925E924B95632
                  47B25CF2A4E40DC96929BC94B6948B14536A835495D429A961A959698AB4A9B4
                  9F74B274B17493F455E94919AC8CB68C9B0C5B265FE6B0CC4599310A42D1A0B8
                  5058942D947ACA25CA381543D5A17A5113A845D46FA8FDD4195919D965B2A1B2
                  59B255B267644768084D9BE6454BA295D04ED08668EF97282F715AC259B26349
                  CB92C12573728A728E721CB942B956B93B72EFE5E9F26EF289F2BBE53BE41F29
                  A014F415021432150E2A5C529856A42ADA2AB2140B154F28DE578295F4950295
                  D6291D56EA539A555651F6504E55DEAF7C51795A85A6E2A892A052A67256654A
                  95A26AAFCA552D533DA7FA8C2E4B77A227D12BE83DF4193525354F35A15AAD5A
                  BFDABCBA8E7A887A9E7AABFA230D8206432356A34CA35B63465355D3573357B3
                  59F3BE165E8BA115AFB54FAB576B4E5B473B4C7B9B7687F6A48E9C8E974E8E4E
                  B3CE435DB2AE836E9A6E9DEE6D3D8C1E432F51EF80DE4D7D58DF423F5EBF4AFF
                  86016C6069C035386030B014BDD47A296F69DDD2614392A193618661B3E1A811
                  CDC8C728CFA8C3E885B1A67184F16EE35EE34F2616264926F5260F4C654C5798
                  E6997699FE6AA66FC632AB32BB6D4E367737DF68DE69FE7299C132CEB283CBEE
                  5A502C7C2DB659745B7CB4B4B2E45BB6584E59695A455B555B0D33A80C7F4631
                  E38A35DADAD97AA3F569EB77369636029B1336BFD81ADA26DA36D94E2ED759CE
                  595EBF7CCC4EDD8E69576B37624FB78FB63F643FE2A0E6C074A87378E2A8E1C8
                  766C709C70D2734A703AE6F4C2D9C499EFDCE63CE762E3B2DEE5BC2BE2EAE15A
                  E8DAEF26E316E256E9F6D85DDD3DCEBDD97DC6C3C2639DC7794FB4A7B7E76ECF
                  612F652F9657A3D7CC0AAB15EB57F47893BC83BC2BBD9FF8E8FBF07DBA7C61DF
                  15BE7B7C1FAED45AC95BD9E107FCBCFCF6F83DF2D7F14FF3FF3E0013E01F5015
                  F034D0343037B03788121415D414F426D839B824F841886E8830A43B54323432
                  B431742ECC35AC346C6495F1AAF5ABAE872B8473C33B23B011A1110D11B3ABDD
                  56EF5D3D1E6911591039B446674DD69AAB6B15D626AD3D132519C58C3A198D8E
                  0E8B6E8AFEC0F463D6316763BC62AA6366582EAC7DACE76C4776197B8A63C729
                  E54CC4DAC596C64EC6D9C5ED899B8A77882F8F9FE6BA702BB92F133C136A12E6
                  12FD128F242E248525B526E392A3934FF1647889BC9E149594AC94815483D482
                  D491349BB4BD69337C6F7E433A94BE26BD534015FD4CF50975855B85A319F619
                  55196F3343334F664967F1B2FAB2F5B377644FE4B8E77CBD0EB58EB5AE3B572D
                  7773EEE87AA7F5B51BA00D311BBA376A6CCCDF38BEC963D3D1CD84CD899B7FC8
                  33C92BCD7BBD256C4B57BE72FEA6FCB1AD1E5B9B0B240AF805C3DB6CB7D56C47
                  6DE76EEFDF61BE63FF8E4F85ECC26B452645E5451F8A59C5D7BE32FDAAE2AB85
                  9DB13BFB4B2C4B0EEEC2ECE2ED1ADAEDB0FB68A974694EE9D81EDF3DED65F4B2
                  C2B2D77BA3F65E2D5F565EB38FB04FB86FA4C2A7A273BFE6FE5DFB3F54C657DE
                  A972AE6AAD56AADE513D77807D60F0A0E3C1961AE59AA29AF787B887EED67AD4
                  B6D769D7951FC61CCE38FCB43EB4BEF76BC6D78D0D0A0D450D1F8FF08E8C1C0D
                  3CDAD368D5D8D8A4D454D20C370B9BA78E451EBBF98DEB379D2D862DB5ADB4D6
                  A2E3E0B8F0F8B36FA3BF1D3AE17DA2FB24E364CB775ADF55B751DA0ADBA1F6EC
                  F6998EF88E91CEF0CE81532B4E7577D976B57D6FF4FD91D36AA7ABCEC89E2939
                  4B389B7F76E15CCEB9D9F3A9E7A72FC45D18EB8EEA7E7071D5C5DB3D013DFD97
                  BC2F5DB9EC7EF962AF53EFB92B76574E5FB5B97AEA1AE35AC775CBEBED7D167D
                  6D3F58FCD0D66FD9DF7EC3EA46E74DEB9B5D03CB07CE0E3A0C5EB8E57AEBF26D
                  AFDBD7EFACBC333014327477387278E42EFBEEE4BDA47B2FEF67DC9F7FB0E921
                  FA61E123A947E58F951ED7FDA8F763EB88E5C89951D7D1BE27414F1E8CB1C69E
                  FF94FED387F1FCA7E4A7E513AA138D936693A7A7DCA76E3E5BFD6CFC79EAF3F9
                  E9829FA57FAE7EA1FBE2BB5F1C7FE99B593533FE92FF72E1D7E257F2AF8EBC5E
                  F6BA7BD67FF6F19BE437F373856FE5DF1E7DC778D7FB3EECFDC47CE607EC878A
                  8F7A1FBB3E797F7AB890BCB0F01BF784F3FB3704291E00000009704859730000
                  0EC400000EC401952B0E1B0000000D74455874417574686F7200706174726963
                  79ED1C6400000020744558744372656174696F6E54696D6500323031363A3031
                  3A32382031363A35303A3337A965272700000021744558744372656174696F6E
                  2054696D6500323031363A30313A32382031363A35303A333721EA44E1000066
                  FF4944415478DAEC7D05805455FBFE33B14BEDD20D4A08D2202520A880482320
                  A02228218D744877490A48085282A060D022822D8A8581A222884137CBF6CECC
                  FF7DCEB9F7CE9DD9595824E4F7FDF77CDFBAECCC8D13CF79FB7D8FC3270D692D
                  ADDD06CD9106C6B476BBB43430A6B5DBA6A58131ADDD362D0D8C69EDB6696960
                  4C6BB74D4B03635ABB6D5A1A18D3DA6DD3D2C098D66E9B9606C6B476DBB43430
                  A6B5DBA6A58131ADDD362D0D8C69EDB66969604C6BB74D4B03635ABB6DDAFF29
                  30A6B6A38EFFBAA369ED5FB5FF0C8CE64B1DC11F583DF31A1F3BAD8FBC21EE47
                  F073A439AFF8DCD4F6D06B7BDABF1CA34CADC391B63552DBFE53CAC8175F79A9
                  6CF0F309287C5EFF8D01A3B0FFE675720141E0B81E405C3F186FD83CDD4450DF
                  4E1BE6C6833198E405214E0DDEFCC0A1BFF686B8D4A5FEEBD55F7AF9DB67FCF6
                  EA0B7D36A03A9C1A334EA7FEE1E41AFFF60475C989E41B20A08BC948B6D902C1
                  99E265B7A05D2B80AE0770B712AC371F8CA96A5E3F2A093276C923BFE3E3814B
                  97107BE2044EFDF30F8E1D39824BE7CEE3F2A52835493E83F24564CD866CF972
                  A3488992C85BB408902D1B903EA320DAE107AAE37A29DC7F07C6DB897ADDCC76
                  EBD8B4F1169F31A75C5A851193DA250A0D8B8F03FEFC0B87BEFC123F7CFA198E
                  1EFC0D51E72EC8827BAD7BBD7297578095E07222497E7BE4211E59288FC37CB6
                  7CE076A142D56AA8D3A8218A54AE24E0CCAA29A502A7FB9620E86A00BAD1004B
                  CDF3E265739F3C7952FDB6B7F4E9D32353A64CC8902183FA77F0736ED566B8F5
                  32A37A9BC17E15F58B43E2EFBFE38BED3BB077D76E449F3A89749E2484277985
                  55EBAE790474494E990C771872E5CF8BE2A5CB206F91C288CC961D5973E41071
                  927015554700774928E985CBD13871E62C0E1F3D8A53511791BB70113CD8A411
                  8AC87D32DB371C8CA116EBF4E9D378E49147ACBFF3E6CD8BF5EBD7232C2CECBA
                  DE151B1B8B66CD9A213A3ADA7AF77BEFBD87C8C8C814FB4200CE9933076BD6AC
                  C1519993508D739743E692FDBCEBAEBB50BD7A75DC73CF3D285AB4280A162C18
                  12A4C16DDDBA7598376F9EF577FBF6EDD1BB77EF548FEDA681D192C38C7F5076
                  53949000F4240217A27064C7BBD8BA7A352E0A0BCE98E4815B3E77CAC51E9998
                  44F989150A97396F3EDC57EF215479E821E08E3B35989C8E102F3368ADC9921D
                  268BE6BF7D88898B435462027264CF0597504887718FA9AD5B7DB566E60A03BB
                  D2F746FBFBEFBF71E79D775A7FE7CA950BFFC838C3C3C3AF6D1E83C075F9F265
                  64CF9E1D898989D66767CF9E559F856A5BB76E559BE27A96399B883DE5CB9747
                  F3E6CD71DF7DF7A164C992C89C397332703EFFFCF318366C98FA9CEF1B306000
                  66CF9E9DEAF7DC1ACA682A1C1E8164F465EC7FEB6DBCB57809C2858A1184E984
                  0ABA7D1E752929A02353042A3F540795EB37008ADD2D000C53B2E3F9A3C771FC
                  D8319C3E2E3F274F21363A0AE78402465DBCA0C095396B16649345CF9E3B0F0A
                  172B8E22C5EF4686228580ACC2A64991C8A65D4AD331461F84ADD48231159495
                  148814C56C77DC71070E1E3C8874E9D25DD754922216285000172F5EB43E4B09
                  8C9F7EFA291E78E081EB0262A846EA3E7EFC780C1F3E3CE0F359B36661F0E0C1
                  D6DFCF3DF71CA64D9B96EAE75E3F18832845288AE8A24C98108F847DFBB06CCC
                  78C4885C983E4958B17CEE34EEF7CAB5E1B2DBEE2C590A551EAC056F787A1C3D
                  76025F7DFE298E0A45F109EB76F9F82CF9511AB9404A00AE7FFBBB43D9913225
                  9F9728C04E12CA58B46C39D47DB405F2D6AE23DB3C8B62F704A5EA5B40A7431B
                  03EC7F070F3D255CDE4A309E3B774E512F7BA35C58A85021C5A2ED8DB261C58A
                  152DEAC5DFE7CF9F57628579ADF95DF0BFED8DECF7C5175F0CF82C188C43870E
                  55D432B5ED868331D9E764C90909D8B76205362F5C8C6CF189C89898A401E5A3
                  D2E150C071A613215A809228403929939B20DF136C615E8FFC08E55420F4AA7B
                  084A873959425135BBD0D44E29E40EADD424C9C55EA70B09F2EFB830371284E2
                  36EFD605151E6B034444C8835C7E2DDB716DC3BB5AFBAF29E33BEFBC83C68D1B
                  077C464AC69F088EDDD6BC32BF64FB313131EA59870E1DC2DEBD7BB14F88C797
                  A24C1E3F7E3C593FFAF6ED8BB973E7067CF6DF83D16C412C4E510DA17EB81885
                  2DE3C6E1C07B3B119190A4289B6964F1063DC249358420342C914E03B04EE35A
                  82CE61EC668FD16D9F0D257A176B2A6B764769E0F293A49420AD85A7CF9F1F5D
                  264C40862A55841C87C1E7722667D37C90F3DF6B3AFF35183B76EC8855AB5659
                  7FD7AD5B17BB76EDBA66AD384108C9850B17F0C30F3F2845E9830F3EC0575F7D
                  85AE5DBB62C9922501D7DE9E6054364301E2F98B58D5BB0FCE7CB70F11A23C84
                  7B8452911212214E8765DED14D533D3FDB3535698765D231ED8AD49EE991F151
                  0131EDE7B67B4D003B141BF7D9BAA5411EEB76E34CFA7468DAAD2BAA74790648
                  17AE6549524925DFA60288572199FF251849E9A805FFF9E79FD6671B376E540A
                  C8F5363E9B6201AD167C87BDDD3660B41E43EA458A78EE0256F4EC890B3FEC57
                  6CD969804D5DC21FAFD6632D2A490D5A2EF01836C444A5516B994FD910A1E540
                  36B780C925FF4B4C8CB79E47964E56EE96C90A9767BB156BA762E4B528AC6AF2
                  CC44B921C1E94674980B251EAC8DE693272A59D227CFF598CFC3F55980FE4B30
                  7A4451A40C191515657DF6CB2FBFA0448912575CBF94A8664ADF057F7EDB8051
                  37418368C642D7B1A27B4F9C1720460A10090ACB28EDF50FC0CE42E35D6EC4BB
                  1D70668C402E59C4BB2B5640BE224591BB40414408501C119985A5862B8336C2
                  D369D38DC838EA9DD1F2FB72142E9D3D87D37FFD8DC3077EC1C11F7EC4F913C7
                  841A6B4D3D8C32A72C929BB036464CC0478B2C1951AC18BACF99051429A2E548
                  E795E5C8D4B4FF1A8CFC9BD4CB6C7C773119E7CD6CB70D182D1931EA32560A45
                  3CFFEDF7C8989068B14BEB85542C649509BE3801DF650143EEBB8BE381A6CD50
                  AA6A658409F8909E6CD36DB317A6B6133EEDC356EE448A09171075F8083EDFBD
                  0B5F7FF021924E9F4116D91CD4E4A90C6945C78938A1969785557719311C799B
                  35033208605C61868DF2DFCDC7AD0223E7F3CC9933C9C04803B61DB0BFFDF61B
                  8A172F7EC3BC29A19E737B80D167B8F46263B17DC428FCF4EE4E648ED7A61B52
                  44B25AAF4105C91EE385FAE4285A040F366F861275EB0005F20161E9B49CE630
                  64379B12E24DE1B5C1DE66BF12E20DF473935AC744E3F2BEEFF1CEEA35F8EDCB
                  BD368AA99F4E50C608DB8E2C7E379A777D067754BF0FC892D94F29AF71FDFE6B
                  CA9812186F66BB6E307A83C098FA39D7EA879D226E9F3811FBB76F17202628F9
                  8DCFE2F7F12203C6893C162D0B71DF23CD51EFF13600031AC2C20DE1CC88B271
                  041AA3ED200C1DA368A8403EAF1F8401DFDB6EB007629C38811F4533FC62E77B
                  387AE027A41360BA8C5B29AFC6095526300B55AE8CC69D3BA3F8BD55E535AE6B
                  02643018E98D2120D2C09872BB3E30F24EBAF72E456175BFFE38FEE557A23527
                  2AAA434A93E8A24BCF09875098D65DBAA270E346408E9C0242975F7BB5377B4F
                  BC26B08CDF5E034D5EE3DFA29D2B8F8E88029417F9EF4B32F95E6E0C8E439E1D
                  29EF7572F12333899C995ECB9A2E03E9BC8EACFCEC79241D3E84DF7F3E804B17
                  F4E2A5CF9409252B5544782911F8B9C8224A28D05F0718D328E3D5DBBF62D396
                  BC90A4CD372BFBF4C5856FF721223E5EAD579262796E44A54F87263DBAA172DB
                  C7810883E52955DA1940FD2CAAA75C86FCD0630551E0F265F84E9EC4C93F8EE0
                  884CE8B9A3C771F6C4715C387D1A97CE9D955BB496EE34FDD3868264FA9CBD86
                  E2942E2212F90B17C61DA25196AB762FB2952FAFA379DC2E3F5556A4DCE1F76F
                  BB0C2D1EDAD06EF9BF53D1D2C07813C1680250AD89A288494A8B5DD9B317CE7C
                  B30F5904386E0142745818A2841A9679F0413CF2DC73220FE6577E611A96E9DA
                  3781E732FDD50A915E0DC09858F88E1DC7816FBEC10F9F7D8EE3870EE1DCC913
                  DA5C43562A93CC989730E546D43F0E9FD3804BB0501D98AEE0318CDE89421949
                  ADA3DDE12858A694284E4D51AEF68342B1B3EBCDA2822D0CB101B6605E87D15F
                  57F87FEE9BCE9F3F7F80A6FCBF074663C22D5B6E50FCA1F937151217A9566C0C
                  DE193B0E3F6D7D071109094A3B8D11B9F062E6CCE83E7102F2D47D50CB846670
                  AB61B45654867F2A36E951B266DC4F07F0D1C68DF8E9F3CF9020AC92C671D366
                  C8E79A8E3E65D8B6FB4A1DB41F6AC9D4F2C4F88290E20BA4947C8E69444F7252
                  46D45A7DA1721550B3514314BAA7229033870EACA038208B1E77E12CDE17CA5F
                  BE564D142C5756EE775E158F370B8C8CDAE173FFB72963301883AFB4D34F91D3
                  FE786D1D5E9B364D2862A212FE63C2C390BB4279B49B2E2F2F90572D26A99136
                  EDC0AF712BAAEA618C153EDAF0063ED9B20D3E99B448064E24251A54CF17E036
                  349BE97756FF7638AC4EF39FDAA293DCDC1090A865F8B4EDE626022B41282115
                  AC58A18CF16E06ECBA54640AFDE30942B149EDBB8D1B8B320D1B68B69E8AA8F1
                  5060A4CFF77AE319E93F269BA68BCE6CFF7B600C6A0114D2F4359B82BF4CEAA4
                  475B215B5CBCA260341C176D500F2D449B464426ADA0C0266FC1B84F28280EFC
                  864D2F2DC1CF1F7F8C8C02BE7011EA9CB2E026ABD5C113461F1CAED0E14F94DD
                  98A065FBEDF419E90056B489B1C77C0E0BA05AE2F32A77A2CFABDD8C6614B9F2
                  7B7BFDEF52A61E01E8B94C19306CFE8B88A85ED5B07DA6CEEE6907239FCDA0D5
                  1F7FFC1159B264B9AE0567740D3D2976EFCAFF2E18935148BDE08A3D93B289CC
                  B2BC7B0F447DF9B58029097142455C85EE44AF37D66BBB9CE15273D993A96472
                  3CBF1DC486458BF0EB479F2073828EDC0957207458F92C5E4326353D33F03943
                  74D813D268EBB882E4CB105AF31E0FFC6C9BEF70A9C17A1425362462C5BE6994
                  672C64D717E600458BE9800A3E8B06F370AD5DFB90B201399832B291453B9DA9
                  53800296C446F1E91B0E4E1BF8FF028CF648164545121371E9DD9D5830648862
                  CFFCEA824CF0C8975F02AA56852F3C1C160D5254546079E2243E5EB0001F8B4C
                  9849644DD3A617106DC3B030C56B7580ADD3A252BE642033A376F8C385B153BD
                  141733E85DFA333F3849ED984BA3A2CB5D61B894CE8D861D3BA266972E42E933
                  4A87DC8698E1C1E1FD3FA168D9B28A4AFAAE40244381F17A5B4A7186FFBB600C
                  D54C99EF7234E6376F01C75FFF204C4045F34DEEEAD5D06EE18B6AD168D2717B
                  0CCD5880F8F7AEF7B06AEC786412969241284A98D7EF176644B7D7E14FD27759
                  3A496858D90165AA34163BE7B38242CA4C76EFB5EEF3532445E11C4E8B0A3320
                  836C39325F1E54A9570FF73DFEB808790594DC9B60C887E12A5D2209AFBDB800
                  4F74EB0E64C8009FCB714BC19852FBDF036328F60C231A9A1F0A553CB97B3756
                  F51FA8A822DBF9F46118B06225D255AE049F0053111B1AA145AED93871327EFA
                  E82364123931DC5248922B27FE605897FE6D846F69538CFE5C456FBBF46F5232
                  0249075E3815DB0B138A9C336F3E4DE56C29A564CF59B36743A6C848F55C9574
                  942B0F1CCCADC9950B99B244AA14851C79E433464A53DE0D37DD9230EC506E58
                  012067CE62FAB0E1E8D5BF3F22A855BB9CA902A349C5FE0D8B0ED5BCDEC00DFB
                  FF0D18E9CF702BBF731CE63FF9241CFB0F282AC7984057D1A2E8F9F65B3AB041
                  40035148E2F77D879903FA23E3D9F3C840B7A02DC34FB1351BDB3729A30A7A35
                  C2C554FA41868CC8943D2B7289D6983D4F3E64CB9D135973E65291E03972E686
                  3B07811329EF4DE78FD6360164D9048DDF2A3DD5658CCAF4A26883B6FEB7719F
                  618CF7399CB6F11BD7323633DE832FD6ADC389C38751A1467514A9FFB036FFA4
                  D0822963BE7CF9F0DD77DF254B0FB8D6C6D480D2A54BFF7FA2C00435CBF7FCF3
                  CF18DFB63DF28B0243EA763A437A341F3408A53A3EADFDB64211FFDEB405AF8C
                  1F87AC4239996EEAF6FA5967928A23742BD349BC4B47ED8465C98ADC85EF44A5
                  1A3591BFD85DC85920BF002DA796D3E882B3FCC1B6E81D7B2913053ABEC3E5FF
                  2C188CC9467C95BF0D7FBB32941B8F4947309E3C83E12D5AA2D553ED7167F972
                  C8261A6D58EE5C48C94D78334D3B347AFF6FDB19536AFC36210E9F4C9F892FD6
                  BC8A9CB1F10A587F4566C2C4CD9B80FC05953CF9CD4B4BB0FDA5A5C821DF6710
                  209AD13A9AEA3160D681F0ACD950BCC23DA859BF3EB2972A29E4228FAC74067F
                  82BD3D8ED0E26881151CECA55052DB7C486EB374067CEF3320687E60D4EA31BD
                  439763B0BEEF00ECFFE61B741F3F0605AADD8BBDDFED43B5468D02033C6C2DCD
                  1DF86FC0E83552ED829A4558D46244E185471E85FBEF7F90293149D9155D552A
                  A2E7D2A5E0B27EBB7C39762D7A0911421DE931A166CAC8171A8BD309B5ABF6F0
                  C3A856AF2ED2337835430683E2F9F46FC0063E672A53414D1FB1DF579C2CABCF
                  F4BC0419C2B58EAEF36C423ED763C443520993B1E2CF3FF1C6A429F8E3EB6F15
                  551FB57A3550F26EAC9C3B0F1D870C0E0CC6B5B534305E0718533472D307FDFB
                  214C6ED94A514582ED92280C2D468F44D1162DF0D3F2152A073A5B62029C142D
                  C35CCA585CAD6103D47FE209E06E99808C190CF94D2F9C9DCAA546A40F081D73
                  98859F8C27F86CDF99CDEB4B5D844DF07344E6654C66D2D16338F8E37EECFFF8
                  63FCF1F12748EFD1AA5174440446BCBB03C896198BC78D478F214381CC998D5C
                  ECC0762530DACD33D7DAFEBF60D3297B5C1271F08DB7B079EC38D1A21354BCDF
                  65511C86BEF926A27E3F8817870C5389F84C9C4ACC94110DBB3E830A2D5BE8E2
                  4BCA75E6B005A706CA577E22680F7470C1DE9F80724B6ADFF8020367958BD1D0
                  7693745AAC8AF861F90F7E47161A1B2DFF8FB6CC3DA48AB15197107BE932CE9F
                  3A89F3274FE1FCB1E3F8FBF7DF71E1C4316D00977ED34C1529CFF4C84DB43D56
                  92CDF7D0B871CAC3B44DC4927BAB5743AE7B2AC027143E1858B71B65FC3F9576
                  10D2A4C37FC6C763F3E8313842A37562A268D161C85FA6141EEDD513E3860910
                  855A5253AED3A60DAA77EB06E4944909D7F18A2931C3E42DB816A2AD2A99EA9C
                  0D782CEB219A64DCF113F8FBE0211CFEE5179C3D7E1CA78F1F459468F0D15117
                  AD903213E8568899ADA9000CF98CDA3E4117662470D19EE8D0BE15633E7436E1
                  A9884C98B0F96D91910BA80FFF7877A7CABEABDDADABF23A05B7FF3289FF7F87
                  32DA4D3A1E9D5CB5B8E33348126D3AB350B828F9AC64C57B70EEFC79FC76FC1F
                  A4CB970F03A74F87B36C79ED930E0ED10F158061FB23B03EA300831F527BF518
                  E9028C693C791227BEFF11DF7CF209FEFAE500CECA4287D16EC7E81EDA2D7D5E
                  A3D2843F0351FBAB430DD9F0823B026D75E6B53AE5551BE7BDCA23E3C259E104
                  FD972C461633E25B38C1370B1728703DF1C20BCA5518DC6E356524182D97E7FF
                  2C1885158F6BF33872098B2E2E9AF341A106E1223B9D8F8F45E1AA95F0D88C59
                  3A16501624019AB6B9AC67E1EAD140AA1941B5663D9E9868C4FCFC1BBED8BD0B
                  DF7FB64715864A2FB26B988033BD28162E01A1CBA10113188963785EC8CE8390
                  E8FFCB195096CF67CB91D6764F8751664FA71F84E5CB8B3EF30570A54BEB8DC6
                  EB45911BD3E25164112E3068EB5651CAD2271BD1EDC6A6FFCF81D1EF57360223
                  9292707EC74EBC3874188AE7C9832CA21DFF29134A2D3967CDEAE8C020824C99
                  04B54E237A26E041C92BC23A02F50CF59DE93E8C4BE08CE18337DFC2D7BB76C1
                  73290AE964525550AD41F18273AFED5523423533D822546899F20619411A66F2
                  BF993446B67C3E5D18AA366B86C683060159B368AA4F31212A064B7BF4844700
                  1923431EF8D69B5A3431F3818CE79B6034FF2EF81FB3E9FF533263C89690886F
                  E7CDC7F6E5CBD1B249331C12567D4800135E203F7AAF7F4D28620E7F0125532B
                  3515155B0B00833DB691AC5826ECE0EEDDD8B1762DCE1DFE03112A95D4A3320B
                  DD2AA5C05611C261C631DA81E84C1E246115A7F7F725A5606155A5C2A9AB5C50
                  39A3413ED7DD25D061D810B819684BF0B88CA42F998FAF172CC4D6652BF0F4E3
                  6DB07BDF3E7490C90E2F76976525F82FC0989A24FE5F7FFD1577DF7DF775BDFB
                  6A69AE371C8CFE681D99FCB844BCD6BB370E7DFE057A76EB8E0F3FFB04DFFDF2
                  1BC62E7C112ED12495E06E762EB88A972D672420D7C56368BDA2747CFBC69BD8
                  BA6A35D28B5C9889321F13FE8D27D8AB800552BED0957A42954651F9304E9F55
                  F2C48CF0261B565E218743457AC78B1CC8A08F12D5ABA351A74EC8221A32D2E9
                  127A3EA75B076F882277E1E34F3077C060D92849183E772E5E5EBB0E4D7B7447
                  DE2A95E113D9921BC5AC457EF4E8F16460FC4D449EF4E1FF4D799337DF7C138F
                  3EFAE875BDDB7C362931815E8476635BBBE1BEE980A29EB200E36B3F0477D425
                  8C9CFA3C5E7E7909A284450F7865259031A30E14085246E0FF3330A554995F7C
                  9C397CB06C393E78ED354426EAB8C6F4021A95CA8040EA47A07B556044A0366C
                  0F2BB342A98C61B8194401FF90FC91E1DA0FAECA2F3B0DEF903B0CA5AA5445B5
                  7A0F217FCD5A409E5C5A1971B9ADF12803398DDF3FFD8CF1ED9F4606E9B34FC4
                  92E7DEDE84253367A0D623CD50BA417D55664F8936C6781518EF28A83701B4CC
                  78ABC0C8D6AE5D3BAC156E633656BBDDBC79F335BF8FD5C95832EFDB6FBF5545
                  9F587CF467E19037B7F0930D8C6A42098EB8788CAA5E0399052C4317BD846963
                  46A1C153ED51F1C9B68A72B0C2AC49A752920D4D5B2593B70EC9EE7CFD85B9C8
                  1017870C497E599080F3391DF6DB55731A9AAD1D7C2695B30DC1F07DFBD9B54E
                  93D59FC5F3DF6E9702608E0277A0489952B8AB5C7994AA5C09AEFCF975A48ED3
                  653B29C16E6632EC977FFD8DB96DDAC075E1A292277316BD0B9D96BF8C852347
                  A1C6C3F550B1554B0562561472DBC158F04EE8ED74EBC1B861C3063CF6D86301
                  9F4D9D3A5595B263ED6E3BBB25B54B62A0B4AC0B8177E4C8115569EC9B6FBEC1
                  E79F7F1E4061CDD6A74F9F8092C9B70C8C3945CEE9FFE2020CECD913E35E5A88
                  CCF7DC63E4B8F8972D7982BDC7C86FF620F6DBEFB074FC04C4FCF9878AF2A662
                  A2026CE5D55E97BFDA4430109595D28A6F745894D294F14245FD90053B64C18B
                  9416D095298D02771543C11277B3A8B6061ECB96281394E10D3292C4ECDABE4B
                  AF90D6EC4F9EC2CCCECF20E2E021552BF254C6F4A82154A6F673CF61D9A8D102
                  EED2A8CB20DCF4C1603C6968D3BAA0E9BF65D3C1DE9AD48291D7E511A5D3ACFD
                  6D36D6FEBEF7DE7B55C086198A46B6CB748650A04BA9DDE462A1362DDA04A3B0
                  E9E1D56BA2EC9D77A2DDE851E82F609CB3E17538646255FAA93DD2D9AB4D24CA
                  24C4BF699C168DF813A1849F6E78139998EF42D7A24DB9B16BC8A66DCF5E8FD1
                  2CFA69CA7A2C0A104F4F8F5B57294B12392F4BCE3C2859B1020A97298B82C58B
                  2173C1025AB1A2866F869799113F4629BEE44A96998ECA13148CFE3366F39F7F
                  304FC69CF4C79FC82673C1EA65FF4446E0B9593390A96A35CCEFDB0F65AB5545
                  1D615916180D45EE9F632771471018FFAD0263571CE80E6438DA955255CDB67D
                  FB763469D22470C1535195F66A8D719913264CC0C891236F2D1887DE5713354A
                  9741CB7EFDD1AF6F6FCC65A48ED2A24384DD9BE322107FFD0D73070F520BC922
                  A1E1464A815951D614F51573558A86B6F1D9A99D021CAFA743273C2332E7C98D
                  32B2F8C5CA9641BEBB8AEA8821523B2A5294F39CB6047C23C4CC4C0A0B984C73
                  F0569F8D7C1DB3C00065C483BF614AE72E4877FE820A0061F25894B0E2A32257
                  4EDEB451C988939E7E1A351B340804A357EFA8BF8F1DC39DDCB486629533572E
                  5574FE46A4AAD26CC3229E5703231B1597D6AD5B5FD73BC9D65954BE69D3A6A8
                  57AF9E2A36CFC4B2940ACC9BED9A0BCCB3BC89DD381DC0A6058C8344B06F2080
                  AC3FA03F86F7EE85A9AB5701D9B22B5667BAFB949221FF62A62059FBB1AD5BB0
                  7CDC38C592490D69A456792BD051DE2E6347F27252228F8A6F34CAE209356355
                  B09C226F95A8581165AA5641C1BB8BC399379F529A147B5581B1360AE7B0797D
                  52E17F0C450B74D508AFA288717BBFC29C5EBD10296321A576FB9244C6F529DB
                  6305D990B509BEF3173150949747BB75432DC67486DB28A3C89D274F9F510BA7
                  6648009A377F3E25FCDF88A337F85CBBD9E6934F3EB962D621370181F29A288D
                  046E4A8DE620029DF6C89A356BAAA337F86F8A052CBD7CB5C08E575E79053367
                  CEB4FEEEDCB933FAF7EFFF2FC068B400300A9826CA84DF737749341B33125306
                  0CC408BABFB267536CD0F23D9B717FB2789F8B6CF9FECA958AAD6548F258E545
                  F81F33D2DB2C45174FB62EE0E3111B3CD9AA6CF5EAA8707F2D642852D4283D12
                  AED9ADBD3094CD85984C7B375A8A0759060569E87F18F56C8DFEEF5FB7166FCE
                  998B5C31F12AA8D66BF4952D2647360C7C679BCE82FCFE470CEDDA0D9D447C29
                  25736469D30618931DE971ED013A37BC5141F9EBAFBF421E4A44301370FCF78D
                  4A8FB8D696CCCE6899768CA08457060E413A61518F4F998CD922B40F9C3A4583
                  D17E8445922E75B263C224FC20BB9FC59F589C3320B94A5048964B7B5E8C2C5C
                  42864C2855FD5E3CD0B8210A94AF20AC3F9B61B70CACC773B502F0D7D54C16CD
                  D3B94E9DC4A68993F0EB871F2393FC4D83BBCED9616CA6536541769E301EF95A
                  3CA294AA832F2DC52B4B96A0F3B4692852BFBEEABB955661B3AFA6044602832C
                  FB561EC396DA0AB437E299FFA685347AEB2FA04C32FB5FDB809D6FBF85812FBF
                  8C75F3E6E2D167448E2A9047272A390C9FB2B08EADC347E1E79DEF2AD6CC0818
                  B3A03BB55BF56F9A5AC2C2714F9DDAA8DDA20532962B47D54E83DA3CE3CFE137
                  909B7D31E36E7D4645EE80DC9450FCD6117A8292056A98F57D448CB8B0E70B2C
                  19311261C2C232267AC10C698F61DFA41C7D39DC8DC20D1E46AB6953F4A14842
                  595E6EFD388E1F39827E2B572073A58A7E193A1418831AAB419025DE0A7FF1B5
                  B49402926F55BB624509E6BEC4FFF8134689F23263E346EC1159B0548DEAC876
                  57610D469F4E54FA74DE3C7CBE6C05B22624AA2C3CAF8B4A8AAE6193280A4695
                  FA0FE3FE664D91B1640991FB220CB30AFCD44FA1CD2FF7A5A4DFA51CA11DAA85
                  3E78520DDAF4029D38856D22607FC74D94E455E55554650A161770E864FE3857
                  38C28B1545CFB56B80CC91FA4102A2A9AD1E53801D251A2B0ADD6184CC057A8E
                  804030DAFBC0F27D34B3A49625F2A40182F75A8E3FB3DE9B4A70DD4810FE9B67
                  A598C4AF64472E9A4CDAB82E5D316EC142FCF5EB0178222350A462050D9EA404
                  1C7FE73D2C1A351239E212156B8B11F92F213C1CF737A88FFB9B3686A36C399D
                  60651C0464457ADFD2DD678B0AA2B62B1AE9F71B36E0AD858B9159A8BACEE9D6
                  69B43EF84D491429C2EE288067572CD7D5D4D87F912B774E9E861FD76F50513D
                  233FFD44C4962C81850F6054B1F01F669C6C83058034157341530A014965E566
                  00E17ADBBF7967F03D2952461DFC40ED32096F087BAE57EB7E64CD93073F1EFB
                  07E5EEABA117F5EF7F30B1794BE551499485C952E84E34EED40985EB3CA8C3F1
                  55869FBF0A99EAC0350E32A4E9487D6116130D94290333A70DB6C9F84856B7B8
                  78094765415F9BBF00CEB3E71408AD000F7533836C1DAA6C1E532B9C7714C400
                  61C3C89B073ED1821DA4A6474F6042D366881050662E52185DDE7A0BC8942119
                  3FA6E762CC9831CA985CA74E1DB469D30655AA5451DA34A79CA70F90459BDAF5
                  810307D4F5B44556AD5A55794FA8D166CC98519971DAB66DABDC70AB57AF562C
                  9E874D06973DA1F19A0708F134086AC1E6B31938C1EF4D4337BD2CC78E1D537F
                  F339E675341BD1F0CDE7D2B71DECA961A37B90D750ABE7F981F42C0553F794C6
                  7EB57313AFCCA68D1C9873C21E3EDAB4192D9FE98CCFBFF946B9C068025925DA
                  F55F9FEE5136AE8EC3862153ADFB44A6CA6055A64DB201C385202D17296BC3D7
                  D482016AE6B5985490D4FDD4297CB765AB3A34D32DF25A648247C7477A7DCAEE
                  697A804C1B277378B256288BCE3C012A574E55DA4F69CA09F1F86EFA2CEC7E65
                  B53265556DDE1CB5278ED3F9DBB64663330F8F5CBA742972E6CCA92266A64F9F
                  8E1E3D7A280A67CA8C66240D0B42D176377FFE7C75C41A237E66CC98A1404973
                  CCEFBFFF6E1D9B4180D4A851435149357C59BE952B57AA93AF4C971E7F08B28F
                  3FFE587961E853EED0A1031E7FFC7175F229BFA7464D60F1BA97451F58B16285
                  7A171B9F4380F11D7C97F91E1AB13926DE4FC0F319F545797BFBEDB72DA071EC
                  F483F399E6D869561A387060B2B306AF00C6E0D07FDBA24AA7E70F1C843E82F6
                  3D7BF7E23E0606FC7210833A76408DDAB5D17AE40880762E33FCDE1E6C683DCB
                  E78FF0B952651C8BAF25CF47F685B8332037C66784A5D1D313158DE87DDFE1BD
                  F5EBF1D3677BF481991E7D42973DCA5BFFADED4DB4735E4817868A4D1AA3B188
                  1EDA6F6DF4830ACFD16398D9A03132C84664358DCEE3C7233FB5EB20DB211790
                  810ACF3EFBACF519A91317991A345D7959B3665579D4A4400429BF5FAAB22D8D
                  19320A3C117C6CA4343C98920071B95CD67504DC830F3EA80E1D2230689AE17B
                  78541BDD910419296BE5CA951545A4CF9AC027C5E53B3B0927E3D1BFF4D4BCF4
                  D24B2AD98B8D7EE7C993272B0AEA36D675CB962DC89D3BB73A7B90D494B64E5E
                  BF70E1423CFDF4D3571C3B7FAE81320681D10E2659C49F77BC8B9C02389A5AEF
                  AA54093BA7CF506458D56314CAE0910E9BAE407F59645C7B0B66BFFEE5F1FFB6
                  A81F6CB9313C08E91C8E7EFF3DBE7EFF7D7CFBC147088F8F4544A2CF3A34D361
                  447527319DD665CB5214854A859109503A8C1A8182A26C516BB6CA9710DCB221
                  DF7C6E384E6C7947892F4745769EF8D61B40E142EA3023FBBE2155A472C2E3D2
                  DC21F26382C148B7DABBEFBEAB804590589BCFC68619E4F0BE8CCBA4886663E0
                  038DDAA44EF6FB08C2175E78411DB3C64680D08D68374AB36DDAB4094F3DF594
                  5A4BBB77C88CC724E082CF1AB4F78D6CF8A1871EC2A851A35235F65482F10ACD
                  C89DDEBAE655DC776F356417396186B0E52193260179726B579C6953B4650186
                  324E9B7F071BA9CD5BFDFF0E029DCA02F4F8811713AB8218FED9FF237EFF613F
                  0E08C5BE78FC98AE7AEBF35A556FEDA0E6E4B116A47988268B11D0F37349A861
                  3E61891D478F16CDB890F669BB6C3D6322DA675F6066AF9EC8171DABC2D0A245
                  261B4230664827A07507D8136958E6B9CCF42377EBD64D9DE347366B022B188C
                  A4585C5002A767CF9EEA7A521FBB2C462AF5E1871F26032343B958F224383C8C
                  E0E56794DFD89E78E20945C582DD730423DF49F0D9E543138C942379122B1BE5
                  59BA1749E5AA55AB86B265CBA265CB9668D1A2853ACE97ED6A63BF2E30DA5356
                  BFDAB103B9D3A55772CD6BB2139F1039C02AD06EB2F41029A9D683003F68ED6F
                  B58ECE3058ADAA2D92A441171B07F008DA7F8EE28FDF0EE0F49F7FE1CF5F0FE2
                  F81F7F28576398CAE8F329161C6EAB7A6B165AA21F5CE5B518C6733308C32C34
                  E089CC84F64306231F0F23A2EC677896AC0D91A42D0A731E6D03E7D1E3EA0C44
                  1EA454A14B17D41ED0DF9F84E6F5D95C945AD0E7C9A43C79F48D37DE40C3860D
                  F196283B64BB2618290B526663E3027F2F547DD1A24558BE7CB9AAA7F3D1471F
                  593EE72953A628D92F1465A4AC49F0B66AD54AB16C1EB24EB6C9F79252D9C1C8
                  60063B3008C6EEDDBB2B766C961AE4DC118C544E4C309A3E6EBE83DE1A9EB8CA
                  1FB63973E604B8FD521A3B45882B81324442560A885459EC5178F79535A855A3
                  3A0E895250BEDE43561CA0A9AC9809590EBB61D96733AD241AB9CD0972475CAC
                  AAE99D70EE2C2EC8F3CEC9CF496139174F9FC5D9932770E1CC69C489ECA7B2FF
                  0832FABF65D1ACE2F257DC454EABEA99190DE4218B76E823DACE0BF01AB46F87
                  5A1D44D6C96E1C8EEE705A1B4AFB995995205ED52EFF75D316644A4854633C27
                  F70E59FF1ADCA54B5A81B8579A40522E5292468D1A29B031E2866024A531C168
                  6F042B290E17D534E54C122E4470068391D4C7D4C4E9FB26A0F9EC5EBD7A2919
                  D26C57A28C2618ED94D8A48C0C41E306A2C2C583CC29DFAAE965BD2561ED0C47
                  A37C688FD609357646995F2D68227560349B5089FD3BDE413A59B80819583E2E
                  86D3700B9A42BEC760A53CCF4F3A7BFAAF3F71F4D061FC73F830CE9D38814BA7
                  CF21FAC279C4CA82A873A3E14F3325E0347B850138C3BC0423BED176E4AF0ACD
                  5247FD6ABBA0C716F5A3C713584DCC639C4F483B28E311EB76EF669CC4E05280
                  4A32C6EE37F538D5C639B56D3B968E18A9AA69109C047298B0E89E6F0A8BCE98
                  CE3FF6AB4C20958411234628B308A90DCD2276CA18DCBEFEFA6BA54DD384428A
                  4220ECDCB953C98DF6F6CC33CF28D0324821A5C625A66928188CFC9C4A09011D
                  0C4652575246B25BCA7E543E18704B138DBDF1E8602A4B2981D11C3BC5869F7E
                  FA29E0DDC9EAAF5FBD8CB26E96DDF1520CB6AE7D15F7376E882C05B5E7C14AAE
                  3F7F11E73EFE081FBEBD097FFE7E10F122FCAADC6663911D86AFD761B7ED99F6
                  4791079D662A289042CEB3BDE3B072A3CD68707B14B84905591F87BEF0988CE9
                  D1E8C9275183079F53CE5501182EBFF7C7DC6F663C23EB4CFE7200E3DB3E891C
                  71F12A329D87A85F10603C33651272376D12325F9A8DD4897220354B2A05D46E
                  9F9477133454344819C9EA4C3052CEA2BC4865802C919AF4C48913D522D2EBC2
                  4523857CE08107D43D850B17D6F2AFCCD782050BD4B5B45BF299042F6551829E
                  215F66BB1ECA48A58AFD24B5A6898AD751B1E18679F8E187952987EC985A3EC7
                  4ED355F5EAD5D5D8297E702310D0F63488D06B7A15309A9E122B9A47E4B823F2
                  C2F0884CC85FBC9806937CF6C7B6AD78453AEABE74599951CCB35ACCC2A04EE3
                  A8DD50CDA2669659C711F8B7FD1A04A69E3A828C3DFCDE63A41AC4CAA4E52B59
                  028DDBB747EEFB6B0159336B19D7A8766115BFB7754BF99719F821F2E18C76ED
                  112ED49CC5AEF836CA8A09222F0F79738332FBF80C6D319818925D728109422E
                  061794C7B599763F0295B2A0696764783FC1CACF39369A74480D793DE308D5E6
                  92E750237EFDF5D71595A2564CF648F011107BF6EC51E15F043A179E8A0DB569
                  739E1A3468A0FA60371FB1F179E646B183916026E84D6D9AB6501AE1D9F87E9A
                  8B3806829CA207952BCAADE6D84D730EC74E0ACBCD44B3502AC118C2CE981CA3
                  DA88EC49C40FDF7E8BF295AB28D6BD73CE5C7CB26EAD32A1D05F4BBF6E589247
                  5587701A151FAC335D0CEAE50A66B901380D2C93AC3BEAB5846B333D95D48FB7
                  99E75333148D4A49D63B0BA15693C6A8429956164007DFDA3C4141C11456F622
                  3FA39871EE3C9675EA8CCBBFFE2663F25A27B0B2B244D7171720C783B514A87D
                  B65278C18024753B253230D91D2904354AD3CEC6EF4809A9A4989FB13F8C3524
                  08088A52A54A294006AC815C43CA48C01178048BF93C02DB0CBC65FC6170102F
                  9F4B90F23B7BA37C4AD31035637B2338F7EFDF8F0A152A582025CB2605E6FB08
                  B05CB972A9EF6804A7DD919451AD8FFCD8C7CE0D959A38CE6B07A361723977EC
                  04B2E7CA89A37BBFC4A48183706FD1BB50B5E23DC855A4B03275245E8AC2A9E3
                  C7715CB4601EAB76E1E47151504E1B40F41AF5BDB57CE832E444F36485D03D35
                  73A19D01B51F553D6E99E4BBEEB90755EBD4C65D3C0DF58E8246BEB3C38AA609
                  3816CEB6B801728B3AB4FD3C1675EF81D8FD3F23B3EC7E7E4B767F59C0575AB4
                  C246D3A7E90A12A1B221AFD06E95BFF846BFE77A2AA65D6BFB9747FC6A57DB45
                  D1948E1E3C84D24C788ACC02ABEC9D0EFF86BF80934F1F3C49EDF9E2259C11F9
                  844ACD9F220FF11CC0B3C74F28ED59B174937ADA2704BA20BC0A7415E0152C5A
                  04B90B1742A97B2AE1EE7265114EF065C86898998C7034DEE5B25B2E6D0F0B95
                  E34D20F2D0F62EDD70E1E703AA8C8AD6DCF5393731223F0D63E182ECD99219B9
                  031F96BA05B6A872A870B79B00DCFF2A2CEC5ADA759C376DD8E0ACE0579DEC94
                  2C6ED07EBD698B34016A9A7E1880C0F22642EEA985C79D3FA7ECDB5693E76660
                  7435832F58EB9194C9EDF6A798DA82714345C7F8CC686EAB63364CB20FEA8890
                  1358D0BB0F127EF955D912550AAD3C9F59871733A4C30811431C94DFDCB6DC9F
                  ABC58CA5B56B6AD779F8B9171E1610254B0C028323988725F355C36600F72090
                  5CF98204C6A06759D97DBEC0EAB7A19AD5213F9BD7BFE55F462A2D0EFC82593D
                  7AC079F68C3AA74697C7036285C59FCE980E7D4459C85EB78E5F7BF6A74422B5
                  A7ACA6D46ED7702FF31ACA7E0C78B815A908D70746B933F6F225C40A35CB9E2B
                  B7CD9F77133A7E05CA93FA0535C06352E48444FCB56327968C1D87DCA295B2BA
                  85999FC378C68BE9C2D0F9F969C8D3E061EB64584D4D7D36DB9333591F18A142
                  DB9DA909FF5F6D545418E6F6D9679FA9E3E66E863C9AAA78C6D43D4D7519C70E
                  1DC2A513A750F2DE7B0DA5812546FCEE379330DA6A18245754520A90B8EAD853
                  BECFEE1B57FB4469F03E2D169C3C8D7767CCC6BE9D3B842DEB881E135FAC1A41
                  CDB9C79429C8C3C32BC38D00384788F786D878B4BF711153734E20BD18042F8D
                  D6A95DE85B454D09467A5818167635B3CCB5B494FA7F9D6C1A5610C3A95F7FC5
                  EE77DE415B861265890C94E7CC05D364C5B8F1FAA9A71E94594E2C28712BC0F7
                  EDD1C674869709053CB8651B5E9F3D0B992EC72022215EE53A7B1D7E23390F6D
                  EF3F6F3E32DD575D69E5490EDBB131FEA5BAE67198151CEC2CEF84C8AAB413D2
                  8E176A9142DD631FBFB97C29B1D194EE378FBA0B050ADA07CDCF69BCA6ED3018
                  8CBC464DB7617C0FD5780DBF4BEDC6B97E30AA59810EC215E17F7CEF5E78A245
                  4BD468D8186075071E58649EE762281AE6F92A56278CDF4A0AB4853DA66608C1
                  1141E673027CE30CBAB874197FEDDC894DCB5622F6D85195944FF9501BE23510
                  2F53262C742706CD9F0B142DEA3FCE3744D0C7950EB1A4719A2155B4C5D1384D
                  63F0FAF5EB958199B6387A4198CBC2A95FBC7831468F1EADC2C8E8313113B468
                  C4A6778501AFB4D131C081FE66BE9306670627F07966B00213E6E96161C0020D
                  DBB45112E02CCE44C333414F833B3D3AECD3B265CB940D90CFA5BF99CFA5BD90
                  FF66912752751AE4E92E648439E546367A66189841BB25C1C6BFD96FDE43FF78
                  B972E5942D92FD61633F18BCC1DA3CF638CC9B02460B3C3E23E5F3F0610C7CBA
                  032265A0A5CB5740896AF7A25C8DEA70E5CBAF831114520CF38BDDF0172298F6
                  AAE8B343D00CE6B04E73D532217E3F8C0F366FC4476F6F42FAB8581B4BD60F62
                  1859823B0C974559A9F64833D41D3AD8381D362CE044AF50A5A1536A0C5465C8
                  178358195E459F2EFFAE5DBBB6321CF337831ECA9429A3021FE82D61540C179F
                  B18064F3B56AD552806370053D33F7DF7FBF5A705E43CF0B8B338D1F3F5E19B9
                  0922BA0A1928CBA86A3E9341120CEBE2C6E033196945C0D12B4380D09F4C90F2
                  B9F4F4D000CF600C8A0D74F9D1E8CD7ED005C8800E8291006414105D88A6C19D
                  EF1E326488EA3F8DE76CA627869B91067A6E188EE76AF18D3786325A8B64987B
                  8E9FC0AC6EDDE13D770EA5EF2E81BF4523BB24DFB13A4495FB6B210FADFD4C53
                  A5F7C1ACFE65D90761A3A2086D0437B56FCB5464A41724250017A310F3DBEFF8
                  F6C30FF1B52C78EC8993AAD0941962669EDAC5C08A04A74BC98749B2A09DC78D
                  43AE076AE9BC1D33273CD80C646DC0E4A6227BE3828D93E755AA54C90225FDB7
                  6623F5216B663816A35A085E2EBCD9080A828C718626EBE63D0CE162DC231799
                  C0B4B34EBAE5E886A37F9BCF2488E9660CC5F60942525B82922168CD9B3757CF
                  65DE0D292BE311CD66CA8C0423FB4BF9D6740B9A8D6E4F7A98083AFAB1D93F2A
                  3D8CD5BC96766364C6E0C00A064D9C398F57070DC6917DDFA2862C4ACE020570
                  40149DFDC226C812590FBB44B9B2282C1A67F132E510212C44C99A6495E6516D
                  04A81D8C3EA3B29919821675099704E847E4992C3C7F44C484937F1C51C0CBA0
                  D20CBCEAF457B7CD2FCEA2F1AC64A10F4D72A1F1534FA172C74EBA888051CCCA
                  8E31FBB89255E04D051849BD4829CCB84236523682868B4B3647A0128CA6EC45
                  0013508CD4E1E2F2BDA4A64C0BA0864E6ACBB0AEB163C7AAD02E522752380661
                  30BDC07C663018791D01BD6DDB36F53741476A47764F80118CFDFAF5539F9B47
                  28138C3B76EC509B83D493C1BA0C510B6E1C0BC74C36FDE5975F2AB6CCEB6855
                  20D85313F57D6329A3051A231725360E1F897CB16BDD5AE40B4F8F5AF7564366
                  E9207D96DFC82E8A4F4CB08EDA55E614D1C433454420636404C2D3674084504F
                  4B40177E79F1FC053804845117CE233E3AC67227126856608675F2018C12CCBA
                  D09447C0ADAA98C94F944C4C8D96CDD1A0F33322D7E63722BB8DF22921A396AE
                  9C948F20A0120804614A60A4BCC8D02B2E20A3652873D9C1C8642C06A3322895
                  763E062BB0BE0ED30318184120137CBC873F94210970DE47B92C14C0D9988AC0
                  E86F460399B192EC0BA369C84699C547CA672661D9C148CA484AF7C5175F5814
                  D93E66DEC3E79BE62CDECB7E30018D7E730606DF749931E4C240879CB929B7C5
                  27E0F4FBEF63C1C83122B3C52352587319E9700E9E9870F61CFEF9EB6F44CB64
                  7B3CFAD860B34EA3CF70FF99CFD3A619AFE1DBF697CE334BA8F8431EA02B53F8
                  7CC631C1BA5A6D9C4C843B5B16D46FD51A151E6D01E4F3C732D2D7ED175FB5D9
                  2990425E1D8CF646E0916A914A5D0D8CDC9864A90C9C301796F73064AB7DFBF6
                  C9B4615E4F0A45EA4610325C8BD732A0C1BCDF042365553B0028435299A0BC68
                  36B26933429CD13BEC9BC986F96E6E28C650324287548EEF32530CCCC6103806
                  5A909A9B0964F6C6E05A6E80AB55CFB83994D1C285E1FAA319E0F419EC58B418
                  1F8BF09B51648C8CA248E4C8940919DDE108933964EC23291959893A905C45E7
                  2000A0FE03CB9DD6E78C495415CD8C54D344278CF453B78AE461AE77A5071F40
                  7591D1D29792C9C810E13F34D37E00E50D34DB315C8BAC9681A8D494B9A05404
                  CC468585948EA9A3A474458A1451D97D544EB8E8A444D44CA9281010D4AC4999
                  4811395686F3330D810055A915329F4C45A5E2414012B0EC03B5693B65E47DD4
                  A6A90DF3B9544CB849180F4999930A133705B56D4600B11828FFBD6BD72E2553
                  12F8DC6064F5AC3046C588A1639433992E6B829CC0E38661E4111522029DF264
                  28F67E6BC068A330D61984D4B665D77EB569233ED9BC15D102509DC362C8770E
                  5DAD9626076A9D9487C2C25D382F93E00A4F870C59B22063E62C88158A102394
                  348CC1110665E3D9341122D7E42D7CA7FC1446EEFC0510C6B44B56330B0BF717
                  0F756AD3129B6502B2813180FAFDCBEA61D42EBB74E9A2847A9A50F89B6CD06C
                  5C602EAA092E9A42780F0140530AE3076992A1219C8A06D938C1C260D750B648
                  DE47CA484053663B73E68C8ABC26DBB45F6B06BD320C8D202538280A10B4A4A2
                  6CCC6D66FE0A43DB08701603D8BD7BB795FD47E5878504C8DA69DAE138485DED
                  C77A5056E546322933593537E4D5DA4D0363B24555BF8D2337BCDAF8ECFDFB6F
                  FCBCF72B7CFDC94738F5C75FB87CF6AC917E40A5C301974767F2B145E6C88EBC
                  771440DE8277C0251435CF1D855080B57B189F47DF7864266D3AB2E43F339A21
                  308E31A53A237E4C5E9F51FE46D4B5B95A012652536E5893EAF13A2A1D34DB90
                  255EE9D964ED870F1F5660A3D64BB03398F77A8B985EEBF843B51B07C6101446
                  BFC0F8DB11585D42158D4AB2557D60CDC0A8CB2A6FE6CCF1633873EC04CE8A70
                  1F2F1492BBD1230F4A94EB2EC7C5C22D1AA6337D7A78083C99CCBC450A235B81
                  82C853E84E6415E13A5228243D2AC10AAF45091D367764B2B8C41BE721BAEE29
                  4D6161692867C506CA9A4C53A0CD928D54F55A7395AFF6AE5BD96E229BBE52F3
                  06FED34E39CDA81DEB73AF951713589DD6662437EBF9D8BC252C817AC5C9BD1A
                  0B0E8A7BBC9D22C348195F7DF5556557A4EC479180F25EA864FB1BDD6E26686F
                  1D18438472D98F30375BC8AAB33E5B944CA8DEDACEFFF37FE60C785F32DF756A
                  FAFB2FC17823162CD9A1EDB701E5BA516349A9FD4794D1E824928B7157ED724A
                  BDFDBFB94E69CDD6FE5330A6B5B4666F69604C6BB74D4B03635ABB6D5A1A18D3
                  DA6DD3D2C098D66E9B9606C6B476DBB43430A6B5DBA6A58131ADDD362D0D8C69
                  EDB66969604C6BB74D4B03635ABB6D5A1A18D3DA6DD3D2C098D66E9B9606C6B4
                  76DBB46B03A3BDBEA2750891794C6F0A91D1E6B92E667296798F33850A12F6AA
                  10F6838E8CF3A853BC27A57E395259A9C27C8E3AFC2885E3E4ACE7380303C1ED
                  81C029DE670B000E9E9B8043E2AFD26F6FF038CD67075D6F9FC7ABCD43F0BC05
                  8C35788EBD0899BA11B43E01F52FED05DB1C296759860063601D437B32BBC33C
                  5A83E902AC44CB80491EDDCB64A7A072200189585EE39EF8049DA0CFD07855EA
                  2444E7CD7B58C033491F93A6725CC2FCC541AD629DF605F2D8DEC17E85FBFB15
                  AA8677C8CAB3E6A90D5E6FE0E7C18BC37EBBCD0ABD46547A92B15076909AB55F
                  54455FA7EEBFFD9074AF91A4C6BEB33081CB9817B77E3E53279CB6245CF37028
                  F52EFEE63C716E9C6E5BE17C1B08BC46850FF689454E9DCE901853EBCAB9E658
                  DC6156E47CC0D0D51C1BF31315A50E8A529F31E38F3FAA1287AE4DA4CA0AF295
                  664560AEA5C28AD34AA0B30AFB07D46D4F018CF62379ADC2F2F2D05F76BC8397
                  E6CC45744C94FABE70A1A218386A04D2972EA527C49EF8C4C9BA7011EBE6CCC1
                  073B77E90D240B56B9460D741D360CC89D4B2F80D336D93258DFD1A37861D224
                  FCC25C62F92C2C7D06B4EFFA0CAAB5794C263FDC283F6203902CE6DF1F7D84F9
                  CFCF5005D3D9F2E6CF83FEC347205BA5CAC6019B21A2C18301271337E1A9A755
                  350AFBA6F7CF832E941F27CFABD3B62DAA356D02CF9973183778102212F4090F
                  1E874EA9E53C32BF9BD7F310759ED43A7CC67484F1B812871E278F9B7B8507C7
                  4BDF993E4002C0E24D3D06F6475E26D2BB1D1A68E6FCCB38CF7EFD35E64E7D1E
                  274E1E531F3307A673AFDE28C76336CC8D0EBD398E7CFD25C6F51F80CEDDBAE3
                  810EEDFDC7CA058351C6BDEBE5E57875C50A4C7C71010A56BAC70F6C9F51D957
                  7E0EEEDE8D65D2DF4B67CF5B39ED1C63FA884CE83E6820EEE621486EE35C1D87
                  01C6B3E7D0A9491364CF9903B3DE78539D42661D6F9222188D44258B221A1726
                  99088F8BC7F659B3B1EB8D0D2859FC6E347EE20975BEF19BCB970930633162FE
                  5C64AFC6127261FA980EEE88336730BC6973F8845AD56EDD0A95EFAD86BF0FEC
                  C76BAB5F5509F6B378BAFD5D45D5249A938203BF61E053ED112E9D7EAA534764
                  C99907DB366DC41FFBBE57E75CB79B37C7A820EBB44A207FB8EC656C5BBC5436
                  C69D68F8F4D32A4764CB92A5387FE922BA4D9A88620D1BEA775814D51B222D01
                  8A4AF5B8AF26221313AD3930A918B31E08B648A160ACF1DD74F873A8FAD863F0
                  9D3889AEB249B2C6C7ABA2F9490E8795EFCDBF793D4F80B8983E3D66BE2D8B51
                  A490DEEF3FFC88A11D3A29A0366DD50A252B56C2B933A7F1D6D26588BA7C098D
                  DAB543DDBEBDF591C96CB1F1F87EED5AAC7E611E72E6CA81365DBAAACA1BBB36
                  BE8D7DDF7C8B5295ABA0EBBC17009E964ACA939088B37BF762729FBEE8D8BD3B
                  CA3FF30C7CE16E7D940A1C81DC42AEFD66D162AC5BBE02A3162D44D6AA95D5F9
                  DA30D7E4D225CC7FA62B8E31C53543463469D31A45CAE8D3110EFDF03DB6ACDF
                  006762122A3D50136D66CC5018481040B2B6114E9CC690868D9025572E8CDA28
                  E3CF9411094279C32DC2E74C2518B9213930927A99BCC19D3AA1F64375D174F4
                  185D8D81ED5214263ED11651713198BEF33D55C14B2DA00062E5808138F8E91E
                  4C9E3113B8FF3E4DFEC9968E1CC6A8764F21227F3E0CDBBC45755E752C2E01E3
                  A5E349972E63E2A6B775CE33A999C7876F841A6F78E30D0C5C300FB96B54D73B
                  90D4E2CFBFD0A7751BD4AC700F9EE089A1EA5452AF9AC0791D3AE3F7D327318F
                  FDCA96459DA41A8A3D58DC801420264EFFD6ABE5A7F23CC79047FC3ED9169177
                  1444F7B7DFD2E5FE782B459604E36430736E0D969AF8E626CC9C3B07B53B7742
                  8D3EBD355B15B08FAF571F1EE9E3840DEB01E6779343F0FEB8582CEED60DBF1F
                  3E8499AFAC06CA96D6CFFCEB18FA357F04C5EF2C8C6765F3A9730ED5510C3EEC
                  1520BDFDEAAB183C750A72366AA0C7199F888B5FECC1D467FBA3438F6E28D5B5
                  8B80312CB4D828D7FEB86021D6AE5889118B1722B26A15E35A9E741687E94FB6
                  C3F9C387D1A2652B54EBD757AF97C99DB806D1B158DEAD070E4A9F1FE9D60535
                  E42741C619CE39F8FB1846356E844801E3731B3702111955858F2B833125F6C5
                  DEC725E25521F53FEEDB87693BDF057265D793074D994E7FF10566F7EA8BA1E3
                  C7235B8BA65A90BD7009431F7C1091224F8CDEB645ED887801A3CACE15A06EEC
                  D5077BBFFE0A537709508484735017BEFD16137AF444AFFEFD514CD860009515
                  D00F7AA81EB20A8047BFFE3A4F0157F7EC183D161F6EDF8E699BDE52476E7864
                  472B3939211E49FB0F6058C78EC2F606A258BBB6D66EB7C1CF1AA2CB2E9E98EC
                  5FD59D12398B137E3906F384BAF0F4A9B9428D50209FFFD40325DCDBE4435386
                  3D7D06231A35453EA1D87DD6AFD355D75805ECC02F18F174473C2D94BF728FAE
                  B2B1D3E94D6F00D8F7DB413CD7B61D9AB67E140F0C7B4EC95A9F2D5D8E575E7E
                  19D3E5278B12890C199D7D130E35B2CE43AA0461BB55CBB4DC29D4EE8CACCBB4
                  3EFD048CDD51CEA08CC9741C8E9FE5EF162E1630AEC068A18CD9AA68CA48AA78
                  68D52B582184A062FD87D14AB80C3793594EDA678C5951CFD367D1AF711395F3
                  3EFBDD77919427972EB07AF43886356C8C883C3931EAED8DEA808024B9FFCA6C
                  3AA5A6CE018CC6B01AF7239FECE07E9B37C1933ECCAACAA0107EF10246D57C10
                  A5CA9547BBD52B34053C730143EBD543FEA285D07FCD1AF844AEB82C97128CE1
                  C2D2BE9A324D15379AB07D2BC20460DC9DDB8482EE7EFB6DCC7EF34D758E73B4
                  4B671046F21D220A6C183D1A7B767F8839DBB602323852CC91F756477A619BA3
                  3FF9581DB71B67F42B3DF48E1D5EBD96B0B55C18B47D8BA226E604861C2A899C
                  F1DBAC50C37166945B7E5EFB1A16CF9E858E221B556AD55A890A490EFF7DE68F
                  CF18A35BC030A5F33338F1F3CF98276C0C320FACFBE396853B2922C7EA052FA2
                  BB5099C80A1510E7D4E3E40229D676EE3C86D5AD8B0AC27ADBBEB458CB8EA7CE
                  AA9364F355AE24A00A47A27DFE85938C14F1825534FA6DDDA4C51879FF6961D3
                  532D36DD597F1E2AFB4DAEFD6AE122AC5DB512A3172E44F62A95B52223547A4C
                  F59A0AACE377EF1222940B49B2311282E687E32525DEF2C20B3875E8309E796E
                  089244FC32C138B4918031776E8CD9F8962222570563E0A143368D551D5DF60F
                  063FF2285AB47A14B5E4450167E619F2E498EAF709A1F262F2D77B75391101DC
                  C8475A20E1D469CCD8B11DC89143B356B2E9F8383CFF48339C146563F6E77BF4
                  4E8E8DC3B8E6CD11250AC1AC0FDE57E5F19284F2A893B4A88DCB84FCB2791B16
                  4D9D86D98B17C145215B94A361751F46AD9A35D05494244165E0968F8BC39C66
                  2D5525AFA99F7D4C693FD03CE333D884911F6BD55DB4D2160D0D5234C7910F37
                  44A4880DC348E579725570217DBB6944FA1AF5DE6E4C1E361C8D9F7A120FF054
                  7A1E102FA073995AAEB50236938F790C8850DF618F3F8EFA8F3C82BA63C7682A
                  659A484C139AA2BE496A4326EDFF092384F2B568DF0EF789F2A328B680E3BC50
                  46054661D3A53B77F6CBDAC149C202C61F8532AE5EB912C35E5A84EC952B2BF1
                  28E1F74318DFFA31142A5A04DDC88DCCAA13C9B4209BB9C9AB15C504B721331E
                  3F89E18D9A20B370BFE1E428115A660C83593021049B0E06A3A57ECBC4C6C860
                  4775EA8C3E8306A1C8E38FE982EBCA7E65280202BC971F6B8B3F64E74EFEF463
                  75AE1EBF8FF9E9674C78BA034A952C890E339F17B92D9BDAC55B85C27C249A59
                  B7E14351BC756BFDE6CBB1182C6C9D6B32E3C30F155BF728301A8010409EF85C
                  767AFF8118316E1CF2347A18F17FFF8DB12DDAA07D87A751B66F2F3DD9F64593
                  05D9DC6F203EDF23B2D32E112F7266F79F026BDF4C566152F881C2EBB8D8B2D1
                  B64D9E823D5BB662F28BF30151A2FC14C6A608F90CDAC8CF45D9982222459C50
                  F3091F7D00648ED0C7BB29A807158034DFC7BF394E79DF9B63C6E2F3F77763AA
                  50CFB06AD5F4A6346FB14C50DCA0F1C04F07306AE000A5884C14AEC2312AD142
                  007671CF1798FE6C5FB46FFF244AF5EC61583B6C9B51F5D7A108CEFE79F3B16E
                  FDEB18B4F4250D4679CFC11D3BB07CD4283CDD55644E01B41AB7C71BD87FB384
                  A0D3D43534C0E2E533D64FA2C56058032A30392D30C61B0A4CEAC0087D7EB4DB
                  00E3E92FF6624A9FFE786EDC58E46DDAC89A1C16EF74F0645201E3BA6E3DF1FD
                  BE6F304D40A6CE6F76B87519E39F0F609608E4C729E44BCBC44914323D7ACE4C
                  B865A29129BD7EF9A5180CAE5D5B992AC6EF7847753ACED8412E5597DB8BF3DF
                  7D87095D7BA2EFA00128221ADDC583BF6172BBA7D153284F914E4F2349288849
                  FED56692BEEF1A3106BB6452A76DDFA46A312639FCC7F9DAE7D4304A5998646F
                  D5641E3B8181CD9A22C71D7762E46BEB9428A0D8AD8D02ABAA69F25BED7619F3
                  6179DFA25163D1B1774F9411C52549943DF715AA909AA732B0BF3122864C1C32
                  14394A14C3601EDB4BD182E0B26F1201CF8B7DFBE38FBD5F20A3C8F32C903570
                  CD6A2DCB67CC648DFDBC80F1859ECF22BD274115474D0A704CF829A4DB9B8448
                  51D058D39CCA514E1669129977CFAA55D828EC7BD88409C86E5BF7E05CF780B2
                  351E2D6B2BFD8072F389538A4D138C2329334664F053C654B1693B1865728F7F
                  F6199EEF3F0823274F42AE860FAB4E396C98A6B2F056DF01F8F2B3CF318D1428
                  873E3D9EDAE7ECAEDD715E7EDFDBA0014A962B83D3070FA9DA8261D93263EC82
                  0570F0A837B64BD11858B78E8882A2755166CC9C11310EDDE930C3FE7859803D
                  5A84FEDE2294176BFB04CE1DF819533B7442DFC183708728288A35187DF2188B
                  FBF1E4A9D8FAD6DB98BE552642642ACBD01E2C3B199E017306787FB82CFADE39
                  F3F0862CF450A18AB9AA575322853537B677118CEAD8C9E8180C6BD20CB12282
                  CC7D77870248BCC350DCB8A99C2EBF4DD57CB74F2B3C3132BEB14F7550459826
                  6D92FEB2A8BBDBEDBF06BA9F04E39BD367A178D62C38F0C597F84E14CB1C7714
                  C060115F50309FB64DCAD8CF7DFE05E6F678165945A68EC8935B69B1261069AA
                  52A725084B0D1700C51E3F86B3F2BBCFF2A5C859B9A2B253BEFFD24BD8B17C05
                  C64C7F1E11F5EAAAF9B51F4769F737F90C302A858A4C896336D874EAC1E85582
                  52A007C4B42F1A94F1EC575F6342EF3E1836762CF23569A8653CBB7B4F76E786
                  1EBD549DE9A91FECD6E590459E1BD8B49974C883A96B5E354E37756A8FC0850B
                  78FEC9F63875E93C666DDDACE5C9E8780CA85B1BD9324560CC56515022235495
                  D9702533EAE250E7BFFF1EE344AB1F28E02B24F2EBE5C322D33CD11E3DFB3E8B
                  A21D9E825726DDA9ACB186894536D2EEB1E3F1EEB677307D9B50461E9C74F192
                  AEAA6BB259A54ABBD49980D6E906262B14AD7F44CD07140B9CFCE9475A834FE6
                  01B21512A5F9E7FB1F30541497079A3445D351236C94D4982F1BE8F57C6BAF91
                  478033B25F3F78451E9DFEDA6BC01D776823B6B11EA6C268511FAF511D58A85A
                  C28F3F616C97671026733661E74E7D287B924FB4E9BD982D9491453E0B77EEE0
                  7F5E70937EFFB6680956AC7945B1E99C952AAAE77FB1762DDE7A611E068F1983
                  DCCD9B89ECEAD66CD818877D535B84DFE86F3C398B0D8CD97206B2E974B6B90B
                  046330FB30066F9E2F1DB5FF478C9109EE2FECA350EB565A66F4D90460917356
                  B46DAFEAFE4DFEEC5325E01F5AFBAAF2D40C9C341E7979D4AE320918A6855861
                  823FFF84611D3BA3628B66789CE68B442FFA0A65CC20DD79FE430174446605C6
                  743E58DE87D37BBFC224D140478BB890B3617D91198F62F4A3ADD049FA56AA57
                  776D1B33FDE00E0DC6CD838660CFC71F61DA7BB48166418F5AF72313CF39F1EA
                  238669598D96FB16EFDCA1DC5A8A2572C213845209C599DCA52B5A3FD51E15FB
                  F79571DBCAC605B35B361157DE1F371EBBB76EC364193F4A945073C5E2A60E1B
                  18ADFBBCDAADF7BB6C9665B2D129A28C2210695D900D1FEC360B286C6F9124AF
                  928D7F10D0AC5BBB063D66CD442191BD69313825DAF4EC5E7DD0A97B3794E8D6
                  C5907543545993FBBF5FB4186B56ACC070D1DEB393324A3BFAE9A7982F32779B
                  F66D51B9FF006D5FF4DA287470335D862CDE4F2EC5771D4B0EC6948DDE570323
                  B569919B860A956BD3EE49541DD01F1E1914BFB30E0512308EAF71BFAA133DE9
                  CBBD6A22DEEAD71F5FCA6E9FF61E59550E432073EB1DC30E47452919D1239AF7
                  1C1AA529478A06192DEC62F687EFAB432B6384A529B381470BECBF6CD9822522
                  2ACC5AB4100E9A1FE419231FA88387EA3F8CBA53A7C2934EF7CBD4E8088EF9A2
                  D19F143161D21ED924E9D28BACD54FB15F9E89CDB2CC74DDC509C57EF6F9E9F2
                  CE4C4890BFC355FDC8046C9B36151F6EDE8419AB45762B5D4A89276E8BA23A03
                  B989DA647118765F4DC502A7ECF9441FB8E97406B0658BAA724CB259F62D598A
                  B5CB9721326F5E8C7965952E74EF7621B0B0BED7AF38180769DA9BA2C8FBBEC3
                  C06E5DD1B0FD53A82FB22AEDC0C7BFFA0A73843276EADE15A5048CB4C1BA8237
                  05F4A6FDD6B0338E145066AB52491BB585AA8D6E501F79F2E5C5B3E460E9FD25
                  92ED228D49AD2F1F3A84ED2F2F43A356AD1051ADAA1EA761678CCC2D6C9A60CC
                  68337AA7C4A6839B35815E6DAF1B5AAB168ADD5D1CDD2828A74BE77F0885D4CB
                  D11855EB0114BEAB18BABCFEAAFAEEED3E03B0770F65482D37A92EF3A06CF957
                  7A4E2E159607EF573516E7EC7E5F2DC08659B3B05734C299F4BE142CA8846E8A
                  0A6E43CBDC3C652A3ED8BE1573366DD2D4433E1F56A51A728AEC3478E73B8A25
                  5A1E24754F1C8657AF8188C82C18B9FB3DED354A343C257623B70A7C70AAEFE3
                  61506319D3C03A7545474BC41C6AF7141B4CF6E2F306B25B937AFFFD1786366F
                  897A221FD79F3C51516A6B9F7BB57DD332548B9CBDFBC5057877F5AB282614B4
                  DB92C5EA1D049BE5823540CF67FF24D4F6CFC37FA0F1B3BD2C39D2AFF8108CFB
                  048CDDF0887089DA5D9F090063E71E3D50B28B2852E1868267132D540137B9FF
                  5BDA195718EEC02A55344B17904E7BE821449F3F8F8932EF28404F51985503DD
                  525CBC9A3A6F9B351BEFAF5F8F1EC387894CFFB81EFB3F34ED344444AAC09892
                  D1DB2ED8C88B5E6AD71E7FFCFA1BA69185F2A85DB7DB7279457FFB1D2689FADF
                  FBB9C12848CF89F0CA5F962CC3AA050B31F08517908BAE407718BC4E322B07DC
                  F4FDFEF90F86B57C1445EEAB86EEB4110A18F4E4F5C6701E29D1AC892C663A3D
                  D9A4CE5131784E28A02353464CA34C495B9F747DC3C0C1F8EAA38F309D1A78CE
                  6C42B5D36922CCE382456C18D2EE293CD1B9332AF7EAA1655D8FCDD5171C3841
                  9196DAA547CB3A83448B2E5BB9323ACD992D5A7F06756E4C78106554FDF369EA
                  F2E7AEF7307FC4288C9A3219591B3C6C98A66CF368CE6B421C8EBCBE010B66CC
                  42B1AA55D17DEE0B6A2329AF5610FB57E015B0CC1791E6F0CFFB31E7CD8D5A49
                  0933D83FAF130EF0C3BC17B156286B1F510A0BA8D30A7C8A4DCFE8DD57286377
                  9416807AC203FB6361C1A08CF44DD3039399BE698A3C320F676413CC1A350A25
                  45C3EE307F9EF2A0049CB76D289738FC27863ED646451ACDDCB5131E5158D43A
                  FC735CC0D838756014C2E87384F8C2C43D0FA424186245A31E2D1AF3C342821B
                  0C1CE81786E362314958C3D97F8E0ABB2515D4C77A41E4B9818F3443669115C6
                  AD5BA76D6D2E433990C95B3F60B03A2F64F4D2A5C852B1BC06465C0286D6A983
                  0801D418DACCB2C83D341D09E07F59B9062F8BB6D87DDC18146FD2487B0818E9
                  F2D301F4EFD809F73FF8005A4F9CA07DB6045A741C5E9445F8EDF7839827AC16
                  79730B38FCBA60B032EDB28B27325EDFD7FB30A847773CDDB70FEE11CD5D479B
                  3803289679EC1C0F49A712420FD207A2B9CFA481B8F85D7AD20D63B015BEC58D
                  75FC04C6366884EC2223F6DBB2491BE38D50B7808E71BED4064A42CC277B305A
                  149C3255EF45E739B38CD03183220B7B1CD1F649B845F99B40D35ABA3043C6DE
                  8BE90246BA03CB7631DC813630EA480447009B1EB35083515151C5212E63BEC8
                  CD7F89A65FF5FE9A786CDC387D8298E93625971045729C10A3B8A8687415AA78
                  57CB164890CD151ECCA6A94D73535F95325E098C5ECD26578A32F0D3677BD499
                  1FCDDAB71391ED2256CD9D8FA3274EA0D7840928AA4E2035165C76CB6F5BB661
                  E9F80988102AF644EF5E2852A238A24F9EC6AA254B5445FEFAAD5BA3FE90215A
                  21726823F3A53D7B30AE6F7FC16124FA0CECAFA276DE1116F1A908F9854B9746
                  8F55CBF53B4C8F85BC67FDA4C9F87AF316542A5F012DBB76512726BC262CF0D0
                  9F47F0983CA3CA934F685FAE2D9E2F9957CC0E46A1447FC966982372E80852F6
                  1AD50C85C2698056B3394BC3F568CD7BD6534FE3C4E1C398F1EEBB409EDCDAF0
                  6B2854966D52E671A7881BDF086033267984F5BBD4E2788DA346286FF237DF95
                  A37449F4676413E32085ADBF317112BEDCFA0E8A172F86C765A331746BBFCCD7
                  BAD5AB45397461E61AB996A6328238996F3AC81D685F6B5BD4CEC8C50B91ADB2
                  B0E9705B245534FDF25D715C3823E5EC8AD5ABA3ACC8959CE72FDFFF48C48743
                  A26CBAD05414BDDA9457C38DA81D9FE63043843266CD79DD60B409DF8637E2EB
                  65CBF1DAAA554A11E1AD39846C0F12B69AF981DA0648020789EFBEC72CF9FEC8
                  A9D36A92797A1565B8DE2386238FC88C4A4375EB8565417946C0C47EBF1F3346
                  8EC28533A7D5A29074376FD1020FF5EDABB4317F808211C92C54E9A7356BF18A
                  50CE189F3E2D344226A3EFC891C82B5AB702BB52249CA1C463D8C7AF741FA1C4
                  9FAE5889575E5E8AD9C2FA2264F1E10CF32B1FA6766BCC92CB904FBB3D544F44
                  90242CA4792B22429DC46582D1D220650E7B3DF020B2C5C4223DE7D4DA18FE68
                  291E2547F0E62C6580D18C50928DF7D7C6CD58307B36623CFAED0C6BAB56B316
                  1E1F314C079CD06A6180E8E8DE2F31A17F7FC5A6AB77ECE017ADCC219893217D
                  FE4414A9D532E6090B17206FC50AFE400C45CD139557E9E47BBBB0E6C5853873
                  FA24128D43E769D8BEAB6C19741AFA1C1CD25F25979B722F89C5E933E8D1A429
                  B2E7CC85296FBDA1398CF3DF064AD817CB8AA8E66EB9AC4723144CED44D34667
                  5F5B33D297131717AD164245AE30CCCBEDB2CE0D4C6677334C39DC912A029AEF
                  481F1E707DC8486FFE886CA9D834CF265491C5FED30E82836B0286671A15F8A5
                  1950AAC89EC372210653D300058651DB5E58B228378C15ED0CF80F3E32C7E631
                  D31B42985ACC307E97FFB89064E314F6A99EC1B971BBFDF36927FDA6A9859FB9
                  CD736FFCEF0B880AF718611E0E4788793636BDE93BE7610094C979AD10231D9D
                  EEF207023B1048C4BC46281EAF77B99347EAA7168C66006680D1D56E6A308E39
                  0B25A79B5624AB53E605CA70EC0CB032396CF7F0F85C37BB65523E3EDFE5B4CC
                  4DC1ACD67A0F8C307BE885B49B40AEBDCA728845C315EA7BDB911EE285C9CC40
                  21DE63FDED309FE5F7257B8C7971294BA331FFA689C6A963092C2F886DDD92B3
                  E5144E73B0AE0BFCDEAB0F33B6BE769B72A2DD23643B5B27D9816C3EFB33FDCF
                  0D55E7DB06C6143A697F6EA842E1DE9417207090C98331FC4760786DAB1D9817
                  A3E7C7A7FF3203201C29BCC30EEF209123E5C5B9DA787DFE7BD45439530841BB
                  C2FC059051D373E5BCCAF7E6DFCE90EF0809EEE060C580675DA5C0BE75BDF3CA
                  EB18EA19C11BECDA77BEBE2D188C2113B1EC2F740451BDD44C08FC9AA7E9D376
                  A4348020790CF6EB0DFB5E4A93C13DEC3580E2DFA141197BC1E9062980318002
                  A64E90496186433D10213685FDB2E494C44E61CC9322ACB909B13EF638832BBD
                  2FD9B843119CA0F54DB636768214F48E6B39A52145367DD5BEA7727081B31C08
                  0013A076761D102A653CDB0C4460732390559B977A6C7F070471D8BAEA45A08F
                  37A5333EAD2931C4132BDBD3B608C1F7A68457B7ED7B6FD0B50EEB397E65D17C
                  9F39FCB010630DA944D9AEB1B3563BD170D95E1E1C4414288621E426F15F6FC4
                  BCE2C61E07F2EFC118C43210E2FAC03105EEF6408A1B146C6A7F8009E264D4D0
                  7E009119146B7B4EB06264BE23205AE62A39D576F66F8915C6178E203886CAB5
                  0EE5BF0DC87736288AD90F3B6B4DD62F67F2F9B4B3E0E06097608EE030AEB381
                  587D9C0A169B7C7DCDB90C2152E1CAED4A94F25F5794F0BF3C85D4D66409ED21
                  404BA526C1D00ECDE899B0305B9A24AC60021AC4D5C2A533343787CBEF41319F
                  43CD9D9FB9C3AC3C62DD295343F7A92873758D321ABBFC2E3A63824CB7B6956A
                  ABF29A93FC9AA8223586FBD0AEE59A79D3F64008F59E70BF715A45AC1B11DA66
                  5AA98CD9B27F9A79C91CAFB2A6BBB4B9CC650B58B32352D9598DBE85B90373D5
                  3D3ABD54BD53E563BB2DCD3C99EC6EE64D1B73673DC71182CD1B8B17D24E9B0A
                  34FA0C5C3842884737058C819F0782D162291C7C6C1C964D9880CF3FFA585DD1
                  FCB13668D6FB59BD004E232DE0C245CC1D39123F7FFDADBAA676E386684B43B9
                  11CEA54C2AB1B158326A2CBEFE6C8F3ADEB765FB27D1B47B77BDD84E63B22F5F
                  C68251A3F0FD175F2A903EDABE3D1A76E9622C9233E400CF1EF903D3FAF5473A
                  8F4FD9FE9CF23BA32C32EDA5176453CC5ABF1E97FEFC13A39F7B4E19B0DD46EE
                  33D324C265456305B053DE7A539B87A48F6FCC9D8F77B76E854F409733772E0C
                  646816C3B59C06C54A48C0EB336660F7D62D0A24551FA885AEA347299B65A0AB
                  D008218B8941CFA6CD31FFA597E0BEFB6E4DA88C795D336B263E7867873A083E
                  47FEBC183A613CB2952EAD23CE1D4EBF49C7784ED7264DB164E54A388A14D6E9
                  11C10121417F0780E8BF0663303093053007B30323DB4EBBD4BCCA883AA74F1F
                  142D5102CDBB7557146191003377BEFC6835B0BF65E81DDDA2151AD47B08B508
                  2EB96F9D4CEAC54B97D163FE5CBD9385724DEEDE0D552A5642830E1D14557961
                  EC58757673E31E3DADB0A9A94F7540AD7BEFC5FDF444C8A22F18320CA5EF298F
                  3ABD7AFAF3B68326D5177D19C77FDCAF4096E8742B837D8EE8584C98381E85EF
                  AB890E13C62983FB915F0FA80055FED024159690849902B4B2356AE88C3A99F7
                  05BD7A217BE6AC683B62B832FC3225A35FBF7E98B36C39228ADE051EEC396FF8
                  3064C990091D060F5694FB4301FBBB6FBF8DA9EB5E5311404946569E8B1B303E
                  11EBC68CC5373B7761E6AB6B8032A535458B89C5F35DBBE1CE6277A16DDF7ECA
                  AE7BF6C71F3074C0002C5DFD0A9C458BEAC81F1836CFF878AC1C360CDF7FF209
                  E6ACD36E4C15BA6758307C46B258489F76EA3198AA76C3C118FC61483072127E
                  3F845E4F3DA5BD15EE702B0BB14BE3C67899D97F59B320F1C4090C6ADE12F3DE
                  DBA5FDD46CC74EA24F0BA1060C3313EAE8E373BA74C522A6D02AAF8057E54C77
                  69D61C2FBFB31D88CC8CF37FFC81099D3A63CE3BEFF8D31C8E1E47EF56ADB0E0
                  C30FE41A8646D9EC7CAA39FDC66F935B094BF4EDDDABCE4F1EBB79B30A49B354
                  7DD328CCF8CFAFBE56AEC431AFC9E2466644E2850BE8D9A4195EDEBE5D071E73
                  B244ECF862CD6A1C38F2273A09701175096D1F7D14EB541048467D8D50B95E0F
                  D6C1C235AF407697E146D3E174A7BED88B5DF2FC1F3FFE1853E9062C5F46BB2B
                  FFFC0B9DDBB4C1F2F73FD0220F9F23F3BD6BEE5CC4C8F31E61429DE9A3978D7B
                  42B8D2876F6DC4379F7E8619AFAF93F714D7EFF11A0BE80C9245AFAC68DF2A30
                  5EC50E7945D3853F7149ED5E9994DFDE781B9F7FFE193ACC98AE59A561DD1FD1
                  AA0D9E2385B8B72A12CF9C459F668F60317DBD9119F5F34E9E41F7475BE22506
                  0408B5F861EDEBF8F9D75FF0C4F8B106BBF32979A9BFB09D6953A6227DD932F8
                  60C37A9C3DF4075A0F7B0E9E8C19B49870295A45E58C7871BEF2016B39D519A4
                  70D95814D99FC89B7D1B36C1F3B36723837299991E07833DABE8A2CBE8D5B829
                  A62F5A888852A51465F60AD53FF5CBAFC85BB2840A4050D600A16007858D6E91
                  0D3390D130040E81AF62197D86FC98801E751EC2E257B5CF997939E1942965D3
                  F67CFC092C7A650D06D7AF8F99AB570B652CA593F72FC7E0A46CBE3CCCAD3665
                  5AB9E7E757D7E19B1FBEC3539C6FF69BB2A66C80016D1EC79CD56BD0B76913CC
                  23052E56543F2794172304E2FE23CA7875A378AAEE33C2CEB63F3F1359B365C3
                  7DDDBBE8502B63C7AF1E310A152B56445946944B5BD0BB178A172D82FA3D7A28
                  C0AE9B381519B264418B51C3D5B3DE1C3F1E458A1643A50EEDFDD984F29C8503
                  07A161ED3A28DAB03E564E9E8C72A5CBA0729BD68817164930B82FC76291B0AE
                  5A2D9AA15C830686C726108C04980200274A28D9AE95CBF1D3F73FA0DFACD92A
                  842DC92CC0664E266BD62C5C8C8302BC9E2FCCF653263615012DCF734053B798
                  784CEAD809F55B3C827B39D6B0307F4438952101EB07AB56E1BB2FBFC4000136
                  E546B53144BC59326A241AB56A8D3B2A54C0809AF7630E8372058C2A1FD9F08C
                  790C39D8652845E31E7B02ED3A754071D9DC6A0284CDBF28B2F753223B676100
                  4A9DBA58BC6E2D50F4DAC0980C99D7814A154216F08E1B09F5901DD66059357C
                  04EE11E1BD02535FDD062F10CAB069DA74E4C993473BF6F9D9A95318DBB1238E
                  47E9824E250BDE89814B965A6C7BE9B37D51BB5E5D146FD95207501805AAD64C
                  9C80F2C54BA0FCA32DF0C2A0C168D4A4314A3468A40A1028CE2A8BBD66DC7894
                  A85C095585D292750584F91B73E0311754586DB7868DB168ED1AB80A1752148C
                  6C31C00D19158DEEF51BE0A535BA8690CFEDB4B4528BEA1AE0F856AE59BB762D
                  666E3122A89D7E3161D78637F0DACCD9C82877CC13A50285EFB472968F7DFC29
                  B66FDB822E53A7A8CDD957E4D279AB08C6323AF8D7480B50C1089CEBE8787CB2
                  6C1936EE7807B3DE78C3282503FCF1C107F8447E9E16B993E3ED71FFFD58CC54
                  89BBEED2A00E658F0C00DBBF254E37038C41BB20D446B2FE6DB72D19E5F1D68C
                  1A83F2B2B3CB3FDEDA0F4601E926D12673E5C889FB08C6CBD1E82732E3E0FEFD
                  7047FD7A8A7D7D23EC66F38E1D18FFFA6BCA54B15CA81BC158B4593323F64F83
                  7DCDA409285DE42E547AAC35E60D198A068D1AA244C306F0A433826F85D5AD19
                  3F11C5A50FD55821C26138F34D6F024507D34CC3321F1B37E33559AC91A41E2A
                  E4CD1FFEEF3042D97ED8BC05DB36BC89E1CB97AB5029AB1217A92CA99E2A7D97
                  841F366DC2A2B973B0883225A3A7DD4189520C44909F4BFBBEC760A15E2F2E5B
                  8A709119A9250F68F928E6AC7F5DE5F350E91958FD3ECC5EB5528151A74578FD
                  F629D994FB5E598DD5CB576236236698B5C9E5267B7EF431CCD9B041E7B8CB3D
                  7D6ADD8FF94C9C2B5E54170DB081D1B280DC6C30DE3405E64A178BBCB26DFA0C
                  E4C89D1BD53B77D014CDA098AB478F46A5B2655146A8D53BB2A817FE3E86B614
                  F099F1C67B63455BECD20D8DDAB743F9BA75B079F2541496852ADFEE8900CAB8
                  5816F12199E0E28D1B62D59429285FAE1C2A0AF54C30D8B44B80FED2A021B85F
                  2866E97A0FE3993A0F22CCA343B262E5390BB76E4178AE5C56C2FC28512E7AF4
                  EC89820C490B735B43B142C8043C435BB7C6B3FDFBE3CE071F50A171FED26F5E
                  8BF27FB6E4656C102D79CEABABE0C897DF6FB2B1EF6655F351DB093F1779F0B3
                  DDEFE3FFB577ADB1511551F8DBED03148A148A18432208F84B2CE1196C282018
                  A94A21468D48B42596129156C0421F2C2DA1A2B601A1140A2C8DD41A0C064DD4
                  5A51D344C51F4040791584360589125F51A0F2285B683D33731F73EFDEBB7BB7
                  6C5FDA9390D2DDB9F7CECCFDE69C3367BE739AB57D1B76E6ADC44334D6B16CF1
                  30DFF2A60F2BC987CD2737A41763D3B33A8912CF73EFD6ADA8A9AAC6FAF72A44
                  9A2E93A6EB28CBC844C298F188670B9829029F0F39E43FAF292E46F48471749F
                  585816FE6C67B96D303AB6EAF28848D39CA10DCC912347F01C636747B9B5FA8F
                  ABC831CF62A4DA71E3B029371749098918C9EA2092A6E11A8D7CBD7DE5E5F89B
                  6030273D1D274813D59F3B8BA7F2F21426B9B84F1669D4D505F9E83B3A1EFBC8
                  3C35FE72014F92866DA50D0C5FF557AE209B76DCCBD7AD431CABF475FEBC9EFE
                  C982C3C3878A322D6C5372B9110B931EC776967B3378905ECD0CAA19BFC96BE1
                  A4CF9E056FF5E73C1260C8AFE6454F6FE223DAF81CFDF63B14EE7C4730E2A3D4
                  D201E09B15DFA5CB881E304068359700EFA5FD0751B06C194A6A6AB0F0D1193C
                  6EC8E29CCD2CFC421666102DCE6602E645D2B05B99C9E79DBA85DDA4F5EB6A6B
                  91BF835C9AFEFD8499E78BF91AD2A63E824845B1B17B45930F7F17F58F937C47
                  0CC7FA3DBBB9E60FF452DBC39B0B7B4D6F7374DF904FCBE6D7A52458D5D563E9
                  4B69D8C0AA90A9E4514650259FCBCB4AA70D884555F90E349DFF19CF90B6449F
                  BEE24480768B65999998386736C692E9457D035ECDCC40C967D522B80C01B4F4
                  A427E065C1E3D8FEB874B6016F2C5C84E24F3FE66553B8FCF627329267A19485
                  40FAF5D1B593529E4373E27DCD683C7E0C9EA5AF6113AB19A4142E8A50193D10
                  49F5570F1D822727171BD8CEDF7C8AE4BB81C3DBBCF89ADC8BE5EF567282B05A
                  2495039F5526A3712CA6F9D8F9E55EE5FA080EAAFD74DDC95327905652AAC3BF
                  45792E6934CFE444BC5E461B9C0963C4754DCDA8292DC5F10307C9B7F68A8039
                  E71AAA2F48D9A96B7C4AD1BF1553A7A3B89CDA8F7A50A46EC0ED8FB47656919D
                  034625E8FD56DA02C44F9A88A4F9A95C23551615F10AAEA9F9AB45C2D1C5BFB0
                  88B457414101EE99369D5F5F5F55858D256F634BF51782D8492FCCF3620A664C
                  9F86A9F3E6F1DFBD858588A19730373B471CC7D13D573FFD2C9267CEE4BB6E06
                  9ECA5C0FFA939B909C97CD7DA466E87C40F5485C30B39B71E0C30F50FBC351A4
                  AD2DD47361D4312A603C40BE59FD993378819EAD115D39765A78658D2CDAC5BE
                  4C601B9E3819D7A344013EB6C968A1FBC50E19225C8194544C183D1AC92C0390
                  B4F2EFC78E6255E612782B2BC8971B21343FAF25A4CC32F99F4B131EC6860AB1
                  9BE6A6B5AE0E4BE6CE45E6E20CDC3F662C9AA2A3702342441922EFB813BDEFBB
                  5737E52A1998FAFFCAE429D8B28B6D608629C9FA2A4224A22CBA2118E53E1B78
                  846606F0D56B589F95851F69D2D9AB1B4F3BBA05856B0DE7B9BE730D58B33C07
                  7F5CF8955780BDFF819158595C44E672B07E8CD6F80F8A6923D370F214FF7512
                  01733E0374AF28FD38904CE09B64A67F3A7D9A2F9004F213533C1E51B94C2D06
                  25CD84763E4BE66B57C946C4C4C420999DDEC8C769EA80E9FEBBC8078E8B8BC3
                  63F3538C75BB699CDFBCBF1B7B4A36F1131A76BAC14A8AB07961601C386C288A
                  589C909966DAA094AEC846EDE1EFF96D63EE1E88025AA0FD583100390D405DF4
                  64A65349339693D98FA479611BAFAF366FC62715953C9786AF05161160A0A77F
                  C3E24721AF6C8BF013E5501BF5F1F9C429A8A40D4C24F5478B2AC8B1568D2CD2
                  8DC118B0618B52405E2E0A1F25880102B42D7AA17996B2C0DAB014D548B756CC
                  5CCCB84888E72408F6E0E8DE0AC1402532E81B028D2ECF53432DA8FAFCC1128B
                  46FEEB07FC1D9A82E3AA695799EF2A655F05A39CAAA15663D0983F2E852CE116
                  A7223C074804D7795B56044035F92EB7DF697F84B258B8442B3B7232B982B421
                  F5AD55F183D9BCB10A17EE487FAEA89A8F13210ADBCB6084FAFFEE06465BB142
                  A91F1B59991E431B35CF59BDD648DF3296FC90E95916B47AF95926A6B7D52488
                  C3A356686A0616F7355F6C2696B20F5C1238AC625F1A9D4D62BE1B3EB71A6B20
                  91C71984790EF33B685FC005928E03A31ABF33C5265532A94A00D598CB8AC804
                  5CD8B4E35113E5A74CD2058CF37E4BBA4F84C53D60FA5EFE1CD2FDACC44C6435
                  7F2E8F411673293EB98F6E9888C4FA41BFE178957F249B65E8151FCC445E4D13
                  9A78933AC3DF3AF7A723A403C0E820381AECB4DD09229CA2265CC79A56CF7705
                  BA0E30D4CF09D4579BB1381AA2991360F56C47F1433DC5C1B018BAB79976F012
                  CD391F66D6B2C17C592416F931B2E1DFC6EF596EFB36766097C9A68EC7696298
                  CBE394AF31A868EB3EDABA125663D442557243FD7EC1D93616E3E9F2600CF540
                  DDF4BD130A927D1B233882CD555BBFF7FBDCD14BB15F8481C61C0E4A9623BE61
                  38B95F61922E0546BBCBAC7C46213A1843B5E4A180E076C1A8366FB5FCD646C9
                  9BFBE2F78535D803BD4C975DC3FF0C18BB93DCCE0BB001A063CB15AA890B4790
                  D916D981DC8DCE93AE0F46BBDEB555F5B982F8767695166C9E69C09861771A40
                  AB051A8F23C7D0FEB9419F27E55E079AAACE5096E107A3DD8AEE80E3A4B649F8
                  A9506195AE306F1D64D23B1D8CE19AEB506898C67676D98DEDD3CF50C6D39690
                  4AC8FD74EAE32348BB3048D737D33DF2BF911E30F64897911E30F64897917F01
                  B02F49515301B9010000000049454E44AE426082}
                Align = alClient
              end
            end
          end
        end
      end
    end
  end
  object cpMenuRodape: TUniContainerPanel
    Left = 0
    Top = 1059
    Width = 1295
    Height = 40
    Hint = ''
    ParentColor = False
    Align = alBottom
    TabOrder = 1
    LayoutConfig.Cls = 'body_grdnt_rounded'
    object btSalvar: TUniSFBitBtn
      AlignWithMargins = True
      Left = 1170
      Top = 5
      Width = 120
      Height = 30
      Hint = ''
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Visible = False
      ParentShowHint = False
      Caption = 'SALVAR'
      Align = alRight
      TabOrder = 1
      Scale = bbsSmall
      LayoutConfig.Cls = 'botaoSemBorda'
      OnClick = btSalvarClick
      FAIcon.Icon = fa_check_circle
      FAIcon.Size = fs_16
      FAIcon.Color = fc_white
      FAIcon.Style = regular
      ButtonStyles = bs_danger
    end
    object btnCancelar: TUniSFBitBtn
      AlignWithMargins = True
      Left = 910
      Top = 5
      Width = 120
      Height = 30
      Hint = ''
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ParentShowHint = False
      Caption = 'VOLTAR'
      Align = alRight
      TabOrder = 2
      Scale = bbsSmall
      LayoutConfig.Cls = 'botaoSemBorda'
      OnClick = btnCancelarClick
      FAIcon.Icon = fa_arrow_alt_circle_left
      FAIcon.Size = fs_16
      FAIcon.Color = fc_white
      FAIcon.Style = regular
      ButtonStyles = bs_danger
    end
    object btFatura: TUniSFBitBtn
      AlignWithMargins = True
      Left = 187
      Top = 5
      Width = 150
      Height = 30
      Hint = ''
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ParentShowHint = False
      Caption = '[CTRL + F4] FATURA'
      Align = alLeft
      TabOrder = 3
      Scale = bbsSmall
      LayoutConfig.Cls = 'botaoSemBorda'
      OnClick = btFaturaClick
      FAIcon.Icon = fa_arrow_alt_circle_left
      FAIcon.Size = fs_16
      FAIcon.Color = fc_white
      FAIcon.Style = regular
      ButtonStyles = bs_danger
    end
    object btCliente: TUniSFBitBtn
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 172
      Height = 30
      Hint = ''
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ParentShowHint = False
      Caption = '[CTRL + F3] REF. CLIENTE'
      Align = alLeft
      TabOrder = 4
      Scale = bbsSmall
      LayoutConfig.Cls = 'botaoSemBorda'
      OnClick = btClienteClick
      FAIcon.Icon = fa_arrow_alt_circle_left
      FAIcon.Size = fs_16
      FAIcon.Color = fc_white
      FAIcon.Style = regular
      ButtonStyles = bs_danger
    end
    object btUtilidades: TUniSFBitBtn
      AlignWithMargins = True
      Left = 723
      Top = 5
      Width = 174
      Height = 30
      Hint = ''
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ParentShowHint = False
      Caption = '[CTRL + F2] UTILIDADES'
      Align = alLeft
      TabOrder = 5
      Scale = bbsSmall
      LayoutConfig.Cls = 'botaoSemBorda'
      FAIcon.Icon = fa_arrow_alt_circle_left
      FAIcon.Size = fs_16
      FAIcon.Color = fc_white
      FAIcon.Style = regular
      ButtonStyles = bs_danger
    end
    object btLimpaVenda: TUniSFBitBtn
      AlignWithMargins = True
      Left = 531
      Top = 5
      Width = 182
      Height = 30
      Hint = ''
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ParentShowHint = False
      Caption = '[CTRL + F7] LIMPAR VENDA'
      Align = alLeft
      TabOrder = 6
      Scale = bbsSmall
      LayoutConfig.Cls = 'botaoSemBorda'
      OnClick = btLimpaVendaClick
      FAIcon.Icon = fa_arrow_alt_circle_left
      FAIcon.Size = fs_16
      FAIcon.Color = fc_white
      FAIcon.Style = regular
      ButtonStyles = bs_danger
    end
    object btProduto: TUniSFBitBtn
      AlignWithMargins = True
      Left = 347
      Top = 5
      Width = 174
      Height = 30
      Hint = ''
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ParentShowHint = False
      Caption = '[CTRL + F6] PRODUTOS'
      Align = alLeft
      TabOrder = 7
      Scale = bbsSmall
      LayoutConfig.Cls = 'botaoSemBorda'
      OnClick = btProdutoClick
      FAIcon.Icon = fa_arrow_alt_circle_left
      FAIcon.Size = fs_16
      FAIcon.Color = fc_white
      FAIcon.Style = regular
      ButtonStyles = bs_danger
    end
    object btConcluir: TUniSFBitBtn
      AlignWithMargins = True
      Left = 1040
      Top = 5
      Width = 120
      Height = 30
      Hint = ''
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Visible = False
      ParentShowHint = False
      Caption = 'CONCLUIR'
      Align = alRight
      TabOrder = 8
      Scale = bbsSmall
      LayoutConfig.Cls = 'botaoSemBorda'
      OnClick = btConcluirClick
      FAIcon.Icon = fa_check_circle
      FAIcon.Size = fs_16
      FAIcon.Color = fc_white
      FAIcon.Style = regular
      ButtonStyles = bs_danger
    end
  end
  object cpMenuTopo: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 1295
    Height = 40
    Hint = ''
    ParentColor = False
    Align = alTop
    TabOrder = 2
    TabStop = False
    object lblDescricao: TUniLabel
      AlignWithMargins = True
      Left = 10
      Top = 7
      Width = 30
      Height = 21
      Hint = ''
      Margins.Left = 10
      Margins.Top = 7
      Caption = 'PDV'
      Align = alLeft
      ParentFont = False
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      TabOrder = 1
    end
    object UniSFBitBtn3: TUniSFBitBtn
      AlignWithMargins = True
      Left = 1266
      Top = 3
      Width = 26
      Height = 28
      Hint = ''
      Caption = ''
      Align = alRight
      ParentFont = False
      Font.Color = clGray
      TabStop = False
      TabOrder = 2
      Scale = bbsSmall
      LayoutConfig.Cls = 'botaoPadraoManipulacao'
      OnClick = UniSFBitBtn3Click
      FAIcon.Icon = fa_times
      FAIcon.Size = fs_16
      FAIcon.Color = fc_grey
      ButtonStyles = bs_transparent
    end
    object UniContainerPanel27: TUniContainerPanel
      AlignWithMargins = True
      Left = 3
      Top = 37
      Width = 792
      Height = 3
      Hint = ''
      Margins.Right = 500
      Margins.Bottom = 0
      ParentColor = False
      Color = 16747287
      Align = alBottom
      TabOrder = 3
      LayoutConfig.Cls = 'painel-sem-borda'
    end
  end
  object UniContainerPanel1: TUniContainerPanel
    AlignWithMargins = True
    Left = 8
    Top = 45
    Width = 1275
    Height = 124
    Hint = ''
    Margins.Left = 8
    Margins.Top = 5
    Margins.Right = 12
    Margins.Bottom = 0
    ParentColor = False
    Align = alTop
    TabOrder = 3
    TabStop = False
    LayoutConfig.Cls = 'body_grdnt_rounded'
    object UniPanel36: TUniPanel
      Left = 0
      Top = 0
      Width = 127
      Height = 124
      Hint = 't1w200h0;'
      Align = alLeft
      TabOrder = 1
      Caption = ''
      Color = 16249327
    end
    object UniPanel37: TUniPanel
      Left = 1148
      Top = 0
      Width = 127
      Height = 124
      Hint = 't1w200h0;'
      Align = alRight
      TabOrder = 2
      Caption = ''
      Color = 16249327
      object UniImage1: TUniImage
        Left = 1
        Top = 1
        Width = 125
        Height = 122
        Hint = ''
        Stretch = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000A30000
          00A30806000000E66CAE800000000467414D410000B18E7CFB519300000A2F69
          4343504943432050726F66696C65000048C79D96775454D71687CFBD777AA1CD
          30D2197A932E3080F42E201D045118660618CA00C30C4D6C88A8404411110145
          90A08001A3A148AC88622128A8600F48105062308AA8A86446D64A7C7979EFE5
          E5F7C7BDDFDA67EF73F7D97B9FB52E00244F1F2E2F059602209927E0077A38D3
          578547D0B1FD0006788001A6003059E9A9BE41EEC140242F37177ABAC809FC8B
          DE0C0148FCBE65E8E94FA783FF4FD2AC54BE0000C85FC4E66C4E3A4BC4F9224E
          CA14A48AED3322A6C6248A194689992F4A50C472628E5BE4A59F7D16D951CCEC
          641E5BC4E29C53D9C96C31F788787B86902362C447C405195C4EA6886F8B5833
          4998CC15F15B716C3287990E008A24B60B38AC78119B8898C40F0E7411F17200
          70A4B82F38E60B1670B204E243B9A4A466F3B971F102BA2E4B8F6E6A6DCDA07B
          723293380281A13F9395C8E4B3E92E29C9A94C5E36008B67FE2C19716DE9A222
          5B9A5A5B5A1A9A19997E51A8FFBAF83725EEED22BD0AF8DC3388D6F787EDAFFC
          52EA0060CC8A6AB3EB0F5BCC7E003AB6022077FF0F9BE6210024457D6BBFF1C5
          7968E279891708526D8C8D3333338DB81C9691B8A0BFEB7F3AFC0D7DF13D23F1
          76BF9787EECA89650A93047471DD58294929423E3D3D95C9E2D00DFF3CC4FF38
          F0AFF3581AC889E5F0393C5144A868CAB8BC3851BB796CAE809BC2A37379FFA9
          89FF30EC4F5A9C6B9128F59F0035CA0848DDA002E4E73E80A21001127950DCF5
          DFFBE6830F05E29B17A63AB138F79F05FDFBAE7089F891CE8DFB1CE712184C67
          09F9198B6BE26B09D08000240115C80315A001748121300356C016380237B002
          F88160100ED602168807C9800F32412ED80C0A4011D805F6824A5003EA412368
          01274007380D2E80CBE03AB809EE800760048C83E76006BC01F3100461213244
          81E42155480B3280CC2006640FB9413E5020140E454371100F1242B9D016A808
          2A852AA15AA811FA163A055D80AE4203D03D68149A827E85DEC3084C82A9B032
          AC0D1BC30CD809F68683E135701C9C06E7C0F9F04EB802AE838FC1EDF005F83A
          7C071E819FC3B3084088080D51430C1106E282F82111482CC247362085483952
          87B4205D482F720B1941A69177280C8A82A2A30C51B6284F54088A854A436D40
          15A32A514751EDA81ED42DD4286A06F5094D462BA10DD036682FF42A741C3A13
          5D802E4737A0DBD097D077D0E3E837180C8686D1C158613C31E19804CC3A4C31
          E600A615731E338019C3CC62B15879AC01D60EEB87656205D802EC7EEC31EC39
          EC20761CFB1647C4A9E2CC70EEB8081C0F97872BC735E1CEE2067113B879BC14
          5E0B6F83F7C3B3F1D9F8127C3DBE0B7F033F8E9F274813740876846042026133
          A182D042B844784878452412D589D6C4002297B88958413C4EBC421C25BE23C9
          90F4492EA4489290B4937484749E748FF48A4C266B931DC91164017927B9917C
          91FC98FC5682226124E125C196D8285125D12E3128F142122FA925E924B95632
          47B25CF2A4E40DC96929BC94B6948B14536A835495D429A961A959698AB4A9B4
          9F74B274B17493F455E94919AC8CB68C9B0C5B265FE6B0CC4599310A42D1A0B8
          5058942D947ACA25CA381543D5A17A5113A845D46FA8FDD4195919D965B2A1B2
          59B255B267644768084D9BE6454BA295D04ED08668EF97282F715AC259B26349
          CB92C12573728A728E721CB942B956B93B72EFE5E9F26EF289F2BBE53BE41F29
          A014F415021432150E2A5C529856A42ADA2AB2140B154F28DE578295F4950295
          D6291D56EA539A555651F6504E55DEAF7C51795A85A6E2A892A052A67256654A
          95A26AAFCA552D533DA7FA8C2E4B77A227D12BE83DF4193525354F35A15AAD5A
          BFDABCBA8E7A887A9E7AABFA230D8206432356A34CA35B63465355D3573357B3
          59F3BE165E8BA115AFB54FAB576B4E5B473B4C7B9B7687F6A48E9C8E974E8E4E
          B3CE435DB2AE836E9A6E9DEE6D3D8C1E432F51EF80DE4D7D58DF423F5EBF4AFF
          86016C6069C035386030B014BDD47A296F69DDD2614392A193618661B3E1A811
          CDC8C728CFA8C3E885B1A67184F16EE35EE34F2616264926F5260F4C654C5798
          E6997699FE6AA66FC632AB32BB6D4E367737DF68DE69FE7299C132CEB283CBEE
          5A502C7C2DB659745B7CB4B4B2E45BB6584E59695A455B555B0D33A80C7F4631
          E38A35DADAD97AA3F569EB77369636029B1336BFD81ADA26DA36D94E2ED759CE
          595EBF7CCC4EDD8E69576B37624FB78FB63F643FE2A0E6C074A87378E2A8E1C8
          766C709C70D2734A703AE6F4C2D9C499EFDCE63CE762E3B2DEE5BC2BE2EAE15A
          E8DAEF26E316E256E9F6D85DDD3DCEBDD97DC6C3C2639DC7794FB4A7B7E76ECF
          612F652F9657A3D7CC0AAB15EB57F47893BC83BC2BBD9FF8E8FBF07DBA7C61DF
          15BE7B7C1FAED45AC95BD9E107FCBCFCF6F83DF2D7F14FF3FF3E0013E01F5015
          F034D0343037B03788121415D414F426D839B824F841886E8830A43B54323432
          B431742ECC35AC346C6495F1AAF5ABAE872B8473C33B23B011A1110D11B3ABDD
          56EF5D3D1E6911591039B446674DD69AAB6B15D626AD3D132519C58C3A198D8E
          0E8B6E8AFEC0F463D6316763BC62AA6366582EAC7DACE76C4776197B8A63C729
          E54CC4DAC596C64EC6D9C5ED899B8A77882F8F9FE6BA702BB92F133C136A12E6
          12FD128F242E248525B526E392A3934FF1647889BC9E149594AC94815483D482
          D491349BB4BD69337C6F7E433A94BE26BD534015FD4CF50975855B85A319F619
          55196F3343334F664967F1B2FAB2F5B377644FE4B8E77CBD0EB58EB5AE3B572D
          7773EEE87AA7F5B51BA00D311BBA376A6CCCDF38BEC963D3D1CD84CD899B7FC8
          33C92BCD7BBD256C4B57BE72FEA6FCB1AD1E5B9B0B240AF805C3DB6CB7D56C47
          6DE76EEFDF61BE63FF8E4F85ECC26B452645E5451F8A59C5D7BE32FDAAE2AB85
          9DB13BFB4B2C4B0EEEC2ECE2ED1ADAEDB0FB68A974694EE9D81EDF3DED65F4B2
          C2B2D77BA3F65E2D5F565EB38FB04FB86FA4C2A7A273BFE6FE5DFB3F54C657DE
          A972AE6AAD56AADE513D77807D60F0A0E3C1961AE59AA29AF787B887EED67AD4
          B6D769D7951FC61CCE38FCB43EB4BEF76BC6D78D0D0A0D450D1F8FF08E8C1C0D
          3CDAD368D5D8D8A4D454D20C370B9BA78E451EBBF98DEB379D2D862DB5ADB4D6
          A2E3E0B8F0F8B36FA3BF1D3AE17DA2FB24E364CB775ADF55B751DA0ADBA1F6EC
          F6998EF88E91CEF0CE81532B4E7577D976B57D6FF4FD91D36AA7ABCEC89E2939
          4B389B7F76E15CCEB9D9F3A9E7A72FC45D18EB8EEA7E7071D5C5DB3D013DFD97
          BC2F5DB9EC7EF962AF53EFB92B76574E5FB5B97AEA1AE35AC775CBEBED7D167D
          6D3F58FCD0D66FD9DF7EC3EA46E74DEB9B5D03CB07CE0E3A0C5EB8E57AEBF26D
          AFDBD7EFACBC333014327477387278E42EFBEEE4BDA47B2FEF67DC9F7FB0E921
          FA61E123A947E58F951ED7FDA8F763EB88E5C89951D7D1BE27414F1E8CB1C69E
          FF94FED387F1FCA7E4A7E513AA138D936693A7A7DCA76E3E5BFD6CFC79EAF3F9
          E9829FA57FAE7EA1FBE2BB5F1C7FE99B593533FE92FF72E1D7E257F2AF8EBC5E
          F6BA7BD67FF6F19BE437F373856FE5DF1E7DC778D7FB3EECFDC47CE607EC878A
          8F7A1FBB3E797F7AB890BCB0F01BF784F3FB3704291E00000009704859730000
          0EC400000EC401952B0E1B0000000D74455874417574686F7200706174726963
          79ED1C6400000020744558744372656174696F6E54696D6500323031363A3031
          3A32382031363A35303A3337A965272700000021744558744372656174696F6E
          2054696D6500323031363A30313A32382031363A35303A333721EA44E1000066
          FF4944415478DAEC7D05805455FBFE33B14BEDD20D4A08D2202520A880482320
          A02228218D744877490A48085282A060D022822D8A8581A222884137CBF6CECC
          FF7DCEB9F7CE9DD9595824E4F7FDF77CDFBAECCC8D13CF79FB7D8FC3270D692D
          ADDD06CD9106C6B476BBB43430A6B5DBA6A58131ADDD362D0D8C69EDB6696960
          4C6BB74D4B03635ABB6D5A1A18D3DA6DD3D2C098D66E9B9606C6B476DBB43430
          A6B5DBA6A58131ADDD362D0D8C69EDB66969604C6BB74D4B03635ABB6DDAFF29
          30A6B6A38EFFBAA369ED5FB5FF0C8CE64B1DC11F583DF31A1F3BAD8FBC21EE47
          F073A439AFF8DCD4F6D06B7BDABF1CA34CADC391B63552DBFE53CAC8175F79A9
          6CF0F309287C5EFF8D01A3B0FFE675720141E0B81E405C3F186FD83CDD4450DF
          4E1BE6C6833198E405214E0DDEFCC0A1BFF686B8D4A5FEEBD55F7AF9DB67FCF6
          EA0B7D36A03A9C1A334EA7FEE1E41AFFF60475C989E41B20A08BC948B6D902C1
          99E265B7A05D2B80AE0770B712AC371F8CA96A5E3F2A093276C923BFE3E3814B
          97107BE2044EFDF30F8E1D39824BE7CEE3F2A52835493E83F24564CD866CF972
          A3488992C85BB408902D1B903EA320DAE107AAE37A29DC7F07C6DB897ADDCC76
          EBD8B4F1169F31A75C5A851193DA250A0D8B8F03FEFC0B87BEFC123F7CFA198E
          1EFC0D51E72EC8827BAD7BBD7297578095E07222497E7BE4211E59288FC37CB6
          7CE076A142D56AA8D3A8218A54AE24E0CCAA29A502A7FB9620E86A00BAD1004B
          CDF3E265739F3C7952FDB6B7F4E9D32353A64CC8902183FA77F0736ED566B8F5
          32A37A9BC17E15F58B43E2EFBFE38BED3BB077D76E449F3A89749E2484277985
          55EBAE790474494E990C771872E5CF8BE2A5CB206F91C288CC961D5973E41071
          927015554700774928E985CBD13871E62C0E1F3D8A53511791BB70113CD8A411
          8AC87D32DB371C8CA116EBF4E9D378E49147ACBFF3E6CD8BF5EBD7232C2CECBA
          DE151B1B8B66CD9A213A3ADA7AF77BEFBD87C8C8C814FB4200CE9933076BD6AC
          C1519993508D739743E692FDBCEBAEBB50BD7A75DC73CF3D285AB4280A162C18
          12A4C16DDDBA7598376F9EF577FBF6EDD1BB77EF548FEDA681D192C38C7F5076
          53949000F4240217A27064C7BBD8BA7A352E0A0BCE98E4815B3E77CAC51E9998
          44F989150A97396F3EDC57EF215479E821E08E3B35989C8E102F3368ADC9921D
          268BE6BF7D88898B435462027264CF0597504887718FA9AD5B7DB566E60A03BB
          D2F746FBFBEFBF71E79D775A7FE7CA950BFFC838C3C3C3AF6D1E83C075F9F265
          64CF9E1D898989D66767CF9E559F856A5BB76E559BE27A96399B883DE5CB9747
          F3E6CD71DF7DF7A164C992C89C397332703EFFFCF318366C98FA9CEF1B306000
          66CF9E9DEAF7DC1ACA682A1C1E8164F465EC7FEB6DBCB57809C2858A1184E984
          0ABA7D1E752929A02353042A3F540795EB37008ADD2D000C53B2E3F9A3C771FC
          D8319C3E2E3F274F21363A0AE78402465DBCA0C095396B16649345CF9E3B0F0A
          172B8E22C5EF4686228580ACC2A64991C8A65D4AD331461F84ADD48231159495
          148814C56C77DC71070E1E3C8874E9D25DD754922216285000172F5EB43E4B09
          8C9F7EFA291E78E081EB0262A846EA3E7EFC780C1F3E3CE0F359B36661F0E0C1
          D6DFCF3DF71CA64D9B96EAE75E3F18832845288AE8A24C98108F847DFBB06CCC
          78C4885C983E4958B17CEE34EEF7CAB5E1B2DBEE2C590A551EAC056F787A1C3D
          76025F7DFE298E0A45F109EB76F9F82CF9511AB9404A00AE7FFBBB43D9913225
          9F9728C04E12CA58B46C39D47DB405F2D6AE23DB3C8B62F704A5EA5B40A7431B
          03EC7F070F3D255CDE4A309E3B774E512F7BA35C58A85021C5A2ED8DB261C58A
          152DEAC5DFE7CF9F57628579ADF95DF0BFED8DECF7C5175F0CF82C188C43870E
          55D432B5ED868331D9E764C90909D8B76205362F5C8C6CF189C89898A401E5A3
          D2E150C071A613215A809228403929939B20DF136C615E8FFC08E55420F4AA7B
          084A873959425135BBD0D44E29E40EADD424C9C55EA70B09F2EFB830371284E2
          36EFD605151E6B034444C8835C7E2DDB716DC3BB5AFBAF29E33BEFBC83C68D1B
          077C464AC69F088EDDD6BC32BF64FB313131EA59870E1DC2DEBD7BB14F88C797
          A24C1E3F7E3C593FFAF6ED8BB973E7067CF6DF83D16C412C4E510DA17EB81885
          2DE3C6E1C07B3B119190A4289B6964F1063DC249358420342C914E03B04EE35A
          82CE61EC668FD16D9F0D257A176B2A6B764769E0F293A49420AD85A7CF9F1F5D
          264C40862A55841C87C1E7722667D37C90F3DF6B3AFF35183B76EC8855AB5659
          7FD7AD5B17BB76EDBA66AD384108C9850B17F0C30F3F2845E9830F3EC0575F7D
          85AE5DBB62C9922501D7DE9E6054364301E2F98B58D5BB0FCE7CB70F11A23C84
          7B8452911212214E8765DED14D533D3FDB3535698765D231ED8AD49EE991F151
          0131EDE7B67B4D003B141BF7D9BAA5411EEB76E34CFA7468DAAD2BAA74790648
          17AE6549524925DFA60288572199FF251849E9A805FFF9E79FD6671B376E540A
          C8F5363E9B6201AD167C87BDDD3660B41E43EA458A78EE0256F4EC890B3FEC57
          6CD969804D5DC21FAFD6632D2A490D5A2EF01836C444A5516B994FD910A1E540
          36B780C925FF4B4C8CB79E47964E56EE96C90A9767BB156BA762E4B528AC6AF2
          CC44B921C1E94674980B251EAC8DE693272A59D227CFF598CFC3F55980FE4B30
          7A4451A40C191515657DF6CB2FBFA0448912575CBF94A8664ADF057F7EDB8051
          37418368C642D7B1A27B4F9C1720460A10090ACB28EDF50FC0CE42E35D6EC4BB
          1D70668C402E59C4BB2B5640BE224591BB40414408501C119985A5862B8336C2
          D369D38DC838EA9DD1F2FB72142E9D3D87D37FFD8DC3077EC1C11F7EC4F913C7
          841A6B4D3D8C32A72C929BB036464CC0478B2C1951AC18BACF99051429A2E548
          E795E5C8D4B4FF1A8CFC9BD4CB6C7C773119E7CD6CB70D182D1931EA32560A45
          3CFFEDF7C8989068B14BEB85542C649509BE3801DF650143EEBB8BE381A6CD50
          AA6A658409F8909E6CD36DB317A6B6133EEDC356EE448A09171075F8083EDFBD
          0B5F7FF021924E9F4116D91CD4E4A90C6945C78938A1969785557719311C799B
          35033208605C61868DF2DFCDC7AD0223E7F3CC9933C9C04803B61DB0BFFDF61B
          8A172F7EC3BC29A19E737B80D167B8F46263B17DC428FCF4EE4E648ED7A61B52
          44B25AAF4105C91EE385FAE4285A040F366F861275EB0005F20161E9B49CE630
          64379B12E24DE1B5C1DE66BF12E20DF473935AC744E3F2BEEFF1CEEA35F8EDCB
          BD368AA99F4E50C608DB8E2C7E379A777D067754BF0FC892D94F29AF71FDFE6B
          CA9812186F66BB6E307A83C098FA39D7EA879D226E9F3811FBB76F17202628F9
          8DCFE2F7F12203C6893C162D0B71DF23CD51EFF13600031AC2C20DE1CC88B271
          041AA3ED200C1DA368A8403EAF1F8401DFDB6EB007629C38811F4533FC62E77B
          387AE027A41360BA8C5B29AFC6095526300B55AE8CC69D3BA3F8BD55E535AE6B
          02643018E98D2120D2C09872BB3E30F24EBAF72E456175BFFE38FEE557A23527
          2AAA434A93E8A24BCF09875098D65DBAA270E346408E9C0242975F7BB5377B4F
          BC26B08CDF5E034D5EE3DFA29D2B8F8E88029417F9EF4B32F95E6E0C8E439E1D
          29EF7572F12333899C995ECB9A2E03E9BC8EACFCEC79241D3E84DF7F3E804B17
          F4E2A5CF9409252B5544782911F8B9C8224A28D05F0718D328E3D5DBBF62D396
          BC90A4CD372BFBF4C5856FF721223E5EAD579262796E44A54F87263DBAA172DB
          C7810883E52955DA1940FD2CAAA75C86FCD0630551E0F265F84E9EC4C93F8EE0
          884CE8B9A3C771F6C4715C387D1A97CE9D955BB496EE34FDD3868264FA9CBD86
          E2942E2212F90B17C61DA25196AB762FB2952FAFA379DC2E3F5556A4DCE1F76F
          BB0C2D1EDAD06EF9BF53D1D2C07813C1680250AD89A288494A8B5DD9B317CE7C
          B30F5904386E0142745818A2841A9679F0413CF2DC73220FE6577E611A96E9DA
          3781E732FDD50A915E0DC09858F88E1DC7816FBEC10F9F7D8EE3870EE1DCC913
          DA5C43562A93CC989730E546D43F0E9FD3804BB0501D98AEE0318CDE89421949
          ADA3DDE12858A694284E4D51AEF68342B1B3EBCDA2822D0CB101B6605E87D15F
          57F87FEE9BCE9F3F7F80A6FCBF074663C22D5B6E50FCA1F937151217A9566C0C
          DE193B0E3F6D7D071109094A3B8D11B9F062E6CCE83E7102F2D47D50CB846670
          AB61B45654867F2A36E951B266DC4F07F0D1C68DF8E9F3CF9020AC92C671D366
          C8E79A8E3E65D8B6FB4A1DB41F6AC9D4F2C4F88290E20BA4947C8E69444F7252
          46D45A7DA1721550B3514314BAA7229033870EACA038208B1E77E12CDE17CA5F
          BE564D142C5756EE775E158F370B8C8CDAE173FFB72963301883AFB4D34F91D3
          FE786D1D5E9B364D2862A212FE63C2C390BB4279B49B2E2F2F90572D26A99136
          EDC0AF712BAAEA618C153EDAF0063ED9B20D3E99B448064E24251A54CF17E036
          349BE97756FF7638AC4EF39FDAA293DCDC1090A865F8B4EDE626022B41282115
          AC58A18CF16E06ECBA54640AFDE30942B149EDBB8D1B8B320D1B68B69E8AA8F1
          5060A4CFF77AE319E93F269BA68BCE6CFF7B600C6A0114D2F4359B82BF4CEAA4
          475B215B5CBCA260341C176D500F2D449B464426ADA0C0266FC1B84F28280EFC
          864D2F2DC1CF1F7F8C8C02BE7011EA9CB2E026ABD5C113461F1CAED0E14F94DD
          98A065FBEDF419E90056B489B1C77C0E0BA05AE2F32A77A2CFABDD8C6614B9F2
          7B7BFDEF52A61E01E8B94C19306CFE8B88A85ED5B07DA6CEEE6907239FCDA0D5
          1F7FFC1159B264B9AE0567740D3D2976EFCAFF2E18935148BDE08A3D93B289CC
          B2BC7B0F447DF9B58029097142455C85EE44AF37D66BBB9CE15273D993A96472
          3CBF1DC486458BF0EB479F2073828EDC0957207458F92C5E4326353D33F03943
          74D813D268EBB882E4CB105AF31E0FFC6C9BEF70A9C17A1425362462C5BE6994
          672C64D717E600458BE9800A3E8B06F370AD5DFB90B201399832B291453B9DA9
          53800296C446F1E91B0E4E1BF8FF028CF648164545121371E9DD9D5830648862
          CFFCEA824CF0C8975F02AA56852F3C1C160D5254546079E2243E5EB0001F8B4C
          9849644DD3A617106DC3B030C56B7580ADD3A252BE642033A376F8C385B153BD
          141733E85DFA333F3849ED984BA3A2CB5D61B894CE8D861D3BA266972E42E933
          4A87DC8698E1C1E1FD3FA168D9B28A4AFAAE40244381F17A5B4A7186FFBB600C
          D54C99EF7234E6376F01C75FFF204C4045F34DEEEAD5D06EE18B6AD168D2717B
          0CCD5880F8F7AEF7B06AEC786412969241284A98D7EF176644B7D7E14FD27759
          3A496858D90165AA34163BE7B38242CA4C76EFB5EEF3532445E11C4E8B0A3320
          836C39325F1E54A9570FF73DFEB808790594DC9B60C887E12A5D2209AFBDB800
          4F74EB0E64C8009FCB714BC19852FBDF036328F60C231A9A1F0A553CB97B3756
          F51FA8A822DBF9F46118B06225D255AE049F0053111B1AA145AED93871327EFA
          E82364123931DC5248922B27FE605897FE6D846F69538CFE5C456FBBF46F5232
          0249075E3815DB0B138A9C336F3E4DE56C29A564CF59B36743A6C848F55C9574
          942B0F1CCCADC9950B99B244AA14851C79E433464A53DE0D37DD9230EC506E58
          012067CE62FAB0E1E8D5BF3F22A855BB9CA902A349C5FE0D8B0ED5BCDEC00DFB
          FF0D18E9CF702BBF731CE63FF9241CFB0F282AC7984057D1A2E8F9F65B3AB041
          40035148E2F77D879903FA23E3D9F3C840B7A02DC34FB1351BDB3729A30A7A35
          C2C554FA41868CC8943D2B7289D6983D4F3E64CB9D135973E65291E03972E686
          3B07811329EF4DE78FD6360164D9048DDF2A3DD5658CCAF4A26883B6FEB7719F
          618CF7399CB6F11BD7323633DE832FD6ADC389C38751A1467514A9FFB036FFA4
          D0822963BE7CF9F0DD77DF254B0FB8D6C6D480D2A54BFF7FA2C00435CBF7FCF3
          CF18DFB63DF28B0243EA763A437A341F3408A53A3EADFDB64211FFDEB405AF8C
          1F87AC4239996EEAF6FA5967928A23742BD349BC4B47ED8465C98ADC85EF44A5
          1A3591BFD85DC85920BF002DA796D3E882B3FCC1B6E81D7B2913053ABEC3E5FF
          2C188CC9467C95BF0D7FBB32941B8F4947309E3C83E12D5AA2D553ED7167F972
          C8261A6D58EE5C48C94D78334D3B347AFF6FDB19536AFC36210E9F4C9F892FD6
          BC8A9CB1F10A587F4566C2C4CD9B80FC05953CF9CD4B4BB0FDA5A5C821DF6710
          209AD13A9AEA3160D681F0ACD950BCC23DA859BF3EB2972A29E4228FAC74067F
          82BD3D8ED0E26881151CECA55052DB7C486EB374067CEF3320687E60D4EA31BD
          439763B0BEEF00ECFFE61B741F3F0605AADD8BBDDFED43B5468D02033C6C2DCD
          1DF86FC0E83552ED829A4558D46244E185471E85FBEF7F90293149D9155D552A
          A2E7D2A5E0B27EBB7C39762D7A0911421DE931A166CAC8171A8BD309B5ABF6F0
          C3A856AF2ED2337835430683E2F9F46FC0063E672A53414D1FB1DF579C2CABCF
          F4BC0419C2B58EAEF36C423ED763C443520993B1E2CF3FF1C6A429F8E3EB6F15
          551FB57A3550F26EAC9C3B0F1D870C0E0CC6B5B534305E0718533472D307FDFB
          214C6ED94A514582ED92280C2D468F44D1162DF0D3F2152A073A5B62029C142D
          C35CCA585CAD6103D47FE209E06E99808C190CF94D2F9C9DCAA546A40F081D73
          98859F8C27F86CDF99CDEB4B5D844DF07344E6654C66D2D16338F8E37EECFFF8
          63FCF1F12748EFD1AA5174440446BCBB03C896198BC78D478F214381CC998D5C
          ECC0762530DACD33D7DAFEBF60D3297B5C1271F08DB7B079EC38D1A21354BCDF
          65511C86BEF926A27E3F8817870C5389F84C9C4ACC94110DBB3E830A2D5BE8E2
          4BCA75E6B005A706CA577E22680F7470C1DE9F80724B6ADFF8020367958BD1D0
          7693745AAC8AF861F90F7E47161A1B2DFF8FB6CC3DA48AB15197107BE932CE9F
          3A89F3274FE1FCB1E3F8FBF7DF71E1C4316D00977ED34C1529CFF4C84DB43D56
          92CDF7D0B871CAC3B44DC4927BAB5743AE7B2AC027143E1858B71B65FC3F9576
          10D2A4C37FC6C763F3E8313842A37562A268D161C85FA6141EEDD513E3860910
          855A5253AED3A60DAA77EB06E4944909D7F18A2931C3E42DB816A2AD2A99EA9C
          0D782CEB219A64DCF113F8FBE0211CFEE5179C3D7E1CA78F1F459468F0D15117
          AD903213E8568899ADA9000CF98CDA3E4117662470D19EE8D0BE15633E7436E1
          A9884C98B0F96D91910BA80FFF7877A7CABEABDDADABF23A05B7FF3289FF7F87
          32DA4D3A1E9D5CB5B8E33348126D3AB350B828F9AC64C57B70EEFC79FC76FC1F
          A4CB970F03A74F87B36C79ED930E0ED10F158061FB23B03EA300831F527BF518
          E9028C693C791227BEFF11DF7CF209FEFAE500CECA4287D16EC7E81EDA2D7D5E
          A3D2843F0351FBAB430DD9F0823B026D75E6B53AE5551BE7BDCA23E3C259E104
          FD972C461633E25B38C1370B1728703DF1C20BCA5518DC6E356524182D97E7FF
          2C1885158F6BF33872098B2E2E9AF341A106E1223B9D8F8F45E1AA95F0D88C59
          3A16501624019AB6B9AC67E1EAD140AA1941B5663D9E9868C4FCFC1BBED8BD0B
          DF7FB64715864A2FB26B988033BD28162E01A1CBA10113188963785EC8CE8390
          E8FFCB195096CF67CB91D6764F8751664FA71F84E5CB8B3EF30570A54BEB8DC6
          EB45911BD3E25164112E3068EB5651CAD2271BD1EDC6A6FFCF81D1EF57360223
          9292707EC74EBC3874188AE7C9832CA21DFF29134A2D3967CDEAE8C020824C99
          04B54E237A26E041C92BC23A02F50CF59DE93E8C4BE08CE18337DFC2D7BB76C1
          73290AE964525550AD41F18273AFED5523423533D822546899F20619411A66F2
          BF993446B67C3E5D18AA366B86C683060159B368AA4F31212A064B7BF4844700
          1923431EF8D69B5A3431F3818CE79B6034FF2EF81FB3E9FF533263C89690886F
          E7CDC7F6E5CBD1B249331C12567D4800135E203F7AAF7F4D28620E7F0125532B
          3515155B0B00833DB691AC5826ECE0EEDDD8B1762DCE1DFE03112A95D4A3320B
          DD2AA5C05611C261C631DA81E84C1E246115A7F7F725A5606155A5C2A9AB5C50
          39A3413ED7DD25D061D810B819684BF0B88CA42F998FAF172CC4D6652BF0F4E3
          6DB07BDF3E7490C90E2F76976525F82FC0989A24FE5F7FFD1577DF7DF775BDFB
          6A69AE371C8CFE681D99FCB844BCD6BB370E7DFE057A76EB8E0F3FFB04DFFDF2
          1BC62E7C112ED12495E06E762EB88A972D672420D7C56368BDA2747CFBC69BD8
          BA6A35D28B5C9889321F13FE8D27D8AB800552BED0957A42954651F9304E9F55
          F2C48CF0261B565E218743457AC78B1CC8A08F12D5ABA351A74EC8221A32D2E9
          127A3EA75B076F882277E1E34F3077C060D92849183E772E5E5EBB0E4D7B7447
          DE2A95E113D9921BC5AC457EF4E8F16460FC4D449EF4E1FF4D799337DF7C138F
          3EFAE875BDDB7C362931815E8476635BBBE1BEE980A29EB200E36B3F0477D425
          8C9CFA3C5E7E7909A284450F7865259031A30E14085246E0FF3330A554995F7C
          9C397CB06C393E78ED354426EAB8C6F4021A95CA8040EA47A07B556044A0366C
          0F2BB342A98C61B8194401FF90FC91E1DA0FAECA2F3B0DEF903B0CA5AA5445B5
          7A0F217FCD5A409E5C5A1971B9ADF12803398DDF3FFD8CF1ED9F4606E9B34FC4
          92E7DEDE84253367A0D623CD50BA417D55664F8936C6781518EF28A83701B4CC
          78ABC0C8D6AE5D3BAC156E633656BBDDBC79F335BF8FD5C95832EFDB6FBF5545
          9F587CF467E19037B7F0930D8C6A42098EB8788CAA5E0399052C4317BD846963
          46A1C153ED51F1C9B68A72B0C2AC49A752920D4D5B2593B70EC9EE7CFD85B9C8
          1017870C497E599080F3391DF6DB55731A9AAD1D7C2695B30DC1F07DFBD9B54E
          93D59FC5F3DF6E9702608E0277A0489952B8AB5C7994AA5C09AEFCF975A48ED3
          653B29C16E6632EC977FFD8DB96DDAC075E1A292277316BD0B9D96BF8C852347
          A1C6C3F550B1554B0562561472DBC158F04EE8ED74EBC1B861C3063CF6D86301
          9F4D9D3A5595B263ED6E3BBB25B54B62A0B4AC0B8177E4C8115569EC9B6FBEC1
          E79F7F1E4061CDD6A74F9F8092C9B70C8C3945CEE9FFE2020CECD913E35E5A88
          CCF7DC63E4B8F8972D7982BDC7C86FF620F6DBEFB074FC04C4FCF9878AF2A662
          A2026CE5D55E97BFDA4430109595D28A6F745894D294F14245FD90053B64C18B
          9416D095298D02771543C11277B3A8B6061ECB96281394E10D3292C4ECDABE4B
          AF90D6EC4F9EC2CCCECF20E2E021552BF254C6F4A82154A6F673CF61D9A8D102
          EED2A8CB20DCF4C1603C6968D3BAA0E9BF65D3C1DE9AD48291D7E511A5D3ACFD
          6D36D6FEBEF7DE7B55C086198A46B6CB748650A04BA9DDE462A1362DDA04A3B0
          E9E1D56BA2EC9D77A2DDE851E82F609CB3E17538646255FAA93DD2D9AB4D24CA
          24C4BF699C168DF813A1849F6E78139998EF42D7A24DB9B16BC8A66DCF5E8FD1
          2CFA69CA7A2C0A104F4F8F5B57294B12392F4BCE3C2859B1020A97298B82C58B
          2173C1025AB1A2866F869799113F4629BEE44A96998ECA13148CFE3366F39F7F
          304FC69CF4C79FC82673C1EA65FF4446E0B9593390A96A35CCEFDB0F65AB5545
          1D615916180D45EE9F632771471018FFAD0263571CE80E6438DA955255CDB67D
          FB763469D22470C1535195F66A8D719913264CC0C891236F2D1887DE5713354A
          9741CB7EFDD1AF6F6FCC65A48ED2A24384DD9BE322107FFD0D73070F520BC922
          A1E1464A815951D614F51573558A86B6F1D9A99D021CAFA743273C2332E7C98D
          32B2F8C5CA9641BEBB8AEA8821523B2A5294F39CB6047C23C4CC4C0A0B984C73
          F0569F8D7C1DB3C00065C483BF614AE72E4877FE820A0061F25894B0E2A32257
          4EDEB451C988939E7E1A351B340804A357EFA8BF8F1DC39DDCB486629533572E
          5574FE46A4AAD26CC3229E5703231B1597D6AD5B5FD73BC9D65954BE69D3A6A8
          57AF9E2A36CFC4B2940ACC9BED9A0BCCB3BC89DD381DC0A6058C8344B06F2080
          AC3FA03F86F7EE85A9AB5701D9B22B5667BAFB949221FF62A62059FBB1AD5BB0
          7CDC38C592490D69A456792BD051DE2E6347F27252228F8A6F34CAE209356355
          B09C226F95A8581165AA5641C1BB8BC399379F529A147B5581B1360AE7B0797D
          52E17F0C450B74D508AFA288717BBFC29C5EBD10296321A576FB9244C6F529DB
          6305D990B509BEF3173150949747BB75432DC67486DB28A3C89D274F9F510BA7
          6648009A377F3E25FCDF88A337F85CBBD9E6934F3EB962D621370181F29A288D
          046E4A8DE620029DF6C89A356BAAA337F86F8A052CBD7CB5C08E575E79053367
          CEB4FEEEDCB933FAF7EFFF2FC068B400300A9826CA84DF737749341B33125306
          0CC408BABFB267536CD0F23D9B717FB2789F8B6CF9FECA958AAD6548F258E545
          F81F33D2DB2C45174FB62EE0E3111B3CD9AA6CF5EAA8707F2D642852D4283D12
          AED9ADBD3094CD85984C7B375A8A0759060569E87F18F56C8DFEEF5FB7166FCE
          998B5C31F12AA8D66BF4952D2647360C7C679BCE82FCFE470CEDDA0D9D447C29
          25736469D30618931DE971ED013A37BC5141F9EBAFBF421E4A44301370FCF78D
          4A8FB8D696CCCE6899768CA08457060E413A61518F4F998CD922B40F9C3A4583
          D17E8445922E75B263C224FC20BB9FC59F589C3320B94A5048964B7B5E8C2C5C
          42864C2855FD5E3CD0B8210A94AF20AC3F9B61B70CACC773B502F0D7D54C16CD
          D3B94E9DC4A68993F0EB871F2393FC4D83BBCED9616CA6536541769E301EF95A
          3CA294AA832F2DC52B4B96A0F3B4692852BFBEEABB955661B3AFA6044602832C
          FB561EC396DA0AB437E299FFA685347AEB2FA04C32FB5FDB809D6FBF85812FBF
          8C75F3E6E2D167448E2A9047272A390C9FB2B08EADC347E1E79DEF2AD6CC0818
          B3A03BB55BF56F9A5AC2C2714F9DDAA8DDA20532962B47D54E83DA3CE3CFE137
          909B7D31E36E7D4645EE80DC9450FCD6117A8292056A98F57D448CB8B0E70B2C
          19311261C2C232267AC10C698F61DFA41C7D39DC8DC20D1E46AB6953F4A14842
          595E6EFD388E1F39827E2B572073A58A7E193A1418831AAB419025DE0A7FF1B5
          B49402926F55BB624509E6BEC4FFF8134689F23263E346EC1159B0548DEAC876
          57610D469F4E54FA74DE3C7CBE6C05B22624AA2C3CAF8B4A8AAE6193280A4695
          FA0FE3FE664D91B1640991FB220CB30AFCD44FA1CD2FF7A5A4DFA51CA11DAA85
          3E78520DDAF4029D38856D22607FC74D94E455E55554650A161770E864FE3857
          38C28B1545CFB56B80CC91FA4102A2A9AD1E53801D251A2B0ADD6184CC057A8E
          804030DAFBC0F27D34B3A49625F2A40182F75A8E3FB3DE9B4A70DD4810FE9B67
          A598C4AF64472E9A4CDAB82E5D316EC142FCF5EB0178222350A462050D9EA404
          1C7FE73D2C1A351239E212156B8B11F92F213C1CF737A88FFB9B3686A36C399D
          60651C0464457ADFD2DD678B0AA2B62B1AE9F71B36E0AD858B9159A8BACEE9D6
          69B43EF84D491429C2EE288067572CD7D5D4D87F912B774E9E861FD76F50513D
          233FFD44C4962C81850F6054B1F01F669C6C83058034157341530A014965E566
          00E17ADBBF7967F03D2952461DFC40ED32096F087BAE57EB7E64CD93073F1EFB
          07E5EEABA117F5EF7F30B1794BE551499485C952E84E34EED40985EB3CA8C3F1
          55869FBF0A99EAC0350E32A4E9487D6116130D94290333A70DB6C9F84856B7B8
          78094765415F9BBF00CEB3E71408AD000F7533836C1DAA6C1E532B9C7714C400
          61C3C89B073ED1821DA4A6474F6042D366881050662E52185DDE7A0BC8942119
          3FA6E762CC9831CA985CA74E1DB469D30655AA5451DA34A79CA70F90459BDAF5
          810307D4F5B44556AD5A55794FA8D166CC98519971DAB66DABDC70AB57AF562C
          9E874D06973DA1F19A0708F134086AC1E6B31938C1EF4D4337BD2CC78E1D537F
          F339E675341BD1F0CDE7D2B71DECA961A37B90D750ABE7F981F42C0553F794C6
          7EB57313AFCCA68D1C9873C21E3EDAB4192D9FE98CCFBFF946B9C068025925DA
          F55F9FEE5136AE8EC3862153ADFB44A6CA6055A64DB201C385202D17296BC3D7
          D482016AE6B5985490D4FDD4297CB765AB3A34D32DF25A648247C7477A7DCAEE
          697A804C1B277378B256288BCE3C012A574E55DA4F69CA09F1F86EFA2CEC7E65
          B53265556DDE1CB5278ED3F9DBB64663330F8F5CBA742972E6CCA92266A64F9F
          8E1E3D7A280A67CA8C66240D0B42D176377FFE7C75C41A237E66CC98A1404973
          CCEFBFFF6E1D9B4180D4A851435149357C59BE952B57AA93AF4C971E7F08B28F
          3FFE587961E853EED0A1031E7FFC7175F229BFA7464D60F1BA97451F58B16285
          7A171B9F4380F11D7C97F91E1AB13926DE4FC0F319F545797BFBEDB72DA071EC
          F483F399E6D869561A387060B2B306AF00C6E0D07FDBA24AA7E70F1C843E82F6
          3D7BF7E23E0606FC7210833A76408DDAB5D17AE40880762E33FCDE1E6C683DCB
          E78FF0B952651C8BAF25CF47F685B8332037C66784A5D1D313158DE87DDFE1BD
          F5EBF1D3677BF481991E7D42973DCA5BFFADED4DB4735E4817868A4D1AA3B188
          1EDA6F6DF4830ACFD16398D9A03132C84664358DCEE3C7233FB5EB20DB211790
          810ACF3EFBACF519A91317991A345D7959B3665579D4A4400429BF5FAAB22D8D
          19320A3C117C6CA4343C98920071B95CD67504DC830F3EA80E1D2230689AE17B
          78541BDD910419296BE5CA951545A4CF9AC027C5E53B3B0927E3D1BFF4D4BCF4
          D24B2AD98B8D7EE7C993272B0AEA36D675CB962DC89D3BB73A7B90D494B64E5E
          BF70E1423CFDF4D3571C3B7FAE81320681D10E2659C49F77BC8B9C02389A5AEF
          AA54093BA7CF506458D56314CAE0910E9BAE407F59645C7B0B66BFFEE5F1FFB6
          A81F6CB9313C08E91C8E7EFF3DBE7EFF7D7CFBC147088F8F4544A2CF3A34D361
          447527319DD665CB5214854A859109503A8C1A8182A26C516BB6CA9710DCB221
          DF7C6E384E6C7947892F4745769EF8D61B40E142EA3023FBBE2155A472C2E3D2
          DC21F26382C148B7DABBEFBEAB804590589BCFC68619E4F0BE8CCBA4886663E0
          038DDAA44EF6FB08C2175E78411DB3C64680D08D68374AB36DDAB4094F3DF594
          5A4BBB77C88CC724E082CF1AB4F78D6CF8A1871EC2A851A35235F65482F10ACD
          C89DDEBAE655DC776F356417396186B0E52193260179726B579C6953B4650186
          324E9B7F071BA9CD5BFDFF0E029DCA02F4F8811713AB8218FED9FF237EFF613F
          0E08C5BE78FC98AE7AEBF35A556FEDA0E6E4B116A47988268B11D0F37349A861
          3E61891D478F16CDB890F669BB6C3D6322DA675F6066AF9EC8171DABC2D0A245
          261B4230664827A07507D8136958E6B9CCF42377EBD64D9DE347366B022B188C
          A4585C5002A767CF9EEA7A521FBB2C462AF5E1871F26032343B958F224383C8C
          E0E56794DFD89E78E20945C582DD730423DF49F0D9E543138C942379122B1BE5
          59BA1749E5AA55AB86B265CBA265CB9668D1A2853ACE97ED6A63BF2E30DA5356
          BFDAB103B9D3A55772CD6BB2139F1039C02AD06EB2F41029A9D683003F68ED6F
          B58ECE3058ADAA2D92A441171B07F008DA7F8EE28FDF0EE0F49F7FE1CF5F0FE2
          F81F7F28576398CAE8F329161C6EAB7A6B165AA21F5CE5B518C6733308C32C34
          E089CC84F64306231F0F23A2EC677896AC0D91A42D0A731E6D03E7D1E3EA0C44
          1EA454A14B17D41ED0DF9F84E6F5D95C945AD0E7C9A43C79F48D37DE40C3860D
          F196283B64BB2618290B526663E3027F2F547DD1A24558BE7CB9AAA7F3D1471F
          593EE72953A628D92F1465A4AC49F0B66AD54AB16C1EB24EB6C9F79252D9C1C8
          60063B3008C6EEDDBB2B766C961AE4DC118C544E4C309A3E6EBE83DE1A9EB8CA
          1FB63973E604B8FD521A3B45882B81324442560A885459EC5178F79535A855A3
          3A0E895250BEDE43561CA0A9AC9809590EBB61D96733AD241AB9CD0972475CAC
          AAE99D70EE2C2EC8F3CEC9CF496139174F9FC5D9932770E1CC69C489ECA7B2FF
          0832FABF65D1ACE2F257DC454EABEA99190DE4218B76E823DACE0BF01AB46F87
          5A1D44D6C96E1C8EEE705A1B4AFB995995205ED52EFF75D316644A4854633C27
          F70E59FF1ADCA54B5A81B8579A40522E5292468D1A29B031E2866024A531C168
          6F042B290E17D534E54C122E4470068391D4C7D4C4E9FB26A0F9EC5EBD7A2919
          D26C57A28C2618ED94D8A48C0C41E306A2C2C583CC29DFAAE965BD2561ED0C47
          A37C688FD609357646995F2D68227560349B5089FD3BDE413A59B80819583E2E
          86D3700B9A42BEC760A53CCF4F3A7BFAAF3F71F4D061FC73F830CE9D38814BA7
          CF21FAC279C4CA82A873A3E14F3325E0347B850138C3BC0423BED176E4AF0ACD
          5247FD6ABBA0C716F5A3C713584DCC639C4F483B28E311EB76EF669CC4E05280
          4A32C6EE37F538D5C639B56D3B968E18A9AA69109C047298B0E89E6F0A8BCE98
          CE3FF6AB4C20958411234628B308A90DCD2276CA18DCBEFEFA6BA54DD384428A
          4220ECDCB953C98DF6F6CC33CF28D0324821A5C625A66928188CFC9C4A09011D
          0C4652575246B25BCA7E543E18704B138DBDF1E8602A4B2981D11C3BC5869F7E
          FA29E0DDC9EAAF5FBD8CB26E96DDF1520CB6AE7D15F7376E882C05B5E7C14AAE
          3F7F11E73EFE081FBEBD097FFE7E10F122FCAADC6663911D86AFD761B7ED99F6
          4791079D662A289042CEB3BDE3B072A3CD68707B14B84905591F87BEF0988CE9
          D1E8C9275183079F53CE5501182EBFF7C7DC6F663C23EB4CFE7200E3DB3E891C
          71F12A329D87A85F10603C33651272376D12325F9A8DD4897220354B2A05D46E
          9F9477133454344819C9EA4C3052CEA2BC4865802C919AF4C48913D522D2EBC2
          4523857CE08107D43D850B17D6F2AFCCD782050BD4B5B45BF299042F6551829E
          215F66BB1ECA48A58AFD24B5A6898AD751B1E18679F8E187952987EC985A3EC7
          4ED355F5EAD5D5D8297E702310D0F63488D06B7A15309A9E122B9A47E4B823F2
          C2F0884CC85FBC9806937CF6C7B6AD78453AEABE74599951CCB35ACCC2A04EE3
          A8DD50CDA2669659C711F8B7FD1A04A69E3A828C3DFCDE63A41AC4CAA4E52B59
          028DDBB747EEFB6B0159336B19D7A8766115BFB7754BF99719F821F2E18C76ED
          112ED49CC5AEF836CA8A09222F0F79738332FBF80C6D319818925D728109422E
          061794C7B599763F0295B2A0696764783FC1CACF39369A74480D793DE308D5E6
          92E750237EFDF5D71595A2564CF648F011107BF6EC51E15F043A179E8A0DB569
          739E1A3468A0FA60371FB1F179E646B183916026E84D6D9AB6501AE1D9F87E9A
          8B3806829CA207952BCAADE6D84D730EC74E0ACBCD44B3502AC118C2CE981CA3
          DA88EC49C40FDF7E8BF295AB28D6BD73CE5C7CB26EAD32A1D05F4BBF6E589247
          5587701A151FAC335D0CEAE50A66B901380D2C93AC3BEAB5846B333D95D48FB7
          99E75333148D4A49D63B0BA15693C6A8429956164007DFDA3C4141C11456F622
          3FA39871EE3C9675EA8CCBBFFE2663F25A27B0B2B244D7171720C783B514A87D
          B65278C18024753B253230D91D2904354AD3CEC6EF4809A9A4989FB13F8C3524
          08088A52A54A294006AC815C43CA48C01178048BF93C02DB0CBC65FC6170102F
          9F4B90F23B7BA37C4AD31035637B2338F7EFDF8F0A152A582025CB2605E6FB08
          B05CB972A9EF6804A7DD919451AD8FFCD8C7CE0D959A38CE6B07A361723977EC
          04B2E7CA89A37BBFC4A48183706FD1BB50B5E23DC855A4B03275245E8AC2A9E3
          C7715CB4601EAB76E1E47151504E1B40F41AF5BDB57CE832E444F36485D03D35
          73A19D01B51F553D6E99E4BBEEB90755EBD4C65D3C0DF58E8246BEB3C38AA609
          3816CEB6B801728B3AB4FD3C1675EF81D8FD3F23B3EC7E7E4B767F59C0575AB4
          C246D3A7E90A12A1B221AFD06E95BFF846BFE77A2AA65D6BFB9747FC6A57DB45
          D1948E1E3C84D24C788ACC02ABEC9D0EFF86BF80934F1F3C49EDF9E2259C11F9
          844ACD9F220FF11CC0B3C74F28ED59B174937ADA2704BA20BC0A7415E0152C5A
          04B90B1742A97B2AE1EE7265114EF065C86898998C7034DEE5B25B2E6D0F0B95
          E34D20F2D0F62EDD70E1E703AA8C8AD6DCF5393731223F0D63E182ECD99219B9
          031F96BA05B6A872A870B79B00DCFF2A2CEC5ADA759C376DD8E0ACE0579DEC94
          2C6ED07EBD698B34016A9A7E1880C0F22642EEA985C79D3FA7ECDB5693E76660
          7435832F58EB9194C9EDF6A798DA82714345C7F8CC686EAB63364CB20FEA8890
          1358D0BB0F127EF955D912550AAD3C9F59871733A4C30811431C94DFDCB6DC9F
          ABC58CA5B56B6AD779F8B9171E1610254B0C028323988725F355C36600F72090
          5CF98204C6A06759D97DBEC0EAB7A19AD5213F9BD7BFE55F462A2D0EFC82593D
          7AC079F68C3AA74697C7036285C59FCE980E7D4459C85EB78E5F7BF6A74422B5
          A7ACA6D46ED7702FF31ACA7E0C78B815A908D70746B933F6F225C40A35CB9E2B
          B7CD9F77133A7E05CA93FA0535C06352E48444FCB56327968C1D87DCA295B2BA
          85999FC378C68BE9C2D0F9F969C8D3E061EB64584D4D7D36DB9333591F18A142
          DB9DA909FF5F6D545418E6F6D9679FA9E3E66E863C9AAA78C6D43D4D7519C70E
          1DC2A513A750F2DE7B0DA5812546FCEE379330DA6A18245754520A90B8EAD853
          BECFEE1B57FB4469F03E2D169C3C8D7767CCC6BE9D3B842DEB881E135FAC1A41
          CDB9C79429C8C3C32BC38D00384788F786D878B4BF711153734E20BD18042F8D
          D6A95DE85B454D09467A5818167635B3CCB5B494FA7F9D6C1A5610C3A95F7FC5
          EE77DE415B861265890C94E7CC05D364C5B8F1FAA9A71E94594E2C28712BC0F7
          EDD1C674869709053CB8651B5E9F3D0B992EC72022215EE53A7B1D7E23390F6D
          EF3F6F3E32DD575D69E5490EDBB131FEA5BAE67198151CEC2CEF84C8AAB413D2
          8E176A9142DD631FBFB97C29B1D194EE378FBA0B050ADA07CDCF69BCA6ED3018
          8CBC464DB7617C0FD5780DBF4BEDC6B97E30AA59810EC215E17F7CEF5E78A245
          4BD468D8186075071E58649EE762281AE6F92A56278CDF4A0AB4853DA66608C1
          1141E673027CE30CBAB874197FEDDC894DCB5622F6D85195944FF9501BE23510
          2F53262C742706CD9F0B142DEA3FCE3744D0C7950EB1A4719A2155B4C5D1384D
          63F0FAF5EB958199B6387A4198CBC2A95FBC7831468F1EADC2C8E8313113B468
          C4A6778501AFB4D131C081FE66BE9306670627F07966B00213E6E96161C0020D
          DBB45112E02CCE44C333414F833B3D3AECD3B265CB940D90CFA5BF99CFA5BD90
          FF66912752751AE4E92E648439E546367A66189841BB25C1C6BFD96FDE43FF78
          B972E5942D92FD61633F18BCC1DA3CF638CC9B02460B3C3E23E5F3F0610C7CBA
          032265A0A5CB5740896AF7A25C8DEA70E5CBAF831114520CF38BDDF0172298F6
          AAE8B343D00CE6B04E73D532217E3F8C0F366FC4476F6F42FAB8581B4BD60F62
          1859823B0C974559A9F64833D41D3AD8381D362CE044AF50A5A1536A0C5465C8
          178358195E459F2EFFAE5DBBB6321CF337831ECA9429A3021FE82D61540C179F
          B18064F3B56AD552806370053D33F7DF7FBF5A705E43CF0B8B338D1F3F5E19B9
          0922BA0A1928CBA86A3E9341120CEBE2C6E033196945C0D12B4380D09F4C90F2
          B9F4F4D000CF600C8A0D74F9D1E8CD7ED005C8800E8291006414105D88A6C19D
          EF1E326488EA3F8DE76CA627869B91067A6E188EE76AF18D3786325A8B64987B
          8E9FC0AC6EDDE13D770EA5EF2E81BF4523BB24DFB13A4495FB6B210FADFD4C53
          A5F7C1ACFE65D90761A3A2086D0437B56FCB5464A41724250017A310F3DBEFF8
          F6C30FF1B52C78EC8993AAD0941962669EDAC5C08A04A74BC98749B2A09DC78D
          43AE076AE9BC1D33273CD80C646DC0E4A6227BE3828D93E755AA54C90225FDB7
          6623F5216B663816A35A085E2EBCD9080A828C718626EBE63D0CE162DC231799
          C0B4B34EBAE5E886A37F9BCF2488E9660CC5F60942525B82922168CD9B3757CF
          65DE0D292BE311CD66CA8C0423FB4BF9D6740B9A8D6E4F7A98083AFAB1D93F2A
          3D8CD5BC96766364C6E0C00A064D9C398F57070DC6917DDFA2862C4ACE020570
          40149DFDC226C812590FBB44B9B2282C1A67F132E510212C44C99A6495E6516D
          04A81D8C3EA3B29919821675099704E847E4992C3C7F44C484937F1C51C0CBA0
          D20CBCEAF457B7CD2FCEA2F1AC64A10F4D72A1F1534FA172C74EBA888051CCCA
          8E31FBB89255E04D051849BD4829CCB84236523682868B4B3647A0128CA6EC45
          0013508CD4E1E2F2BDA4A64C0BA0864E6ACBB0AEB163C7AAD02E522752380661
          30BDC07C663018791D01BD6DDB36F53741476A47764F80118CFDFAF5539F9B47
          28138C3B76EC509B83D493C1BA0C510B6E1C0BC74C36FDE5975F2AB6CCEB6855
          20D85313F57D6329A3051A231725360E1F897CB16BDD5AE40B4F8F5AF7564366
          E9207D96DFC82E8A4F4CB08EDA55E614D1C433454420636404C2D3674084504F
          4B40177E79F1FC053804845117CE233E3AC67227126856608675F2018C12CCBA
          D09447C0ADAA98C94F944C4C8D96CDD1A0F33322D7E63722BB8DF22921A396AE
          9C948F20A0120804614A60A4BCC8D02B2E20A3652873D9C1C8642C06A3322895
          763E062BB0BE0ED30318184120137CBC873F94210970DE47B92C14C0D9988AC0
          E86F460399B192EC0BA369C84699C547CA672661D9C148CA484AF7C5175F5814
          D93E66DEC3E79BE62CDECB7E30018D7E730606DF749931E4C240879CB929B7C5
          27E0F4FBEF63C1C83122B3C52352587319E9700E9E9870F61CFEF9EB6F44CB64
          7B3CFAD860B34EA3CF70FF99CFD3A619AFE1DBF697CE334BA8F8431EA02B53F8
          7CC631C1BA5A6D9C4C843B5B16D46FD51A151E6D01E4F3C732D2D7ED175FB5D9
          2990425E1D8CF646E0916A914A5D0D8CDC9864A90C9C301796F73064AB7DFBF6
          C9B4615E4F0A45EA4610325C8BD732A0C1BCDF042365553B0028435299A0BC68
          36B26933429CD13BEC9BC986F96E6E28C650324287548EEF32530CCCC6103806
          5A909A9B0964F6C6E05A6E80AB55CFB83994D1C285E1FAA319E0F419EC58B418
          1F8BF09B51648C8CA248E4C8940919DDE108933964EC23291959893A905C45E7
          2000A0FE03CB9DD6E78C495415CD8C54D344278CF453B78AE461AE77A5071F40
          7591D1D29792C9C810E13F34D37E00E50D34DB315C8BAC9681A8D494B9A05404
          CC468585948EA9A3A474458A1451D97D544EB8E8A444D44CA9281010D4AC4999
          4811395686F3330D810055A915329F4C45A5E2414012B0EC03B5693B65E47DD4
          A6A90DF3B9544CB849180F4999930A133705B56D4600B11828FFBD6BD72E2553
          12F8DC6064F5AC3046C588A1639433992E6B829CC0E38661E4111522029DF264
          28F67E6BC068A330D61984D4B665D77EB569233ED9BC15D102509DC362C8770E
          5DAD9626076A9D9487C2C25D382F93E00A4F870C59B22063E62C88158A102394
          348CC1110665E3D9341122D7E42D7CA7FC1446EEFC0510C6B44B56330B0BF717
          0F756AD3129B6502B2813180FAFDCBEA61D42EBB74E9A2847A9A50F89B6CD06C
          5C602EAA092E9A42780F0140530AE3076992A1219C8A06D938C1C260D750B648
          DE47CA484053663B73E68C8ABC26DBB45F6B06BD320C8D202538280A10B4A4A2
          6CCC6D66FE0A43DB08701603D8BD7BB795FD47E5878504C8DA69DAE138485DED
          C77A5056E546322933593537E4D5DA4D0363B24555BF8D2337BCDAF8ECFDFB6F
          FCBCF72B7CFDC94738F5C75FB87CF6AC917E40A5C301974767F2B145E6C88EBC
          771440DE8277C0251435CF1D855080B57B189F47DF7864266D3AB2E43F339A21
          308E31A53A237E4C5E9F51FE46D4B5B95A012652536E5893EAF13A2A1D34DB90
          255EE9D964ED870F1F5660A3D64BB03398F77A8B985EEBF843B51B07C6101446
          BFC0F8DB11585D42158D4AB2557D60CDC0A8CB2A6FE6CCF1633873EC04CE8A70
          1F2F1492BBD1230F4A94EB2EC7C5C22D1AA6337D7A78083C99CCBC450A235B81
          82C853E84E6415E13A5228243D2AC10AAF45091D367764B2B8C41BE721BAEE29
          4D6161692867C506CA9A4C53A0CD928D54F55A7395AFF6AE5BD96E229BBE52F3
          06FED34E39CDA81DEB73AF951713589DD6662437EBF9D8BC252C817AC5C9BD1A
          0B0E8A7BBC9D22C348195F7DF5556557A4EC479180F25EA864FB1BDD6E26686F
          1D18438472D98F30375BC8AAB33E5B944CA8DEDACEFFF37FE60C785F32DF756A
          FAFB2FC17823162CD9A1EDB701E5BA516349A9FD4794D1E824928B7157ED724A
          BDFDBFB94E69CDD6FE5330A6B5B4666F69604C6BB74D4B03635ABB6D5A1A18D3
          DA6DD3D2C098D66E9B9606C6B476DBB43430A6B5DBA6A58131ADDD362D0D8C69
          EDB66969604C6BB74D4B03635ABB6D5A1A18D3DA6DD3D2C098D66E9B9606C6B4
          76DBB46B03A3BDBEA2750891794C6F0A91D1E6B92E667296798F33850A12F6AA
          10F6838E8CF3A853BC27A57E395259A9C27C8E3AFC2885E3E4ACE7380303C1ED
          81C029DE670B000E9E9B8043E2AFD26F6FF038CD67075D6F9FC7ABCD43F0BC05
          8C35788EBD0899BA11B43E01F52FED05DB1C296759860063601D437B32BBC33C
          5A83E902AC44CB80491EDDCB64A7A072200189585EE39EF8049DA0CFD07855EA
          2444E7CD7B58C033491F93A6725CC2FCC541AD629DF605F2D8DEC17E85FBFB15
          AA8677C8CAB3E6A90D5E6FE0E7C18BC37EBBCD0ABD46547A92B15076909AB55F
          54455FA7EEBFFD9074AF91A4C6BEB33081CB9817B77E3E53279CB6245CF37028
          F52EFEE63C716E9C6E5BE17C1B08BC46850FF689454E9DCE901853EBCAB9E658
          DC6156E47CC0D0D51C1BF31315A50E8A529F31E38F3FAA1287AE4DA4CA0AF295
          664560AEA5C28AD34AA0B30AFB07D46D4F018CF62379ADC2F2F2D05F76BC8397
          E6CC45744C94FABE70A1A218386A04D2972EA527C49EF8C4C9BA7011EBE6CCC1
          073B77E90D240B56B9460D741D360CC89D4B2F80D336D93258DFD1A37861D224
          FCC25C62F92C2C7D06B4EFFA0CAAB5794C263FDC283F6203902CE6DF1F7D84F9
          CFCF5005D3D9F2E6CF83FEC347205BA5CAC6019B21A2C18301271337E1A9A755
          350AFBA6F7CF832E941F27CFABD3B62DAA356D02CF9973183778102212F4090F
          1E874EA9E53C32BF9BD7F310759ED43A7CC67484F1B812871E278F9B7B8507C7
          4BDF993E4002C0E24D3D06F6475E26D2BB1D1A68E6FCCB38CF7EFD35E64E7D1E
          274E1E531F3307A673AFDE28C76336CC8D0EBD398E7CFD25C6F51F80CEDDBAE3
          810EEDFDC7CA058351C6BDEBE5E57875C50A4C7C71010A56BAC70F6C9F51D957
          7E0EEEDE8D65D2DF4B67CF5B39ED1C63FA884CE83E6820EEE621486EE35C1D87
          01C6B3E7D0A9491364CF9903B3DE78539D42661D6F9222188D44258B221A1726
          99088F8BC7F659B3B1EB8D0D2859FC6E347EE20975BEF19BCB970930633162FE
          5C64AFC6127261FA980EEE88336730BC6973F8845AD56EDD0A95EFAD86BF0FEC
          C76BAB5F5509F6B378BAFD5D45D5249A938203BF61E053ED112E9D7EAA534764
          C99907DB366DC41FFBBE57E75CB79B37C7A820EBB44A207FB8EC656C5BBC5436
          C69D68F8F4D32A4764CB92A5387FE922BA4D9A88620D1BEA775814D51B222D01
          8A4AF5B8AF26221313AD3930A918B31E08B648A160ACF1DD74F873A8FAD863F0
          9D3889AEB249B2C6C7ABA2F9490E8795EFCDBF793D4F80B8983E3D66BE2D8B51
          A490DEEF3FFC88A11D3A29A0366DD50A252B56C2B933A7F1D6D26588BA7C098D
          DAB543DDBEBDF591C96CB1F1F87EED5AAC7E611E72E6CA81365DBAAACA1BBB36
          BE8D7DDF7C8B5295ABA0EBBC17009E964ACA939088B37BF762729FBEE8D8BD3B
          CA3FF30C7CE16E7D940A1C81DC42AEFD66D162AC5BBE02A3162D44D6AA95D5F9
          DA30D7E4D225CC7FA62B8E31C53543463469D31A45CAE8D3110EFDF03DB6ACDF
          006762122A3D50136D66CC5018481040B2B6114E9CC690868D9025572E8CDA28
          E3CF9411094279C32DC2E74C2518B9213930927A99BCC19D3AA1F64375D174F4
          185D8D81ED5214263ED11651713198BEF33D55C14B2DA00062E5808138F8E91E
          4C9E3113B8FF3E4DFEC9968E1CC6A8764F21227F3E0CDBBC45755E752C2E01E3
          A5E349972E63E2A6B775CE33A999C7876F841A6F78E30D0C5C300FB96B54D73B
          90D4E2CFBFD0A7751BD4AC700F9EE089A1EA5452AF9AC0791D3AE3F7D327318F
          FDCA96459DA41A8A3D58DC801420264EFFD6ABE5A7F23CC79047FC3ED9169177
          1444F7B7DFD2E5FE782B459604E36430736E0D969AF8E626CC9C3B07B53B7742
          8D3EBD355B15B08FAF571F1EE9E3840DEB01E6779343F0FEB8582CEED60DBF1F
          3E8499AFAC06CA96D6CFFCEB18FA357F04C5EF2C8C6765F3A9730ED5510C3EEC
          1520BDFDEAAB183C750A72366AA0C7199F888B5FECC1D467FBA3438F6E28D5B5
          8B80312CB4D828D7FEB86021D6AE5889118B1722B26A15E35A9E741687E94FB6
          C3F9C387D1A2652B54EBD757AF97C99DB806D1B158DEAD070E4A9F1FE9D60535
          E42741C619CE39F8FB1846356E844801E3731B3702111955858F2B833125F6C5
          DEC725E25521F53FEEDB87693BDF057265D793074D994E7FF10566F7EA8BA1E3
          C7235B8BA65A90BD7009431F7C1091224F8CDEB645ED887801A3CACE15A06EEC
          D5077BBFFE0A537709508484735017BEFD16137AF444AFFEFD514CD860009515
          D00F7AA81EB20A8047BFFE3A4F0157F7EC183D161F6EDF8E699BDE52476E7864
          472B3939211E49FB0F6058C78EC2F606A258BBB6D66EB7C1CF1AA2CB2E9E98EC
          5FD59D12398B137E3906F384BAF0F4A9B9428D50209FFFD40325DCDBE4435386
          3D7D06231A35453EA1D87DD6AFD355D75805ECC02F18F174473C2D94BF728FAE
          B2B1D3E94D6F00D8F7DB413CD7B61D9AB67E140F0C7B4EC95A9F2D5D8E575E7E
          19D3E5278B12890C199D7D130E35B2CE43AA0461BB55CBB4DC29D4EE8CACCBB4
          3EFD048CDD51CEA08CC9741C8E9FE5EF162E1630AEC068A18CD9AA68CA48AA78
          68D52B582184A062FD87D14AB80C3793594EDA678C5951CFD367D1AF711395F3
          3EFBDD77919427972EB07AF43886356C8C883C3931EAED8DEA808024B9FFCA6C
          3AA5A6CE018CC6B01AF7239FECE07E9B37C1933ECCAACAA0107EF10246D57C10
          A5CA9547BBD52B34053C730143EBD543FEA285D07FCD1AF844AEB82C97128CE1
          C2D2BE9A324D15379AB07D2BC20460DC9DDB8482EE7EFB6DCC7EF34D758E73B4
          4B671046F21D220A6C183D1A7B767F8839DBB602323852CC91F756477A619BA3
          3FF9581DB71B67F42B3DF48E1D5EBD96B0B55C18B47D8BA226E604861C2A899C
          F1DBAC50C37166945B7E5EFB1A16CF9E858E221B556AD55A890A490EFF7DE68F
          CF18A35BC030A5F33338F1F3CF98276C0C320FACFBE396853B2922C7EA052FA2
          BB5099C80A1510E7D4E3E40229D676EE3C86D5AD8B0AC27ADBBEB458CB8EA7CE
          AA9364F355AE24A00A47A27DFE85938C14F1825534FA6DDDA4C51879FF6961D3
          532D36DD597F1E2AFB4DAEFD6AE122AC5DB512A3172E44F62A95B52223547A4C
          F59A0AACE377EF1222940B49B2311282E687E32525DEF2C20B3875E8309E796E
          089244FC32C138B4918031776E8CD9F8962222570563E0A143368D551D5DF60F
          063FF2285AB47A14B5E4450167E619F2E498EAF709A1F262F2D77B75391101DC
          C8475A20E1D469CCD8B11DC89143B356B2E9F8383CFF48339C146563F6E77BF4
          4E8E8DC3B8E6CD11250AC1AC0FDE57E5F19284F2A893B4A88DCB84FCB2791B16
          4D9D86D98B17C145215B94A361751F46AD9A35D05494244165E0968F8BC39C66
          2D5525AFA99F7D4C693FD03CE333D884911F6BD55DB4D2160D0D5234C7910F37
          44A4880DC348E579725570217DBB6944FA1AF5DE6E4C1E361C8D9F7A120FF054
          7A1E102FA073995AAEB50236938F790C8850DF618F3F8EFA8F3C82BA63C7682A
          659A484C139AA2BE496A4326EDFF092384F2B568DF0EF789F2A328B680E3BC50
          46054661D3A53B77F6CBDAC149C202C61F8532AE5EB912C35E5A84EC952B2BF1
          28E1F74318DFFA31142A5A04DDC88DCCAA13C9B4209BB9C9AB15C504B721331E
          3F89E18D9A20B370BFE1E428115A660C83593021049B0E06A3A57ECBC4C6C860
          4775EA8C3E8306A1C8E38FE982EBCA7E65280202BC971F6B8B3F64E74EFEF463
          75AE1EBF8FF9E9674C78BA034A952C890E339F17B92D9BDAC55B85C27C249A59
          B7E14351BC756BFDE6CBB1182C6C9D6B32E3C30F155BF728301A8010409EF85C
          767AFF8118316E1CF2347A18F17FFF8DB12DDAA07D87A751B66F2F3DD9F64593
          05D9DC6F203EDF23B2D32E112F7266F79F026BDF4C566152F881C2EBB8D8B2D1
          B64D9E823D5BB662F28BF30151A2FC14C6A608F90CDAC8CF45D9982222459C50
          F3091F7D00648ED0C7BB29A807158034DFC7BF394E79DF9B63C6E2F3F77763AA
          50CFB06AD5F4A6346FB14C50DCA0F1C04F07306AE000A5884C14AEC2312AD142
          007671CF1798FE6C5FB46FFF244AF5EC61583B6C9B51F5D7A108CEFE79F3B16E
          FDEB18B4F4250D4679CFC11D3BB07CD4283CDD55644E01B41AB7C71BD87FB384
          A0D3D43534C0E2E533D64FA2C56058032A30392D30C61B0A4CEAC0087D7EB4DB
          00E3E92FF6624A9FFE786EDC58E46DDAC89A1C16EF74F0645201E3BA6E3DF1FD
          BE6F304D40A6CE6F76B87519E39F0F609608E4C729E44BCBC44914323D7ACE4C
          B865A29129BD7EF9A5180CAE5D5B992AC6EF7847753ACED8412E5597DB8BF3DF
          7D87095D7BA2EFA00128221ADDC583BF6172BBA7D153284F914E4F2349288849
          FED56692BEEF1A3106BB6452A76DDFA46A312639FCC7F9DAE7D4304A5998646F
          D5641E3B8181CD9A22C71D7762E46BEB9428A0D8AD8D02ABAA69F25BED7619F3
          6179DFA25163D1B1774F9411C52549943DF715AA909AA732B0BF3122864C1C32
          14394A14C3601EDB4BD182E0B26F1201CF8B7DFBE38FBD5F20A3C8F32C903570
          CD6A2DCB67CC648DFDBC80F1859ECF22BD274115474D0A704CF829A4DB9B8448
          51D058D39CCA514E1669129977CFAA55D828EC7BD88409C86E5BF7E05CF780B2
          351E2D6B2BFD8072F389538A4D138C2329334664F053C654B1693B1865728F7F
          F6199EEF3F0823274F42AE860FAB4E396C98A6B2F056DF01F8F2B3CF318D1428
          873E3D9EDAE7ECAEDD715E7EDFDBA0014A962B83D3070FA9DA8261D93263EC82
          0570F0A837B64BD11858B78E8882A2755166CC9C11310EDDE930C3FE7859803D
          5A84FEDE2294176BFB04CE1DF819533B7442DFC183708728288A35187DF2188B
          FBF1E4A9D8FAD6DB98BE552642642ACBD01E2C3B199E017306787FB82CFADE39
          F3F0862CF450A18AB9AA575322853537B677118CEAD8C9E8180C6BD20CB12282
          CC7D77870248BCC350DCB8A99C2EBF4DD57CB74F2B3C3132BEB14F7550459826
          6D92FEB2A8BBDBEDBF06BA9F04E39BD367A178D62C38F0C597F84E14CB1C7714
          C060115F50309FB64DCAD8CF7DFE05E6F678165945A68EC8935B69B1261069AA
          52A725084B0D1700C51E3F86B3F2BBCFF2A5C859B9A2B253BEFFD24BD8B17C05
          C64C7F1E11F5EAAAF9B51F4769F737F90C302A858A4C896336D874EAC1E85582
          52A007C4B42F1A94F1EC575F6342EF3E1836762CF23569A8653CBB7B4F76E786
          1EBD549DE9A91FECD6E590459E1BD8B49974C883A96B5E354E37756A8FC0850B
          78FEC9F63875E93C666DDDACE5C9E8780CA85B1BD9324560CC56515022235495
          D9702533EAE250E7BFFF1EE344AB1F28E02B24F2EBE5C322D33CD11E3DFB3E8B
          A21D9E825726DDA9ACB186894536D2EEB1E3F1EEB677307D9B50461E9C74F192
          AEAA6BB259A54ABBD49980D6E906262B14AD7F44CD07140B9CFCE9475A834FE6
          01B21512A5F9E7FB1F30541497079A3445D351236C94D4982F1BE8F57C6BAF91
          478033B25F3F78451E9DFEDA6BC01D776823B6B11EA6C268511FAF511D58A85A
          C28F3F616C97671026733661E74E7D287B924FB4E9BD982D9491453E0B77EEE0
          7F5E70937EFFB6680956AC7945B1E99C952AAAE77FB1762DDE7A611E068F1983
          DCCD9B89ECEAD66CD818877D535B84DFE86F3C398B0D8CD97206B2E974B6B90B
          046330FB30066F9E2F1DB5FF478C9109EE2FECA350EB565A66F4D90460917356
          B46DAFEAFE4DFEEC5325E01F5AFBAAF2D40C9C341E7979D4AE320918A6855861
          823FFF84611D3BA3628B66789CE68B442FFA0A65CC20DD79FE430174446605C6
          743E58DE87D37BBFC224D140478BB890B3617D91198F62F4A3ADD049FA56AA57
          776D1B33FDE00E0DC6CD838660CFC71F61DA7BB48166418F5AF72313CF39F1EA
          238669598D96FB16EFDCA1DC5A8A2572C213845209C599DCA52B5A3FD51E15FB
          F79571DBCAC605B35B361157DE1F371EBBB76EC364193F4A945073C5E2A60E1B
          18ADFBBCDAADF7BB6C9665B2D129A28C2210695D900D1FEC360B286C6F9124AF
          928D7F10D0AC5BBB063D66CD442191BD69313825DAF4EC5E7DD0A97B3794E8D6
          C5907543545993FBBF5FB4186B56ACC070D1DEB393324A3BFAE9A7982F32779B
          F66D51B9FF006D5FF4DA287470335D862CDE4F2EC5771D4B0EC6948DDE570323
          B569919B860A956BD3EE49541DD01F1E1914BFB30E0512308EAF71BFAA133DE9
          CBBD6A22DEEAD71F5FCA6E9FF61E59550E432073EB1DC30E47452919D1239AF7
          1C1AA529478A06192DEC62F687EFAB432B6384A529B381470BECBF6CD9822522
          2ACC5AB4100E9A1FE419231FA88387EA3F8CBA53A7C2934EF7CBD4E8088EF9A2
          D19F143161D21ED924E9D28BACD54FB15F9E89CDB2CC74DDC509C57EF6F9E9F2
          CE4C4890BFC355FDC8046C9B36151F6EDE8419AB45762B5D4A89276E8BA23A03
          B989DA647118765F4DC502A7ECF9441FB8E97406B0658BAA724CB259F62D598A
          B5CB9721326F5E8C7965952E74EF7621B0B0BED7AF38180769DA9BA2C8FBBEC3
          C06E5DD1B0FD53A82FB22AEDC0C7BFFA0A73843276EADE15A5048CB4C1BA8237
          05F4A6FDD6B0338E145066AB52491BB585AA8D6E501F79F2E5C5B3E460E9FD25
          92ED228D49AD2F1F3A84ED2F2F43A356AD1051ADAA1EA761678CCC2D6C9A60CC
          68337AA7C4A6839B35815E6DAF1B5AAB168ADD5D1CDD2828A74BE77F0885D4CB
          D11855EB0114BEAB18BABCFEAAFAEEED3E03B0770F65482D37A92EF3A06CF957
          7A4E2E159607EF573516E7EC7E5F2DC08659B3B05734C299F4BE142CA8846E8A
          0A6E43CBDC3C652A3ED8BE1573366DD2D4433E1F56A51A728AEC3478E73B8A25
          5A1E24754F1C8657AF8188C82C18B9FB3DED354A343C257623B70A7C70AAEFE3
          61506319D3C03A7545474BC41C6AF7141B4CF6E2F306B25B937AFFFD1786366F
          897A221FD79F3C51516A6B9F7BB57DD332548B9CBDFBC5057877F5AB282614B4
          DB92C5EA1D049BE5823540CF67FF24D4F6CFC37FA0F1B3BD2C39D2AFF8108CFB
          048CDDF0887089DA5D9F090063E71E3D50B28B2852E1868267132D540137B9FF
          5BDA195718EEC02A55344B17904E7BE821449F3F8F8932EF28404F51985503DD
          525CBC9A3A6F9B351BEFAF5F8F1EC387894CFFB81EFB3F34ED344444AAC09892
          D1DB2ED8C88B5E6AD71E7FFCFA1BA69185F2A85DB7DB7279457FFB1D2689FADF
          FBB9C12848CF89F0CA5F962CC3AA050B31F08517908BAE407718BC4E322B07DC
          F4FDFEF90F86B57C1445EEAB86EEB4110A18F4E4F5C6701E29D1AC892C663A3D
          D9A4CE5131784E28A02353464CA34C495B9F747DC3C0C1F8EAA38F309D1A78CE
          6C42B5D36922CCE382456C18D2EE293CD1B9332AF7EAA1655D8FCDD5171C3841
          9196DAA547CB3A83448B2E5BB9323ACD992D5A7F06756E4C78106554FDF369EA
          F2E7AEF7307FC4288C9A3219591B3C6C98A66CF368CE6B421C8EBCBE010B66CC
          42B1AA55D17DEE0B6A2329AF5610FB57E015B0CC1791E6F0CFFB31E7CD8D5A49
          0933D83FAF130EF0C3BC17B156286B1F510A0BA8D30A7C8A4DCFE8DD57286377
          9416807AC203FB6361C1A08CF44DD3039399BE698A3C320F676413CC1A350A25
          45C3EE307F9EF2A0049CB76D289738FC27863ED646451ACDDCB5131E5158D43A
          FC735CC0D838756014C2E87384F8C2C43D0FA424186245A31E2D1AF3C342821B
          0C1CE81786E362314958C3D97F8E0ABB2515D4C77A41E4B9818F3443669115C6
          AD5BA76D6D2E433990C95B3F60B03A2F64F4D2A5C852B1BC06465C0286D6A983
          0801D418DACCB2C83D341D09E07F59B9062F8BB6D87DDC18146FD2487B0818E9
          F2D301F4EFD809F73FF8005A4F9CA07DB6045A741C5E9445F8EDF7839827AC16
          79730B38FCBA60B032EDB28B27325EDFD7FB30A847773CDDB70FEE11CD5D479B
          3803289679EC1C0F49A712420FD207A2B9CFA481B8F85D7AD20D63B015BEC58D
          75FC04C6366884EC2223F6DBB2491BE38D50B7808E71BED4064A42CC277B305A
          149C3255EF45E739B38CD03183220B7B1CD1F649B845F99B40D35ABA3043C6DE
          8BE90246BA03CB7631DC813630EA480447009B1EB35083515151C5212E63BEC8
          CD7F89A65FF5FE9A786CDC387D8298E93625971045729C10A3B8A8687415AA78
          57CB164890CD151ECCA6A94D73535F95325E098C5ECD26578A32F0D3677BD499
          1FCDDAB71391ED2256CD9D8FA3274EA0D7840928AA4E2035165C76CB6F5BB661
          E9F80988102AF644EF5E2852A238A24F9EC6AA254B5445FEFAAD5BA3FE90215A
          21726823F3A53D7B30AE6F7FC16124FA0CECAFA276DE1116F1A908F9854B9746
          8F55CBF53B4C8F85BC67FDA4C9F87AF316542A5F012DBB76512726BC262CF0D0
          9F47F0983CA3CA934F685FAE2D9E2F9957CC0E46A1447FC966982372E80852F6
          1AD50C85C2698056B3394BC3F568CD7BD6534FE3C4E1C398F1EEBB409EDCDAF0
          6B2854966D52E671A7881BDF086033267984F5BBD4E2788DA346286FF237DF95
          A37449F4676413E32085ADBF317112BEDCFA0E8A172F86C765A331746BBFCCD7
          BAD5AB45397461E61AB996A6328238996F3AC81D685F6B5BD4CEC8C50B91ADB2
          B0E9705B245534FDF25D715C3823E5EC8AD5ABA3ACC8959CE72FDFFF48C48743
          A26CBAD05414BDDA9457C38DA81D9FE63043843266CD79DD60B409DF8637E2EB
          65CBF1DAAA554A11E1AD39846C0F12B69AF981DA0648020789EFBEC72CF9FEC8
          A9D36A92797A1565B8DE2386238FC88C4A4375EB8565417946C0C47EBF1F3346
          8EC28533A7D5A29074376FD1020FF5EDABB4317F808211C92C54E9A7356BF18A
          50CE189F3E2D344226A3EFC891C82B5AB702BB52249CA1C463D8C7AF741FA1C4
          9FAE5889575E5E8AD9C2FA2264F1E10CF32B1FA6766BCC92CB904FBB3D544F44
          90242CA4792B22429DC46582D1D220650E7B3DF020B2C5C4223DE7D4DA18FE68
          291E2547F0E62C6580D18C50928DF7D7C6CD58307B36623CFAED0C6BAB56B316
          1E1F314C079CD06A6180E8E8DE2F31A17F7FC5A6AB77ECE017ADCC219893217D
          FE4414A9D532E6090B17206FC50AFE400C45CD139557E9E47BBBB0E6C5853873
          FA24128D43E769D8BEAB6C19741AFA1C1CD25F25979B722F89C5E933E8D1A429
          B2E7CC85296FBDA1398CF3DF064AD817CB8AA8E66EB9AC4723144CED44D34667
          5F5B33D297131717AD164245AE30CCCBEDB2CE0D4C6677334C39DC912A029AEF
          481F1E707DC8486FFE886CA9D834CF265491C5FED30E82836B0286671A15F8A5
          1950AAC89EC372210653D300058651DB5E58B228378C15ED0CF80F3E32C7E631
          D31B42985ACC307E97FFB89064E314F6A99EC1B971BBFDF36927FDA6A9859FB9
          CD736FFCEF0B880AF718611E0E4788793636BDE93BE7610094C979AD10231D9D
          EEF207023B1048C4BC46281EAF77B99347EAA7168C66006680D1D56E6A308E39
          0B25A79B5624AB53E605CA70EC0CB032396CF7F0F85C37BB65523E3EDFE5B4CC
          4DC1ACD67A0F8C307BE885B49B40AEBDCA728845C315EA7BDB911EE285C9CC40
          21DE63FDED309FE5F7257B8C7971294BA331FFA689C6A963092C2F886DDD92B3
          E5144E73B0AE0BFCDEAB0F33B6BE769B72A2DD23643B5B27D9816C3EFB33FDCF
          0D55E7DB06C6143A697F6EA842E1DE9417207090C98331FC4760786DAB1D9817
          A3E7C7A7FF3203201C29BCC30EEF209123E5C5B9DA787DFE7BD45439530841BB
          C2FC059051D373E5BCCAF7E6DFCE90EF0809EEE060C580675DA5C0BE75BDF3CA
          EB18EA19C11BECDA77BEBE2D188C2113B1EC2F740451BDD44C08FC9AA7E9D376
          A4348020790CF6EB0DFB5E4A93C13DEC3580E2DFA141197BC1E9062980318002
          A64E90496186433D10213685FDB2E494C44E61CC9322ACB909B13EF638832BBD
          2FD9B843119CA0F54DB636768214F48E6B39A52145367DD5BEA7727081B31C08
          0013A076761D102A653CDB0C4460732390559B977A6C7F070471D8BAEA45A08F
          37A5333EAD2931C4132BDBD3B608C1F7A68457B7ED7B6FD0B50EEB397E65D17C
          9F39FCB010630DA944D9AEB1B3563BD170D95E1E1C4414288621E426F15F6FC4
          BCE2C61E07F2EFC118C43210E2FAC03105EEF6408A1B146C6A7F8009E264D4D0
          7E009119146B7B4EB06264BE23205AE62A39D576F66F8915C6178E203886CAB5
          0EE5BF0DC87736288AD90F3B6B4DD62F67F2F9B4B3E0E06097608EE030AEB381
          587D9C0A169B7C7DCDB90C2152E1CAED4A94F25F5794F0BF3C85D4D66409ED21
          404BA526C1D00ECDE899B0305B9A24AC60021AC4D5C2A533343787CBEF41319F
          43CD9D9FB9C3AC3C62DD295343F7A92873758D321ABBFC2E3A63824CB7B6956A
          ABF29A93FC9AA8223586FBD0AEE59A79D3F64008F59E70BF715A45AC1B11DA66
          5AA98CD9B27F9A79C91CAFB2A6BBB4B9CC650B58B32352D9598DBE85B90373D5
          3D3ABD54BD53E563BB2DCD3C99EC6EE64D1B73673DC71182CD1B8B17D24E9B0A
          34FA0C5C3842884737058C819F0782D162291C7C6C1C964D9880CF3FFA585DD1
          FCB13668D6FB59BD004E232DE0C245CC1D39123F7FFDADBAA676E386684B43B9
          11CEA54C2AB1B158326A2CBEFE6C8F3ADEB765FB27D1B47B77BDD84E63B22F5F
          C68251A3F0FD175F2A903EDABE3D1A76E9622C9233E400CF1EF903D3FAF5473A
          8F4FD9FE9CF23BA32C32EDA5176453CC5ABF1E97FEFC13A39F7B4E19B0DD46EE
          33D324C265456305B053DE7A539B87A48F6FCC9D8F77B76E854F409733772E0C
          646816C3B59C06C54A48C0EB336660F7D62D0A24551FA885AEA347299B65A0AB
          D008218B8941CFA6CD31FFA597E0BEFB6E4DA88C795D336B263E7867873A083E
          47FEBC183A613CB2952EAD23CE1D4EBF49C7784ED7264DB164E54A388A14D6E9
          11C10121417F0780E8BF0663303093053007B30323DB4EBBD4BCCA883AA74F1F
          142D5102CDBB7557146191003377BEFC6835B0BF65E81DDDA2151AD47B08B508
          2EB96F9D4CEAC54B97D163FE5CBD9385724DEEDE0D552A5642830E1D14557961
          EC58757673E31E3DADB0A9A94F7540AD7BEFC5FDF444C8A22F18320CA5EF298F
          3ABD7AFAF3B68326D5177D19C77FDCAF4096E8742B837D8EE8584C98381E85EF
          AB890E13C62983FB915F0FA80055FED024159690849902B4B2356AE88C3A99F7
          05BD7A217BE6AC683B62B832FC3225A35FBF7E98B36C39228ADE051EEC396FF8
          3064C990091D060F5694FB4301FBBB6FBF8DA9EB5E5311404946569E8B1B303E
          11EBC68CC5373B7761E6AB6B8032A535458B89C5F35DBBE1CE6277A16DDF7ECA
          AE7BF6C71F3074C0002C5DFD0A9C458BEAC81F1836CFF878AC1C360CDF7FF209
          E6ACD36E4C15BA6758307C46B258489F76EA3198AA76C3C118FC61483072127E
          3F845E4F3DA5BD15EE702B0BB14BE3C67899D97F59B320F1C4090C6ADE12F3DE
          DBA5FDD46CC74EA24F0BA1060C3313EAE8E373BA74C522A6D02AAF8057E54C77
          69D61C2FBFB31D88CC8CF37FFC81099D3A63CE3BEFF8D31C8E1E47EF56ADB0E0
          C30FE41A8646D9EC7CAA39FDC66F935B094BF4EDDDABCE4F1EBB79B30A49B354
          7DD328CCF8CFAFBE56AEC431AFC9E2466644E2850BE8D9A4195EDEBE5D071E73
          B244ECF862CD6A1C38F2273A09701175096D1F7D14EB541048467D8D50B95E0F
          D6C1C235AF407697E146D3E174A7BED88B5DF2FC1F3FFE1853E9062C5F46BB2B
          FFFC0B9DDBB4C1F2F73FD0220F9F23F3BD6BEE5CC4C8F31E61429DE9A3978D7B
          42B8D2876F6DC4379F7E8619AFAF93F714D7EFF11A0BE80C9245AFAC68DF2A30
          5EC50E7945D3853F7149ED5E9994DFDE781B9F7FFE193ACC98AE59A561DD1FD1
          AA0D9E2385B8B72A12CF9C459F668F60317DBD9119F5F34E9E41F7475BE22506
          0408B5F861EDEBF8F9D75FF0C4F8B106BBF32979A9BFB09D6953A6227DD932F8
          60C37A9C3DF4075A0F7B0E9E8C19B49870295A45E58C7871BEF2016B39D519A4
          70D95814D99FC89B7D1B36C1F3B36723837299991E07833DABE8A2CBE8D5B829
          A62F5A888852A51465F60AD53FF5CBAFC85BB2840A4050D600A16007858D6E91
          0D3390D130040E81AF62197D86FC98801E751EC2E257B5CF997939E1942965D3
          F67CFC092C7A650D06D7AF8F99AB570B652CA593F72FC7E0A46CBE3CCCAD3665
          5AB9E7E757D7E19B1FBEC3539C6FF69BB2A66C80016D1EC79CD56BD0B76913CC
          23052E56543F2794172304E2FE23CA7875A378AAEE33C2CEB63F3F1359B365C3
          7DDDBBE8502B63C7AF1E310A152B56445946944B5BD0BB178A172D82FA3D7A28
          C0AE9B381519B264418B51C3D5B3DE1C3F1E458A1643A50EEDFDD984F29C8503
          07A161ED3A28DAB03E564E9E8C72A5CBA0729BD68817164930B82FC76291B0AE
          5A2D9AA15C830686C726108C04980200274A28D9AE95CBF1D3F73FA0DFACD92A
          842DC92CC0664E266BD62C5C8C8302BC9E2FCCF653263615012DCF734053B798
          784CEAD809F55B3C827B39D6B0307F4438952101EB07AB56E1BB2FBFC4000136
          E546B53144BC59326A241AB56A8D3B2A54C0809AF7630E8372058C2A1FD9F08C
          790C39D8652845E31E7B02ED3A754071D9DC6A0284CDBF28B2F753223B676100
          4A9DBA58BC6E2D50F4DAC0980C99D7814A154216F08E1B09F5901DD66059357C
          04EE11E1BD02535FDD062F10CAB069DA74E4C993473BF6F9D9A95318DBB1238E
          47E9824E250BDE89814B965A6C7BE9B37D51BB5E5D146FD95207501805AAD64C
          9C80F2C54BA0FCA32DF0C2A0C168D4A4314A3468A40A1028CE2A8BBD66DC7894
          A85C095585D292750584F91B73E0311754586DB7868DB168ED1AB80A1752148C
          6C31C00D19158DEEF51BE0A535BA8690CFEDB4B4528BEA1AE0F856AE59BB762D
          666E3122A89D7E3161D78637F0DACCD9C82877CC13A50285EFB472968F7DFC29
          B66FDB822E53A7A8CDD957E4D279AB08C6323AF8D7480B50C1089CEBE8787CB2
          6C1936EE7807B3DE78C3282503FCF1C107F8447E9E16B993E3ED71FFFD58CC54
          89BBEED2A00E658F0C00DBBF254E37038C41BB20D446B2FE6DB72D19E5F1D68C
          1A83F2B2B3CB3FDEDA0F4601E926D12673E5C889FB08C6CBD1E82732E3E0FEFD
          7047FD7A8A7D7D23EC66F38E1D18FFFA6BCA54B15CA81BC158B4593323F64F83
          7DCDA409285DE42E547AAC35E60D198A068D1AA244C306F0A433826F85D5AD19
          3F11C5A50FD55821C26138F34D6F024507D34CC3321F1B37E33559AC91A41E2A
          E4CD1FFEEF3042D97ED8BC05DB36BC89E1CB97AB5029AB1217A92CA99E2A7D97
          841F366DC2A2B973B0883225A3A7DD4189520C44909F4BFBBEC760A15E2F2E5B
          8A709119A9250F68F928E6AC7F5DE5F350E91958FD3ECC5EB5528151A74578FD
          F629D994FB5E598DD5CB576236236698B5C9E5267B7EF431CCD9B041E7B8CB3D
          7D6ADD8FF94C9C2B5E54170DB081D1B280DC6C30DE3405E64A178BBCB26DFA0C
          E4C89D1BD53B77D014CDA098AB478F46A5B2655146A8D53BB2A817FE3E86B614
          F099F1C67B63455BECD20D8DDAB743F9BA75B079F2541496852ADFEE8900CAB8
          5816F12199E0E28D1B62D59429285FAE1C2A0AF54C30D8B44B80FED2A021B85F
          2866E97A0FE3993A0F22CCA343B262E5390BB76E4178AE5C56C2FC28512E7AF4
          EC89820C490B735B43B142C8043C435BB7C6B3FDFBE3CE071F50A171FED26F5E
          8BF27FB6E4656C102D79CEABABE0C897DF6FB2B1EF6655F351DB093F1779F0B3
          DDEFE3FFB577ADB1511551F8DBED03148A148A18432208F84B2CE1196C282018
          A94A21468D48B42596129156C0421F2C2DA1A2B601A1140A2C8DD41A0C064DD4
          5A51D344C51F4040791584360589125F51A0F2285B683D33731F73EFDEBB7BB7
          6C5FDA9390D2DDB9F7CECCFDE69C3367BE739AB57D1B76E6ADC44334D6B16CF1
          30DFF2A60F2BC987CD2737A41763D3B33A8912CF73EFD6ADA8A9AAC6FAF72A44
          9A2E93A6EB28CBC844C298F188670B9829029F0F39E43FAF292E46F48471749F
          585816FE6C67B96D303AB6EAF28848D39CA10DCC912347F01C636747B9B5FA8F
          ABC831CF62A4DA71E3B029371749098918C9EA2092A6E11A8D7CBD7DE5E5F89B
          6030273D1D274813D59F3B8BA7F2F21426B9B84F1669D4D505F9E83B3A1EFBC8
          3C35FE72014F92866DA50D0C5FF557AE209B76DCCBD7AD431CABF475FEBC9EFE
          C982C3C3878A322D6C5372B9110B931EC776967B3378905ECD0CAA19BFC96BE1
          A4CF9E056FF5E73C1260C8AFE6454F6FE223DAF81CFDF63B14EE7C4730E2A3D4
          D201E09B15DFA5CB881E304068359700EFA5FD0751B06C194A6A6AB0F0D1193C
          6EC8E29CCD2CFC421666102DCE6602E645D2B05B99C9E79DBA85DDA4F5EB6A6B
          91BF835C9AFEFD8499E78BF91AD2A63E824845B1B17B45930F7F17F58F937C47
          0CC7FA3DBBB9E60FF452DBC39B0B7B4D6F7374DF904FCBE6D7A52458D5D563E9
          4B69D8C0AA90A9E4514650259FCBCB4AA70D884555F90E349DFF19CF90B6449F
          BEE24480768B65999998386736C692E9457D035ECDCC40C967D522B80C01B4F4
          A427E065C1E3D8FEB874B6016F2C5C84E24F3FE66553B8FCF627329267A19485
          40FAF5D1B593529E4373E27DCD683C7E0C9EA5AF6113AB19A4142E8A50193D10
          49F5570F1D822727171BD8CEDF7C8AE4BB81C3DBBCF89ADC8BE5EF567282B05A
          2495039F5526A3712CA6F9D8F9E55EE5FA080EAAFD74DDC95327905652AAC3BF
          45792E6934CFE444BC5E461B9C0963C4754DCDA8292DC5F10307C9B7F68A8039
          E71AAA2F48D9A96B7C4AD1BF1553A7A3B89CDA8F7A50A46EC0ED8FB47656919D
          034625E8FD56DA02C44F9A88A4F9A95C23551615F10AAEA9F9AB45C2D1C5BFB0
          88B457414101EE99369D5F5F5F55858D256F634BF51782D8492FCCF3620A664C
          9F86A9F3E6F1DFBD858588A19730373B471CC7D13D573FFD2C9267CEE4BB6E06
          9ECA5C0FFA939B909C97CD7DA466E87C40F5485C30B39B71E0C30F50FBC351A4
          AD2DD47361D4312A603C40BE59FD993378819EAD115D39765A78658D2CDAC5BE
          4C601B9E3819D7A344013EB6C968A1FBC50E19225C8194544C183D1AC92C0390
          B4F2EFC78E6255E612782B2BC8971B21343FAF25A4CC32F99F4B131EC6860AB1
          9BE6A6B5AE0E4BE6CE45E6E20CDC3F662C9AA2A3702342441922EFB813BDEFBB
          5737E52A1998FAFFCAE429D8B28B6D608629C9FA2A4224A22CBA2118E53E1B78
          846606F0D56B589F95851F69D2D9AB1B4F3BBA05856B0DE7B9BE730D58B33C07
          7F5CF8955780BDFF819158595C44E672B07E8CD6F80F8A6923D370F214FF7512
          01733E0374AF28FD38904CE09B64A67F3A7D9A2F9004F213533C1E51B94C2D06
          25CD84763E4BE66B57C946C4C4C420999DDEC8C769EA80E9FEBBC8078E8B8BC3
          63F3538C75BB699CDFBCBF1B7B4A36F1131A76BAC14A8AB07961601C386C288A
          589C909966DAA094AEC846EDE1EFF96D63EE1E88025AA0FD583100390D405DF4
          64A65349339693D98FA479611BAFAF366FC62715953C9786AF05161160A0A77F
          C3E24721AF6C8BF013E5501BF5F1F9C429A8A40D4C24F5478B2AC8B1568D2CD2
          8DC118B0618B52405E2E0A1F25880102B42D7AA17996B2C0DAB014D548B756CC
          5CCCB84888E72408F6E0E8DE0AC1402532E81B028D2ECF53432DA8FAFCC1128B
          46FEEB07FC1D9A82E3AA695799EF2A655F05A39CAAA15663D0983F2E852CE116
          A7223C074804D7795B56044035F92EB7DF697F84B258B8442B3B7232B982B421
          F5AD55F183D9BCB10A17EE487FAEA89A8F13210ADBCB6084FAFFEE06465BB142
          A91F1B59991E431B35CF59BDD648DF3296FC90E95916B47AF95926A6B7D52488
          C3A356686A0616F7355F6C2696B20F5C1238AC625F1A9D4D62BE1B3EB71A6B20
          91C71984790EF33B685FC005928E03A31ABF33C5265532A94A00D598CB8AC804
          5CD8B4E35113E5A74CD2058CF37E4BBA4F84C53D60FA5EFE1CD2FDACC44C6435
          7F2E8F411673293EB98F6E9888C4FA41BFE178957F249B65E8151FCC445E4D13
          9A78933AC3DF3AF7A723A403C0E820381AECB4DD09229CA2265CC79A56CF7705
          BA0E30D4CF09D4579BB1381AA2991360F56C47F1433DC5C1B018BAB79976F012
          CD391F66D6B2C17C592416F931B2E1DFC6EF596EFB36766097C9A68EC7696298
          CBE394AF31A868EB3EDABA125663D442557243FD7EC1D93616E3E9F2600CF540
          DDF4BD130A927D1B233882CD555BBFF7FBDCD14BB15F8481C61C0E4A9623BE61
          38B95F61922E0546BBCBAC7C46213A1843B5E4A180E076C1A8366FB5FCD646C9
          9BFBE2F78535D803BD4C975DC3FF0C18BB93DCCE0BB001A063CB15AA890B4790
          D916D981DC8DCE93AE0F46BBDEB555F5B982F8767695166C9E69C09861771A40
          AB051A8F23C7D0FEB9419F27E55E079AAACE5096E107A3DD8AEE80E3A4B649F8
          A9506195AE306F1D64D23B1D8CE19AEB506898C67676D98DEDD3CF50C6D39690
          4AC8FD74EAE32348BB3048D737D33DF2BF911E30F64897911E30F64897917F01
          B02F49515301B9010000000049454E44AE426082}
        Align = alClient
      end
    end
    object compDESCR: TUniPanel
      Left = 127
      Top = 0
      Width = 1021
      Height = 124
      Hint = 't1w200h0;'
      Align = alClient
      ParentFont = False
      Font.Height = -33
      TabOrder = 3
      Caption = 'CAIXA LIVRE'
      Color = 16249327
    end
  end
  object alertaM: TUniSFiGrowl
    Spacing = 4
    AlertSize = as_Regular
    FAIcon.Icon = fa_none
    FAIcon.Size = fs_32
    FAIcon.Color = fc_white
    iType = it_info
    AnimationEnable = True
    PlacementX = px_left
    Left = 656
    Top = 547
  end
  object alerta: TUniSFSweetAlert
    Tag = 800000
    Timer = 0
    IsHtmlJS = False
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancel'
    ConfirmButtonColor = '#3085d6'
    CancelButtonColor = '#d33'
    ShowConfirmButton = True
    ShowCancelButton = False
    Animation = True
    AlertType = atNone
    Position = top
    ImageWidth = 0
    ImageHeight = 0
    AllowOutsideClick = False
    AllowEscapeKey = False
    ScreenMask.Theme = ht_sk_rect
    Language = alPortuguese
    Left = 794
    Top = 462
  end
  object CDSTela_ant: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 543
    Top = 182
    object CDSTela_antid: TIntegerField
      FieldName = 'id'
    end
    object CDSTela_antcodpro: TStringField
      FieldName = 'codpro'
    end
    object CDSTela_antdescr: TStringField
      FieldName = 'descr'
    end
    object CDSTela_antmov: TFloatField
      FieldName = 'mov'
    end
    object CDSTela_antvaloru: TFloatField
      FieldName = 'valoru'
    end
    object CDSTela_anttotal: TFloatField
      FieldName = 'total'
    end
    object CDSTela_antativo: TStringField
      FieldName = 'ativo'
    end
    object CDSTela_antbotaoEditar: TAggregateField
      FieldName = 'botaoEditar'
      OnGetText = CDSTela_antbotaoEditarGetText
      DisplayName = ''
    end
    object CDSTela_anticoneAtivo: TAggregateField
      FieldName = 'iconeAtivo'
      OnGetText = CDSTela_anticoneAtivoGetText
      DisplayName = ''
    end
  end
  object DSTela: TDataSource
    DataSet = CDSTela
    Left = 759
    Top = 294
  end
  object CDSDados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 983
    Top = 334
    object AggregateField1: TAggregateField
      FieldName = 'botaoEditar'
      DisplayName = ''
    end
    object AggregateField2: TAggregateField
      FieldName = 'iconeAtivo'
      DisplayName = ''
    end
  end
  object RG1: TRGLayoutUnigui
    Enabled = False
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    HeightEntreCampos = 8
    WidthEntreCampos = 20
    Frame = Owner
    HeightCampos = 70
    TamanhoMinimoCampos = 100
    TopInicialCampos = 20
    Left = 64
    Top = 403
  end
  object CDSTela: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 895
    Top = 238
    object CDSTelaid: TStringField
      FieldName = 'id'
    end
    object CDSTelacodpro: TStringField
      FieldName = 'codpro'
    end
    object CDSTeladescr: TStringField
      FieldName = 'descr'
    end
    object CDSTelamov: TStringField
      FieldName = 'mov'
    end
    object CDSTelavaloru: TStringField
      FieldName = 'valoru'
    end
    object CDSTelatotal: TStringField
      FieldName = 'total'
    end
    object CDSTelaativo: TStringField
      FieldName = 'ativo'
    end
    object CDSTelavDesc: TFloatField
      FieldName = 'vDesc'
      Visible = False
    end
    object CDSTelabotaoEditar: TAggregateField
      FieldName = 'botaoEditar'
      OnGetText = CDSTelabotaoEditarGetText
      DisplayName = ''
    end
    object CDSTelaiconeAtivo: TAggregateField
      FieldName = 'iconeAtivo'
      OnGetText = CDSTelaiconeAtivoGetText
      DisplayName = ''
    end
  end
  object timerFocoItem: TUniTimer
    Enabled = False
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    OnTimer = timerFocoItemTimer
    Left = 411
    Top = 690
  end
end
