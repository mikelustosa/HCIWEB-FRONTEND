object FrmRelCaixaConta: TFrmRelCaixaConta
  Left = 0
  Top = 0
  ClientHeight = 819
  ClientWidth = 471
  Caption = 'FrmRelCaixaConta'
  OnShow = UniFormShow
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniScrollBox1: TUniScrollBox
    Left = 8
    Top = 8
    Width = 457
    Height = 801
    Hint = ''
    TabOrder = 0
    ScrollHeight = 793
    ScrollWidth = 449
    object UniPageControl1: TUniPageControl
      Left = 3
      Top = 3
      Width = 446
      Height = 750
      Hint = ''
      ActivePage = UniTabSheet4
      TabBarVisible = False
      TabOrder = 0
      object tsCaixaPorCliente: TUniTabSheet
        Hint = ''
        Caption = 'Impress'#227'o de caixa por cliente'
        object UniPanel1: TUniPanel
          Left = 3
          Top = 3
          Width = 454
          Height = 462
          Hint = ''
          TabOrder = 0
          Caption = ''
          object UniScrollBox2: TUniScrollBox
            Left = 3
            Top = 3
            Width = 438
            Height = 438
            Hint = ''
            TabOrder = 1
            ScrollHeight = 423
            ScrollWidth = 433
            object UniPanel13: TUniPanel
              Left = 7
              Top = 3
              Width = 100
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 0
              Caption = ''
              Color = clWhite
              object compCODCLI: TUniEdit
                Left = 1
                Top = 28
                Width = 58
                Height = 41
                Hint = ''
                MaxLength = 4
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
                object UniLabel13: TUniLabel
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
              object btnCli: TUniSFBitBtn
                AlignWithMargins = True
                Left = 64
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
                OnClick = btnCliClick
                FAIcon.Icon = fa_search
                FAIcon.Size = fs_16
                FAIcon.Color = fc_grey
                ButtonStyles = bs_transparent
              end
            end
            object UniPanel2: TUniPanel
              Left = 113
              Top = 3
              Width = 306
              Height = 70
              Hint = 't1w500h0;'
              TabOrder = 1
              Caption = ''
              Color = 16249327
              object compNOMCLI: TUniEdit
                Left = 1
                Top = 28
                Width = 304
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
              object UniContainerPanel2: TUniContainerPanel
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
              end
            end
            object UniPanel40: TUniPanel
              AlignWithMargins = True
              Left = 7
              Top = 89
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 3
              Caption = ''
              Color = clWhite
              object UniContainerPanel23: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                  Width = 60
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Data inicial'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compDTINI: TUniDateTimePicker
                Left = 1
                Top = 28
                Width = 197
                Height = 41
                Hint = ''
                DateTime = 46127.000000000000000000
                DateFormat = 'dd/MM/yyyy'
                TimeFormat = 'HH:mm:ss'
                Align = alClient
                TabOrder = 2
              end
            end
            object UniPanel3: TUniPanel
              AlignWithMargins = True
              Left = 220
              Top = 89
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 4
              Caption = ''
              Color = clWhite
              object UniContainerPanel1: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                object UniLabel1: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 52
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Data final'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compDTFIN: TUniDateTimePicker
                Left = 1
                Top = 28
                Width = 197
                Height = 41
                Hint = ''
                DateTime = 46127.000000000000000000
                DateFormat = 'dd/MM/yyyy'
                TimeFormat = 'HH:mm:ss'
                Align = alClient
                TabOrder = 2
              end
            end
            object UniPanel26: TUniPanel
              Left = 14
              Top = 79
              Width = 411
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 2
              Caption = ''
              Color = 16249327
            end
            object UniPanel4: TUniPanel
              Left = 7
              Top = 173
              Width = 100
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 6
              Caption = ''
              Color = clWhite
              object compMOEDA: TUniEdit
                Left = 1
                Top = 28
                Width = 58
                Height = 41
                Hint = ''
                MaxLength = 4
                BorderStyle = ubsNone
                Text = '0'
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 1
                EmptyText = '0'
                ReadOnly = True
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
                object UniLabel2: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 38
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Moeda'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object btnMoeda: TUniSFBitBtn
                AlignWithMargins = True
                Left = 64
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
                FAIcon.Icon = fa_search
                FAIcon.Size = fs_16
                FAIcon.Color = fc_grey
                ButtonStyles = bs_transparent
              end
            end
            object UniPanel5: TUniPanel
              Left = 21
              Top = 255
              Width = 411
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 9
              Caption = ''
              Color = 16249327
            end
            object UniPanel6: TUniPanel
              Left = 14
              Top = 164
              Width = 411
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 5
              Caption = ''
              Color = 16249327
            end
            object UniPanel7: TUniPanel
              Left = 113
              Top = 172
              Width = 100
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 7
              Caption = ''
              Color = clWhite
              object UniContainerPanel7: TUniContainerPanel
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
                TabOrder = 1
                TabStop = False
                LayoutConfig.Cls = 'body_grdnt_rounded'
                object UniLabel3: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 67
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Consolidado'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object comppfj: TUniSFComboBox
                Left = 3
                Top = 36
                Width = 90
                Hint = ''
                Text = ''
                TabOrder = 2
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
            object UniPanel8: TUniPanel
              Left = 219
              Top = 172
              Width = 100
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 8
              Caption = ''
              Color = clWhite
              object UniContainerPanel4: TUniContainerPanel
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
                TabOrder = 1
                TabStop = False
                LayoutConfig.Cls = 'body_grdnt_rounded'
                object UniLabel4: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 52
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Realizado'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compREALIZADO: TUniSFComboBox
                Left = 3
                Top = 36
                Width = 90
                Hint = ''
                Text = ''
                TabOrder = 2
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
            object UniPanel9: TUniPanel
              Left = 22
              Top = 345
              Width = 411
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 16
              Caption = ''
              Color = 16249327
            end
            object UniPanel10: TUniPanel
              Left = 7
              Top = 263
              Width = 100
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 10
              Caption = ''
              Color = clWhite
              object compCODBAN: TUniEdit
                Left = 1
                Top = 28
                Width = 58
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
                object UniLabel5: TUniLabel
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
              object btnBanco: TUniSFBitBtn
                AlignWithMargins = True
                Left = 64
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
                OnClick = btnBancoClick
                FAIcon.Icon = fa_search
                FAIcon.Size = fs_16
                FAIcon.Color = fc_grey
                ButtonStyles = bs_transparent
              end
            end
            object UniPanel11: TUniPanel
              Left = 113
              Top = 263
              Width = 100
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 11
              Caption = ''
              Color = clWhite
              object compCODCC: TUniEdit
                Left = 1
                Top = 28
                Width = 58
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
              end
              object UniContainerPanel6: TUniContainerPanel
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
                  Width = 46
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'C. Custo'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object btnCCusto: TUniSFBitBtn
                AlignWithMargins = True
                Left = 64
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
                OnClick = btnCCustoClick
                FAIcon.Icon = fa_search
                FAIcon.Size = fs_16
                FAIcon.Color = fc_grey
                ButtonStyles = bs_transparent
              end
            end
            object UniPanel12: TUniPanel
              Left = 219
              Top = 263
              Width = 100
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 12
              Caption = ''
              Color = clWhite
              object compCODPR: TUniEdit
                Left = 1
                Top = 28
                Width = 58
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
              end
              object UniContainerPanel8: TUniContainerPanel
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
              object btnDepartamento: TUniSFBitBtn
                AlignWithMargins = True
                Left = 64
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
                OnClick = btnDepartamentoClick
                FAIcon.Icon = fa_search
                FAIcon.Size = fs_16
                FAIcon.Color = fc_grey
                ButtonStyles = bs_transparent
              end
            end
            object UniPanel14: TUniPanel
              Left = 325
              Top = 263
              Width = 100
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 13
              Caption = ''
              Color = clWhite
              object UniContainerPanel9: TUniContainerPanel
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
                TabOrder = 1
                TabStop = False
                LayoutConfig.Cls = 'body_grdnt_rounded'
                object UniLabel8: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 81
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Considera data'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object UniSFComboBox2: TUniSFComboBox
                Left = 3
                Top = 36
                Width = 90
                Hint = ''
                Text = ''
                TabOrder = 2
                Items.Strings = (
                  'Prevista'
                  'Real')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
            object UniPanel15: TUniPanel
              Left = 113
              Top = 353
              Width = 100
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 15
              Caption = ''
              Color = clWhite
              object UniContainerPanel10: TUniContainerPanel
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
                TabOrder = 1
                TabStop = False
                LayoutConfig.Cls = 'body_grdnt_rounded'
                object UniLabel9: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 52
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Visible = False
                  Caption = 'Realizado'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object UniSFComboBox3: TUniSFComboBox
                Left = 3
                Top = 36
                Width = 90
                Hint = ''
                Text = ''
                TabOrder = 2
                Items.Strings = (
                  'Ascendente'
                  'Descendente')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
            object UniPanel16: TUniPanel
              Left = 7
              Top = 353
              Width = 100
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 14
              Caption = ''
              Color = clWhite
              object UniContainerPanel12: TUniContainerPanel
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
                TabOrder = 1
                TabStop = False
                LayoutConfig.Cls = 'body_grdnt_rounded'
                object UniLabel10: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 67
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Ordenar por'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object UniSFComboBox4: TUniSFComboBox
                Left = 3
                Top = 36
                Width = 90
                Hint = ''
                Text = ''
                TabOrder = 2
                Items.Strings = (
                  'Data'
                  'Descri'#231#227'o'
                  'BC'
                  'Documento'
                  'C.Custo'
                  'D'#233'bito'
                  'Cr'#233'dito')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
          end
        end
        object UniContainerPanel13: TUniContainerPanel
          Left = 0
          Top = 682
          Width = 438
          Height = 40
          Hint = ''
          ParentColor = False
          Align = alBottom
          TabOrder = 1
          LayoutConfig.Cls = 'body_grdnt_rounded'
          object UniSFBitBtn1: TUniSFBitBtn
            AlignWithMargins = True
            Left = 313
            Top = 5
            Width = 120
            Height = 30
            Hint = ''
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ParentShowHint = False
            Caption = 'IMPRIMIR'
            Align = alRight
            TabOrder = 1
            Scale = bbsSmall
            LayoutConfig.Cls = 'botaoSemBorda'
            OnClick = UniSFBitBtn1Click
            FAIcon.Icon = fa_arrow_alt_circle_left
            FAIcon.Size = fs_16
            FAIcon.Color = fc_white
            FAIcon.Style = regular
            ButtonStyles = bs_danger
          end
        end
      end
      object tsGerNfce: TUniTabSheet
        Hint = ''
        Caption = 'Relat'#243'rio Gerencial Nfce'
        object UniPanel17: TUniPanel
          Left = 0
          Top = 0
          Width = 438
          Height = 682
          Hint = ''
          Align = alClient
          TabOrder = 0
          Caption = ''
          object UniScrollBox3: TUniScrollBox
            Left = 1
            Top = 1
            Width = 436
            Height = 680
            Hint = ''
            Align = alClient
            TabOrder = 1
            ScrollHeight = 251
            ScrollWidth = 432
            object UniPanel20: TUniPanel
              AlignWithMargins = True
              Left = 7
              Top = 9
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 0
              Caption = ''
              Color = clWhite
              object UniContainerPanel16: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                  Caption = 'Data inicial'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compDTINI_1: TUniDateTimePicker
                Left = 1
                Top = 28
                Width = 197
                Height = 41
                Hint = ''
                DateTime = 46127.000000000000000000
                DateFormat = 'dd/MM/yyyy'
                TimeFormat = 'HH:mm:ss'
                Align = alClient
                TabOrder = 2
              end
            end
            object UniPanel21: TUniPanel
              AlignWithMargins = True
              Left = 220
              Top = 9
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 1
              Caption = ''
              Color = clWhite
              object UniContainerPanel17: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                  Width = 52
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Data final'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compDTFIN_1: TUniDateTimePicker
                Left = 1
                Top = 28
                Width = 197
                Height = 41
                Hint = ''
                DateTime = 46127.000000000000000000
                DateFormat = 'dd/MM/yyyy'
                TimeFormat = 'HH:mm:ss'
                Align = alClient
                TabOrder = 2
              end
            end
            object UniPanel24: TUniPanel
              Left = 21
              Top = 175
              Width = 411
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 5
              Caption = ''
              Color = 16249327
            end
            object UniPanel25: TUniPanel
              Left = 14
              Top = 84
              Width = 411
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 2
              Caption = ''
              Color = 16249327
            end
            object UniPanel27: TUniPanel
              Left = 7
              Top = 92
              Width = 416
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 3
              Caption = ''
              Color = clWhite
              object UniContainerPanel19: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 414
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
                  Width = 24
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Tipo'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compCBTIPO: TUniSFComboBox
                Left = 3
                Top = 36
                Width = 410
                Hint = ''
                Text = ''
                TabOrder = 2
                Items.Strings = (
                  'Normal de Sa'#237'da'
                  'Cancelada de Sa'#237'da')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
            object UniPanel28: TUniPanel
              Left = 7
              Top = 181
              Width = 416
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 4
              Caption = ''
              Color = clWhite
              object UniContainerPanel20: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 414
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
                  Width = 59
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Exibir itens'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compEXIBIRITENS: TUniSFComboBox
                Left = 3
                Top = 36
                Width = 410
                Hint = ''
                Text = ''
                TabOrder = 2
                Items.Strings = (
                  'N'#227'o'
                  'Sim')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
          end
        end
        object UniContainerPanel28: TUniContainerPanel
          Left = 0
          Top = 682
          Width = 438
          Height = 40
          Hint = ''
          ParentColor = False
          Align = alBottom
          TabOrder = 1
          LayoutConfig.Cls = 'body_grdnt_rounded'
          object UniSFBitBtn7: TUniSFBitBtn
            AlignWithMargins = True
            Left = 313
            Top = 5
            Width = 120
            Height = 30
            Hint = ''
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ParentShowHint = False
            Caption = 'IMPRIMIR'
            Align = alRight
            TabOrder = 1
            Scale = bbsSmall
            LayoutConfig.Cls = 'botaoSemBorda'
            OnClick = UniSFBitBtn7Click
            FAIcon.Icon = fa_arrow_alt_circle_left
            FAIcon.Size = fs_16
            FAIcon.Color = fc_white
            FAIcon.Style = regular
            ButtonStyles = bs_danger
          end
        end
      end
      object UniTabSheet1: TUniTabSheet
        Hint = ''
        Caption = 'UniTabSheet1'
        object UniPanel18: TUniPanel
          Left = 0
          Top = 0
          Width = 438
          Height = 682
          Hint = ''
          Align = alClient
          TabOrder = 0
          Caption = ''
          object UniScrollBox4: TUniScrollBox
            Left = 1
            Top = 1
            Width = 436
            Height = 680
            Hint = ''
            Align = alClient
            TabOrder = 1
            ScrollHeight = 611
            ScrollWidth = 432
            object UniPanel19: TUniPanel
              AlignWithMargins = True
              Left = 7
              Top = 9
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 0
              Caption = ''
              Color = clWhite
              object UniContainerPanel14: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                  Width = 60
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Data inicial'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compDTINI_2: TUniDateTimePicker
                Left = 1
                Top = 28
                Width = 197
                Height = 41
                Hint = ''
                DateTime = 46127.000000000000000000
                DateFormat = 'dd/MM/yyyy'
                TimeFormat = 'HH:mm:ss'
                Align = alClient
                TabOrder = 2
              end
            end
            object UniPanel22: TUniPanel
              AlignWithMargins = True
              Left = 220
              Top = 9
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 1
              Caption = ''
              Color = clWhite
              object UniContainerPanel15: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                  Width = 52
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Data final'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compDTFIN_2: TUniDateTimePicker
                Left = 1
                Top = 28
                Width = 197
                Height = 41
                Hint = ''
                DateTime = 46127.000000000000000000
                DateFormat = 'dd/MM/yyyy'
                TimeFormat = 'HH:mm:ss'
                Align = alClient
                TabOrder = 2
              end
            end
            object UniPanel23: TUniPanel
              Left = 21
              Top = 175
              Width = 411
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 5
              Caption = ''
              Color = 16249327
            end
            object UniPanel29: TUniPanel
              Left = 14
              Top = 84
              Width = 411
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 2
              Caption = ''
              Color = 16249327
            end
            object UniPanel30: TUniPanel
              Left = 7
              Top = 92
              Width = 416
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 3
              Caption = ''
              Color = clWhite
              object UniContainerPanel18: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 414
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
                  Width = 126
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Imprimir por ordem de'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compCBIMPRIMIRORDEM: TUniSFComboBox
                Left = 3
                Top = 36
                Width = 410
                Hint = ''
                Text = ''
                TabOrder = 2
                Items.Strings = (
                  'C. de Custo'
                  'Cliente'
                  'Vencimento')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
            object UniPanel31: TUniPanel
              Left = 7
              Top = 181
              Width = 416
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 4
              Caption = ''
              Color = clWhite
              object UniContainerPanel21: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 414
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
                object UniLabel19: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 91
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Tipo de relat'#243'rio'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compCBTIPODERELATORIO: TUniSFComboBox
                Left = 3
                Top = 36
                Width = 410
                Hint = ''
                Text = ''
                TabOrder = 2
                Items.Strings = (
                  'Pagar'
                  'Receber'
                  'Pagas'
                  'Recebidas')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
            object UniPanel32: TUniPanel
              Left = 13
              Top = 261
              Width = 411
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 6
              Caption = ''
              Color = 16249327
            end
            object UniPanel33: TUniPanel
              AlignWithMargins = True
              Left = 220
              Top = 270
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 7
              Caption = ''
              Color = clWhite
              object UniContainerPanel24: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                object UniLabel20: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 73
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'C. Custo final'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compCodCcFin: TUniEdit
                Left = 1
                Top = 28
                Width = 157
                Height = 41
                Hint = ''
                MaxLength = 4
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 2
              end
              object UniSFBitBtn4: TUniSFBitBtn
                AlignWithMargins = True
                Left = 163
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
            object UniPanel34: TUniPanel
              AlignWithMargins = True
              Left = 7
              Top = 270
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 8
              Caption = ''
              Color = clWhite
              object UniContainerPanel25: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                object UniLabel21: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 81
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'C. Custo inicial'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compCodCcIni: TUniEdit
                Left = 1
                Top = 28
                Width = 157
                Height = 41
                Hint = ''
                MaxLength = 4
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 2
              end
              object UniSFBitBtn3: TUniSFBitBtn
                AlignWithMargins = True
                Left = 163
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
            object UniPanel35: TUniPanel
              AlignWithMargins = True
              Left = 7
              Top = 453
              Width = 130
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 9
              Caption = ''
              Color = clWhite
              object UniContainerPanel26: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 128
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
              object compCodCliPagRec: TUniEdit
                Left = 1
                Top = 28
                Width = 88
                Height = 41
                Hint = ''
                MaxLength = 4
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 2
              end
              object UniSFBitBtn5: TUniSFBitBtn
                AlignWithMargins = True
                Left = 94
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
            object UniPanel36: TUniPanel
              Left = 13
              Top = 348
              Width = 411
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 10
              Caption = ''
              Color = 16249327
            end
            object UniPanel37: TUniPanel
              AlignWithMargins = True
              Left = 151
              Top = 453
              Width = 130
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 11
              Caption = ''
              Color = clWhite
              object UniContainerPanel27: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 128
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
              object compCODVEN: TUniEdit
                Left = 1
                Top = 28
                Width = 88
                Height = 41
                Hint = ''
                MaxLength = 4
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 2
              end
              object UniSFBitBtn6: TUniSFBitBtn
                AlignWithMargins = True
                Left = 94
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
            object UniPanel38: TUniPanel
              AlignWithMargins = True
              Left = 295
              Top = 453
              Width = 130
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 12
              Caption = ''
              Color = clWhite
              object UniContainerPanel29: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 128
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
                  Width = 37
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Depto.'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compCODPR_2: TUniEdit
                Left = 1
                Top = 28
                Width = 88
                Height = 41
                Hint = ''
                MaxLength = 4
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 2
              end
              object UniSFBitBtn8: TUniSFBitBtn
                AlignWithMargins = True
                Left = 94
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
            object UniPanel39: TUniPanel
              AlignWithMargins = True
              Left = 7
              Top = 358
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 13
              Caption = ''
              Color = clWhite
              object UniContainerPanel30: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                object UniLabel25: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 68
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Banco inicial'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compCODBANINI: TUniEdit
                Left = 1
                Top = 28
                Width = 157
                Height = 41
                Hint = ''
                MaxLength = 4
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 2
              end
              object UniSFBitBtn9: TUniSFBitBtn
                AlignWithMargins = True
                Left = 163
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
              AlignWithMargins = True
              Left = 219
              Top = 358
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 14
              Caption = ''
              Color = clWhite
              object UniContainerPanel31: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                object UniLabel26: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 60
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Banco final'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compCODBANFIN: TUniEdit
                Left = 1
                Top = 28
                Width = 157
                Height = 41
                Hint = ''
                MaxLength = 4
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 2
              end
              object UniSFBitBtn10: TUniSFBitBtn
                AlignWithMargins = True
                Left = 163
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
            object UniPanel42: TUniPanel
              Left = 13
              Top = 443
              Width = 411
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 15
              Caption = ''
              Color = 16249327
            end
            object UniPanel43: TUniPanel
              Left = 7
              Top = 541
              Width = 130
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 16
              Caption = ''
              Color = clWhite
              object UniContainerPanel32: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 128
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
                  Width = 67
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Consolidado'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compCONSOLIDADO: TUniSFComboBox
                Left = 3
                Top = 36
                Width = 118
                Hint = ''
                Text = ''
                TabOrder = 2
                Items.Strings = (
                  'N'#227'o'
                  'Sim')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
            object UniPanel44: TUniPanel
              AlignWithMargins = True
              Left = 151
              Top = 541
              Width = 130
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 17
              Caption = ''
              Color = clWhite
              object UniContainerPanel33: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 128
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
                object UniLabel28: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 27
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Juros'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object UniEdit5: TUniEdit
                Left = 1
                Top = 28
                Width = 128
                Height = 41
                Hint = ''
                MaxLength = 4
                BorderStyle = ubsNone
                Alignment = taRightJustify
                Text = '0,0000'
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 2
                EmptyText = '0,0000'
              end
            end
            object UniPanel45: TUniPanel
              Left = 295
              Top = 541
              Width = 130
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 18
              Caption = ''
              Color = clWhite
              object UniContainerPanel34: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 128
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
                  Width = 54
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Resumido'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compCBRESUMIDO: TUniSFComboBox
                Left = 3
                Top = 36
                Width = 118
                Hint = ''
                Enabled = False
                Text = ''
                TabOrder = 2
                ReadOnly = True
                Items.Strings = (
                  'N'#227'o'
                  'Sim')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
            object UniPanel46: TUniPanel
              Left = 13
              Top = 533
              Width = 411
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 19
              Caption = ''
              Color = 16249327
            end
          end
        end
        object UniContainerPanel22: TUniContainerPanel
          Left = 0
          Top = 682
          Width = 438
          Height = 40
          Hint = ''
          ParentColor = False
          Align = alBottom
          TabOrder = 1
          LayoutConfig.Cls = 'body_grdnt_rounded'
          object UniSFBitBtn2: TUniSFBitBtn
            AlignWithMargins = True
            Left = 313
            Top = 5
            Width = 120
            Height = 30
            Hint = ''
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ParentShowHint = False
            Caption = 'IMPRIMIR'
            Align = alRight
            TabOrder = 1
            Scale = bbsSmall
            LayoutConfig.Cls = 'botaoSemBorda'
            OnClick = UniSFBitBtn2Click
            FAIcon.Icon = fa_arrow_alt_circle_left
            FAIcon.Size = fs_16
            FAIcon.Color = fc_white
            FAIcon.Style = regular
            ButtonStyles = bs_danger
          end
        end
      end
      object UniTabSheet2: TUniTabSheet
        Hint = ''
        Caption = 'UniTabSheet2'
        object UniPanel47: TUniPanel
          Left = 0
          Top = 0
          Width = 438
          Height = 682
          Hint = ''
          Align = alClient
          TabOrder = 0
          Caption = ''
          object UniScrollBox5: TUniScrollBox
            Left = 1
            Top = 1
            Width = 436
            Height = 680
            Hint = ''
            Align = alClient
            TabOrder = 1
            ScrollHeight = 263
            ScrollWidth = 432
            object UniPanel48: TUniPanel
              AlignWithMargins = True
              Left = 7
              Top = 9
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 0
              Caption = ''
              Color = clWhite
              object UniContainerPanel35: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                  Width = 60
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Data inicial'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compDTINI_3: TUniDateTimePicker
                Left = 1
                Top = 28
                Width = 197
                Height = 41
                Hint = ''
                DateTime = 46127.000000000000000000
                DateFormat = 'dd/MM/yyyy'
                TimeFormat = 'HH:mm:ss'
                Align = alClient
                TabOrder = 2
              end
            end
            object UniPanel49: TUniPanel
              AlignWithMargins = True
              Left = 220
              Top = 9
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 1
              Caption = ''
              Color = clWhite
              object UniContainerPanel36: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                object UniLabel32: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 52
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Data final'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compDTFIN_3: TUniDateTimePicker
                Left = 1
                Top = 28
                Width = 197
                Height = 41
                Hint = ''
                DateTime = 46127.000000000000000000
                DateFormat = 'dd/MM/yyyy'
                TimeFormat = 'HH:mm:ss'
                Align = alClient
                TabOrder = 2
              end
            end
            object UniPanel50: TUniPanel
              Left = 21
              Top = 175
              Width = 411
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 3
              Caption = ''
              Color = 16249327
            end
            object UniPanel51: TUniPanel
              Left = 14
              Top = 84
              Width = 411
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 2
              Caption = ''
              Color = 16249327
            end
            object UniPanel54: TUniPanel
              Left = 13
              Top = 261
              Width = 411
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 4
              Caption = ''
              Color = 16249327
            end
            object UniPanel57: TUniPanel
              AlignWithMargins = True
              Left = 220
              Top = 99
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 5
              Caption = ''
              Color = clWhite
              object UniContainerPanel41: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                object UniLabel37: TUniLabel
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
              object compCODCLI3: TUniEdit
                Left = 1
                Top = 28
                Width = 157
                Height = 41
                Hint = ''
                MaxLength = 4
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 2
              end
              object UniSFBitBtn13: TUniSFBitBtn
                AlignWithMargins = True
                Left = 163
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
            object UniPanel60: TUniPanel
              AlignWithMargins = True
              Left = 220
              Top = 183
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 6
              Caption = ''
              Color = clWhite
              object UniContainerPanel43: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                  Width = 82
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'D'#233'bito/Cr'#233'dito'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compCBDEBCRED: TUniSFComboBox
                Left = 8
                Top = 36
                Width = 185
                Hint = ''
                Text = ''
                TabOrder = 2
                Items.Strings = (
                  ''
                  'Cr'#233'dito'
                  'D'#233'bito')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
            object UniPanel61: TUniPanel
              AlignWithMargins = True
              Left = 7
              Top = 183
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 7
              Caption = ''
              Color = clWhite
              object UniContainerPanel44: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                object UniLabel40: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 68
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Banco inicial'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compCODBAN3: TUniEdit
                Left = 1
                Top = 28
                Width = 157
                Height = 41
                Hint = ''
                MaxLength = 4
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 2
              end
              object UniSFBitBtn16: TUniSFBitBtn
                AlignWithMargins = True
                Left = 163
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
                OnClick = UniSFBitBtn16Click
                FAIcon.Icon = fa_search
                FAIcon.Size = fs_16
                FAIcon.Color = fc_grey
                ButtonStyles = bs_transparent
              end
            end
            object UniPanel52: TUniPanel
              AlignWithMargins = True
              Left = 7
              Top = 99
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 8
              Caption = ''
              Color = clWhite
              object UniContainerPanel37: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                  Width = 116
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Moeda: (0=Corrente)'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object UniEdit1: TUniEdit
                Left = 1
                Top = 28
                Width = 157
                Height = 41
                Hint = ''
                MaxLength = 4
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 2
              end
              object UniSFBitBtn11: TUniSFBitBtn
                AlignWithMargins = True
                Left = 163
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
          end
        end
        object UniContainerPanel38: TUniContainerPanel
          Left = 0
          Top = 682
          Width = 438
          Height = 40
          Hint = ''
          ParentColor = False
          Align = alBottom
          TabOrder = 1
          LayoutConfig.Cls = 'body_grdnt_rounded'
          object UniSFBitBtn12: TUniSFBitBtn
            AlignWithMargins = True
            Left = 313
            Top = 5
            Width = 120
            Height = 30
            Hint = ''
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ParentShowHint = False
            Caption = 'IMPRIMIR'
            Align = alRight
            TabOrder = 1
            Scale = bbsSmall
            LayoutConfig.Cls = 'botaoSemBorda'
            OnClick = UniSFBitBtn12Click
            FAIcon.Icon = fa_arrow_alt_circle_left
            FAIcon.Size = fs_16
            FAIcon.Color = fc_white
            FAIcon.Style = regular
            ButtonStyles = bs_danger
          end
        end
      end
      object UniTabSheet3: TUniTabSheet
        Hint = ''
        Caption = 'UniTabSheet3'
        object UniPanel53: TUniPanel
          Left = 0
          Top = 0
          Width = 438
          Height = 682
          Hint = ''
          Align = alClient
          TabOrder = 0
          Caption = ''
          object UniScrollBox6: TUniScrollBox
            Left = 1
            Top = 1
            Width = 436
            Height = 680
            Hint = ''
            Align = alClient
            TabOrder = 1
            ScrollHeight = 256
            ScrollWidth = 432
            object UniPanel55: TUniPanel
              AlignWithMargins = True
              Left = 7
              Top = 92
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 0
              Caption = ''
              Color = clWhite
              object UniContainerPanel39: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                  Width = 119
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Data refer'#234'ncia inicial'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compDTINI_4: TUniDateTimePicker
                Left = 1
                Top = 28
                Width = 197
                Height = 41
                Hint = ''
                DateTime = 46127.000000000000000000
                DateFormat = 'dd/MM/yyyy'
                TimeFormat = 'HH:mm:ss'
                Align = alClient
                TabOrder = 2
              end
            end
            object UniPanel56: TUniPanel
              AlignWithMargins = True
              Left = 224
              Top = 92
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 1
              Caption = ''
              Color = clWhite
              object UniContainerPanel40: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                  Width = 111
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Data refer'#234'ncia final'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compDTFIN_4: TUniDateTimePicker
                Left = 1
                Top = 28
                Width = 197
                Height = 41
                Hint = ''
                DateTime = 46127.000000000000000000
                DateFormat = 'dd/MM/yyyy'
                TimeFormat = 'HH:mm:ss'
                Align = alClient
                TabOrder = 2
              end
            end
            object UniPanel58: TUniPanel
              Left = 21
              Top = 175
              Width = 411
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 5
              Caption = ''
              Color = 16249327
            end
            object UniPanel59: TUniPanel
              Left = 14
              Top = 84
              Width = 411
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 2
              Caption = ''
              Color = 16249327
            end
            object UniPanel62: TUniPanel
              Left = 7
              Top = 7
              Width = 416
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 3
              Caption = ''
              Color = clWhite
              object UniContainerPanel42: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 414
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
                  Width = 91
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Tipo de relat'#243'rio'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compCBTIPODERELATORIOABC: TUniSFComboBox
                Left = 3
                Top = 36
                Width = 410
                Hint = ''
                Text = ''
                TabOrder = 2
                Items.Strings = (
                  'ABC cliente'
                  'ABC fornecedor')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
            object UniPanel63: TUniPanel
              Left = 224
              Top = 186
              Width = 199
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 4
              Caption = ''
              Color = clWhite
              object UniContainerPanel45: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                  Width = 67
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Consolidado'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compCBCONSOLIDADOABC: TUniSFComboBox
                Left = 3
                Top = 36
                Width = 193
                Hint = ''
                Text = ''
                TabOrder = 2
                Items.Strings = (
                  'N'#227'o'
                  'Sim')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
            object UniPanel64: TUniPanel
              AlignWithMargins = True
              Left = 7
              Top = 186
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 6
              Caption = ''
              Color = clWhite
              object UniContainerPanel46: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                  Width = 68
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Classifica'#231#227'o'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compCODCLA: TUniEdit
                Left = 1
                Top = 28
                Width = 197
                Height = 41
                Hint = ''
                MaxLength = 4
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 2
              end
            end
          end
        end
        object UniContainerPanel47: TUniContainerPanel
          Left = 0
          Top = 682
          Width = 438
          Height = 40
          Hint = ''
          ParentColor = False
          Align = alBottom
          TabOrder = 1
          LayoutConfig.Cls = 'body_grdnt_rounded'
          object UniSFBitBtn14: TUniSFBitBtn
            AlignWithMargins = True
            Left = 313
            Top = 5
            Width = 120
            Height = 30
            Hint = ''
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ParentShowHint = False
            Caption = 'IMPRIMIR'
            Align = alRight
            TabOrder = 1
            Scale = bbsSmall
            LayoutConfig.Cls = 'botaoSemBorda'
            OnClick = UniSFBitBtn14Click
            FAIcon.Icon = fa_arrow_alt_circle_left
            FAIcon.Size = fs_16
            FAIcon.Color = fc_white
            FAIcon.Style = regular
            ButtonStyles = bs_danger
          end
        end
      end
      object UniTabSheet4: TUniTabSheet
        Hint = ''
        Caption = 'UniTabSheet4'
        object UniPanel65: TUniPanel
          Left = 0
          Top = 0
          Width = 438
          Height = 682
          Hint = ''
          Align = alClient
          TabOrder = 0
          Caption = ''
          object UniScrollBox7: TUniScrollBox
            Left = 1
            Top = 1
            Width = 436
            Height = 680
            Hint = ''
            Align = alClient
            TabOrder = 1
            ScrollHeight = 634
            ScrollWidth = 426
            object UniPanel66: TUniPanel
              AlignWithMargins = True
              Left = 7
              Top = 165
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 0
              Caption = ''
              Color = clWhite
              object UniContainerPanel48: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                  Width = 60
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Data inicial'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compDTINI_5: TUniDateTimePicker
                Left = 1
                Top = 28
                Width = 157
                Height = 41
                Hint = ''
                DateTime = 46127.000000000000000000
                DateFormat = 'dd/MM/yyyy'
                TimeFormat = 'HH:mm:ss'
                TabOrder = 2
              end
            end
            object UniPanel67: TUniPanel
              AlignWithMargins = True
              Left = 227
              Top = 165
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 1
              Caption = ''
              Color = clWhite
              object UniContainerPanel49: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                object UniLabel43: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 52
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Data final'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compDTFIN_5: TUniDateTimePicker
                Left = 1
                Top = 28
                Width = 152
                Height = 41
                Hint = ''
                DateTime = 46127.000000000000000000
                DateFormat = 'dd/MM/yyyy'
                TimeFormat = 'HH:mm:ss'
                TabOrder = 2
              end
            end
            object UniPanel68: TUniPanel
              Left = 14
              Top = 239
              Width = 411
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 4
              Caption = ''
              Color = 16249327
            end
            object UniPanel69: TUniPanel
              Left = 14
              Top = 80
              Width = 411
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 2
              Caption = ''
              Color = 16249327
            end
            object UniPanel70: TUniPanel
              Left = 7
              Top = 7
              Width = 416
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 3
              Caption = ''
              Color = clWhite
              object UniContainerPanel50: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 414
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
                  Width = 91
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Tipo de relat'#243'rio'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compCBTIPODERELATORIO_4: TUniSFComboBox
                Left = 3
                Top = 36
                Width = 410
                Hint = ''
                Text = ''
                TabOrder = 2
                Items.Strings = (
                  'Completo'
                  'Sint'#233'tico')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
            object UniPanel73: TUniPanel
              AlignWithMargins = True
              Left = 7
              Top = 85
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 5
              Caption = ''
              Color = clWhite
              object UniContainerPanel53: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                  Width = 81
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'C. Custo inicial'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compCodCcIni_4: TUniEdit
                Left = 1
                Top = 28
                Width = 157
                Height = 41
                Hint = ''
                MaxLength = 20
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 2
              end
              object UniSFBitBtn15: TUniSFBitBtn
                AlignWithMargins = True
                Left = 163
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
            object UniPanel74: TUniPanel
              AlignWithMargins = True
              Left = 227
              Top = 85
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 6
              Caption = ''
              Color = clWhite
              object UniContainerPanel54: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                  Width = 73
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'C. Custo final'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compCodCcFin_4: TUniEdit
                Left = 1
                Top = 28
                Width = 157
                Height = 41
                Hint = ''
                MaxLength = 20
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 2
              end
              object UniSFBitBtn17: TUniSFBitBtn
                AlignWithMargins = True
                Left = 163
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
                OnClick = UniSFBitBtn17Click
                FAIcon.Icon = fa_search
                FAIcon.Size = fs_16
                FAIcon.Color = fc_grey
                ButtonStyles = bs_transparent
              end
            end
            object UniPanel75: TUniPanel
              Left = 14
              Top = 159
              Width = 411
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 7
              Caption = ''
              Color = 16249327
            end
            object UniPanel76: TUniPanel
              AlignWithMargins = True
              Left = 7
              Top = 245
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 8
              Caption = ''
              Color = clWhite
              object UniContainerPanel55: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                  Width = 88
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'C. Custo ignorar'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compCodCcIni_5: TUniEdit
                Left = 1
                Top = 28
                Width = 157
                Height = 41
                Hint = ''
                MaxLength = 20
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 2
              end
              object UniSFBitBtn18: TUniSFBitBtn
                AlignWithMargins = True
                Left = 163
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
                OnClick = UniSFBitBtn18Click
                FAIcon.Icon = fa_search
                FAIcon.Size = fs_16
                FAIcon.Color = fc_grey
                ButtonStyles = bs_transparent
              end
            end
            object UniPanel77: TUniPanel
              AlignWithMargins = True
              Left = 227
              Top = 245
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 9
              Caption = ''
              Color = clWhite
              object UniContainerPanel56: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                  Width = 99
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'e C. Custo ignorar'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compCodCcFin_5: TUniEdit
                Left = 1
                Top = 28
                Width = 157
                Height = 41
                Hint = ''
                MaxLength = 20
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 2
              end
              object UniSFBitBtn19: TUniSFBitBtn
                AlignWithMargins = True
                Left = 163
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
                OnClick = UniSFBitBtn19Click
                FAIcon.Icon = fa_search
                FAIcon.Size = fs_16
                FAIcon.Color = fc_grey
                ButtonStyles = bs_transparent
              end
            end
            object UniPanel78: TUniPanel
              Left = 3
              Top = 479
              Width = 411
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 10
              Caption = ''
              Color = 16249327
            end
            object UniPanel79: TUniPanel
              Left = 7
              Top = 327
              Width = 199
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 11
              Caption = ''
              Color = clWhite
              object UniContainerPanel57: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                  Width = 25
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Data'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compDATA: TUniSFComboBox
                Left = 3
                Top = 36
                Width = 193
                Hint = ''
                Text = ''
                TabOrder = 2
                Items.Strings = (
                  'Real'
                  'Refer'#234'ncia')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
            object UniPanel80: TUniPanel
              Left = 227
              Top = 327
              Width = 199
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 12
              Caption = ''
              Color = clWhite
              object UniContainerPanel58: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                  Width = 67
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Consolidado'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compCONSOLIDADO_4: TUniSFComboBox
                Left = 3
                Top = 36
                Width = 193
                Hint = ''
                Text = ''
                TabOrder = 2
                Items.Strings = (
                  'N'#227'o'
                  'Sim')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
            object UniPanel81: TUniPanel
              AlignWithMargins = True
              Left = 7
              Top = 406
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 13
              Caption = ''
              Color = clWhite
              object UniContainerPanel59: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                object UniLabel53: TUniLabel
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
              object compCODPR_4: TUniEdit
                Left = 1
                Top = 28
                Width = 157
                Height = 41
                Hint = ''
                MaxLength = 20
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 2
              end
              object UniSFBitBtn20: TUniSFBitBtn
                AlignWithMargins = True
                Left = 163
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
                OnClick = UniSFBitBtn20Click
                FAIcon.Icon = fa_search
                FAIcon.Size = fs_16
                FAIcon.Color = fc_grey
                ButtonStyles = bs_transparent
              end
            end
            object UniPanel82: TUniPanel
              AlignWithMargins = True
              Left = 227
              Top = 406
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 14
              Caption = ''
              Color = clWhite
              object UniContainerPanel60: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
              object compCODCLI_4: TUniEdit
                Left = 1
                Top = 28
                Width = 157
                Height = 41
                Hint = ''
                MaxLength = 20
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 2
              end
              object UniSFBitBtn21: TUniSFBitBtn
                AlignWithMargins = True
                Left = 163
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
                OnClick = UniSFBitBtn21Click
                FAIcon.Icon = fa_search
                FAIcon.Size = fs_16
                FAIcon.Color = fc_grey
                ButtonStyles = bs_transparent
              end
            end
            object UniPanel83: TUniPanel
              AlignWithMargins = True
              Left = 7
              Top = 485
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 15
              Caption = ''
              Color = clWhite
              object UniContainerPanel61: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                  Width = 38
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Moeda'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compMOEDA_4: TUniEdit
                Left = 1
                Top = 28
                Width = 157
                Height = 41
                Hint = ''
                MaxLength = 20
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 2
              end
              object UniSFBitBtn22: TUniSFBitBtn
                AlignWithMargins = True
                Left = 163
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
                OnClick = UniSFBitBtn22Click
                FAIcon.Icon = fa_search
                FAIcon.Size = fs_16
                FAIcon.Color = fc_grey
                ButtonStyles = bs_transparent
              end
            end
            object UniPanel71: TUniPanel
              AlignWithMargins = True
              Left = 227
              Top = 485
              Width = 199
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 16
              Caption = ''
              Color = clWhite
              object UniContainerPanel51: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
              object compCODBAN_4: TUniEdit
                Left = 1
                Top = 28
                Width = 157
                Height = 41
                Hint = ''
                MaxLength = 20
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 2
              end
              object UniSFBitBtn23: TUniSFBitBtn
                AlignWithMargins = True
                Left = 163
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
                OnClick = UniSFBitBtn23Click
                FAIcon.Icon = fa_search
                FAIcon.Size = fs_16
                FAIcon.Color = fc_grey
                ButtonStyles = bs_transparent
              end
            end
            object UniPanel72: TUniPanel
              Left = 3
              Top = 321
              Width = 411
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 17
              Caption = ''
              Color = 16249327
            end
            object UniPanel84: TUniPanel
              Left = 3
              Top = 400
              Width = 411
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 18
              Caption = ''
              Color = 16249327
            end
            object UniPanel85: TUniPanel
              Left = 3
              Top = 558
              Width = 411
              Height = 2
              Hint = 't2w2075h2;'
              TabOrder = 19
              Caption = ''
              Color = 16249327
            end
            object UniPanel86: TUniPanel
              Left = 7
              Top = 564
              Width = 199
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 20
              Caption = ''
              Color = clWhite
              object UniContainerPanel52: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                object UniLabel46: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 67
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Ordenar por'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compORDENACAO: TUniSFComboBox
                Left = 3
                Top = 36
                Width = 193
                Hint = ''
                Text = ''
                TabOrder = 2
                Items.Strings = (
                  ''
                  'Data real'
                  'Data Ref.'
                  'Documento'
                  'Cheque'
                  'Descri'#231#227'o'
                  'Cliente'
                  'Valor')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
            object UniPanel87: TUniPanel
              Left = 227
              Top = 564
              Width = 199
              Height = 70
              Hint = 't1w100h0;'
              TabOrder = 21
              Caption = ''
              Color = clWhite
              object UniContainerPanel62: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 197
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
                object UniLabel56: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 39
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Ordem'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object compORDENACAOASCDESC: TUniSFComboBox
                Left = 3
                Top = 36
                Width = 193
                Hint = ''
                Text = ''
                TabOrder = 2
                Items.Strings = (
                  'Ascendente'
                  'Descendente')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
          end
        end
        object UniContainerPanel63: TUniContainerPanel
          Left = 0
          Top = 682
          Width = 438
          Height = 40
          Hint = ''
          ParentColor = False
          Align = alBottom
          TabOrder = 1
          LayoutConfig.Cls = 'body_grdnt_rounded'
          object UniSFBitBtn24: TUniSFBitBtn
            AlignWithMargins = True
            Left = 313
            Top = 5
            Width = 120
            Height = 30
            Hint = ''
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ParentShowHint = False
            Caption = 'IMPRIMIR'
            Align = alRight
            TabOrder = 1
            Scale = bbsSmall
            LayoutConfig.Cls = 'botaoSemBorda'
            OnClick = UniSFBitBtn24Click
            FAIcon.Icon = fa_arrow_alt_circle_left
            FAIcon.Size = fs_16
            FAIcon.Color = fc_white
            FAIcon.Style = regular
            ButtonStyles = bs_danger
          end
        end
      end
    end
    object cpMenuRodape: TUniContainerPanel
      Left = 0
      Top = 759
      Width = 455
      Height = 40
      Hint = ''
      ParentColor = False
      Align = alBottom
      TabOrder = 1
      LayoutConfig.Cls = 'body_grdnt_rounded'
      object btnCancelar: TUniSFBitBtn
        AlignWithMargins = True
        Left = 330
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
        TabOrder = 1
        Scale = bbsSmall
        LayoutConfig.Cls = 'botaoSemBorda'
        OnClick = btnCancelarClick
        FAIcon.Icon = fa_arrow_alt_circle_left
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        FAIcon.Style = regular
        ButtonStyles = bs_danger
      end
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
    Left = 477
    Top = 507
  end
end
