object fraConfiguracoesNfceF: TfraConfiguracoesNfceF
  Left = 0
  Top = 0
  Width = 1241
  Height = 1046
  OnCreate = UniFrameCreate
  OnReady = UniFrameReady
  TabOrder = 0
  object scrFundo: TUniScrollBox
    Left = 0
    Top = 40
    Width = 1241
    Height = 1006
    Hint = ''
    Align = alClient
    TabOrder = 0
    object pgcTela: TUniPageControl
      Left = 0
      Top = 0
      Width = 1239
      Height = 1004
      Hint = ''
      ActivePage = tsDetalhe
      TabBarVisible = False
      Align = alClient
      TabOrder = 0
      object tsListagem: TUniTabSheet
        Hint = ''
        Caption = 'Listagem'
        object cpPesquisa: TUniContainerPanel
          AlignWithMargins = True
          Left = 0
          Top = 3
          Width = 1231
          Height = 65
          Hint = ''
          Margins.Left = 0
          Margins.Right = 0
          ParentColor = False
          Color = clWhite
          Align = alTop
          TabOrder = 0
          LayoutConfig.Cls = 'painel-sem-borda'
          object UniContainerPanel22: TUniContainerPanel
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 183
            Height = 65
            Hint = ''
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 0
            ParentColor = False
            Color = clWhite
            Align = alLeft
            TabOrder = 1
            LayoutConfig.Cls = 'painel-sem-borda'
            object lblFiltro: TUniSFLabel
              AlignWithMargins = True
              Left = 3
              Top = 5
              Width = 124
              Height = 16
              Hint = ''
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'PESQUISA USU'#193'RIO'
              Align = alTop
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 1
              StyleLabel.Model = lm_none
              StyleLabel.Theme = lt_primary
              FAIcon.Icon = fa_none
              FAIcon.Size = fs_16
              FAIcon.Color = fc_white
            end
            object UniContainerPanel23: TUniContainerPanel
              AlignWithMargins = True
              Left = 3
              Top = 26
              Width = 175
              Height = 34
              Hint = ''
              Margins.Top = 0
              Margins.Right = 5
              Margins.Bottom = 5
              ParentColor = False
              Color = clWhite
              Align = alClient
              TabOrder = 2
              LayoutConfig.Cls = 'painel-com-borda-m'
              object UniSFLabel2: TUniSFLabel
                Left = 197
                Top = 36
                Width = 33
                Height = 23
                Cursor = crHandPoint
                Hint = ''
                AutoSize = False
                Caption = ''
                TabOrder = 1
                LayoutConfig.Cls = 'avatar40'
                StyleLabel.Model = lm_none
                StyleLabel.Theme = lt_primary
                FAIcon.Icon = fa_search
                FAIcon.Size = fs_16
                FAIcon.Color = fc_grey
              end
              object edPesquisar: TUniEdit
                Left = 0
                Top = 0
                Width = 175
                Height = 34
                Hint = ''
                CharCase = ecUpperCase
                MaxLength = 150
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 2
                EmptyText = 'Digite aqui...'
                ClientEvents.UniEvents.Strings = (
                  
                    'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  //$("#" + send' +
                    'er.id + "-inputEl").mask('#39'A'#39', {'#13#10'  //translation: {'#13#10'    //A: { ' +
                    'pattern: /^[A-Za-z'#225#224#226#227#233#232#234#237#239#243#244#245#246#250#231#241#193#192#194#195#201#200#205#207#211#212#213#214#218#199#209'\s]+$/g, recurs' +
                    'ive: true },'#13#10'  //},'#13#10'//});  '#13#10'  '#13#10'}')
              end
            end
          end
          object UniPanel80: TUniPanel
            Left = 188
            Top = 0
            Width = 167
            Height = 65
            Hint = 't1w150h0;'
            Align = alLeft
            TabOrder = 2
            Caption = ''
            Color = clWhite
            object btnPesquisar: TUniSFBitBtn
              AlignWithMargins = True
              Left = 6
              Top = 6
              Width = 155
              Height = 53
              Hint = ''
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              ParentShowHint = False
              Caption = 'Pesquisar'
              Align = alClient
              TabOrder = 1
              Scale = bbsSmall
              LayoutConfig.Cls = 'botaoSemBorda'
              OnClick = btnPesquisarClick
              FAIcon.Icon = fa_check_circle
              FAIcon.Size = fs_16
              FAIcon.Color = fc_grey
              FAIcon.Style = regular
              ButtonStyles = bs_default
            end
          end
        end
        object gridTela: TUniDBGrid
          Left = 0
          Top = 71
          Width = 1231
          Height = 905
          Hint = ''
          DataSource = DSTela
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
          LoadMask.Message = 'Loading data...'
          ForceFit = True
          LayoutConfig.Cls = 'dbgrid-light responsiva mostrar-mobile'
          Align = alClient
          TabOrder = 1
          OnCellClick = gridTelaCellClick
          OnDrawColumnCell = gridTelaDrawColumnCell
          Columns = <
            item
              FieldName = 'id'
              Title.Caption = 'Id'
              Width = 50
            end
            item
              FieldName = 'usuario'
              Title.Caption = 'Usu'#225'rio'
              Width = 50
            end
            item
              FieldName = 'iconeAtivo'
              Title.Caption = ' AT'
              Width = 64
            end
            item
              FieldName = 'ativo'
              Title.Caption = 'ativo'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'botaoEditar'
              Title.Caption = ' '
              Width = 80
            end>
        end
      end
      object tsDetalhe: TUniTabSheet
        Hint = ''
        Caption = 'tsDetalhe'
        object UniPanel2: TUniPanel
          Left = 0
          Top = 0
          Width = 1231
          Height = 976
          Hint = ''
          Align = alClient
          TabOrder = 0
          Caption = ''
          object UniScrollBox1: TUniScrollBox
            Left = 1
            Top = 1
            Width = 1229
            Height = 974
            Hint = ''
            Align = alClient
            TabOrder = 1
            ScrollHeight = 108
            object UniContainerPanel1: TUniContainerPanel
              AlignWithMargins = True
              Left = 0
              Top = 3
              Width = 1227
              Height = 65
              Hint = ''
              Margins.Left = 0
              Margins.Right = 0
              ParentColor = False
              Color = clWhite
              Align = alTop
              TabOrder = 0
              LayoutConfig.Cls = 'painel-sem-borda'
              object UniContainerPanel2: TUniContainerPanel
                AlignWithMargins = True
                Left = 0
                Top = 0
                Width = 265
                Height = 65
                Hint = ''
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 5
                Margins.Bottom = 0
                ParentColor = False
                Color = clWhite
                Align = alLeft
                TabOrder = 1
                LayoutConfig.Cls = 'painel-sem-borda'
                object UniSFLabel3: TUniSFLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 5
                  Width = 57
                  Height = 16
                  Hint = ''
                  Margins.Top = 5
                  Margins.Bottom = 5
                  Caption = 'USU'#193'RIO'
                  Align = alTop
                  ParentFont = False
                  Font.Height = -13
                  Font.Style = [fsBold]
                  TabOrder = 1
                  StyleLabel.Model = lm_none
                  StyleLabel.Theme = lt_primary
                  FAIcon.Icon = fa_none
                  FAIcon.Size = fs_16
                  FAIcon.Color = fc_white
                end
                object UniContainerPanel3: TUniContainerPanel
                  AlignWithMargins = True
                  Left = 3
                  Top = 26
                  Width = 257
                  Height = 34
                  Hint = ''
                  Margins.Top = 0
                  Margins.Right = 5
                  Margins.Bottom = 5
                  ParentColor = False
                  Color = clWhite
                  Align = alClient
                  TabOrder = 2
                  LayoutConfig.Cls = 'painel-com-borda-m'
                  object UniSFLabel4: TUniSFLabel
                    Left = 197
                    Top = 36
                    Width = 33
                    Height = 23
                    Cursor = crHandPoint
                    Hint = ''
                    AutoSize = False
                    Caption = ''
                    TabOrder = 1
                    LayoutConfig.Cls = 'avatar40'
                    StyleLabel.Model = lm_none
                    StyleLabel.Theme = lt_primary
                    FAIcon.Icon = fa_search
                    FAIcon.Size = fs_16
                    FAIcon.Color = fc_grey
                  end
                  object compUSUARIO: TUniEdit
                    Left = 0
                    Top = 0
                    Width = 257
                    Height = 34
                    Hint = ''
                    CharCase = ecUpperCase
                    MaxLength = 150
                    BorderStyle = ubsNone
                    Text = ''
                    ParentFont = False
                    Font.Height = -16
                    Align = alClient
                    TabOrder = 2
                    EmptyText = 'Digite aqui...'
                    ReadOnly = True
                    ClientEvents.UniEvents.Strings = (
                      
                        'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  //$("#" + send' +
                        'er.id + "-inputEl").mask('#39'A'#39', {'#13#10'  //translation: {'#13#10'    //A: { ' +
                        'pattern: /^[A-Za-z'#225#224#226#227#233#232#234#237#239#243#244#245#246#250#231#241#193#192#194#195#201#200#205#207#211#212#213#214#218#199#209'\s]+$/g, recurs' +
                        'ive: true },'#13#10'  //},'#13#10'//});  '#13#10'  '#13#10'}')
                  end
                end
              end
              object UniPanel3: TUniPanel
                Left = 358
                Top = 0
                Width = 249
                Height = 65
                Hint = 't1w150h0;'
                Align = alLeft
                TabOrder = 2
                Caption = ''
                Color = clWhite
                object UniSFBitBtn3: TUniSFBitBtn
                  AlignWithMargins = True
                  Left = 6
                  Top = 6
                  Width = 237
                  Height = 53
                  Hint = ''
                  Margins.Left = 5
                  Margins.Top = 5
                  Margins.Right = 5
                  Margins.Bottom = 5
                  ParentShowHint = False
                  Caption = 'Replicar para todos os usu'#225'rios'
                  Align = alClient
                  TabOrder = 1
                  Scale = bbsSmall
                  LayoutConfig.Cls = 'botaoSemBorda'
                  OnClick = UniSFBitBtn3Click
                  FAIcon.Icon = fa_check_circle
                  FAIcon.Size = fs_16
                  FAIcon.Color = fc_grey
                  FAIcon.Style = regular
                  ButtonStyles = bs_default
                end
              end
              object UniContainerPanel19: TUniContainerPanel
                AlignWithMargins = True
                Left = 270
                Top = 0
                Width = 83
                Height = 65
                Hint = ''
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 5
                Margins.Bottom = 0
                ParentColor = False
                Color = clWhite
                Align = alLeft
                TabOrder = 3
                LayoutConfig.Cls = 'painel-sem-borda'
                object UniSFLabel5: TUniSFLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 5
                  Width = 14
                  Height = 16
                  Hint = ''
                  Margins.Top = 5
                  Margins.Bottom = 5
                  Caption = 'ID'
                  Align = alTop
                  ParentFont = False
                  Font.Height = -13
                  Font.Style = [fsBold]
                  TabOrder = 1
                  StyleLabel.Model = lm_none
                  StyleLabel.Theme = lt_primary
                  FAIcon.Icon = fa_none
                  FAIcon.Size = fs_16
                  FAIcon.Color = fc_white
                end
                object UniContainerPanel20: TUniContainerPanel
                  AlignWithMargins = True
                  Left = 3
                  Top = 26
                  Width = 75
                  Height = 34
                  Hint = ''
                  Margins.Top = 0
                  Margins.Right = 5
                  Margins.Bottom = 5
                  ParentColor = False
                  Color = clWhite
                  Align = alClient
                  TabOrder = 2
                  LayoutConfig.Cls = 'painel-com-borda-m'
                  object UniSFLabel6: TUniSFLabel
                    Left = 197
                    Top = 36
                    Width = 33
                    Height = 23
                    Cursor = crHandPoint
                    Hint = ''
                    AutoSize = False
                    Caption = ''
                    TabOrder = 1
                    LayoutConfig.Cls = 'avatar40'
                    StyleLabel.Model = lm_none
                    StyleLabel.Theme = lt_primary
                    FAIcon.Icon = fa_search
                    FAIcon.Size = fs_16
                    FAIcon.Color = fc_grey
                  end
                  object compID: TUniEdit
                    Left = 0
                    Top = 0
                    Width = 75
                    Height = 34
                    Hint = ''
                    CharCase = ecUpperCase
                    MaxLength = 150
                    BorderStyle = ubsNone
                    Text = ''
                    ParentFont = False
                    Font.Height = -16
                    Align = alClient
                    TabOrder = 2
                    EmptyText = 'Digite aqui...'
                    ReadOnly = True
                    ClientEvents.UniEvents.Strings = (
                      
                        'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  //$("#" + send' +
                        'er.id + "-inputEl").mask('#39'A'#39', {'#13#10'  //translation: {'#13#10'    //A: { ' +
                        'pattern: /^[A-Za-z'#225#224#226#227#233#232#234#237#239#243#244#245#246#250#231#241#193#192#194#195#201#200#205#207#211#212#213#214#218#199#209'\s]+$/g, recurs' +
                        'ive: true },'#13#10'  //},'#13#10'//});  '#13#10'  '#13#10'}')
                  end
                end
              end
            end
            object pgcTelaDetalhe: TUniPageControl
              AlignWithMargins = True
              Left = 3
              Top = 74
              Width = 1221
              Height = 855
              Hint = ''
              ActivePage = tsGeral
              Align = alClient
              TabOrder = 1
              object tsGeral: TUniTabSheet
                Hint = ''
                Caption = 'Geral'
                object UniPanel17: TUniPanel
                  Left = 0
                  Top = 0
                  Width = 1213
                  Height = 827
                  Hint = ''
                  Align = alClient
                  TabOrder = 0
                  Caption = ''
                  object UniScrollBox5: TUniScrollBox
                    Left = 1
                    Top = 1
                    Width = 1211
                    Height = 825
                    Hint = ''
                    Align = alClient
                    TabOrder = 1
                    ScrollHeight = 636
                    ScrollWidth = 838
                    object UniPanel1: TUniPanel
                      Left = 128
                      Top = 3
                      Width = 180
                      Height = 70
                      Hint = 't1w180h0;'
                      TabOrder = 0
                      Caption = ''
                      Color = 16249327
                      object compNUMEROCAIXA: TUniEdit
                        Left = 1
                        Top = 28
                        Width = 178
                        Height = 41
                        Hint = ''
                        CharCase = ecUpperCase
                        MaxLength = 150
                        BorderStyle = ubsNone
                        Text = ''
                        ParentFont = False
                        Font.Height = -16
                        Align = alClient
                        TabOrder = 1
                      end
                      object UniContainerPanel4: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 178
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
                        object UniLabel1: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 93
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'N'#250'mero do caixa'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                    end
                    object UniPanel11: TUniPanel
                      Left = 14
                      Top = 166
                      Width = 725
                      Height = 2
                      Hint = 't2w2075h2;'
                      TabOrder = 1
                      Caption = ''
                      Color = 16249327
                      object UniPanel12: TUniPanel
                        Left = 0
                        Top = 0
                        Width = 725
                        Height = 2
                        Hint = 't2w2075h2;'
                        TabOrder = 1
                        Caption = ''
                        Color = 16249327
                      end
                    end
                    object UniPanel13: TUniPanel
                      Left = 14
                      Top = 254
                      Width = 725
                      Height = 2
                      Hint = 't2w2075h2;'
                      TabOrder = 2
                      Caption = ''
                      Color = 16249327
                    end
                    object UniPanel23: TUniPanel
                      Left = 314
                      Top = 3
                      Width = 118
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 3
                      Caption = ''
                      Color = clWhite
                      object compVENDEDOR: TUniEdit
                        Left = 1
                        Top = 28
                        Width = 76
                        Height = 41
                        Hint = ''
                        MaxLength = 4
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
                      object UniContainerPanel29: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 116
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
                        object UniLabel22: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 53
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Vendedor'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object UniSFBitBtn10: TUniSFBitBtn
                        AlignWithMargins = True
                        Left = 82
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
                        OnClick = UniSFBitBtn10Click
                        FAIcon.Icon = fa_search
                        FAIcon.Size = fs_16
                        FAIcon.Color = fc_grey
                        ButtonStyles = bs_transparent
                      end
                    end
                    object UniPanel24: TUniPanel
                      Left = 3
                      Top = 3
                      Width = 119
                      Height = 70
                      Hint = 't1w180h0;'
                      TabOrder = 4
                      Caption = ''
                      Color = 16249327
                      object UniContainerPanel30: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 117
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel23: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 98
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = #201' ponto de venda'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compPONTODEVENDA: TUniFSToggle
                        AlignWithMargins = True
                        Left = 11
                        Top = 33
                        Width = 97
                        Height = 31
                        Hint = ''
                        Margins.Left = 10
                        Margins.Top = 5
                        Margins.Right = 10
                        Margins.Bottom = 5
                        ThemeOn = Success
                        ThemeOff = Gray
                        TitleOn = 'Sim'
                        TitleOff = 'N'#227'o'
                        Align = alClient
                      end
                    end
                    object UniPanel26: TUniPanel
                      Left = 14
                      Top = 79
                      Width = 725
                      Height = 2
                      Hint = 't2w2075h2;'
                      TabOrder = 5
                      Caption = ''
                      Color = 16249327
                    end
                    object UniPanel4: TUniPanel
                      Left = 438
                      Top = 3
                      Width = 400
                      Height = 70
                      Hint = 't1w500h0;'
                      TabOrder = 6
                      Caption = ''
                      Color = 16249327
                      object compNOMVEND: TUniEdit
                        Left = 1
                        Top = 28
                        Width = 398
                        Height = 41
                        Hint = ''
                        CharCase = ecUpperCase
                        MaxLength = 150
                        BorderStyle = ubsNone
                        Text = ''
                        ParentFont = False
                        Font.Height = -16
                        Align = alClient
                        TabOrder = 1
                        ReadOnly = True
                      end
                      object UniContainerPanel5: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 398
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
                      end
                    end
                    object UniPanel5: TUniPanel
                      Left = 3
                      Top = 87
                      Width = 118
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 7
                      Caption = ''
                      Color = clWhite
                      object compCODCC: TUniEdit
                        Left = 1
                        Top = 28
                        Width = 76
                        Height = 41
                        Hint = ''
                        MaxLength = 4
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
                      object UniContainerPanel6: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 116
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
                        object UniLabel2: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 88
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Centro de custo'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object UniSFBitBtn2: TUniSFBitBtn
                        AlignWithMargins = True
                        Left = 82
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
                        OnClick = UniSFBitBtn2Click
                        FAIcon.Icon = fa_search
                        FAIcon.Size = fs_16
                        FAIcon.Color = fc_grey
                        ButtonStyles = bs_transparent
                      end
                    end
                    object UniPanel6: TUniPanel
                      Left = 128
                      Top = 87
                      Width = 181
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 8
                      Caption = ''
                      Color = clWhite
                      object UniContainerPanel7: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 179
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel3: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 34
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Tabela'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compTABELA: TUniSFComboBox
                        Left = 3
                        Top = 36
                        Width = 174
                        Hint = ''
                        Text = ''
                        TabOrder = 2
                        Items.Strings = (
                          'CUSTO'
                          'PRE'#199'O 2'
                          'PRE'#199'O 3'
                          'PRE'#199'O 4'
                          'PRE'#199'O 5'
                          'PRE'#199'O 6')
                        Groups = <>
                        Options.Placeholders = 'Selecione'
                        Options.noResults = 'No Results Found'
                      end
                    end
                    object UniPanel7: TUniPanel
                      Left = 314
                      Top = 87
                      Width = 118
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 9
                      Caption = ''
                      Color = clWhite
                      object compCODBAN: TUniEdit
                        Left = 1
                        Top = 28
                        Width = 76
                        Height = 41
                        Hint = ''
                        MaxLength = 4
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
                      object UniContainerPanel8: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 116
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
                        object UniLabel4: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 33
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Banco'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object UniSFBitBtn4: TUniSFBitBtn
                        AlignWithMargins = True
                        Left = 82
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
                        OnClick = UniSFBitBtn4Click
                        FAIcon.Icon = fa_search
                        FAIcon.Size = fs_16
                        FAIcon.Color = fc_grey
                        ButtonStyles = bs_transparent
                      end
                    end
                    object UniPanel8: TUniPanel
                      Left = 3
                      Top = 178
                      Width = 118
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 10
                      Caption = ''
                      Color = clWhite
                      object compCODCFOP: TUniEdit
                        Left = 1
                        Top = 28
                        Width = 76
                        Height = 41
                        Hint = ''
                        MaxLength = 4
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
                      object UniContainerPanel9: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 116
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
                        object UniLabel5: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 31
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'CFOP'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object UniSFBitBtn5: TUniSFBitBtn
                        AlignWithMargins = True
                        Left = 82
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
                        OnClick = UniSFBitBtn5Click
                        FAIcon.Icon = fa_search
                        FAIcon.Size = fs_16
                        FAIcon.Color = fc_grey
                        ButtonStyles = bs_transparent
                      end
                    end
                    object UniPanel9: TUniPanel
                      Left = 128
                      Top = 178
                      Width = 181
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 11
                      Caption = ''
                      Color = clWhite
                      object UniContainerPanel10: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 179
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel6: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 52
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Desconto'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compTIPODESCONTO: TUniSFComboBox
                        Left = 3
                        Top = 36
                        Width = 174
                        Hint = ''
                        Text = ''
                        TabOrder = 2
                        Items.Strings = (
                          'Porcentagem'
                          'Valor'
                          'Todos')
                        Groups = <>
                        Options.Placeholders = 'Selecione'
                        Options.noResults = 'No Results Found'
                      end
                    end
                    object UniPanel18: TUniPanel
                      Left = 3
                      Top = 262
                      Width = 119
                      Height = 70
                      Hint = 't1w180h0;'
                      TabOrder = 12
                      Caption = ''
                      Color = 16249327
                      object UniContainerPanel12: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 117
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel8: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 90
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Conta conciliada'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compCONTACONCILIADA: TUniFSToggle
                        AlignWithMargins = True
                        Left = 11
                        Top = 33
                        Width = 97
                        Height = 31
                        Hint = ''
                        Margins.Left = 10
                        Margins.Top = 5
                        Margins.Right = 10
                        Margins.Bottom = 5
                        ThemeOn = Success
                        ThemeOff = Gray
                        TitleOn = 'Sim'
                        TitleOff = 'N'#227'o'
                        Align = alClient
                      end
                    end
                    object UniPanel19: TUniPanel
                      Left = 128
                      Top = 262
                      Width = 303
                      Height = 70
                      Hint = 't1w180h0;'
                      TabOrder = 13
                      Caption = ''
                      Color = 16249327
                      object compDIASALTF12VENDAS: TUniEdit
                        Left = 1
                        Top = 28
                        Width = 301
                        Height = 41
                        Hint = ''
                        CharCase = ecUpperCase
                        MaxLength = 150
                        BorderStyle = ubsNone
                        Text = ''
                        ParentFont = False
                        Font.Height = -16
                        Align = alClient
                        TabOrder = 1
                      end
                      object UniContainerPanel13: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 301
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
                        object UniLabel9: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 223
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'N'#250'mero de dias a apresentar em vendas'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                    end
                    object UniPanel20: TUniPanel
                      Left = 14
                      Top = 338
                      Width = 725
                      Height = 2
                      Hint = 't2w2075h2;'
                      TabOrder = 14
                      Caption = ''
                      Color = 16249327
                    end
                    object UniContainerPanel75: TUniContainerPanel
                      Left = 3
                      Top = 349
                      Width = 834
                      Height = 27
                      Hint = ''
                      Margins.Left = 8
                      Margins.Top = 5
                      Margins.Right = 12
                      Margins.Bottom = 5
                      ParentColor = False
                      TabOrder = 15
                      TabStop = False
                      LayoutConfig.Cls = 'body_grdnt_rounded'
                      object UniLabel56: TUniLabel
                        AlignWithMargins = True
                        Left = 10
                        Top = 3
                        Width = 244
                        Height = 17
                        Hint = ''
                        Margins.Left = 10
                        Caption = 'EXIBE MENSAGEM DE CONFIRMA'#199#195'O'
                        Align = alTop
                        ParentFont = False
                        Font.Color = clBlack
                        Font.Height = -13
                        Font.Name = 'Segoe UI Light'
                        Font.Style = [fsBold]
                        TabOrder = 1
                      end
                    end
                    object UniPanel30: TUniPanel
                      Left = 10
                      Top = 473
                      Width = 725
                      Height = 2
                      Hint = 't2w2075h2;'
                      TabOrder = 16
                      Caption = ''
                      Color = 16249327
                    end
                    object UniPanel31: TUniPanel
                      Left = 15
                      Top = 558
                      Width = 725
                      Height = 2
                      Hint = 't2w2075h2;'
                      TabOrder = 17
                      Caption = ''
                      Color = 16249327
                    end
                    object UniPanel29: TUniPanel
                      Left = 3
                      Top = 566
                      Width = 234
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 18
                      Caption = ''
                      Color = clWhite
                      object UniContainerPanel18: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 232
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel14: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 134
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Confirma concluir venda'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compCONFIRMACONCLUIRVENDA: TUniSFComboBox
                        Left = 3
                        Top = 36
                        Width = 222
                        Hint = ''
                        Text = ''
                        TabOrder = 2
                        Items.Strings = (
                          'Sempre perguntar'
                          'Sempre gerar'
                          'Nunca gerar')
                        Groups = <>
                        Options.Placeholders = 'Selecione'
                        Options.noResults = 'No Results Found'
                      end
                    end
                    object UniPanel28: TUniPanel
                      Left = 245
                      Top = 482
                      Width = 234
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 19
                      Caption = ''
                      Color = clWhite
                      object UniContainerPanel17: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 232
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel13: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 192
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Confirma imprimir venda n'#227'o fiscal'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compCONFIRMAIMPRIMIRVENDA: TUniSFComboBox
                        Left = 3
                        Top = 36
                        Width = 222
                        Hint = ''
                        Text = ''
                        TabOrder = 2
                        Items.Strings = (
                          'Sempre perguntar'
                          'Sempre gerar'
                          'Nunca gerar')
                        Groups = <>
                        Options.Placeholders = 'Selecione'
                        Options.noResults = 'No Results Found'
                      end
                    end
                    object UniPanel27: TUniPanel
                      Left = 3
                      Top = 482
                      Width = 234
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 20
                      Caption = ''
                      Color = clWhite
                      object UniContainerPanel16: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 232
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel12: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 155
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Confirma gerar cupom fiscal'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compconfirmaGerarCupom: TUniSFComboBox
                        Left = 3
                        Top = 36
                        Width = 222
                        Hint = ''
                        Text = ''
                        TabOrder = 2
                        Items.Strings = (
                          'Sempre perguntar'
                          'Sempre gerar'
                          'Nunca gerar')
                        Groups = <>
                        Options.Placeholders = 'Selecione'
                        Options.noResults = 'No Results Found'
                      end
                    end
                    object UniPanel22: TUniPanel
                      Left = 3
                      Top = 398
                      Width = 234
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 21
                      Caption = ''
                      Color = clWhite
                      object UniContainerPanel14: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 232
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel10: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 112
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Confirma gerar caixa'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compCONFIRMAGERARCAIXA: TUniSFComboBox
                        Left = 3
                        Top = 36
                        Width = 222
                        Hint = ''
                        Text = ''
                        TabOrder = 2
                        Items.Strings = (
                          'Sempre perguntar'
                          'Sempre gerar'
                          'Nunca gerar')
                        Groups = <>
                        Options.Placeholders = 'Selecione'
                        Options.noResults = 'No Results Found'
                      end
                    end
                    object UniPanel25: TUniPanel
                      Left = 245
                      Top = 398
                      Width = 234
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 22
                      Caption = ''
                      Color = clWhite
                      object UniContainerPanel15: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 232
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel11: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 130
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Confirma gerar estoque'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compCONFIRMAGERARESTOQUE: TUniSFComboBox
                        Left = 3
                        Top = 36
                        Width = 222
                        Hint = ''
                        Text = ''
                        TabOrder = 2
                        Items.Strings = (
                          'Sempre perguntar'
                          'Sempre gerar'
                          'Nunca gerar')
                        Groups = <>
                        Options.Placeholders = 'Selecione'
                        Options.noResults = 'No Results Found'
                      end
                    end
                    object UniPanel21: TUniPanel
                      Left = 16
                      Top = 388
                      Width = 725
                      Height = 2
                      Hint = 't2w2075h2;'
                      TabOrder = 23
                      Caption = ''
                      Color = 16249327
                    end
                    object UniPanel10: TUniPanel
                      Left = 315
                      Top = 178
                      Width = 118
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 24
                      Caption = ''
                      Color = clWhite
                      object compCODDEP: TUniEdit
                        Left = 1
                        Top = 28
                        Width = 76
                        Height = 41
                        Hint = ''
                        MaxLength = 4
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
                      object UniContainerPanel11: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 116
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
                        object UniLabel7: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 80
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Departamento'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object UniSFBitBtn6: TUniSFBitBtn
                        AlignWithMargins = True
                        Left = 82
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
                        OnClick = UniSFBitBtn6Click
                        FAIcon.Icon = fa_search
                        FAIcon.Size = fs_16
                        FAIcon.Color = fc_grey
                        ButtonStyles = bs_transparent
                      end
                    end
                  end
                end
              end
              object tsFechamentoCaixa: TUniTabSheet
                Hint = ''
                Caption = 'Fechamento de caixa - sangria / refor'#231'os'
                object UniPanel14: TUniPanel
                  Left = 0
                  Top = 0
                  Width = 1213
                  Height = 827
                  Hint = ''
                  Align = alClient
                  TabOrder = 0
                  Caption = ''
                  object UniScrollBox2: TUniScrollBox
                    Left = 1
                    Top = 1
                    Width = 1211
                    Height = 825
                    Hint = ''
                    Align = alClient
                    TabOrder = 1
                    ScrollHeight = 764
                    ScrollWidth = 977
                    object UniContainerPanel21: TUniContainerPanel
                      Left = 0
                      Top = 0
                      Width = 1209
                      Height = 27
                      Hint = ''
                      Margins.Left = 8
                      Margins.Top = 5
                      Margins.Right = 12
                      Margins.Bottom = 5
                      ParentColor = False
                      Align = alTop
                      TabOrder = 0
                      TabStop = False
                      LayoutConfig.Cls = 'body_grdnt_rounded'
                      object UniLabel15: TUniLabel
                        AlignWithMargins = True
                        Left = 10
                        Top = 3
                        Width = 272
                        Height = 17
                        Hint = ''
                        Margins.Left = 10
                        Caption = 'CONFIGURA'#199#213'ES DA CONTA DE SANGRIA'
                        Align = alTop
                        ParentFont = False
                        Font.Color = clBlack
                        Font.Height = -13
                        Font.Name = 'Segoe UI Light'
                        Font.Style = [fsBold]
                        TabOrder = 1
                      end
                    end
                    object UniPanel32: TUniPanel
                      Left = 3
                      Top = 30
                      Width = 118
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 1
                      Caption = ''
                      Color = clWhite
                      object compSTR_CODPRSANGRIA: TUniEdit
                        Left = 1
                        Top = 28
                        Width = 76
                        Height = 41
                        Hint = ''
                        MaxLength = 4
                        BorderStyle = ubsNone
                        Text = ''
                        ParentFont = False
                        Font.Height = -16
                        TabOrder = 1
                        ClientEvents.UniEvents.Strings = (
                          
                            'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
                            '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
                            'n: /^[0-9\s]+$/g, recursive: true },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
                      end
                      object UniContainerPanel25: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 116
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
                        object UniLabel16: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 80
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Departamento'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object UniSFBitBtn7: TUniSFBitBtn
                        AlignWithMargins = True
                        Left = 82
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
                        OnClick = UniSFBitBtn7Click
                        FAIcon.Icon = fa_search
                        FAIcon.Size = fs_16
                        FAIcon.Color = fc_grey
                        ButtonStyles = bs_transparent
                      end
                    end
                    object UniPanel33: TUniPanel
                      Left = 128
                      Top = 30
                      Width = 400
                      Height = 70
                      Hint = 't1w500h0;'
                      TabOrder = 2
                      Caption = ''
                      Color = 16249327
                      object UniEdit2: TUniEdit
                        Left = 1
                        Top = 28
                        Width = 398
                        Height = 41
                        Hint = ''
                        CharCase = ecUpperCase
                        MaxLength = 150
                        BorderStyle = ubsNone
                        Text = ''
                        ParentFont = False
                        Font.Height = -16
                        Align = alClient
                        TabOrder = 1
                        ReadOnly = True
                      end
                      object UniContainerPanel28: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 398
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
                      end
                    end
                    object UniPanel34: TUniPanel
                      Left = 18
                      Top = 111
                      Width = 951
                      Height = 2
                      Hint = 't2w2075h2;'
                      TabOrder = 3
                      Caption = ''
                      Color = 16249327
                    end
                    object UniPanel35: TUniPanel
                      Left = 22
                      Top = 199
                      Width = 951
                      Height = 2
                      Hint = 't2w2075h2;'
                      TabOrder = 4
                      Caption = ''
                      Color = 16249327
                    end
                    object UniPanel36: TUniPanel
                      Left = 128
                      Top = 123
                      Width = 400
                      Height = 70
                      Hint = 't1w500h0;'
                      TabOrder = 5
                      Caption = ''
                      Color = 16249327
                      object UniEdit3: TUniEdit
                        Left = 1
                        Top = 28
                        Width = 398
                        Height = 41
                        Hint = ''
                        CharCase = ecUpperCase
                        MaxLength = 150
                        BorderStyle = ubsNone
                        Text = ''
                        ParentFont = False
                        Font.Height = -16
                        Align = alClient
                        TabOrder = 1
                        ReadOnly = True
                      end
                      object UniContainerPanel31: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 398
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
                      end
                    end
                    object UniPanel37: TUniPanel
                      Left = 3
                      Top = 123
                      Width = 118
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 6
                      Caption = ''
                      Color = clWhite
                      object compSTR_CODCCSANGRIA: TUniEdit
                        Left = 1
                        Top = 28
                        Width = 76
                        Height = 41
                        Hint = ''
                        MaxLength = 4
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
                      object UniContainerPanel32: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 116
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
                        object UniLabel17: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 88
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Centro de custo'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object UniSFBitBtn8: TUniSFBitBtn
                        AlignWithMargins = True
                        Left = 82
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
                        OnClick = UniSFBitBtn8Click
                        FAIcon.Icon = fa_search
                        FAIcon.Size = fs_16
                        FAIcon.Color = fc_grey
                        ButtonStyles = bs_transparent
                      end
                    end
                    object UniPanel38: TUniPanel
                      Left = 23
                      Top = 287
                      Width = 951
                      Height = 2
                      Hint = 't2w2075h2;'
                      TabOrder = 7
                      Caption = ''
                      Color = 16249327
                    end
                    object UniPanel39: TUniPanel
                      Left = 128
                      Top = 211
                      Width = 400
                      Height = 70
                      Hint = 't1w500h0;'
                      TabOrder = 8
                      Caption = ''
                      Color = 16249327
                      object UniEdit5: TUniEdit
                        Left = 1
                        Top = 28
                        Width = 398
                        Height = 41
                        Hint = ''
                        CharCase = ecUpperCase
                        MaxLength = 150
                        BorderStyle = ubsNone
                        Text = ''
                        ParentFont = False
                        Font.Height = -16
                        Align = alClient
                        TabOrder = 1
                        ReadOnly = True
                      end
                      object UniContainerPanel33: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 398
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
                      end
                    end
                    object UniPanel40: TUniPanel
                      Left = 3
                      Top = 211
                      Width = 118
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 9
                      Caption = ''
                      Color = clWhite
                      object compINT_CODBANSANGRIA: TUniEdit
                        Left = 1
                        Top = 28
                        Width = 76
                        Height = 41
                        Hint = ''
                        MaxLength = 4
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
                      object UniContainerPanel34: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 116
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
                        object UniLabel18: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 33
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Banco'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object UniSFBitBtn9: TUniSFBitBtn
                        AlignWithMargins = True
                        Left = 82
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
                        OnClick = UniSFBitBtn9Click
                        FAIcon.Icon = fa_search
                        FAIcon.Size = fs_16
                        FAIcon.Color = fc_grey
                        ButtonStyles = bs_transparent
                      end
                    end
                    object UniPanel41: TUniPanel
                      Left = 23
                      Top = 371
                      Width = 951
                      Height = 2
                      Hint = 't2w2075h2;'
                      TabOrder = 10
                      Caption = ''
                      Color = 16249327
                    end
                    object UniPanel42: TUniPanel
                      Left = 128
                      Top = 295
                      Width = 400
                      Height = 70
                      Hint = 't1w500h0;'
                      TabOrder = 11
                      Caption = ''
                      Color = 16249327
                      object UniEdit7: TUniEdit
                        Left = 1
                        Top = 28
                        Width = 398
                        Height = 41
                        Hint = ''
                        CharCase = ecUpperCase
                        MaxLength = 150
                        BorderStyle = ubsNone
                        Text = ''
                        ParentFont = False
                        Font.Height = -16
                        Align = alClient
                        TabOrder = 1
                        ReadOnly = True
                      end
                      object UniContainerPanel35: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 398
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
                      end
                    end
                    object UniPanel43: TUniPanel
                      Left = 3
                      Top = 295
                      Width = 118
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 12
                      Caption = ''
                      Color = clWhite
                      object compINT_CODCLISANGRIA: TUniEdit
                        Left = 1
                        Top = 28
                        Width = 76
                        Height = 41
                        Hint = ''
                        MaxLength = 4
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
                      object UniContainerPanel36: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 116
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
                        object UniLabel19: TUniLabel
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
                      object UniSFBitBtn11: TUniSFBitBtn
                        AlignWithMargins = True
                        Left = 82
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
                        OnClick = UniSFBitBtn11Click
                        FAIcon.Icon = fa_search
                        FAIcon.Size = fs_16
                        FAIcon.Color = fc_grey
                        ButtonStyles = bs_transparent
                      end
                    end
                    object UniContainerPanel37: TUniContainerPanel
                      Left = 3
                      Top = 381
                      Width = 525
                      Height = 27
                      Hint = ''
                      Margins.Left = 8
                      Margins.Top = 5
                      Margins.Right = 12
                      Margins.Bottom = 5
                      ParentColor = False
                      TabOrder = 13
                      TabStop = False
                      LayoutConfig.Cls = 'body_grdnt_rounded'
                      object UniLabel20: TUniLabel
                        AlignWithMargins = True
                        Left = 10
                        Top = 3
                        Width = 276
                        Height = 17
                        Hint = ''
                        Margins.Left = 10
                        Caption = 'CONFIGURA'#199#213'ES DA CONTA DE REFOR'#199'O'
                        Align = alTop
                        ParentFont = False
                        Font.Color = clBlack
                        Font.Height = -13
                        Font.Name = 'Segoe UI Light'
                        Font.Style = [fsBold]
                        TabOrder = 1
                      end
                    end
                    object UniPanel44: TUniPanel
                      Left = 21
                      Top = 502
                      Width = 951
                      Height = 2
                      Hint = 't2w2075h2;'
                      TabOrder = 14
                      Caption = ''
                      Color = 16249327
                    end
                    object UniPanel45: TUniPanel
                      Left = 26
                      Top = 678
                      Width = 951
                      Height = 2
                      Hint = 't2w2075h2;'
                      TabOrder = 15
                      Caption = ''
                      Color = 16249327
                    end
                    object UniPanel46: TUniPanel
                      Left = 26
                      Top = 762
                      Width = 951
                      Height = 2
                      Hint = 't2w2075h2;'
                      TabOrder = 16
                      Caption = ''
                      Color = 16249327
                    end
                    object UniPanel47: TUniPanel
                      Left = 128
                      Top = 426
                      Width = 400
                      Height = 70
                      Hint = 't1w500h0;'
                      TabOrder = 17
                      Caption = ''
                      Color = 16249327
                      object UniEdit9: TUniEdit
                        Left = 1
                        Top = 28
                        Width = 398
                        Height = 41
                        Hint = ''
                        CharCase = ecUpperCase
                        MaxLength = 150
                        BorderStyle = ubsNone
                        Text = ''
                        ParentFont = False
                        Font.Height = -16
                        Align = alClient
                        TabOrder = 1
                        ReadOnly = True
                      end
                      object UniContainerPanel38: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 398
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
                      end
                    end
                    object UniPanel48: TUniPanel
                      Left = 3
                      Top = 426
                      Width = 118
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 18
                      Caption = ''
                      Color = clWhite
                      object compSTR_CODPRREFORCO: TUniEdit
                        Left = 1
                        Top = 28
                        Width = 76
                        Height = 41
                        Hint = ''
                        MaxLength = 4
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
                        Width = 116
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
                        object UniLabel21: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 80
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Departamento'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object UniSFBitBtn12: TUniSFBitBtn
                        AlignWithMargins = True
                        Left = 82
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
                        OnClick = UniSFBitBtn12Click
                        FAIcon.Icon = fa_search
                        FAIcon.Size = fs_16
                        FAIcon.Color = fc_grey
                        ButtonStyles = bs_transparent
                      end
                    end
                    object UniPanel49: TUniPanel
                      Left = 3
                      Top = 514
                      Width = 118
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 19
                      Caption = ''
                      Color = clWhite
                      object compSTR_CODCCREFORCO: TUniEdit
                        Left = 1
                        Top = 28
                        Width = 76
                        Height = 41
                        Hint = ''
                        MaxLength = 4
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
                      object UniContainerPanel40: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 116
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
                        object UniLabel24: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 88
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Centro de custo'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object UniSFBitBtn13: TUniSFBitBtn
                        AlignWithMargins = True
                        Left = 82
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
                        OnClick = UniSFBitBtn13Click
                        FAIcon.Icon = fa_search
                        FAIcon.Size = fs_16
                        FAIcon.Color = fc_grey
                        ButtonStyles = bs_transparent
                      end
                    end
                    object UniPanel50: TUniPanel
                      Left = 128
                      Top = 514
                      Width = 400
                      Height = 70
                      Hint = 't1w500h0;'
                      TabOrder = 20
                      Caption = ''
                      Color = 16249327
                      object UniEdit12: TUniEdit
                        Left = 1
                        Top = 28
                        Width = 398
                        Height = 41
                        Hint = ''
                        CharCase = ecUpperCase
                        MaxLength = 150
                        BorderStyle = ubsNone
                        Text = ''
                        ParentFont = False
                        Font.Height = -16
                        Align = alClient
                        TabOrder = 1
                        ReadOnly = True
                      end
                      object UniContainerPanel41: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 398
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
                      end
                    end
                    object UniPanel51: TUniPanel
                      Left = 128
                      Top = 602
                      Width = 400
                      Height = 70
                      Hint = 't1w500h0;'
                      TabOrder = 21
                      Caption = ''
                      Color = 16249327
                      object UniEdit13: TUniEdit
                        Left = 1
                        Top = 28
                        Width = 398
                        Height = 41
                        Hint = ''
                        CharCase = ecUpperCase
                        MaxLength = 150
                        BorderStyle = ubsNone
                        Text = ''
                        ParentFont = False
                        Font.Height = -16
                        Align = alClient
                        TabOrder = 1
                        ReadOnly = True
                      end
                      object UniContainerPanel42: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 398
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
                      end
                    end
                    object UniPanel52: TUniPanel
                      Left = 3
                      Top = 602
                      Width = 118
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 22
                      Caption = ''
                      Color = clWhite
                      object compINT_CODBANREFORCO: TUniEdit
                        Left = 1
                        Top = 28
                        Width = 76
                        Height = 41
                        Hint = ''
                        MaxLength = 4
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
                      object UniContainerPanel43: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 116
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
                        object UniLabel25: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 33
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Banco'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object UniSFBitBtn14: TUniSFBitBtn
                        AlignWithMargins = True
                        Left = 82
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
                        OnClick = UniSFBitBtn14Click
                        FAIcon.Icon = fa_search
                        FAIcon.Size = fs_16
                        FAIcon.Color = fc_grey
                        ButtonStyles = bs_transparent
                      end
                    end
                    object UniPanel53: TUniPanel
                      Left = 128
                      Top = 686
                      Width = 400
                      Height = 70
                      Hint = 't1w500h0;'
                      TabOrder = 23
                      Caption = ''
                      Color = 16249327
                      object UniEdit15: TUniEdit
                        Left = 1
                        Top = 28
                        Width = 398
                        Height = 41
                        Hint = ''
                        CharCase = ecUpperCase
                        MaxLength = 150
                        BorderStyle = ubsNone
                        Text = ''
                        ParentFont = False
                        Font.Height = -16
                        Align = alClient
                        TabOrder = 1
                        ReadOnly = True
                      end
                      object UniContainerPanel44: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 398
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
                      end
                    end
                    object UniPanel54: TUniPanel
                      Left = 3
                      Top = 686
                      Width = 118
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 24
                      Caption = ''
                      Color = clWhite
                      object compINT_CODCLIREFORCO: TUniEdit
                        Left = 1
                        Top = 28
                        Width = 76
                        Height = 41
                        Hint = ''
                        MaxLength = 4
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
                      object UniContainerPanel45: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 116
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
                        object UniLabel26: TUniLabel
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
                      object UniSFBitBtn15: TUniSFBitBtn
                        AlignWithMargins = True
                        Left = 82
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
                        OnClick = UniSFBitBtn15Click
                        FAIcon.Icon = fa_search
                        FAIcon.Size = fs_16
                        FAIcon.Color = fc_grey
                        ButtonStyles = bs_transparent
                      end
                    end
                    object UniPanel55: TUniPanel
                      Left = 17
                      Top = 418
                      Width = 951
                      Height = 2
                      Hint = 't2w2075h2;'
                      TabOrder = 25
                      Caption = ''
                      Color = 16249327
                    end
                  end
                end
              end
              object tsImpressora: TUniTabSheet
                Hint = ''
                Caption = 'Impressora'
                object UniPanel15: TUniPanel
                  Left = 0
                  Top = 0
                  Width = 1213
                  Height = 827
                  Hint = ''
                  Align = alClient
                  TabOrder = 0
                  Caption = ''
                  object UniScrollBox3: TUniScrollBox
                    Left = 1
                    Top = 1
                    Width = 1211
                    Height = 825
                    Hint = ''
                    Align = alClient
                    TabOrder = 1
                    ScrollHeight = 747
                    ScrollWidth = 994
                    object UniPanel56: TUniPanel
                      Left = 3
                      Top = 11
                      Width = 681
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 0
                      Caption = ''
                      Color = clWhite
                      object UniContainerPanel46: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 679
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel27: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 159
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Impressora para cupom fiscal'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compIMPRESSORA: TUniSFComboBox
                        Left = 3
                        Top = 36
                        Width = 670
                        Hint = ''
                        Text = ''
                        TabOrder = 2
                        Items.Strings = (
                          'Microsoft XPS Document Writer'
                          'Microsoft Print to PDF'
                          'Fax')
                        Groups = <>
                        Options.Placeholders = 'Selecione'
                        Options.noResults = 'No Results Found'
                      end
                    end
                    object UniPanel57: TUniPanel
                      Left = 18
                      Top = 87
                      Width = 951
                      Height = 2
                      Hint = 't2w2075h2;'
                      TabOrder = 1
                      Caption = ''
                      Color = 16249327
                    end
                    object UniContainerPanel47: TUniContainerPanel
                      Left = 3
                      Top = 99
                      Width = 681
                      Height = 27
                      Hint = ''
                      Margins.Left = 8
                      Margins.Top = 5
                      Margins.Right = 12
                      Margins.Bottom = 5
                      ParentColor = False
                      TabOrder = 2
                      TabStop = False
                      LayoutConfig.Cls = 'body_grdnt_rounded'
                      object UniLabel28: TUniLabel
                        AlignWithMargins = True
                        Left = 10
                        Top = 3
                        Width = 256
                        Height = 17
                        Hint = ''
                        Margins.Left = 10
                        Caption = 'DESTACA NA OBSERVA'#199#195'O DO CUPOM'
                        Align = alTop
                        ParentFont = False
                        Font.Color = clBlack
                        Font.Height = -13
                        Font.Name = 'Segoe UI Light'
                        Font.Style = [fsBold]
                        TabOrder = 1
                      end
                    end
                    object UniPanel58: TUniPanel
                      Left = 3
                      Top = 143
                      Width = 119
                      Height = 70
                      Hint = 't1w180h0;'
                      TabOrder = 3
                      Caption = ''
                      Color = 16249327
                      object UniContainerPanel48: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 117
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel29: TUniLabel
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
                      object compSTR_DESTACACLI: TUniFSToggle
                        AlignWithMargins = True
                        Left = 11
                        Top = 33
                        Width = 97
                        Height = 31
                        Hint = ''
                        Margins.Left = 10
                        Margins.Top = 5
                        Margins.Right = 10
                        Margins.Bottom = 5
                        ThemeOn = Success
                        ThemeOff = Gray
                        TitleOn = 'Sim'
                        TitleOff = 'N'#227'o'
                        Align = alClient
                      end
                    end
                    object UniPanel59: TUniPanel
                      Left = 135
                      Top = 143
                      Width = 119
                      Height = 70
                      Hint = 't1w180h0;'
                      TabOrder = 4
                      Caption = ''
                      Color = 16249327
                      object UniContainerPanel49: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 117
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel30: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 93
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Endere'#231'o cliente'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compSTR_DESTACAENDCLI: TUniFSToggle
                        AlignWithMargins = True
                        Left = 11
                        Top = 33
                        Width = 97
                        Height = 31
                        Hint = ''
                        Margins.Left = 10
                        Margins.Top = 5
                        Margins.Right = 10
                        Margins.Bottom = 5
                        ThemeOn = Success
                        ThemeOff = Gray
                        TitleOn = 'Sim'
                        TitleOff = 'N'#227'o'
                        Align = alClient
                      end
                    end
                    object UniPanel60: TUniPanel
                      Left = 260
                      Top = 143
                      Width = 119
                      Height = 70
                      Hint = 't1w180h0;'
                      TabOrder = 5
                      Caption = ''
                      Color = 16249327
                      object UniContainerPanel50: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 117
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel31: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 53
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Vendedor'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compSTR_DESTACAVEND: TUniFSToggle
                        AlignWithMargins = True
                        Left = 11
                        Top = 33
                        Width = 97
                        Height = 31
                        Hint = ''
                        Margins.Left = 10
                        Margins.Top = 5
                        Margins.Right = 10
                        Margins.Bottom = 5
                        ThemeOn = Success
                        ThemeOff = Gray
                        TitleOn = 'Sim'
                        TitleOff = 'N'#227'o'
                        Align = alClient
                      end
                    end
                    object UniPanel61: TUniPanel
                      Left = 15
                      Top = 135
                      Width = 951
                      Height = 2
                      Hint = 't2w2075h2;'
                      TabOrder = 6
                      Caption = ''
                      Color = 16249327
                    end
                    object UniPanel62: TUniPanel
                      Left = 27
                      Top = 221
                      Width = 951
                      Height = 2
                      Hint = 't2w2075h2;'
                      TabOrder = 7
                      Caption = ''
                      Color = 16249327
                    end
                    object UniPanel63: TUniPanel
                      Left = 24
                      Top = 269
                      Width = 951
                      Height = 2
                      Hint = 't2w2075h2;'
                      TabOrder = 8
                      Caption = ''
                      Color = 16249327
                    end
                    object UniContainerPanel51: TUniContainerPanel
                      Left = 1
                      Top = 232
                      Width = 681
                      Height = 27
                      Hint = ''
                      Margins.Left = 8
                      Margins.Top = 5
                      Margins.Right = 12
                      Margins.Bottom = 5
                      ParentColor = False
                      TabOrder = 9
                      TabStop = False
                      LayoutConfig.Cls = 'body_grdnt_rounded'
                      object UniLabel32: TUniLabel
                        AlignWithMargins = True
                        Left = 10
                        Top = 3
                        Width = 165
                        Height = 17
                        Hint = ''
                        Margins.Left = 10
                        Caption = 'IMPRESSORA N'#195'O FISCAL'
                        Align = alTop
                        ParentFont = False
                        Font.Color = clBlack
                        Font.Height = -13
                        Font.Name = 'Segoe UI Light'
                        Font.Style = [fsBold]
                        TabOrder = 1
                      end
                    end
                    object UniPanel64: TUniPanel
                      Left = 3
                      Top = 277
                      Width = 181
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 10
                      Caption = ''
                      Color = clWhite
                      object UniContainerPanel52: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 179
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel33: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 59
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Impressora'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compIMPRNAOFISCAL: TUniSFComboBox
                        Left = 3
                        Top = 36
                        Width = 174
                        Hint = ''
                        Text = ''
                        TabOrder = 2
                        Items.Strings = (
                          'Microsoft XPS Document Writer'
                          'Microsoft Print to PDF'
                          'Fax')
                        Groups = <>
                        Options.Placeholders = 'Selecione'
                        Options.noResults = 'No Results Found'
                      end
                    end
                    object UniPanel65: TUniPanel
                      Left = 190
                      Top = 277
                      Width = 181
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 11
                      Caption = ''
                      Color = clWhite
                      object UniContainerPanel53: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 179
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel34: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 106
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Abertura de gaveta'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compIMPRGAVETA: TUniSFComboBox
                        Left = 3
                        Top = 36
                        Width = 174
                        Hint = ''
                        Text = ''
                        TabOrder = 2
                        Items.Strings = (
                          'Bematech'
                          'Daruma'
                          'Epson'
                          'Sweda')
                        Groups = <>
                        Options.Placeholders = 'Selecione'
                        Options.noResults = 'No Results Found'
                      end
                    end
                    object UniPanel66: TUniPanel
                      Left = 377
                      Top = 277
                      Width = 181
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 12
                      Caption = ''
                      Color = clWhite
                      object UniContainerPanel54: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 179
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel35: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 96
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Marca impressora'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compMARCAIMPRESSORA: TUniSFComboBox
                        Left = 3
                        Top = 36
                        Width = 174
                        Hint = ''
                        Text = ''
                        TabOrder = 2
                        Items.Strings = (
                          'Bematech'
                          'Daruma'
                          'Epson'
                          'Sweda')
                        Groups = <>
                        Options.Placeholders = 'Selecione'
                        Options.noResults = 'No Results Found'
                      end
                    end
                    object UniPanel67: TUniPanel
                      Left = 564
                      Top = 277
                      Width = 119
                      Height = 70
                      Hint = 't1w180h0;'
                      TabOrder = 13
                      Caption = ''
                      Color = 16249327
                      object UniContainerPanel55: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 117
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel36: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 81
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Tem guilhotina'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compTEMGUILHOTINA: TUniFSToggle
                        AlignWithMargins = True
                        Left = 11
                        Top = 33
                        Width = 97
                        Height = 31
                        Hint = ''
                        Margins.Left = 10
                        Margins.Top = 5
                        Margins.Right = 10
                        Margins.Bottom = 5
                        ThemeOn = Success
                        ThemeOff = Gray
                        TitleOn = 'Sim'
                        TitleOff = 'N'#227'o'
                        Align = alClient
                      end
                    end
                    object UniPanel68: TUniPanel
                      Left = 34
                      Top = 356
                      Width = 951
                      Height = 2
                      Hint = 't2w2075h2;'
                      TabOrder = 14
                      Caption = ''
                      Color = 16249327
                    end
                    object UniPanel69: TUniPanel
                      Left = 31
                      Top = 404
                      Width = 951
                      Height = 2
                      Hint = 't2w2075h2;'
                      TabOrder = 15
                      Caption = ''
                      Color = 16249327
                    end
                    object UniContainerPanel56: TUniContainerPanel
                      Left = 3
                      Top = 366
                      Width = 681
                      Height = 27
                      Hint = ''
                      Margins.Left = 8
                      Margins.Top = 5
                      Margins.Right = 12
                      Margins.Bottom = 5
                      ParentColor = False
                      TabOrder = 16
                      TabStop = False
                      LayoutConfig.Cls = 'body_grdnt_rounded'
                      object UniLabel37: TUniLabel
                        AlignWithMargins = True
                        Left = 10
                        Top = 3
                        Width = 229
                        Height = 17
                        Hint = ''
                        Margins.Left = 10
                        Caption = 'IMPRESSORA FISCAL NFCE/SAT/NFE'
                        Align = alTop
                        ParentFont = False
                        Font.Color = clBlack
                        Font.Height = -13
                        Font.Name = 'Segoe UI Light'
                        Font.Style = [fsBold]
                        TabOrder = 1
                      end
                    end
                    object UniPanel70: TUniPanel
                      Left = 3
                      Top = 412
                      Width = 181
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 17
                      Caption = ''
                      Color = clWhite
                      object UniContainerPanel57: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 179
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel38: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 77
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Impress'#227'o em'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compTIPOIMPRESSAONF: TUniSFComboBox
                        Left = 3
                        Top = 36
                        Width = 174
                        Hint = ''
                        Text = ''
                        TabOrder = 2
                        Items.Strings = (
                          'Pdf'
                          'Cupom')
                        Groups = <>
                        Options.Placeholders = 'Selecione'
                        Options.noResults = 'No Results Found'
                      end
                    end
                    object UniPanel71: TUniPanel
                      Left = 190
                      Top = 412
                      Width = 259
                      Height = 70
                      Hint = 't1w180h0;'
                      TabOrder = 18
                      Caption = ''
                      Color = 16249327
                      object UniContainerPanel58: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 257
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel39: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 227
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Imprime cupom direto se PDF e TSPLUS?'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compIMPPDFDIRTSPLUS: TUniFSToggle
                        AlignWithMargins = True
                        Left = 11
                        Top = 33
                        Width = 237
                        Height = 31
                        Hint = ''
                        Margins.Left = 10
                        Margins.Top = 5
                        Margins.Right = 10
                        Margins.Bottom = 5
                        ThemeOn = Success
                        ThemeOff = Gray
                        TitleOn = 'Sim'
                        TitleOff = 'N'#227'o'
                        Align = alClient
                      end
                    end
                    object UniPanel72: TUniPanel
                      Left = 40
                      Top = 490
                      Width = 951
                      Height = 2
                      Hint = 't2w2075h2;'
                      TabOrder = 19
                      Caption = ''
                      Color = 16249327
                    end
                    object UniPanel73: TUniPanel
                      Left = 40
                      Top = 538
                      Width = 951
                      Height = 2
                      Hint = 't2w2075h2;'
                      TabOrder = 20
                      Caption = ''
                      Color = 16249327
                    end
                    object UniContainerPanel59: TUniContainerPanel
                      Left = 3
                      Top = 500
                      Width = 681
                      Height = 27
                      Hint = ''
                      Margins.Left = 8
                      Margins.Top = 5
                      Margins.Right = 12
                      Margins.Bottom = 5
                      ParentColor = False
                      TabOrder = 21
                      TabStop = False
                      LayoutConfig.Cls = 'body_grdnt_rounded'
                      object UniLabel40: TUniLabel
                        AlignWithMargins = True
                        Left = 10
                        Top = 3
                        Width = 45
                        Height = 17
                        Hint = ''
                        Margins.Left = 10
                        Caption = 'SE PDF'
                        Align = alTop
                        ParentFont = False
                        Font.Color = clBlack
                        Font.Height = -13
                        Font.Name = 'Segoe UI Light'
                        Font.Style = [fsBold]
                        TabOrder = 1
                      end
                    end
                    object UniPanel74: TUniPanel
                      Left = 3
                      Top = 546
                      Width = 181
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 22
                      Caption = ''
                      Color = clWhite
                      object UniContainerPanel60: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 179
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel41: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 90
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'N'#250'mero colunas'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compNCOLUNASPDF: TUniSFComboBox
                        Left = 3
                        Top = 36
                        Width = 174
                        Hint = ''
                        Text = ''
                        TabOrder = 2
                        Items.Strings = (
                          '40'
                          '41'
                          '42'
                          '43'
                          '44'
                          '45'
                          '46'
                          '47'
                          '48'
                          '49'
                          '50'
                          '51'
                          '52'
                          '53'
                          '54'
                          '55'
                          '56'
                          '57'
                          '58'
                          '59'
                          '60'
                          '61'
                          '62'
                          '63'
                          '64'
                          '65'
                          '66'
                          '67'
                          '68'
                          '69'
                          '70'
                          '71'
                          '72'
                          '73'
                          '74'
                          '75'
                          '76'
                          '77'
                          '78'
                          '79'
                          '80')
                        Groups = <>
                        Options.Placeholders = 'Selecione'
                        Options.noResults = 'No Results Found'
                      end
                    end
                    object UniPanel75: TUniPanel
                      Left = 190
                      Top = 546
                      Width = 181
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 23
                      Caption = ''
                      Color = clWhite
                      object UniContainerPanel61: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 179
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel42: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 46
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Margem'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compMARGEMNF: TUniSFComboBox
                        Left = 3
                        Top = 36
                        Width = 174
                        Hint = ''
                        Text = ''
                        TabOrder = 2
                        Items.Strings = (
                          '1'
                          '2'
                          '3'
                          '4'
                          '5'
                          '5'
                          '6'
                          '7'
                          '9')
                        Groups = <>
                        Options.Placeholders = 'Selecione'
                        Options.noResults = 'No Results Found'
                      end
                    end
                    object UniPanel76: TUniPanel
                      Left = 43
                      Top = 621
                      Width = 951
                      Height = 2
                      Hint = 't2w2075h2;'
                      TabOrder = 24
                      Caption = ''
                      Color = 16249327
                    end
                    object UniPanel77: TUniPanel
                      Left = 43
                      Top = 669
                      Width = 951
                      Height = 2
                      Hint = 't2w2075h2;'
                      TabOrder = 25
                      Caption = ''
                      Color = 16249327
                    end
                    object UniContainerPanel62: TUniContainerPanel
                      Left = 3
                      Top = 631
                      Width = 681
                      Height = 27
                      Hint = ''
                      Margins.Left = 8
                      Margins.Top = 5
                      Margins.Right = 12
                      Margins.Bottom = 5
                      ParentColor = False
                      TabOrder = 26
                      TabStop = False
                      LayoutConfig.Cls = 'body_grdnt_rounded'
                      object UniLabel43: TUniLabel
                        AlignWithMargins = True
                        Left = 10
                        Top = 3
                        Width = 69
                        Height = 17
                        Hint = ''
                        Margins.Left = 10
                        Caption = 'SE CUPOM'
                        Align = alTop
                        ParentFont = False
                        Font.Color = clBlack
                        Font.Height = -13
                        Font.Name = 'Segoe UI Light'
                        Font.Style = [fsBold]
                        TabOrder = 1
                      end
                    end
                    object UniPanel78: TUniPanel
                      Left = 3
                      Top = 677
                      Width = 181
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 27
                      Caption = ''
                      Color = clWhite
                      object UniContainerPanel63: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 179
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel44: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 59
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Impressora'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compMODELOIMPRESSORANF: TUniSFComboBox
                        Left = 3
                        Top = 36
                        Width = 174
                        Hint = ''
                        Text = ''
                        TabOrder = 2
                        Items.Strings = (
                          'Texto'
                          'Epson'
                          'Bematech'
                          'Daruma'
                          'Vox'
                          'Diebold'
                          'Epson P2'
                          'CustomPos'
                          'Star'
                          'Zjiang'
                          'GPrinter'
                          'Datecs'
                          'Sunmi'
                          'Externo')
                        Groups = <>
                        Options.Placeholders = 'Selecione'
                        Options.noResults = 'No Results Found'
                      end
                    end
                    object UniPanel79: TUniPanel
                      Left = 190
                      Top = 677
                      Width = 181
                      Height = 70
                      Hint = 't1w100h0;'
                      TabOrder = 28
                      Caption = ''
                      Color = clWhite
                      object UniContainerPanel64: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 179
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel45: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 90
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'N'#250'mero colunas'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compNCOLUNAS: TUniSFComboBox
                        Left = 3
                        Top = 36
                        Width = 174
                        Hint = ''
                        Text = ''
                        TabOrder = 2
                        Items.Strings = (
                          '40'
                          '42'
                          '48'
                          '58'
                          '80')
                        Groups = <>
                        Options.Placeholders = 'Selecione'
                        Options.noResults = 'No Results Found'
                      end
                    end
                    object UniPanel92: TUniPanel
                      Left = 377
                      Top = 677
                      Width = 119
                      Height = 70
                      Hint = 't1w180h0;'
                      TabOrder = 29
                      Caption = ''
                      Color = 16249327
                      object UniContainerPanel76: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 117
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel57: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 80
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'QrCode lateral'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compQRCODELATERAL: TUniFSToggle
                        AlignWithMargins = True
                        Left = 11
                        Top = 33
                        Width = 97
                        Height = 31
                        Hint = ''
                        Margins.Left = 10
                        Margins.Top = 5
                        Margins.Right = 10
                        Margins.Bottom = 5
                        ThemeOn = Success
                        ThemeOff = Gray
                        TitleOn = 'Sim'
                        TitleOff = 'N'#227'o'
                        Align = alClient
                      end
                    end
                  end
                end
              end
              object tsPermissao: TUniTabSheet
                Hint = ''
                Caption = 'Permiss'#227'o'
                object UniPanel16: TUniPanel
                  Left = 0
                  Top = 0
                  Width = 1213
                  Height = 827
                  Hint = ''
                  Align = alClient
                  TabOrder = 0
                  Caption = ''
                  object UniScrollBox4: TUniScrollBox
                    Left = 1
                    Top = 1
                    Width = 1211
                    Height = 825
                    Hint = ''
                    Align = alClient
                    TabOrder = 1
                    ScrollHeight = 294
                    ScrollWidth = 972
                    object UniPanel81: TUniPanel
                      Left = 3
                      Top = 3
                      Width = 119
                      Height = 70
                      Hint = 't1w180h0;'
                      TabOrder = 0
                      Caption = ''
                      Color = 16249327
                      object UniContainerPanel66: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 117
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel47: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 107
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Altera valor unit'#225'rio'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compAlteraValorUnitario: TUniFSToggle
                        AlignWithMargins = True
                        Left = 11
                        Top = 33
                        Width = 97
                        Height = 31
                        Hint = ''
                        Margins.Left = 10
                        Margins.Top = 5
                        Margins.Right = 10
                        Margins.Bottom = 5
                        ThemeOn = Success
                        ThemeOff = Gray
                        TitleOn = 'Sim'
                        TitleOff = 'N'#227'o'
                        Align = alClient
                      end
                    end
                    object UniPanel82: TUniPanel
                      Left = 129
                      Top = 3
                      Width = 119
                      Height = 70
                      Hint = 't1w180h0;'
                      TabOrder = 1
                      Caption = ''
                      Color = 16249327
                      object UniContainerPanel67: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 117
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel48: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 106
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Altera configura'#231#227'o'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compAlteraConfiguracao: TUniFSToggle
                        AlignWithMargins = True
                        Left = 11
                        Top = 33
                        Width = 97
                        Height = 31
                        Hint = ''
                        Margins.Left = 10
                        Margins.Top = 5
                        Margins.Right = 10
                        Margins.Bottom = 5
                        ThemeOn = Success
                        ThemeOff = Gray
                        TitleOn = 'Sim'
                        TitleOff = 'N'#227'o'
                        Align = alClient
                      end
                    end
                    object UniPanel83: TUniPanel
                      Left = 254
                      Top = 3
                      Width = 119
                      Height = 70
                      Hint = 't1w180h0;'
                      TabOrder = 2
                      Caption = ''
                      Color = 16249327
                      object UniContainerPanel68: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 117
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel49: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 97
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Altera quantidade'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compAlteraQuantidade: TUniFSToggle
                        AlignWithMargins = True
                        Left = 11
                        Top = 33
                        Width = 97
                        Height = 31
                        Hint = ''
                        Margins.Left = 10
                        Margins.Top = 5
                        Margins.Right = 10
                        Margins.Bottom = 5
                        ThemeOn = Success
                        ThemeOff = Gray
                        TitleOn = 'Sim'
                        TitleOff = 'N'#227'o'
                        Align = alClient
                      end
                    end
                    object UniPanel84: TUniPanel
                      Left = 381
                      Top = 3
                      Width = 119
                      Height = 70
                      Hint = 't1w180h0;'
                      TabOrder = 3
                      Caption = ''
                      Color = 16249327
                      object UniContainerPanel69: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 117
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel50: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 84
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Troca vendedor'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compTrocaVendedor: TUniFSToggle
                        AlignWithMargins = True
                        Left = 11
                        Top = 33
                        Width = 97
                        Height = 31
                        Hint = ''
                        Margins.Left = 10
                        Margins.Top = 5
                        Margins.Right = 10
                        Margins.Bottom = 5
                        ThemeOn = Success
                        ThemeOff = Gray
                        TitleOn = 'Sim'
                        TitleOff = 'N'#227'o'
                        Align = alClient
                      end
                    end
                    object UniPanel85: TUniPanel
                      Left = 21
                      Top = 83
                      Width = 951
                      Height = 2
                      Hint = 't2w2075h2;'
                      TabOrder = 4
                      Caption = ''
                      Color = 16249327
                    end
                    object UniPanel86: TUniPanel
                      Left = 3
                      Top = 92
                      Width = 240
                      Height = 70
                      Hint = 't1w180h0;'
                      TabOrder = 5
                      Caption = ''
                      Color = 16249327
                      object UniContainerPanel70: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 238
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel51: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 145
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Tecla F6 sempre habilitada'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compF6HABILITADO: TUniFSToggle
                        AlignWithMargins = True
                        Left = 11
                        Top = 33
                        Width = 218
                        Height = 31
                        Hint = ''
                        Margins.Left = 10
                        Margins.Top = 5
                        Margins.Right = 10
                        Margins.Bottom = 5
                        ThemeOn = Success
                        ThemeOff = Gray
                        TitleOn = 'Sim'
                        TitleOff = 'N'#227'o'
                        Align = alClient
                      end
                    end
                    object UniPanel87: TUniPanel
                      Left = 260
                      Top = 92
                      Width = 240
                      Height = 70
                      Hint = 't1w180h0;'
                      TabOrder = 6
                      Caption = ''
                      Color = 16249327
                      object UniContainerPanel71: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 238
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel52: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 123
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Fecha ponto de venda'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compFechaPontoDeVenda: TUniFSToggle
                        AlignWithMargins = True
                        Left = 11
                        Top = 33
                        Width = 218
                        Height = 31
                        Hint = ''
                        Margins.Left = 10
                        Margins.Top = 5
                        Margins.Right = 10
                        Margins.Bottom = 5
                        ThemeOn = Success
                        ThemeOff = Gray
                        TitleOn = 'Sim'
                        TitleOff = 'N'#227'o'
                        Align = alClient
                      end
                    end
                    object UniContainerPanel72: TUniContainerPanel
                      Left = 3
                      Top = 181
                      Width = 497
                      Height = 27
                      Hint = ''
                      Margins.Left = 8
                      Margins.Top = 5
                      Margins.Right = 12
                      Margins.Bottom = 5
                      ParentColor = False
                      TabOrder = 7
                      TabStop = False
                      LayoutConfig.Cls = 'body_grdnt_rounded'
                      object UniLabel53: TUniLabel
                        AlignWithMargins = True
                        Left = 10
                        Top = 3
                        Width = 222
                        Height = 17
                        Hint = ''
                        Margins.Left = 10
                        Caption = 'SOLICITAR SENHA DE SUPERVISOR'
                        Align = alTop
                        ParentFont = False
                        Font.Color = clBlack
                        Font.Height = -13
                        Font.Name = 'Segoe UI Light'
                        Font.Style = [fsBold]
                        TabOrder = 1
                      end
                    end
                    object UniPanel88: TUniPanel
                      Left = 18
                      Top = 171
                      Width = 951
                      Height = 2
                      Hint = 't2w2075h2;'
                      TabOrder = 8
                      Caption = ''
                      Color = 16249327
                    end
                    object UniPanel89: TUniPanel
                      Left = 21
                      Top = 216
                      Width = 951
                      Height = 2
                      Hint = 't2w2075h2;'
                      TabOrder = 9
                      Caption = ''
                      Color = 16249327
                    end
                    object UniPanel90: TUniPanel
                      Left = 260
                      Top = 224
                      Width = 240
                      Height = 70
                      Hint = 't1w180h0;'
                      TabOrder = 10
                      Caption = ''
                      Color = 16249327
                      object UniContainerPanel73: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 238
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel54: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 89
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Cancelar cupom'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compCANCELARCUPOM: TUniFSToggle
                        AlignWithMargins = True
                        Left = 11
                        Top = 33
                        Width = 218
                        Height = 31
                        Hint = ''
                        Margins.Left = 10
                        Margins.Top = 5
                        Margins.Right = 10
                        Margins.Bottom = 5
                        ThemeOn = Success
                        ThemeOff = Gray
                        TitleOn = 'Sim'
                        TitleOff = 'N'#227'o'
                        Align = alClient
                      end
                    end
                    object UniPanel91: TUniPanel
                      Left = 3
                      Top = 224
                      Width = 240
                      Height = 70
                      Hint = 't1w180h0;'
                      TabOrder = 11
                      Caption = ''
                      Color = 16249327
                      object UniContainerPanel74: TUniContainerPanel
                        Left = 1
                        Top = 1
                        Width = 238
                        Height = 27
                        Hint = ''
                        Margins.Left = 8
                        Margins.Top = 5
                        Margins.Right = 12
                        Margins.Bottom = 5
                        ParentColor = False
                        Align = alTop
                        TabOrder = 1
                        TabStop = False
                        LayoutConfig.Cls = 'body_grdnt_rounded'
                        object UniLabel55: TUniLabel
                          AlignWithMargins = True
                          Left = 10
                          Top = 3
                          Width = 91
                          Height = 17
                          Hint = ''
                          Margins.Left = 10
                          Caption = 'Aplicar desconto'
                          Align = alTop
                          ParentFont = False
                          Font.Color = clBlack
                          Font.Height = -13
                          Font.Name = 'Segoe UI Light'
                          TabOrder = 1
                        end
                      end
                      object compAPLICADESCONTO: TUniFSToggle
                        AlignWithMargins = True
                        Left = 11
                        Top = 33
                        Width = 218
                        Height = 31
                        Hint = ''
                        Margins.Left = 10
                        Margins.Top = 5
                        Margins.Right = 10
                        Margins.Bottom = 5
                        ThemeOn = Success
                        ThemeOff = Gray
                        TitleOn = 'Sim'
                        TitleOff = 'N'#227'o'
                        Align = alClient
                      end
                    end
                  end
                end
              end
            end
            object cpMenuRodape: TUniContainerPanel
              Left = 0
              Top = 932
              Width = 1227
              Height = 40
              Hint = ''
              ParentColor = False
              Align = alBottom
              TabOrder = 2
              LayoutConfig.Cls = 'body_grdnt_rounded'
              object btnSalvar: TUniSFBitBtn
                AlignWithMargins = True
                Left = 1102
                Top = 5
                Width = 120
                Height = 30
                Hint = ''
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 5
                ParentShowHint = False
                Caption = 'SALVAR'
                Align = alRight
                TabOrder = 1
                Scale = bbsSmall
                LayoutConfig.Cls = 'botaoSemBorda'
                OnClick = btnSalvarClick
                FAIcon.Icon = fa_check_circle
                FAIcon.Size = fs_16
                FAIcon.Color = fc_white
                FAIcon.Style = regular
                ButtonStyles = bs_danger
              end
              object btnCancelar: TUniSFBitBtn
                AlignWithMargins = True
                Left = 972
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
              object compATIVO: TUniFSToggle
                AlignWithMargins = True
                Left = 10
                Top = 5
                Width = 80
                Height = 30
                Hint = ''
                Margins.Left = 10
                Margins.Top = 5
                Margins.Right = 10
                Margins.Bottom = 5
                ThemeOn = Success
                ThemeOff = Gray
                TitleOn = 'Ativo'
                TitleOff = 'Inativo'
                Align = alLeft
              end
            end
          end
        end
      end
    end
  end
  object cpMenuTopo: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 1241
    Height = 40
    Hint = ''
    ParentColor = False
    Align = alTop
    TabOrder = 1
    TabStop = False
    object lblDescricao: TUniLabel
      AlignWithMargins = True
      Left = 46
      Top = 7
      Width = 168
      Height = 21
      Hint = ''
      Margins.Top = 7
      Caption = 'CONFIGURA'#199#213'ES NFC-e'
      Align = alLeft
      ParentFont = False
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      TabOrder = 1
    end
    object btnNovo: TUniSFBitBtn
      AlignWithMargins = True
      Left = 10
      Top = 3
      Width = 30
      Height = 28
      Hint = 'Novo registro'
      Margins.Left = 10
      ShowHint = True
      ParentShowHint = False
      Caption = '   '
      Align = alLeft
      TabOrder = 2
      Scale = bbsMedium
      IconAlign = iaTop
      FAIcon.Icon = fa_plus_circle
      FAIcon.Size = fs_24
      FAIcon.Color = fc_primary
      ButtonStyles = bs_transparent
    end
    object UniContainerPanel27: TUniContainerPanel
      AlignWithMargins = True
      Left = 3
      Top = 37
      Width = 738
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
    object btnFechar: TUniSFBitBtn
      AlignWithMargins = True
      Left = 1212
      Top = 3
      Width = 26
      Height = 28
      Hint = ''
      Visible = False
      Caption = ''
      Align = alRight
      ParentFont = False
      Font.Color = clGray
      TabStop = False
      TabOrder = 4
      Scale = bbsSmall
      LayoutConfig.Cls = 'botaoPadraoManipulacao'
      FAIcon.Icon = fa_times
      FAIcon.Size = fs_16
      FAIcon.Color = fc_grey
      ButtonStyles = bs_transparent
    end
  end
  object rg1: TRGLayoutUnigui
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
    Left = 528
    Top = 331
  end
  object rg2: TRGLayoutUnigui
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
    Left = 584
    Top = 331
  end
  object rg3: TRGLayoutUnigui
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
    Left = 640
    Top = 331
  end
  object rg4: TRGLayoutUnigui
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
    Left = 696
    Top = 331
  end
  object rg5: TRGLayoutUnigui
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
    Left = 752
    Top = 331
  end
  object rg6: TRGLayoutUnigui
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
    Left = 808
    Top = 331
  end
  object rg7: TRGLayoutUnigui
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
    Left = 864
    Top = 331
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
  object alertaM: TUniSFiGrowl
    Spacing = 4
    AlertSize = as_Regular
    FAIcon.Icon = fa_none
    FAIcon.Size = fs_32
    FAIcon.Color = fc_white
    iType = it_info
    AnimationEnable = True
    PlacementX = px_left
    Left = 384
    Top = 587
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
  object CDSTela: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1151
    Top = 334
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
  object DSTela: TDataSource
    DataSet = CDSTela
    Left = 1047
    Top = 326
  end
end
