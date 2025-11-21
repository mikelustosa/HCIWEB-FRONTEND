object fraCadBancos: TfraCadBancos
  Left = 0
  Top = 0
  Width = 1029
  Height = 762
  OnCreate = UniFrameCreate
  OnReady = UniFrameReady
  TabOrder = 0
  ClientEvents.UniEvents.Strings = (
    
      'beforeInit=function window.beforeInit(sender, config)'#13#10'{'#13#10'   sen' +
      'der.cls="slide-in-left";'#13#10'}')
  object imgFundo: TUniImage
    Left = 0
    Top = 40
    Width = 1029
    Height = 722
    Hint = ''
    Align = alClient
  end
  object scrFundo: TUniScrollBox
    Left = 0
    Top = 40
    Width = 1029
    Height = 722
    Hint = ''
    Align = alClient
    TabOrder = 1
    object pgcTela: TUniPageControl
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1021
      Height = 714
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
          Width = 1013
          Height = 615
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
              Title.Caption = 'ID'
              Width = 64
            end
            item
              FieldName = 'codBan'
              Title.Caption = 'C'#243'digo'
              Width = 100
            end
            item
              FieldName = 'nome'
              Title.Caption = 'nome'
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
          Width = 1013
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
          Width = 993
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
          Width = 1013
          Height = 614
          Hint = ''
          Align = alClient
          TabOrder = 1
          Caption = 'pn1'
          object sBoxFundoRegistro: TUniScrollBox
            Left = 3
            Top = -1
            Width = 1129
            Height = 559
            Hint = ''
            Color = 16249327
            TabOrder = 1
            ScrollHeight = 463
            ScrollWidth = 991
            object UniPanel2: TUniPanel
              Left = 10
              Top = 9
              Width = 256
              Height = 70
              Hint = 't1w500h0;'
              TabOrder = 0
              Caption = ''
              Color = 16249327
              object compcodBan: TUniEdit
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
              Left = 271
              Top = 9
              Width = 256
              Height = 70
              Hint = 't1w250h0;'
              TabOrder = 1
              Caption = 'UniPanel3'
              Color = 16249327
              object compnome: TUniEdit
                Left = 1
                Top = 28
                Width = 254
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
                object UniLabel1: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 89
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Nome do Banco'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
            end
            object UniPanel1: TUniPanel
              Left = 551
              Top = 9
              Width = 256
              Height = 70
              Hint = 't1w250h0;'
              TabOrder = 2
              Caption = 'UniPanel3'
              Color = 16249327
              object compconta: TUniEdit
                Left = 1
                Top = 28
                Width = 254
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
              object UniContainerPanel1: TUniContainerPanel
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
                object UniLabel2: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 32
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Conta'
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
              Left = 15
              Top = 121
              Width = 150
              Height = 70
              Hint = 't1w150h0;'
              TabOrder = 3
              Caption = 'UniPanel3'
              Color = 16249327
              object compagencia: TUniEdit
                Left = 1
                Top = 28
                Width = 148
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
              object UniContainerPanel2: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 148
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
                  Width = 44
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Ag'#234'ncia'
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
              Left = 191
              Top = 121
              Width = 100
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 4
              Caption = 'UniPanel3'
              Color = 16249327
              object compdigitoAgencia: TUniEdit
                Left = 1
                Top = 28
                Width = 98
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
              object UniContainerPanel3: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 98
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
                  Caption = 'Digito'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
            end
            object UniPanel6: TUniPanel
              Left = 319
              Top = 121
              Width = 256
              Height = 70
              Hint = 't1w250h0;'
              TabOrder = 5
              Caption = 'UniPanel3'
              Color = 16249327
              object compcontaBan: TUniEdit
                Left = 1
                Top = 28
                Width = 254
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
              object UniContainerPanel4: TUniContainerPanel
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
                object UniLabel5: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 69
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Conta Banco'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
            end
            object UniPanel7: TUniPanel
              Left = 599
              Top = 121
              Width = 100
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 6
              Caption = 'UniPanel3'
              Color = 16249327
              object compdigitoContaBan: TUniEdit
                Left = 1
                Top = 28
                Width = 98
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
              object UniContainerPanel5: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 98
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
                  Width = 33
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Digito'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
            end
            object UniPanel8: TUniPanel
              Left = 743
              Top = 121
              Width = 150
              Height = 70
              Hint = 't1w150h0;'
              TabOrder = 7
              Caption = 'UniPanel3'
              Color = 16249327
              object compnossonumero: TUniEdit
                Left = 1
                Top = 28
                Width = 148
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
              object UniContainerPanel6: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 148
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
                  Caption = 'Nosso n'#250'mero'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
            end
            object UniPanel18: TUniPanel
              Left = 10
              Top = 209
              Width = 250
              Height = 70
              Hint = 't1w250h0;'
              TabOrder = 8
              Caption = 'UniPanel4'
              Color = clWhite
              object UniContainerPanel19: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 248
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
                object UniLabel18: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 179
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Banco Layout remessa CNAB400'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compbancoremessa: TUniSFComboBox
                Left = 3
                Top = 36
                Width = 250
                Hint = ''
                Text = ''
                TabOrder = 2
                Items.Strings = (
                  '033 - Santander'
                  '237 - Bradesco'
                  '001 - Brasil'
                  '104 - Caixa'
                  '341 - Ita'#250
                  '748 - Sicredi')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
            object UniPanel16: TUniPanel
              Left = 295
              Top = 209
              Width = 150
              Height = 70
              Hint = 't1w150h0;'
              TabOrder = 9
              Caption = 'UniPanel4'
              Color = clWhite
              object comptelefone: TUniEdit
                Left = 1
                Top = 28
                Width = 148
                Height = 41
                Hint = ''
                MaxLength = 11
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 1
              end
              object UniContainerPanel17: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 148
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
                  Width = 47
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Telefone'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
            end
            object UniPanel9: TUniPanel
              Left = 471
              Top = 209
              Width = 256
              Height = 70
              Hint = 't1w250h0;'
              TabOrder = 10
              Caption = 'UniPanel3'
              Color = 16249327
              object compcontato: TUniEdit
                Left = 1
                Top = 28
                Width = 254
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
              object UniContainerPanel7: TUniContainerPanel
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
                object UniLabel8: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 43
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Contato'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
            end
            object UniPanel10: TUniPanel
              Left = 735
              Top = 209
              Width = 256
              Height = 70
              Hint = 't1w250h0;'
              TabOrder = 11
              Caption = 'UniPanel3'
              Color = 16249327
              object compempresa: TUniEdit
                Left = 1
                Top = 28
                Width = 254
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
              object UniContainerPanel8: TUniContainerPanel
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
                object UniLabel9: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 110
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Pertence a empresa'
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
              Left = 7
              Top = 305
              Width = 150
              Height = 70
              Hint = 't1w150h0;'
              TabOrder = 12
              Caption = 'UniPanel3'
              Color = 16249327
              object compsaldo: TUniEdit
                Left = 1
                Top = 28
                Width = 148
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
              object UniContainerPanel14: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 148
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
                  Width = 29
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Saldo'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
            end
            object UniPanel14: TUniPanel
              Left = 199
              Top = 305
              Width = 150
              Height = 70
              Hint = 't1w150h0;'
              TabOrder = 13
              Caption = 'UniPanel3'
              Color = 16249327
              object compsaldoC: TUniEdit
                Left = 1
                Top = 28
                Width = 148
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
              object UniContainerPanel15: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 148
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
                object UniLabel14: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 57
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Conciliado'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
            end
            object UniPanel15: TUniPanel
              Left = 394
              Top = 305
              Width = 250
              Height = 70
              Hint = 't1w250h0;'
              TabOrder = 14
              Caption = 'UniPanel4'
              Color = clWhite
              object UniContainerPanel16: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 248
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
                object UniLabel15: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 188
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Edita Nosso N'#250'mero na Remessa?'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compedtremessa: TUniSFComboBox
                Left = 3
                Top = 36
                Width = 250
                Hint = ''
                Text = ''
                TabOrder = 2
                Items.Strings = (
                  'S'
                  'N')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
            object UniPanel11: TUniPanel
              Left = 703
              Top = 305
              Width = 150
              Height = 70
              Hint = 't1w150h0;'
              TabOrder = 15
              Caption = 'UniPanel3'
              Color = 16249327
              object compcarteira: TUniEdit
                Left = 1
                Top = 28
                Width = 148
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
              object UniContainerPanel11: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 148
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
                object UniLabel11: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 43
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Carteira'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
            end
            object UniPanel12: TUniPanel
              Left = 402
              Top = 393
              Width = 250
              Height = 70
              Hint = 't1w250h0;'
              TabOrder = 16
              Caption = 'UniPanel4'
              Color = clWhite
              object UniContainerPanel13: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 248
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
                  Width = 60
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Tipo CNAB'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compcnab: TUniSFComboBox
                Left = 3
                Top = 36
                Width = 250
                Hint = ''
                Text = ''
                TabOrder = 2
                Items.Strings = (
                  '240'
                  '400')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
            object UniPanel17: TUniPanel
              Left = 738
              Top = 393
              Width = 250
              Height = 70
              Hint = 't1w250h0;'
              TabOrder = 17
              Caption = 'UniPanel4'
              Color = clWhite
              object UniContainerPanel18: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 248
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
                object UniLabel17: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 98
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Emitente - Boleto'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compemitebol: TUniSFComboBox
                Left = 3
                Top = 36
                Width = 250
                Hint = ''
                Text = ''
                TabOrder = 2
                Items.Strings = (
                  '1 - Banco'
                  '2 - Empresa')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
          end
        end
        object cpMenuRodape: TUniContainerPanel
          Left = 0
          Top = 646
          Width = 1013
          Height = 40
          Hint = ''
          ParentColor = False
          Align = alBottom
          TabOrder = 2
          LayoutConfig.Cls = 'body_grdnt_rounded'
          object btnSalvar: TUniSFBitBtn
            AlignWithMargins = True
            Left = 888
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
            Left = 758
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
  object cpMenuTopo: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 1029
    Height = 40
    Hint = ''
    ParentColor = False
    Align = alTop
    TabOrder = 2
    TabStop = False
    object lblDescricao: TUniLabel
      AlignWithMargins = True
      Left = 46
      Top = 7
      Width = 165
      Height = 21
      Hint = ''
      Margins.Top = 7
      Caption = 'CADASTRO DE BANCOS'
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
      Width = 526
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
      Left = 1000
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
  object DSTela: TDataSource
    DataSet = CDSTela
    Left = 695
    Top = 182
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
    Left = 56
    Top = 531
  end
  object CDSDados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 801
    Top = 190
    object AggregateField1: TAggregateField
      FieldName = 'botaoEditar'
      OnGetText = CDSTelabotaoEditarGetText
      DisplayName = ''
    end
    object AggregateField2: TAggregateField
      FieldName = 'iconeAtivo'
      OnGetText = CDSTelaiconeAtivoGetText
      DisplayName = ''
    end
  end
end
