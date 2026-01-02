object fraCadCfop: TfraCadCfop
  Left = 0
  Top = 0
  Width = 1131
  Height = 696
  OnCreate = UniFrameCreate
  OnReady = UniFrameReady
  TabOrder = 0
  object cpMenuTopo: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 1131
    Height = 40
    Hint = ''
    ParentColor = False
    Align = alTop
    TabOrder = 0
    TabStop = False
    object lblDescricao: TUniLabel
      AlignWithMargins = True
      Left = 46
      Top = 7
      Width = 143
      Height = 21
      Hint = ''
      Margins.Top = 7
      Caption = 'CADASTRO DE CFOP'
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
      OnClick = btnNovoClick
      FAIcon.Icon = fa_plus_circle
      FAIcon.Size = fs_24
      FAIcon.Color = fc_primary
      ButtonStyles = bs_transparent
    end
    object UniContainerPanel27: TUniContainerPanel
      AlignWithMargins = True
      Left = 3
      Top = 37
      Width = 628
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
      Left = 1102
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
  object imgFundo: TUniImage
    Left = 0
    Top = 40
    Width = 1131
    Height = 656
    Hint = ''
    Align = alClient
  end
  object scrFundo: TUniScrollBox
    Left = 0
    Top = 40
    Width = 1131
    Height = 656
    Hint = ''
    Align = alClient
    TabOrder = 2
    object pgcTela: TUniPageControl
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1123
      Height = 648
      Hint = ''
      ActivePage = tabNovo
      TabBarVisible = False
      Align = alClient
      TabOrder = 0
      object UniTabSheet1: TUniTabSheet
        Hint = ''
        Caption = 'Listagem'
        object gridTela: TUniDBGrid
          Left = 0
          Top = 71
          Width = 1115
          Height = 549
          Hint = ''
          DataSource = DSTela
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
          LoadMask.Message = 'Loading data...'
          ForceFit = True
          LayoutConfig.Cls = 'dbgrid-light responsiva mostrar-mobile'
          Align = alClient
          TabOrder = 0
          OnCellClick = gridTelaCellClick
          OnDrawColumnCell = gridTelaDrawColumnCell
          Columns = <
            item
              FieldName = 'id'
              Title.Caption = 'Id'
              Width = 64
            end
            item
              FieldName = 'codCfop'
              Title.Caption = 'C'#243'digo'
              Width = 50
            end
            item
              FieldName = 'natureza'
              Title.Caption = 'Nome'
              Width = 200
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
            end
            item
              FieldName = 'botaoEditar'
              Title.Caption = ' '
              Width = 80
            end>
        end
        object cpPesquisa: TUniContainerPanel
          AlignWithMargins = True
          Left = 0
          Top = 3
          Width = 1115
          Height = 65
          Hint = ''
          Margins.Left = 0
          Margins.Right = 0
          ParentColor = False
          Color = clWhite
          Align = alTop
          TabOrder = 1
          LayoutConfig.Cls = 'painel-sem-borda'
          object UniContainerPanel22: TUniContainerPanel
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 150
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
              Width = 63
              Height = 16
              Hint = ''
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'PESQUISA'
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
              Width = 142
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
                Width = 142
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
                OnKeyPress = edPesquisarKeyPress
              end
            end
          end
          object UniContainerPanel24: TUniContainerPanel
            AlignWithMargins = True
            Left = 155
            Top = 0
            Width = 180
            Height = 65
            Hint = ''
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 0
            ParentColor = False
            Color = clWhite
            Align = alLeft
            TabOrder = 2
            LayoutConfig.Cls = 'painel-sem-borda'
            object UniSFLabel1: TUniSFLabel
              AlignWithMargins = True
              Left = 3
              Top = 5
              Width = 66
              Height = 16
              Hint = ''
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'RECURSOS'
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
            object UniContainerPanel26: TUniContainerPanel
              AlignWithMargins = True
              Left = 3
              Top = 26
              Width = 172
              Height = 34
              Hint = ''
              Margins.Top = 0
              Margins.Right = 5
              Margins.Bottom = 5
              ParentColor = False
              Color = clWhite
              Align = alClient
              TabOrder = 2
              LayoutConfig.Cls = 'painel-sem-borda'
              object UniSFBitBtn1: TUniSFBitBtn
                Left = 0
                Top = 0
                Width = 172
                Height = 34
                Hint = ''
                Margins.Top = 2
                Margins.Bottom = 5
                ParentShowHint = False
                Caption = 'Exportar para Excel'
                Align = alClient
                TabOrder = 1
                Scale = bbsSmall
                LayoutConfig.Cls = 'botao'
                FAIcon.Icon = fa_chart_bar
                FAIcon.Size = fs_16
                FAIcon.Color = fc_white
                ButtonStyles = bs_primary
              end
            end
          end
        end
      end
      object tabNovo: TUniTabSheet
        Hint = ''
        TabVisible = False
        Caption = 'tabRegistro'
        object UniContainerPanel12: TUniContainerPanel
          AlignWithMargins = True
          Left = 8
          Top = 5
          Width = 1095
          Height = 27
          Hint = ''
          Margins.Left = 8
          Margins.Top = 5
          Margins.Right = 12
          Margins.Bottom = 0
          ParentColor = False
          Align = alTop
          TabOrder = 0
          TabStop = False
          LayoutConfig.Cls = 'body_grdnt_rounded'
          object compTitulo: TUniLabel
            AlignWithMargins = True
            Left = 10
            Top = 3
            Width = 109
            Height = 17
            Hint = ''
            Margins.Left = 10
            Caption = 'ALTERAR REGISTRO'
            Align = alTop
            ParentFont = False
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI Light'
            TabOrder = 1
          end
        end
        object pn1: TUniPanel
          Left = 0
          Top = 32
          Width = 1115
          Height = 548
          Hint = ''
          Align = alClient
          TabOrder = 1
          Caption = 'pn1'
          object sBoxFundoRegistro: TUniScrollBox
            Left = 2
            Top = -97
            Width = 1113
            Height = 546
            Hint = ''
            Color = 16249327
            TabOrder = 1
            ScrollHeight = 625
            ScrollWidth = 1127
            ScrollY = 48
            object UniPanel2: TUniPanel
              Left = 10
              Top = -39
              Width = 256
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 0
              Caption = ''
              Color = 16249327
              object compCODCFOP: TUniEdit
                Left = 1
                Top = 28
                Width = 254
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
              object UniContainerPanel9: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 254
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
                object UniLabel10: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 39
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'C'#243'digo'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
            end
            object UniPanel3: TUniPanel
              Left = 276
              Top = -38
              Width = 306
              Height = 70
              Hint = 't1w500h0;'
              TabOrder = 1
              Caption = 'UniPanel3'
              Color = 16249327
              object compNATUREZA: TUniEdit
                Left = 1
                Top = 28
                Width = 304
                Height = 41
                Hint = ''
                MaxLength = 50
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 1
              end
              object UniContainerPanel10: TUniContainerPanel
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
                object UniLabel1: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 49
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Natureza'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
            end
            object UniPanel4: TUniPanel
              Left = 52
              Top = 52
              Width = 1075
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 2
              Caption = ''
              Color = 16249327
            end
            object UniPanel28: TUniPanel
              Left = 18
              Top = 62
              Width = 167
              Height = 70
              Hint = 't1w200h0;'
              TabOrder = 3
              Caption = ''
              Color = 16249327
              object compCFOPD: TUniEdit
                Left = 1
                Top = 28
                Width = 165
                Height = 41
                Hint = ''
                CharCase = ecUpperCase
                MaxLength = 6
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 1
              end
              object UniContainerPanel34: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 165
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
                object UniLabel28: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 71
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'CFOP dentro'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
            end
            object UniPanel5: TUniPanel
              Left = 200
              Top = 62
              Width = 167
              Height = 70
              Hint = 't1w200h0;'
              TabOrder = 4
              Caption = ''
              Color = 16249327
              object compCFOPF: TUniEdit
                Left = 1
                Top = 28
                Width = 165
                Height = 41
                Hint = ''
                CharCase = ecUpperCase
                MaxLength = 6
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 1
              end
              object UniContainerPanel2: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 165
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
                object UniLabel3: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 56
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'CFOP fora'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
            end
            object UniPanel41: TUniPanel
              Left = 580
              Top = 62
              Width = 166
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 6
              Caption = 'UniPanel4'
              Color = clWhite
              object UniContainerPanel40: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 164
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
                  Width = 190
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Indicador presencial do comprador'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compINDPRES: TUniSFComboBox
                Left = 11
                Top = 44
                Width = 142
                Hint = ''
                Text = ''
                TabOrder = 2
                Items.Strings = (
                  
                    '0=N'#227'o se aplica (por exemplo, para a Nota Fiscal complementar ou' +
                    ' de ajuste)'
                  '1=Opera'#231#227'o presencial'
                  '2=Opera'#231#227'o n'#227'o presencial, pela Internet'
                  '3=Opera'#231#227'o n'#227'o presencial, Teleatendimento'
                  '4=NFC-e em opera'#231#227'o com entrega em domic'#237'lio'
                  '5=Opera'#231#227'o presencial, fora do estabelecimento'
                  '9=Opera'#231#227'o n'#227'o presencial, outros')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
            object UniPanel7: TUniPanel
              Left = 52
              Top = 142
              Width = 1075
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 7
              Caption = ''
              Color = 16249327
            end
            object UniPanel8: TUniPanel
              Left = 390
              Top = 62
              Width = 167
              Height = 70
              Hint = 't1w200h0;'
              TabOrder = 5
              Caption = ''
              Color = clWhite
              object UniContainerPanel4: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 165
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
                object UniLabel4: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 169
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Finalidade de emiss'#227'o da NF-e'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compFINNFE: TUniSFComboBox
                Left = 3
                Top = 44
                Width = 150
                Hint = ''
                Text = ''
                TabOrder = 2
                Items.Strings = (
                  '1=NF-e normal'
                  '2=NF-e complementar'
                  '3=NF-e de ajuste'
                  '4=Devolu'#231#227'o/Retorno')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
            object UniPanel10: TUniPanel
              Left = 18
              Top = 152
              Width = 167
              Height = 70
              Hint = 't1w200h0;'
              TabOrder = 8
              Caption = ''
              Color = 16249327
              object compSTR_CFOPSTDENTRO: TUniEdit
                Left = 1
                Top = 28
                Width = 165
                Height = 41
                Hint = ''
                CharCase = ecUpperCase
                MaxLength = 5
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 1
              end
              object UniContainerPanel5: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 165
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
                  Width = 88
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'CFOP ST dentro'
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
              Left = 199
              Top = 152
              Width = 166
              Height = 70
              Hint = 't1w200h0;'
              TabOrder = 9
              Caption = 'UniPanel4'
              Color = clWhite
              object compSTR_CFOPSTFORA: TUniEdit
                Left = 1
                Top = 28
                Width = 164
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
              object UniContainerPanel6: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 164
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
                object UniLabel6: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 73
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'CFOP ST fora'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
            end
            object UniPanel13: TUniPanel
              Left = 52
              Top = 232
              Width = 1075
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 12
              Caption = ''
              Color = 16249327
            end
            object UniPanel15: TUniPanel
              Left = 18
              Top = 252
              Width = 166
              Height = 70
              Hint = 't1w200h0;'
              TabOrder = 13
              Caption = 'UniPanel3'
              Color = 16249327
              object UniContainerPanel8: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 164
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
                object UniLabel7: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 106
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Gera PIS na venda?'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compGERAPISV: TUniFSToggle
                AlignWithMargins = True
                Left = 11
                Top = 33
                Width = 103
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
                Align = alLeft
              end
            end
            object UniPanel9: TUniPanel
              Left = 391
              Top = 152
              Width = 166
              Height = 70
              Hint = 't1w200h0;'
              TabOrder = 10
              Caption = 'UniPanel4'
              Color = 16249327
              object UniContainerPanel13: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 164
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
                object UniLabel9: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 183
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Gera movimenta'#231#227'o de estoque?'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compGERAMV: TUniFSToggle
                AlignWithMargins = True
                Left = 11
                Top = 33
                Width = 103
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
                Align = alLeft
              end
            end
            object UniPanel14: TUniPanel
              Left = 580
              Top = 150
              Width = 166
              Height = 70
              Hint = 't1w200h0;'
              TabOrder = 11
              Caption = 'UniPanel4'
              Color = 16249327
              object UniContainerPanel14: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 164
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
                  Width = 99
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Cobran'#231'a na NF-e'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compIMPFATURA: TUniFSToggle
                AlignWithMargins = True
                Left = 11
                Top = 33
                Width = 103
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
                Align = alLeft
              end
            end
            object UniPanel16: TUniPanel
              Left = 494
              Top = 252
              Width = 166
              Height = 70
              Hint = 't1w200h0;'
              TabOrder = 16
              Caption = 'UniPanel3'
              Color = 16249327
              object UniContainerPanel15: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 164
                Height = 27
                Hint = ''
                Margins.Left = 8
                Margins.Top = 5
                Margins.Right = 12
                Margins.Bottom = 5
                ParentColor = False
                Color = 16249327
                Align = alTop
                TabOrder = 1
                TabStop = False
                LayoutConfig.Cls = 'body_grdnt_rounded'
                object UniLabel12: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 114
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Gera PIS na compra?'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compGERAPISC: TUniFSToggle
                AlignWithMargins = True
                Left = 11
                Top = 33
                Width = 103
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
                Align = alLeft
              end
            end
            object UniPanel6: TUniPanel
              Left = 198
              Top = 252
              Width = 85
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 14
              Caption = 'UniPanel4'
              Color = clWhite
              object UniContainerPanel3: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 83
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
              end
              object UniLabel8: TUniLabel
                AlignWithMargins = True
                Left = 11
                Top = 49
                Width = 56
                Height = 17
                Hint = ''
                Margins.Left = 10
                Alignment = taCenter
                Caption = 'Se "N" -->'
                Align = alBottom
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 2
              end
            end
            object UniPanel12: TUniPanel
              Left = 297
              Top = 253
              Width = 166
              Height = 70
              Hint = 't1w200h0;'
              TabOrder = 15
              Caption = 'UniPanel4'
              Color = clWhite
              object compSTPISV: TUniEdit
                Left = 1
                Top = 28
                Width = 124
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
              object UniContainerPanel7: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 164
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
                object UniLabel13: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 42
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Sit. Trib.'
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
                Left = 130
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
            object UniPanel17: TUniPanel
              Left = 674
              Top = 254
              Width = 85
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 17
              Caption = 'UniPanel4'
              Color = 16249327
              object UniContainerPanel11: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 83
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
              end
              object UniLabel14: TUniLabel
                AlignWithMargins = True
                Left = 11
                Top = 49
                Width = 56
                Height = 17
                Hint = ''
                Margins.Left = 10
                Alignment = taCenter
                Caption = 'Se "N" -->'
                Align = alBottom
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 2
              end
            end
            object UniPanel18: TUniPanel
              Left = 773
              Top = 254
              Width = 166
              Height = 70
              Hint = 't1w200h0;'
              TabOrder = 18
              Caption = 'UniPanel4'
              Color = clWhite
              object compSTPISC: TUniEdit
                Left = 1
                Top = 28
                Width = 124
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
              object UniContainerPanel16: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 164
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
                object UniLabel15: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 42
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Sit. Trib.'
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
                Left = 130
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
            object UniPanel19: TUniPanel
              Left = 33
              Top = 330
              Width = 1075
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 19
              Caption = ''
              Color = 16249327
            end
            object UniPanel20: TUniPanel
              Left = 19
              Top = 348
              Width = 166
              Height = 70
              Hint = 't1w200h0;'
              TabOrder = 20
              Caption = 'UniPanel3'
              Color = 16249327
              object UniContainerPanel17: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 164
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
                object UniLabel16: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 132
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Gera COFINS na venda?'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compGERACOFINSV: TUniFSToggle
                AlignWithMargins = True
                Left = 11
                Top = 33
                Width = 103
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
                Align = alLeft
              end
            end
            object UniPanel21: TUniPanel
              Left = 199
              Top = 348
              Width = 85
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 21
              Caption = 'UniPanel4'
              Color = 16249327
              object UniContainerPanel18: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 83
                Height = 27
                Hint = ''
                Margins.Left = 8
                Margins.Top = 5
                Margins.Right = 12
                Margins.Bottom = 5
                ParentColor = False
                Color = 16249327
                Align = alTop
                TabOrder = 1
                TabStop = False
                LayoutConfig.Cls = 'body_grdnt_rounded'
              end
              object UniLabel17: TUniLabel
                AlignWithMargins = True
                Left = 11
                Top = 49
                Width = 56
                Height = 17
                Hint = ''
                Margins.Left = 10
                Alignment = taCenter
                Caption = 'Se "N" -->'
                Align = alBottom
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 2
              end
            end
            object UniPanel22: TUniPanel
              Left = 298
              Top = 349
              Width = 166
              Height = 70
              Hint = 't1w200h0;'
              TabOrder = 22
              Caption = 'UniPanel4'
              Color = clWhite
              object compSTCOFINSV: TUniEdit
                Left = 1
                Top = 28
                Width = 124
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
              object UniContainerPanel19: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 164
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
                  Width = 42
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Sit. Trib.'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object UniSFBitBtn3: TUniSFBitBtn
                AlignWithMargins = True
                Left = 130
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
                OnClick = UniSFBitBtn3Click
                FAIcon.Icon = fa_search
                FAIcon.Size = fs_16
                FAIcon.Color = fc_grey
                ButtonStyles = bs_transparent
              end
            end
            object UniPanel23: TUniPanel
              Left = 495
              Top = 348
              Width = 166
              Height = 70
              Hint = 't1w200h0;'
              TabOrder = 23
              Caption = 'UniPanel3'
              Color = 16249327
              object UniContainerPanel20: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 164
                Height = 27
                Hint = ''
                Margins.Left = 8
                Margins.Top = 5
                Margins.Right = 12
                Margins.Bottom = 5
                ParentColor = False
                Color = 16249327
                Align = alTop
                TabOrder = 1
                TabStop = False
                LayoutConfig.Cls = 'body_grdnt_rounded'
                object UniLabel19: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 140
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Gera COFINS na compra?'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compGERACOFINSC: TUniFSToggle
                AlignWithMargins = True
                Left = 11
                Top = 33
                Width = 103
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
                Align = alLeft
              end
            end
            object UniPanel24: TUniPanel
              Left = 675
              Top = 349
              Width = 85
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 24
              Caption = 'UniPanel4'
              Color = 16249327
              object UniContainerPanel21: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 83
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
              end
              object UniLabel20: TUniLabel
                AlignWithMargins = True
                Left = 11
                Top = 49
                Width = 56
                Height = 17
                Hint = ''
                Margins.Left = 10
                Alignment = taCenter
                Caption = 'Se "N" -->'
                Align = alBottom
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 2
              end
            end
            object UniPanel25: TUniPanel
              Left = 774
              Top = 350
              Width = 166
              Height = 70
              Hint = 't1w200h0;'
              TabOrder = 25
              Caption = 'UniPanel4'
              Color = clWhite
              object compSTCOFINSC: TUniEdit
                Left = 1
                Top = 28
                Width = 124
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
              object UniContainerPanel25: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 164
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
                  Width = 42
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Sit. Trib.'
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
                Left = 130
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
            object UniPanel26: TUniPanel
              Left = 37
              Top = 426
              Width = 1075
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 26
              Caption = ''
              Color = 16249327
            end
            object UniPanel27: TUniPanel
              Left = 20
              Top = 434
              Width = 166
              Height = 70
              Hint = 't1w200h0;'
              TabOrder = 27
              Caption = 'UniPanel3'
              Color = 16249327
              object UniContainerPanel28: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 164
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
                object UniLabel22: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 103
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Gera IPI na venda?'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compGERAIPIV: TUniFSToggle
                AlignWithMargins = True
                Left = 11
                Top = 33
                Width = 103
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
                Align = alLeft
              end
            end
            object UniPanel29: TUniPanel
              Left = 496
              Top = 434
              Width = 166
              Height = 70
              Hint = 't1w200h0;'
              TabOrder = 30
              Caption = 'UniPanel3'
              Color = 16249327
              object UniContainerPanel29: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 164
                Height = 27
                Hint = ''
                Margins.Left = 8
                Margins.Top = 5
                Margins.Right = 12
                Margins.Bottom = 5
                ParentColor = False
                Color = 16249327
                Align = alTop
                TabOrder = 1
                TabStop = False
                LayoutConfig.Cls = 'body_grdnt_rounded'
                object UniLabel23: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 111
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Gera IPI na compra?'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compGERAIPIC: TUniFSToggle
                AlignWithMargins = True
                Left = 11
                Top = 33
                Width = 103
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
                Align = alLeft
              end
            end
            object UniPanel30: TUniPanel
              Left = 17
              Top = 522
              Width = 1075
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 33
              Caption = ''
              Color = 16249327
            end
            object UniPanel31: TUniPanel
              Left = 18
              Top = 539
              Width = 728
              Height = 38
              Hint = 't1w600h0;'
              TabOrder = 34
              Caption = 'UniPanel3'
              Color = 16249327
              object UniContainerPanel30: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 726
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
                object UniLabel24: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 575
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 
                    'Obs: Se a gerra'#231#227'o do imposto for "S", digitar a situa'#231#227'o tribut' +
                    #225'ia corespondente no cadasto de produtos.'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clRed
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
            end
            object UniPanel32: TUniPanel
              Left = 200
              Top = 433
              Width = 85
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 28
              Caption = 'UniPanel4'
              Color = 16249327
              object UniContainerPanel31: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 83
                Height = 27
                Hint = ''
                Margins.Left = 8
                Margins.Top = 5
                Margins.Right = 12
                Margins.Bottom = 5
                ParentColor = False
                Color = 16249327
                Align = alTop
                TabOrder = 1
                TabStop = False
                LayoutConfig.Cls = 'body_grdnt_rounded'
              end
              object UniLabel25: TUniLabel
                AlignWithMargins = True
                Left = 11
                Top = 49
                Width = 56
                Height = 17
                Hint = ''
                Margins.Left = 10
                Alignment = taCenter
                Caption = 'Se "N" -->'
                Align = alBottom
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 2
              end
            end
            object compaa: TUniPanel
              Left = 299
              Top = 434
              Width = 166
              Height = 70
              Hint = 't1w200h0;'
              TabOrder = 29
              Caption = 'UniPanel4'
              Color = clWhite
              object compSTIPIV: TUniEdit
                Left = 1
                Top = 28
                Width = 124
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
              object UniContainerPanel32: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 164
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
                  Width = 42
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Sit. Trib.'
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
                Left = 130
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
            object UniPanel34: TUniPanel
              Left = 674
              Top = 433
              Width = 85
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 31
              Caption = 'UniPanel4'
              Color = 16249327
              object UniContainerPanel33: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 83
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
              end
              object UniLabel27: TUniLabel
                AlignWithMargins = True
                Left = 11
                Top = 49
                Width = 56
                Height = 17
                Hint = ''
                Margins.Left = 10
                Alignment = taCenter
                Caption = 'Se "N" -->'
                Align = alBottom
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 2
              end
            end
            object compaaa: TUniPanel
              Left = 773
              Top = 434
              Width = 166
              Height = 70
              Hint = 't1w200h0;'
              TabOrder = 32
              Caption = 'UniPanel4'
              Color = clWhite
              object compSTIPIC: TUniEdit
                Left = 1
                Top = 28
                Width = 124
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
              object UniContainerPanel35: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 164
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
                object UniLabel29: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 42
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Sit. Trib.'
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
                Left = 130
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
        object cpMenuRodape: TUniContainerPanel
          Left = 0
          Top = 580
          Width = 1115
          Height = 40
          Hint = ''
          ParentColor = False
          Align = alBottom
          TabOrder = 2
          LayoutConfig.Cls = 'body_grdnt_rounded'
          object btnSalvar: TUniSFBitBtn
            AlignWithMargins = True
            Left = 990
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
            Left = 860
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
          object compativo: TUniFSToggle
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
            OnToggled = compativoToggled
            Align = alLeft
          end
        end
      end
    end
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
    Left = 656
    Top = 547
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
    Left = 543
    Top = 182
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
  object RG1: TRGLayoutUnigui
    Enabled = False
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    HeightEntreCampos = 8
    WidthEntreCampos = 20
    Panel = pn1
    Frame = Owner
    HeightCampos = 70
    ScrollBox = sBoxFundoRegistro
    TamanhoMinimoCampos = 100
    TopInicialCampos = 20
    Left = 64
    Top = 403
  end
  object DSTela: TDataSource
    DataSet = CDSTela
    Left = 759
    Top = 294
  end
end
