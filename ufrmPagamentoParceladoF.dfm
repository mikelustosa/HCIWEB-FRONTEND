object frmPagamentoParceladoF: TfrmPagamentoParceladoF
  Left = 0
  Top = 0
  ClientHeight = 1014
  ClientWidth = 1672
  Caption = 'frmPagamentoParceladoF'
  OnShow = UniFormShow
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnReady = UniFormReady
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cpMenuRodape: TUniContainerPanel
    Left = 0
    Top = 974
    Width = 1672
    Height = 40
    Hint = ''
    ParentColor = False
    Align = alBottom
    TabOrder = 0
    LayoutConfig.Cls = 'body_grdnt_rounded'
    object UniSFBitBtn27: TUniSFBitBtn
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 164
      Height = 30
      Hint = ''
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ParentShowHint = False
      Caption = 'CONCLUI'
      Align = alLeft
      TabOrder = 1
      Scale = bbsSmall
      LayoutConfig.Cls = 'botaoSemBorda'
      FAIcon.Icon = fa_arrow_alt_circle_left
      FAIcon.Size = fs_16
      FAIcon.Color = fc_white
      FAIcon.Style = regular
      ButtonStyles = bs_danger
    end
    object UniSFBitBtn1: TUniSFBitBtn
      AlignWithMargins = True
      Left = 179
      Top = 5
      Width = 174
      Height = 30
      Hint = ''
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ParentShowHint = False
      Caption = 'CANCELA'
      Align = alLeft
      TabOrder = 2
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
  object UniScrollBox1: TUniScrollBox
    Left = 0
    Top = 97
    Width = 1672
    Height = 877
    Hint = ''
    Align = alClient
    Color = 16249327
    TabOrder = 1
    object PN1: TUniPanel
      Left = 0
      Top = 0
      Width = 1670
      Height = 875
      Hint = ''
      Align = alClient
      TabOrder = 0
      Caption = ''
      object UniScrollBox2: TUniScrollBox
        Left = 38
        Top = 158
        Width = 1668
        Height = 1608
        Hint = ''
        Color = 16249327
        TabOrder = 1
        ScrollHeight = 1408
        ScrollWidth = 1465
        object compLN1: TUniPanel
          Left = 3
          Top = 3
          Width = 1462
          Height = 89
          Hint = ''
          TabOrder = 0
          Caption = ''
          object UniPanel11: TUniPanel
            Left = 1227
            Top = 3
            Width = 218
            Height = 70
            Hint = 't1w400h0;'
            TabOrder = 1
            Caption = ''
            Color = clWhite
            object UniContainerPanel10: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 216
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
                Width = 108
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = 'Tipo de pagamento'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniSFComboBox1: TUniSFComboBox
              Left = 3
              Top = 45
              Width = 206
              Hint = ''
              Text = ''
              TabOrder = 2
              Items.Strings = (
                '1 - Dinheiro '
                '2 - Cheque '
                '3 - Cart'#227'o de Cr'#233'dito '
                '4 - Cart'#227'o de D'#233'bito '
                '5 - Cr'#233'dito Loja '
                '10 - Vale Alimenta'#231#227'o '
                '11 - Vale Refei'#231#227'o '
                '12 - Vale Presente '
                '13 - Vale Combust'#237'vel '
                '99 - Outros')
              Groups = <>
              Options.Placeholders = 'Selecione'
              Options.noResults = 'No Results Found'
            end
          end
          object UniPanel93: TUniPanel
            Left = 1140
            Top = 3
            Width = 73
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 2
            Caption = ''
            Color = 16249327
            object UniContainerPanel81: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 71
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit65: TUniEdit
              Left = 1
              Top = 28
              Width = 71
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Pagto'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Pagto'
            end
          end
          object UniPanel92: TUniPanel
            Left = 1034
            Top = 3
            Width = 100
            Height = 70
            Hint = 't1w100h0;'
            TabOrder = 3
            Caption = ''
            Color = clWhite
            object compCODCC_L1: TUniEdit
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
              ClientEvents.UniEvents.Strings = (
                
                  'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
                  '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
                  'n: /^[0-9\s]+$/g, recursive: true },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
            end
            object UniContainerPanel80: TUniContainerPanel
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
              object UniLabel32: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 51
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = 'Atividade'
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
              OnClick = UniSFBitBtn3Click
              FAIcon.Icon = fa_search
              FAIcon.Size = fs_16
              FAIcon.Color = fc_grey
              ButtonStyles = bs_transparent
            end
          end
          object UniPanel91: TUniPanel
            Left = 881
            Top = 3
            Width = 139
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 4
            Caption = ''
            Color = 16249327
            object UniContainerPanel79: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 137
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit64: TUniEdit
              Left = 1
              Top = 28
              Width = 137
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Centro de custo'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Centro de custo'
            end
          end
          object UniPanel14: TUniPanel
            Left = 695
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 5
            Caption = ''
            Color = 16249327
            object UniEdit8: TUniEdit
              Left = 1
              Top = 28
              Width = 178
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
            object UniContainerPanel12: TUniContainerPanel
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
            end
          end
          object UniPanel90: TUniPanel
            Left = 592
            Top = 3
            Width = 89
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 6
            Caption = ''
            Color = 16249327
            object UniContainerPanel78: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 87
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit63: TUniEdit
              Left = 1
              Top = 28
              Width = 87
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Cheque'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Cheque'
            end
          end
          object UniPanel12: TUniPanel
            Left = 406
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 7
            Caption = ''
            Color = 16249327
            object UniEdit7: TUniEdit
              Left = 1
              Top = 28
              Width = 178
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
            object UniContainerPanel11: TUniContainerPanel
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
            end
          end
          object UniPanel3: TUniPanel
            Left = 212
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 8
            Caption = ''
            Color = 16249327
            object UniContainerPanel1: TUniContainerPanel
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
              TabOrder = 1
              TabStop = False
              LayoutConfig.Cls = 'body_grdnt_rounded'
            end
            object UniDateTimePicker1: TUniDateTimePicker
              Left = 1
              Top = 28
              Width = 178
              Height = 41
              Hint = ''
              DateTime = 46029.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              Align = alClient
              TabOrder = 2
            end
          end
          object UniPanel89: TUniPanel
            Left = 125
            Top = 3
            Width = 73
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 9
            Caption = ''
            Color = 16249327
            object UniContainerPanel77: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 71
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit62: TUniEdit
              Left = 1
              Top = 28
              Width = 71
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'DIA(S)'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'DIA(S)'
            end
          end
          object UniPanel2: TUniPanel
            Left = 55
            Top = 3
            Width = 65
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 10
            Caption = ''
            Color = 16249327
            object compVALORPAGO: TUniEdit
              Left = 1
              Top = 28
              Width = 63
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
            object UniContainerPanel8: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 63
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
          object UniPanel1: TUniPanel
            Left = 4
            Top = 3
            Width = 45
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 11
            Caption = ''
            Color = 16249327
            object UniContainerPanel2: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 43
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
              object UniLabel48: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit61: TUniEdit
              AlignWithMargins = True
              Left = 4
              Top = 31
              Width = 37
              Height = 35
              Hint = ''
              Enabled = False
              CharCase = ecUpperCase
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = '1'#186
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = '1'#186
            end
          end
        end
        object compLN2: TUniPanel
          Left = 3
          Top = 131
          Width = 1462
          Height = 79
          Hint = ''
          TabOrder = 1
          Caption = ''
          object UniPanel8: TUniPanel
            Left = 1227
            Top = 3
            Width = 218
            Height = 70
            Hint = 't1w400h0;'
            TabOrder = 1
            Caption = ''
            Color = clWhite
            object UniContainerPanel6: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 216
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
                Width = 108
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = 'Tipo de pagamento'
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
              Top = 45
              Width = 206
              Hint = ''
              Text = ''
              TabOrder = 2
              Items.Strings = (
                '1 - Dinheiro '
                '2 - Cheque '
                '3 - Cart'#227'o de Cr'#233'dito '
                '4 - Cart'#227'o de D'#233'bito '
                '5 - Cr'#233'dito Loja '
                '10 - Vale Alimenta'#231#227'o '
                '11 - Vale Refei'#231#227'o '
                '12 - Vale Presente '
                '13 - Vale Combust'#237'vel '
                '99 - Outros')
              Groups = <>
              Options.Placeholders = 'Selecione'
              Options.noResults = 'No Results Found'
            end
          end
          object UniPanel9: TUniPanel
            Left = 1140
            Top = 3
            Width = 73
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 2
            Caption = ''
            Color = 16249327
            object UniContainerPanel7: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 71
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit4: TUniEdit
              Left = 1
              Top = 28
              Width = 71
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Pagto'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Pagto'
            end
          end
          object UniPanel10: TUniPanel
            Left = 1034
            Top = 3
            Width = 100
            Height = 70
            Hint = 't1w100h0;'
            TabOrder = 3
            Caption = ''
            Color = clWhite
            object compCODCC_L2: TUniEdit
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
              ClientEvents.UniEvents.Strings = (
                
                  'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
                  '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
                  'n: /^[0-9\s]+$/g, recursive: true },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
            end
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
              TabOrder = 2
              TabStop = False
              LayoutConfig.Cls = 'body_grdnt_rounded'
              object UniLabel6: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 51
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = 'Atividade'
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
              OnClick = UniSFBitBtn4Click
              FAIcon.Icon = fa_search
              FAIcon.Size = fs_16
              FAIcon.Color = fc_grey
              ButtonStyles = bs_transparent
            end
          end
          object UniPanel13: TUniPanel
            Left = 881
            Top = 3
            Width = 139
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 4
            Caption = ''
            Color = 16249327
            object UniContainerPanel13: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 137
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit6: TUniEdit
              Left = 1
              Top = 28
              Width = 137
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Centro de custo'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Centro de custo'
            end
          end
          object UniPanel15: TUniPanel
            Left = 695
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 5
            Caption = ''
            Color = 16249327
            object UniEdit9: TUniEdit
              Left = 1
              Top = 28
              Width = 178
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
            object UniContainerPanel14: TUniContainerPanel
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
            end
          end
          object UniPanel16: TUniPanel
            Left = 592
            Top = 3
            Width = 89
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 6
            Caption = ''
            Color = 16249327
            object UniContainerPanel15: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 87
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit10: TUniEdit
              Left = 1
              Top = 28
              Width = 87
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Cheque'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Cheque'
            end
          end
          object UniPanel17: TUniPanel
            Left = 406
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 7
            Caption = ''
            Color = 16249327
            object UniEdit11: TUniEdit
              Left = 1
              Top = 28
              Width = 178
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
            object UniContainerPanel16: TUniContainerPanel
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
            end
          end
          object UniPanel18: TUniPanel
            Left = 212
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 8
            Caption = ''
            Color = 16249327
            object UniContainerPanel17: TUniContainerPanel
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
              TabOrder = 1
              TabStop = False
              LayoutConfig.Cls = 'body_grdnt_rounded'
            end
            object UniDateTimePicker2: TUniDateTimePicker
              Left = 1
              Top = 28
              Width = 178
              Height = 41
              Hint = ''
              DateTime = 46029.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              Align = alClient
              TabOrder = 2
            end
          end
          object UniPanel19: TUniPanel
            Left = 125
            Top = 3
            Width = 73
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 9
            Caption = ''
            Color = 16249327
            object UniContainerPanel18: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 71
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit12: TUniEdit
              Left = 1
              Top = 28
              Width = 71
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'DIA(S)'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'DIA(S)'
            end
          end
          object UniPanel20: TUniPanel
            Left = 55
            Top = 3
            Width = 65
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 10
            Caption = ''
            Color = 16249327
            object UniEdit13: TUniEdit
              Left = 1
              Top = 28
              Width = 63
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
            object UniContainerPanel19: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 63
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
          object UniPanel21: TUniPanel
            Left = 4
            Top = 3
            Width = 45
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 11
            Caption = ''
            Color = 16249327
            object UniContainerPanel20: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 43
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
              object UniLabel11: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit14: TUniEdit
              AlignWithMargins = True
              Left = 4
              Top = 31
              Width = 37
              Height = 35
              Hint = ''
              Enabled = False
              CharCase = ecUpperCase
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = '2'#186
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = '2'#186
            end
          end
        end
        object compLN3: TUniPanel
          Left = 3
          Top = 259
          Width = 1462
          Height = 79
          Hint = ''
          TabOrder = 2
          Caption = ''
          object UniPanel23: TUniPanel
            Left = 1227
            Top = 3
            Width = 218
            Height = 70
            Hint = 't1w400h0;'
            TabOrder = 1
            Caption = ''
            Color = clWhite
            object UniContainerPanel21: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 216
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
                Width = 108
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = 'Tipo de pagamento'
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
              Top = 45
              Width = 206
              Hint = ''
              Text = ''
              TabOrder = 2
              Items.Strings = (
                '1 - Dinheiro '
                '2 - Cheque '
                '3 - Cart'#227'o de Cr'#233'dito '
                '4 - Cart'#227'o de D'#233'bito '
                '5 - Cr'#233'dito Loja '
                '10 - Vale Alimenta'#231#227'o '
                '11 - Vale Refei'#231#227'o '
                '12 - Vale Presente '
                '13 - Vale Combust'#237'vel '
                '99 - Outros')
              Groups = <>
              Options.Placeholders = 'Selecione'
              Options.noResults = 'No Results Found'
            end
          end
          object UniPanel25: TUniPanel
            Left = 1140
            Top = 3
            Width = 73
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 2
            Caption = ''
            Color = 16249327
            object UniContainerPanel22: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 71
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit15: TUniEdit
              Left = 1
              Top = 28
              Width = 71
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Pagto'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Pagto'
            end
          end
          object UniPanel26: TUniPanel
            Left = 1034
            Top = 3
            Width = 100
            Height = 70
            Hint = 't1w100h0;'
            TabOrder = 3
            Caption = ''
            Color = clWhite
            object compCODCC_L3: TUniEdit
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
              ClientEvents.UniEvents.Strings = (
                
                  'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
                  '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
                  'n: /^[0-9\s]+$/g, recursive: true },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
            end
            object UniContainerPanel23: TUniContainerPanel
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
              object UniLabel14: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 51
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = 'Atividade'
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
              OnClick = UniSFBitBtn5Click
              FAIcon.Icon = fa_search
              FAIcon.Size = fs_16
              FAIcon.Color = fc_grey
              ButtonStyles = bs_transparent
            end
          end
          object UniPanel27: TUniPanel
            Left = 881
            Top = 3
            Width = 139
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 4
            Caption = ''
            Color = 16249327
            object UniContainerPanel24: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 137
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit17: TUniEdit
              Left = 1
              Top = 28
              Width = 137
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Centro de custo'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Centro de custo'
            end
          end
          object UniPanel28: TUniPanel
            Left = 695
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 5
            Caption = ''
            Color = 16249327
            object UniEdit18: TUniEdit
              Left = 1
              Top = 28
              Width = 178
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
            object UniContainerPanel25: TUniContainerPanel
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
            end
          end
          object UniPanel29: TUniPanel
            Left = 592
            Top = 3
            Width = 89
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 6
            Caption = ''
            Color = 16249327
            object UniContainerPanel26: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 87
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit19: TUniEdit
              Left = 1
              Top = 28
              Width = 87
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Cheque'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Cheque'
            end
          end
          object UniPanel30: TUniPanel
            Left = 406
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 7
            Caption = ''
            Color = 16249327
            object UniEdit20: TUniEdit
              Left = 1
              Top = 28
              Width = 178
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
            object UniContainerPanel27: TUniContainerPanel
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
            end
          end
          object UniPanel32: TUniPanel
            Left = 212
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 8
            Caption = ''
            Color = 16249327
            object UniContainerPanel28: TUniContainerPanel
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
              TabOrder = 1
              TabStop = False
              LayoutConfig.Cls = 'body_grdnt_rounded'
            end
            object UniDateTimePicker3: TUniDateTimePicker
              Left = 1
              Top = 28
              Width = 178
              Height = 41
              Hint = ''
              DateTime = 46029.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              Align = alClient
              TabOrder = 2
            end
          end
          object UniPanel33: TUniPanel
            Left = 125
            Top = 3
            Width = 73
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 9
            Caption = ''
            Color = 16249327
            object UniContainerPanel29: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 71
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit21: TUniEdit
              Left = 1
              Top = 28
              Width = 71
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'DIA(S)'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'DIA(S)'
            end
          end
          object UniPanel34: TUniPanel
            Left = 55
            Top = 3
            Width = 65
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 10
            Caption = ''
            Color = 16249327
            object UniEdit22: TUniEdit
              Left = 1
              Top = 28
              Width = 63
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
            object UniContainerPanel30: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 63
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
          object UniPanel35: TUniPanel
            Left = 4
            Top = 3
            Width = 45
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 11
            Caption = ''
            Color = 16249327
            object UniContainerPanel31: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 43
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
              object UniLabel18: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit23: TUniEdit
              AlignWithMargins = True
              Left = 4
              Top = 31
              Width = 37
              Height = 35
              Hint = ''
              Enabled = False
              CharCase = ecUpperCase
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = '3'#186
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = '3'#186
            end
          end
        end
        object compLN4: TUniPanel
          Left = 3
          Top = 379
          Width = 1462
          Height = 79
          Hint = ''
          TabOrder = 3
          Caption = ''
          object UniPanel37: TUniPanel
            Left = 1227
            Top = 3
            Width = 218
            Height = 70
            Hint = 't1w400h0;'
            TabOrder = 1
            Caption = ''
            Color = clWhite
            object UniContainerPanel32: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 216
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
                Width = 108
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = 'Tipo de pagamento'
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
              Top = 45
              Width = 206
              Hint = ''
              Text = ''
              TabOrder = 2
              Items.Strings = (
                '1 - Dinheiro '
                '2 - Cheque '
                '3 - Cart'#227'o de Cr'#233'dito '
                '4 - Cart'#227'o de D'#233'bito '
                '5 - Cr'#233'dito Loja '
                '10 - Vale Alimenta'#231#227'o '
                '11 - Vale Refei'#231#227'o '
                '12 - Vale Presente '
                '13 - Vale Combust'#237'vel '
                '99 - Outros')
              Groups = <>
              Options.Placeholders = 'Selecione'
              Options.noResults = 'No Results Found'
            end
          end
          object UniPanel39: TUniPanel
            Left = 1140
            Top = 3
            Width = 73
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 2
            Caption = ''
            Color = 16249327
            object UniContainerPanel33: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 71
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit24: TUniEdit
              Left = 1
              Top = 28
              Width = 71
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Pagto'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Pagto'
            end
          end
          object UniPanel40: TUniPanel
            Left = 1034
            Top = 3
            Width = 100
            Height = 70
            Hint = 't1w100h0;'
            TabOrder = 3
            Caption = ''
            Color = clWhite
            object compCODCC_L4: TUniEdit
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
              ClientEvents.UniEvents.Strings = (
                
                  'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
                  '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
                  'n: /^[0-9\s]+$/g, recursive: true },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
            end
            object UniContainerPanel34: TUniContainerPanel
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
              object UniLabel21: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 51
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = 'Atividade'
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
              OnClick = UniSFBitBtn6Click
              FAIcon.Icon = fa_search
              FAIcon.Size = fs_16
              FAIcon.Color = fc_grey
              ButtonStyles = bs_transparent
            end
          end
          object UniPanel42: TUniPanel
            Left = 881
            Top = 3
            Width = 139
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 4
            Caption = ''
            Color = 16249327
            object UniContainerPanel35: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 137
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit26: TUniEdit
              Left = 1
              Top = 28
              Width = 137
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Centro de custo'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Centro de custo'
            end
          end
          object UniPanel43: TUniPanel
            Left = 695
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 5
            Caption = ''
            Color = 16249327
            object UniEdit27: TUniEdit
              Left = 1
              Top = 28
              Width = 178
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
            object UniContainerPanel36: TUniContainerPanel
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
            end
          end
          object UniPanel44: TUniPanel
            Left = 592
            Top = 3
            Width = 89
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 6
            Caption = ''
            Color = 16249327
            object UniContainerPanel37: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 87
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit28: TUniEdit
              Left = 1
              Top = 28
              Width = 87
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Cheque'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Cheque'
            end
          end
          object UniPanel45: TUniPanel
            Left = 406
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 7
            Caption = ''
            Color = 16249327
            object UniEdit29: TUniEdit
              Left = 1
              Top = 28
              Width = 178
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
            object UniContainerPanel38: TUniContainerPanel
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
            end
          end
          object UniPanel47: TUniPanel
            Left = 212
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 8
            Caption = ''
            Color = 16249327
            object UniContainerPanel39: TUniContainerPanel
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
              TabOrder = 1
              TabStop = False
              LayoutConfig.Cls = 'body_grdnt_rounded'
            end
            object UniDateTimePicker4: TUniDateTimePicker
              Left = 1
              Top = 28
              Width = 178
              Height = 41
              Hint = ''
              DateTime = 46029.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              Align = alClient
              TabOrder = 2
            end
          end
          object UniPanel48: TUniPanel
            Left = 125
            Top = 3
            Width = 73
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 9
            Caption = ''
            Color = 16249327
            object UniContainerPanel41: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 71
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit30: TUniEdit
              Left = 1
              Top = 28
              Width = 71
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'DIA(S)'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'DIA(S)'
            end
          end
          object UniPanel49: TUniPanel
            Left = 55
            Top = 3
            Width = 65
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 10
            Caption = ''
            Color = 16249327
            object UniEdit31: TUniEdit
              Left = 1
              Top = 28
              Width = 63
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
            object UniContainerPanel42: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 63
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
          object UniPanel50: TUniPanel
            Left = 4
            Top = 3
            Width = 45
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 11
            Caption = ''
            Color = 16249327
            object UniContainerPanel43: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 43
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
              object UniLabel25: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit32: TUniEdit
              AlignWithMargins = True
              Left = 4
              Top = 31
              Width = 37
              Height = 35
              Hint = ''
              Enabled = False
              CharCase = ecUpperCase
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = '4'#186
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = '4'#186
            end
          end
        end
        object compLN5: TUniPanel
          Left = 3
          Top = 483
          Width = 1462
          Height = 79
          Hint = ''
          TabOrder = 4
          Caption = ''
          object UniPanel52: TUniPanel
            Left = 1227
            Top = 3
            Width = 218
            Height = 70
            Hint = 't1w400h0;'
            TabOrder = 1
            Caption = ''
            Color = clWhite
            object UniContainerPanel44: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 216
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
                Width = 108
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = 'Tipo de pagamento'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniSFComboBox5: TUniSFComboBox
              Left = 3
              Top = 45
              Width = 206
              Hint = ''
              Text = ''
              TabOrder = 2
              Items.Strings = (
                '1 - Dinheiro '
                '2 - Cheque '
                '3 - Cart'#227'o de Cr'#233'dito '
                '4 - Cart'#227'o de D'#233'bito '
                '5 - Cr'#233'dito Loja '
                '10 - Vale Alimenta'#231#227'o '
                '11 - Vale Refei'#231#227'o '
                '12 - Vale Presente '
                '13 - Vale Combust'#237'vel '
                '99 - Outros')
              Groups = <>
              Options.Placeholders = 'Selecione'
              Options.noResults = 'No Results Found'
            end
          end
          object UniPanel54: TUniPanel
            Left = 1140
            Top = 3
            Width = 73
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 2
            Caption = ''
            Color = 16249327
            object UniContainerPanel45: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 71
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit33: TUniEdit
              Left = 1
              Top = 28
              Width = 71
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Pagto'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Pagto'
            end
          end
          object UniPanel55: TUniPanel
            Left = 1034
            Top = 3
            Width = 100
            Height = 70
            Hint = 't1w100h0;'
            TabOrder = 3
            Caption = ''
            Color = clWhite
            object compCODCC_L5: TUniEdit
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
              ClientEvents.UniEvents.Strings = (
                
                  'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
                  '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
                  'n: /^[0-9\s]+$/g, recursive: true },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
            end
            object UniContainerPanel46: TUniContainerPanel
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
              object UniLabel28: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 51
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = 'Atividade'
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
              OnClick = UniSFBitBtn7Click
              FAIcon.Icon = fa_search
              FAIcon.Size = fs_16
              FAIcon.Color = fc_grey
              ButtonStyles = bs_transparent
            end
          end
          object UniPanel56: TUniPanel
            Left = 881
            Top = 3
            Width = 139
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 4
            Caption = ''
            Color = 16249327
            object UniContainerPanel47: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 137
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit35: TUniEdit
              Left = 1
              Top = 28
              Width = 137
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Centro de custo'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Centro de custo'
            end
          end
          object UniPanel57: TUniPanel
            Left = 695
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 5
            Caption = ''
            Color = 16249327
            object UniEdit36: TUniEdit
              Left = 1
              Top = 28
              Width = 178
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
            object UniContainerPanel48: TUniContainerPanel
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
            end
          end
          object UniPanel58: TUniPanel
            Left = 592
            Top = 3
            Width = 89
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 6
            Caption = ''
            Color = 16249327
            object UniContainerPanel49: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 87
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit37: TUniEdit
              Left = 1
              Top = 28
              Width = 87
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Cheque'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Cheque'
            end
          end
          object UniPanel59: TUniPanel
            Left = 406
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 7
            Caption = ''
            Color = 16249327
            object UniEdit38: TUniEdit
              Left = 1
              Top = 28
              Width = 178
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
            object UniContainerPanel50: TUniContainerPanel
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
            end
          end
          object UniPanel61: TUniPanel
            Left = 212
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 8
            Caption = ''
            Color = 16249327
            object UniContainerPanel51: TUniContainerPanel
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
              TabOrder = 1
              TabStop = False
              LayoutConfig.Cls = 'body_grdnt_rounded'
            end
            object UniDateTimePicker5: TUniDateTimePicker
              Left = 1
              Top = 28
              Width = 178
              Height = 41
              Hint = ''
              DateTime = 46029.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              Align = alClient
              TabOrder = 2
            end
          end
          object UniPanel62: TUniPanel
            Left = 125
            Top = 3
            Width = 73
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 9
            Caption = ''
            Color = 16249327
            object UniContainerPanel52: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 71
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit39: TUniEdit
              Left = 1
              Top = 28
              Width = 71
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'DIA(S)'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'DIA(S)'
            end
          end
          object UniPanel63: TUniPanel
            Left = 55
            Top = 3
            Width = 65
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 10
            Caption = ''
            Color = 16249327
            object UniEdit40: TUniEdit
              Left = 1
              Top = 28
              Width = 63
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
            object UniContainerPanel53: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 63
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
          object UniPanel64: TUniPanel
            Left = 4
            Top = 3
            Width = 45
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 11
            Caption = ''
            Color = 16249327
            object UniContainerPanel54: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 43
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
              object UniLabel38: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit41: TUniEdit
              AlignWithMargins = True
              Left = 4
              Top = 31
              Width = 37
              Height = 35
              Hint = ''
              Enabled = False
              CharCase = ecUpperCase
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = '5'#186
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = '5'#186
            end
          end
        end
        object compLN6: TUniPanel
          Left = 3
          Top = 603
          Width = 1462
          Height = 79
          Hint = ''
          TabOrder = 5
          Caption = ''
          object UniPanel66: TUniPanel
            Left = 1227
            Top = 3
            Width = 218
            Height = 70
            Hint = 't1w400h0;'
            TabOrder = 1
            Caption = ''
            Color = clWhite
            object UniContainerPanel55: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 216
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
                Width = 108
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = 'Tipo de pagamento'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniSFComboBox6: TUniSFComboBox
              Left = 3
              Top = 45
              Width = 206
              Hint = ''
              Text = ''
              TabOrder = 2
              Items.Strings = (
                '1 - Dinheiro '
                '2 - Cheque '
                '3 - Cart'#227'o de Cr'#233'dito '
                '4 - Cart'#227'o de D'#233'bito '
                '5 - Cr'#233'dito Loja '
                '10 - Vale Alimenta'#231#227'o '
                '11 - Vale Refei'#231#227'o '
                '12 - Vale Presente '
                '13 - Vale Combust'#237'vel '
                '99 - Outros')
              Groups = <>
              Options.Placeholders = 'Selecione'
              Options.noResults = 'No Results Found'
            end
          end
          object UniPanel68: TUniPanel
            Left = 1140
            Top = 3
            Width = 73
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 2
            Caption = ''
            Color = 16249327
            object UniContainerPanel56: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 71
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit42: TUniEdit
              Left = 1
              Top = 28
              Width = 71
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Pagto'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Pagto'
            end
          end
          object UniPanel69: TUniPanel
            Left = 1034
            Top = 3
            Width = 100
            Height = 70
            Hint = 't1w100h0;'
            TabOrder = 3
            Caption = ''
            Color = clWhite
            object compCODCC_L6: TUniEdit
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
              ClientEvents.UniEvents.Strings = (
                
                  'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
                  '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
                  'n: /^[0-9\s]+$/g, recursive: true },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
            end
            object UniContainerPanel57: TUniContainerPanel
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
              object UniLabel41: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 51
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = 'Atividade'
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
              OnClick = UniSFBitBtn8Click
              FAIcon.Icon = fa_search
              FAIcon.Size = fs_16
              FAIcon.Color = fc_grey
              ButtonStyles = bs_transparent
            end
          end
          object UniPanel70: TUniPanel
            Left = 881
            Top = 3
            Width = 139
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 4
            Caption = ''
            Color = 16249327
            object UniContainerPanel58: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 137
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit44: TUniEdit
              Left = 1
              Top = 28
              Width = 137
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Centro de custo'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Centro de custo'
            end
          end
          object UniPanel71: TUniPanel
            Left = 695
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 5
            Caption = ''
            Color = 16249327
            object UniEdit45: TUniEdit
              Left = 1
              Top = 28
              Width = 178
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
            object UniContainerPanel59: TUniContainerPanel
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
            end
          end
          object UniPanel72: TUniPanel
            Left = 592
            Top = 3
            Width = 89
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 6
            Caption = ''
            Color = 16249327
            object UniContainerPanel60: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 87
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit46: TUniEdit
              Left = 1
              Top = 28
              Width = 87
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Cheque'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Cheque'
            end
          end
          object UniPanel73: TUniPanel
            Left = 406
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 7
            Caption = ''
            Color = 16249327
            object UniEdit47: TUniEdit
              Left = 1
              Top = 28
              Width = 178
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
            object UniContainerPanel61: TUniContainerPanel
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
            end
          end
          object UniPanel75: TUniPanel
            Left = 212
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 8
            Caption = ''
            Color = 16249327
            object UniContainerPanel62: TUniContainerPanel
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
              TabOrder = 1
              TabStop = False
              LayoutConfig.Cls = 'body_grdnt_rounded'
            end
            object UniDateTimePicker6: TUniDateTimePicker
              Left = 1
              Top = 28
              Width = 178
              Height = 41
              Hint = ''
              DateTime = 46029.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              Align = alClient
              TabOrder = 2
            end
          end
          object UniPanel76: TUniPanel
            Left = 125
            Top = 3
            Width = 73
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 9
            Caption = ''
            Color = 16249327
            object UniContainerPanel63: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 71
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit48: TUniEdit
              Left = 1
              Top = 28
              Width = 71
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'DIA(S)'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'DIA(S)'
            end
          end
          object UniPanel77: TUniPanel
            Left = 55
            Top = 3
            Width = 65
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 10
            Caption = ''
            Color = 16249327
            object UniEdit49: TUniEdit
              Left = 1
              Top = 28
              Width = 63
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
            object UniContainerPanel64: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 63
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
          object UniPanel78: TUniPanel
            Left = 4
            Top = 3
            Width = 45
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 11
            Caption = ''
            Color = 16249327
            object UniContainerPanel65: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 43
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
              object UniLabel45: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit50: TUniEdit
              AlignWithMargins = True
              Left = 4
              Top = 31
              Width = 37
              Height = 35
              Hint = ''
              Enabled = False
              CharCase = ecUpperCase
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = '6'#186
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = '6'#186
            end
          end
        end
        object compLN7: TUniPanel
          Left = 3
          Top = 729
          Width = 1462
          Height = 79
          Hint = ''
          TabOrder = 6
          Caption = ''
          object UniPanel80: TUniPanel
            Left = 1227
            Top = 3
            Width = 218
            Height = 70
            Hint = 't1w400h0;'
            TabOrder = 1
            Caption = ''
            Color = clWhite
            object UniContainerPanel66: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 216
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
                Width = 108
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = 'Tipo de pagamento'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniSFComboBox7: TUniSFComboBox
              Left = 3
              Top = 45
              Width = 206
              Hint = ''
              Text = ''
              TabOrder = 2
              Items.Strings = (
                '1 - Dinheiro '
                '2 - Cheque '
                '3 - Cart'#227'o de Cr'#233'dito '
                '4 - Cart'#227'o de D'#233'bito '
                '5 - Cr'#233'dito Loja '
                '10 - Vale Alimenta'#231#227'o '
                '11 - Vale Refei'#231#227'o '
                '12 - Vale Presente '
                '13 - Vale Combust'#237'vel '
                '99 - Outros')
              Groups = <>
              Options.Placeholders = 'Selecione'
              Options.noResults = 'No Results Found'
            end
          end
          object UniPanel82: TUniPanel
            Left = 1140
            Top = 3
            Width = 73
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 2
            Caption = ''
            Color = 16249327
            object UniContainerPanel67: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 71
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit51: TUniEdit
              Left = 1
              Top = 28
              Width = 71
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Pagto'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Pagto'
            end
          end
          object UniPanel83: TUniPanel
            Left = 1034
            Top = 3
            Width = 100
            Height = 70
            Hint = 't1w100h0;'
            TabOrder = 3
            Caption = ''
            Color = clWhite
            object compCODCC_L7: TUniEdit
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
              ClientEvents.UniEvents.Strings = (
                
                  'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
                  '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
                  'n: /^[0-9\s]+$/g, recursive: true },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
            end
            object UniContainerPanel68: TUniContainerPanel
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
              object UniLabel49: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 51
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = 'Atividade'
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
              OnClick = UniSFBitBtn9Click
              FAIcon.Icon = fa_search
              FAIcon.Size = fs_16
              FAIcon.Color = fc_grey
              ButtonStyles = bs_transparent
            end
          end
          object UniPanel84: TUniPanel
            Left = 881
            Top = 3
            Width = 139
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 4
            Caption = ''
            Color = 16249327
            object UniContainerPanel69: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 137
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit53: TUniEdit
              Left = 1
              Top = 28
              Width = 137
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Centro de custo'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Centro de custo'
            end
          end
          object UniPanel85: TUniPanel
            Left = 695
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 5
            Caption = ''
            Color = 16249327
            object UniEdit54: TUniEdit
              Left = 1
              Top = 28
              Width = 178
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
            object UniContainerPanel70: TUniContainerPanel
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
            end
          end
          object UniPanel86: TUniPanel
            Left = 592
            Top = 3
            Width = 89
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 6
            Caption = ''
            Color = 16249327
            object UniContainerPanel71: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 87
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit55: TUniEdit
              Left = 1
              Top = 28
              Width = 87
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Cheque'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Cheque'
            end
          end
          object UniPanel87: TUniPanel
            Left = 406
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 7
            Caption = ''
            Color = 16249327
            object UniEdit56: TUniEdit
              Left = 1
              Top = 28
              Width = 178
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
            object UniContainerPanel72: TUniContainerPanel
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
            end
          end
          object UniPanel94: TUniPanel
            Left = 212
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 8
            Caption = ''
            Color = 16249327
            object UniContainerPanel73: TUniContainerPanel
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
              TabOrder = 1
              TabStop = False
              LayoutConfig.Cls = 'body_grdnt_rounded'
            end
            object UniDateTimePicker7: TUniDateTimePicker
              Left = 1
              Top = 28
              Width = 178
              Height = 41
              Hint = ''
              DateTime = 46029.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              Align = alClient
              TabOrder = 2
            end
          end
          object UniPanel95: TUniPanel
            Left = 125
            Top = 3
            Width = 73
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 9
            Caption = ''
            Color = 16249327
            object UniContainerPanel74: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 71
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit57: TUniEdit
              Left = 1
              Top = 28
              Width = 71
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'DIA(S)'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'DIA(S)'
            end
          end
          object UniPanel96: TUniPanel
            Left = 55
            Top = 3
            Width = 65
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 10
            Caption = ''
            Color = 16249327
            object UniEdit58: TUniEdit
              Left = 1
              Top = 28
              Width = 63
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
            object UniContainerPanel75: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 63
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
          object UniPanel97: TUniPanel
            Left = 4
            Top = 3
            Width = 45
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 11
            Caption = ''
            Color = 16249327
            object UniContainerPanel76: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 43
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
              object UniLabel53: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit59: TUniEdit
              AlignWithMargins = True
              Left = 4
              Top = 31
              Width = 37
              Height = 35
              Hint = ''
              Enabled = False
              CharCase = ecUpperCase
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = '7'#186
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = '7'#186
            end
          end
        end
        object compLN8: TUniPanel
          Left = 3
          Top = 849
          Width = 1462
          Height = 79
          Hint = ''
          TabOrder = 7
          Caption = ''
          object UniPanel99: TUniPanel
            Left = 1227
            Top = 3
            Width = 218
            Height = 70
            Hint = 't1w400h0;'
            TabOrder = 1
            Caption = ''
            Color = clWhite
            object UniContainerPanel82: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 216
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
                Width = 108
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = 'Tipo de pagamento'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniSFComboBox8: TUniSFComboBox
              Left = 3
              Top = 45
              Width = 206
              Hint = ''
              Text = ''
              TabOrder = 2
              Items.Strings = (
                '1 - Dinheiro '
                '2 - Cheque '
                '3 - Cart'#227'o de Cr'#233'dito '
                '4 - Cart'#227'o de D'#233'bito '
                '5 - Cr'#233'dito Loja '
                '10 - Vale Alimenta'#231#227'o '
                '11 - Vale Refei'#231#227'o '
                '12 - Vale Presente '
                '13 - Vale Combust'#237'vel '
                '99 - Outros')
              Groups = <>
              Options.Placeholders = 'Selecione'
              Options.noResults = 'No Results Found'
            end
          end
          object UniPanel100: TUniPanel
            Left = 1140
            Top = 3
            Width = 73
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 2
            Caption = ''
            Color = 16249327
            object UniContainerPanel83: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 71
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit60: TUniEdit
              Left = 1
              Top = 28
              Width = 71
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Pagto'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Pagto'
            end
          end
          object UniPanel101: TUniPanel
            Left = 1034
            Top = 3
            Width = 100
            Height = 70
            Hint = 't1w100h0;'
            TabOrder = 3
            Caption = ''
            Color = clWhite
            object compCODCC_L8: TUniEdit
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
              ClientEvents.UniEvents.Strings = (
                
                  'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
                  '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
                  'n: /^[0-9\s]+$/g, recursive: true },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
            end
            object UniContainerPanel84: TUniContainerPanel
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
              object UniLabel56: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 51
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = 'Atividade'
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
              OnClick = UniSFBitBtn10Click
              FAIcon.Icon = fa_search
              FAIcon.Size = fs_16
              FAIcon.Color = fc_grey
              ButtonStyles = bs_transparent
            end
          end
          object UniPanel102: TUniPanel
            Left = 881
            Top = 3
            Width = 139
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 4
            Caption = ''
            Color = 16249327
            object UniContainerPanel85: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 137
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
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit67: TUniEdit
              Left = 1
              Top = 28
              Width = 137
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Centro de custo'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Centro de custo'
            end
          end
          object UniPanel103: TUniPanel
            Left = 695
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 5
            Caption = ''
            Color = 16249327
            object UniEdit68: TUniEdit
              Left = 1
              Top = 28
              Width = 178
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
            object UniContainerPanel86: TUniContainerPanel
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
            end
          end
          object UniPanel104: TUniPanel
            Left = 592
            Top = 3
            Width = 89
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 6
            Caption = ''
            Color = 16249327
            object UniContainerPanel87: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 87
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
              object UniLabel58: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit69: TUniEdit
              Left = 1
              Top = 28
              Width = 87
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Cheque'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Cheque'
            end
          end
          object UniPanel105: TUniPanel
            Left = 406
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 7
            Caption = ''
            Color = 16249327
            object UniEdit70: TUniEdit
              Left = 1
              Top = 28
              Width = 178
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
            object UniContainerPanel88: TUniContainerPanel
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
            end
          end
          object UniPanel106: TUniPanel
            Left = 212
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 8
            Caption = ''
            Color = 16249327
            object UniContainerPanel89: TUniContainerPanel
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
              TabOrder = 1
              TabStop = False
              LayoutConfig.Cls = 'body_grdnt_rounded'
            end
            object UniDateTimePicker8: TUniDateTimePicker
              Left = 1
              Top = 28
              Width = 178
              Height = 41
              Hint = ''
              DateTime = 46029.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              Align = alClient
              TabOrder = 2
            end
          end
          object UniPanel107: TUniPanel
            Left = 125
            Top = 3
            Width = 73
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 9
            Caption = ''
            Color = 16249327
            object UniContainerPanel90: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 71
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
              object UniLabel59: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit71: TUniEdit
              Left = 1
              Top = 28
              Width = 71
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'DIA(S)'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'DIA(S)'
            end
          end
          object UniPanel108: TUniPanel
            Left = 55
            Top = 3
            Width = 65
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 10
            Caption = ''
            Color = 16249327
            object UniEdit72: TUniEdit
              Left = 1
              Top = 28
              Width = 63
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
            object UniContainerPanel91: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 63
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
          object UniPanel109: TUniPanel
            Left = 4
            Top = 3
            Width = 45
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 11
            Caption = ''
            Color = 16249327
            object UniContainerPanel92: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 43
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
              object UniLabel60: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit73: TUniEdit
              AlignWithMargins = True
              Left = 4
              Top = 31
              Width = 37
              Height = 35
              Hint = ''
              Enabled = False
              CharCase = ecUpperCase
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = '8'#186
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = '8'#186
            end
          end
        end
        object compLN9: TUniPanel
          Left = 3
          Top = 960
          Width = 1462
          Height = 79
          Hint = ''
          TabOrder = 8
          Caption = ''
          object UniPanel111: TUniPanel
            Left = 1227
            Top = 3
            Width = 218
            Height = 70
            Hint = 't1w400h0;'
            TabOrder = 1
            Caption = ''
            Color = clWhite
            object UniContainerPanel93: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 216
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
              object UniLabel61: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 108
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = 'Tipo de pagamento'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniSFComboBox9: TUniSFComboBox
              Left = 3
              Top = 45
              Width = 206
              Hint = ''
              Text = ''
              TabOrder = 2
              Items.Strings = (
                '1 - Dinheiro '
                '2 - Cheque '
                '3 - Cart'#227'o de Cr'#233'dito '
                '4 - Cart'#227'o de D'#233'bito '
                '5 - Cr'#233'dito Loja '
                '10 - Vale Alimenta'#231#227'o '
                '11 - Vale Refei'#231#227'o '
                '12 - Vale Presente '
                '13 - Vale Combust'#237'vel '
                '99 - Outros')
              Groups = <>
              Options.Placeholders = 'Selecione'
              Options.noResults = 'No Results Found'
            end
          end
          object UniPanel112: TUniPanel
            Left = 1140
            Top = 3
            Width = 73
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 2
            Caption = ''
            Color = 16249327
            object UniContainerPanel94: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 71
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
              object UniLabel62: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit74: TUniEdit
              Left = 1
              Top = 28
              Width = 71
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Pagto'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Pagto'
            end
          end
          object UniPanel113: TUniPanel
            Left = 1034
            Top = 3
            Width = 100
            Height = 70
            Hint = 't1w100h0;'
            TabOrder = 3
            Caption = ''
            Color = clWhite
            object compCODCC_L9: TUniEdit
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
              ClientEvents.UniEvents.Strings = (
                
                  'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
                  '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
                  'n: /^[0-9\s]+$/g, recursive: true },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
            end
            object UniContainerPanel95: TUniContainerPanel
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
              object UniLabel63: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 51
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = 'Atividade'
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
              OnClick = UniSFBitBtn11Click
              FAIcon.Icon = fa_search
              FAIcon.Size = fs_16
              FAIcon.Color = fc_grey
              ButtonStyles = bs_transparent
            end
          end
          object UniPanel114: TUniPanel
            Left = 881
            Top = 3
            Width = 139
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 4
            Caption = ''
            Color = 16249327
            object UniContainerPanel96: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 137
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
              object UniLabel64: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit76: TUniEdit
              Left = 1
              Top = 28
              Width = 137
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Centro de custo'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Centro de custo'
            end
          end
          object UniPanel115: TUniPanel
            Left = 695
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 5
            Caption = ''
            Color = 16249327
            object UniEdit77: TUniEdit
              Left = 1
              Top = 28
              Width = 178
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
            object UniContainerPanel97: TUniContainerPanel
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
            end
          end
          object UniPanel116: TUniPanel
            Left = 592
            Top = 3
            Width = 89
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 6
            Caption = ''
            Color = 16249327
            object UniContainerPanel98: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 87
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
              object UniLabel65: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit78: TUniEdit
              Left = 1
              Top = 28
              Width = 87
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Cheque'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Cheque'
            end
          end
          object UniPanel117: TUniPanel
            Left = 406
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 7
            Caption = ''
            Color = 16249327
            object UniEdit79: TUniEdit
              Left = 1
              Top = 28
              Width = 178
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
            object UniContainerPanel99: TUniContainerPanel
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
            end
          end
          object UniPanel118: TUniPanel
            Left = 212
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 8
            Caption = ''
            Color = 16249327
            object UniContainerPanel100: TUniContainerPanel
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
              TabOrder = 1
              TabStop = False
              LayoutConfig.Cls = 'body_grdnt_rounded'
            end
            object UniDateTimePicker9: TUniDateTimePicker
              Left = 1
              Top = 28
              Width = 178
              Height = 41
              Hint = ''
              DateTime = 46029.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              Align = alClient
              TabOrder = 2
            end
          end
          object UniPanel119: TUniPanel
            Left = 125
            Top = 3
            Width = 73
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 9
            Caption = ''
            Color = 16249327
            object UniContainerPanel101: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 71
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
              object UniLabel66: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit80: TUniEdit
              Left = 1
              Top = 28
              Width = 71
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'DIA(S)'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'DIA(S)'
            end
          end
          object UniPanel120: TUniPanel
            Left = 55
            Top = 3
            Width = 65
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 10
            Caption = ''
            Color = 16249327
            object UniEdit81: TUniEdit
              Left = 1
              Top = 28
              Width = 63
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
            object UniContainerPanel102: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 63
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
          object UniPanel121: TUniPanel
            Left = 4
            Top = 3
            Width = 45
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 11
            Caption = ''
            Color = 16249327
            object UniContainerPanel103: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 43
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
              object UniLabel67: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit82: TUniEdit
              AlignWithMargins = True
              Left = 4
              Top = 31
              Width = 37
              Height = 35
              Hint = ''
              Enabled = False
              CharCase = ecUpperCase
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = '9'#186
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = '9'#186
            end
          end
        end
        object compLN10: TUniPanel
          Left = 3
          Top = 1089
          Width = 1462
          Height = 79
          Hint = ''
          TabOrder = 9
          Caption = ''
          object UniPanel123: TUniPanel
            Left = 1227
            Top = 3
            Width = 218
            Height = 70
            Hint = 't1w400h0;'
            TabOrder = 1
            Caption = ''
            Color = clWhite
            object UniContainerPanel104: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 216
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
              object UniLabel68: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 108
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = 'Tipo de pagamento'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniSFComboBox10: TUniSFComboBox
              Left = 3
              Top = 45
              Width = 206
              Hint = ''
              Text = ''
              TabOrder = 2
              Items.Strings = (
                '1 - Dinheiro '
                '2 - Cheque '
                '3 - Cart'#227'o de Cr'#233'dito '
                '4 - Cart'#227'o de D'#233'bito '
                '5 - Cr'#233'dito Loja '
                '10 - Vale Alimenta'#231#227'o '
                '11 - Vale Refei'#231#227'o '
                '12 - Vale Presente '
                '13 - Vale Combust'#237'vel '
                '99 - Outros')
              Groups = <>
              Options.Placeholders = 'Selecione'
              Options.noResults = 'No Results Found'
            end
          end
          object UniPanel124: TUniPanel
            Left = 1140
            Top = 3
            Width = 73
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 2
            Caption = ''
            Color = 16249327
            object UniContainerPanel105: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 71
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
              object UniLabel69: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit83: TUniEdit
              Left = 1
              Top = 28
              Width = 71
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Pagto'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Pagto'
            end
          end
          object UniPanel125: TUniPanel
            Left = 1034
            Top = 3
            Width = 100
            Height = 70
            Hint = 't1w100h0;'
            TabOrder = 3
            Caption = ''
            Color = clWhite
            object compCODCC_L10: TUniEdit
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
              ClientEvents.UniEvents.Strings = (
                
                  'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
                  '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
                  'n: /^[0-9\s]+$/g, recursive: true },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
            end
            object UniContainerPanel106: TUniContainerPanel
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
              object UniLabel70: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 51
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = 'Atividade'
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
              OnClick = UniSFBitBtn12Click
              FAIcon.Icon = fa_search
              FAIcon.Size = fs_16
              FAIcon.Color = fc_grey
              ButtonStyles = bs_transparent
            end
          end
          object UniPanel126: TUniPanel
            Left = 881
            Top = 3
            Width = 139
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 4
            Caption = ''
            Color = 16249327
            object UniContainerPanel107: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 137
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
              object UniLabel71: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit85: TUniEdit
              Left = 1
              Top = 28
              Width = 137
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Centro de custo'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Centro de custo'
            end
          end
          object UniPanel127: TUniPanel
            Left = 695
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 5
            Caption = ''
            Color = 16249327
            object UniEdit86: TUniEdit
              Left = 1
              Top = 28
              Width = 178
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
            object UniContainerPanel108: TUniContainerPanel
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
            end
          end
          object UniPanel128: TUniPanel
            Left = 592
            Top = 3
            Width = 89
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 6
            Caption = ''
            Color = 16249327
            object UniContainerPanel109: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 87
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
              object UniLabel72: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit87: TUniEdit
              Left = 1
              Top = 28
              Width = 87
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Cheque'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Cheque'
            end
          end
          object UniPanel129: TUniPanel
            Left = 406
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 7
            Caption = ''
            Color = 16249327
            object UniEdit88: TUniEdit
              Left = 1
              Top = 28
              Width = 178
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
            object UniContainerPanel110: TUniContainerPanel
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
            end
          end
          object UniPanel130: TUniPanel
            Left = 212
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 8
            Caption = ''
            Color = 16249327
            object UniContainerPanel111: TUniContainerPanel
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
              TabOrder = 1
              TabStop = False
              LayoutConfig.Cls = 'body_grdnt_rounded'
            end
            object UniDateTimePicker10: TUniDateTimePicker
              Left = 1
              Top = 28
              Width = 178
              Height = 41
              Hint = ''
              DateTime = 46029.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              Align = alClient
              TabOrder = 2
            end
          end
          object UniPanel131: TUniPanel
            Left = 125
            Top = 3
            Width = 73
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 9
            Caption = ''
            Color = 16249327
            object UniContainerPanel112: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 71
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
              object UniLabel73: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit89: TUniEdit
              Left = 1
              Top = 28
              Width = 71
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'DIA(S)'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'DIA(S)'
            end
          end
          object UniPanel132: TUniPanel
            Left = 55
            Top = 3
            Width = 65
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 10
            Caption = ''
            Color = 16249327
            object UniEdit90: TUniEdit
              Left = 1
              Top = 28
              Width = 63
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
            object UniContainerPanel113: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 63
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
          object UniPanel133: TUniPanel
            Left = 4
            Top = 3
            Width = 45
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 11
            Caption = ''
            Color = 16249327
            object UniContainerPanel114: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 43
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
              object UniLabel74: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit91: TUniEdit
              AlignWithMargins = True
              Left = 4
              Top = 31
              Width = 37
              Height = 35
              Hint = ''
              Enabled = False
              CharCase = ecUpperCase
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = '10'#186
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = '10'#186
            end
          end
        end
        object compLN11: TUniPanel
          Left = 3
          Top = 1209
          Width = 1462
          Height = 79
          Hint = ''
          TabOrder = 10
          Caption = ''
          object UniPanel135: TUniPanel
            Left = 1227
            Top = 3
            Width = 218
            Height = 70
            Hint = 't1w400h0;'
            TabOrder = 1
            Caption = ''
            Color = clWhite
            object UniContainerPanel115: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 216
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
              object UniLabel75: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 108
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = 'Tipo de pagamento'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniSFComboBox11: TUniSFComboBox
              Left = 3
              Top = 45
              Width = 206
              Hint = ''
              Text = ''
              TabOrder = 2
              Items.Strings = (
                '1 - Dinheiro '
                '2 - Cheque '
                '3 - Cart'#227'o de Cr'#233'dito '
                '4 - Cart'#227'o de D'#233'bito '
                '5 - Cr'#233'dito Loja '
                '10 - Vale Alimenta'#231#227'o '
                '11 - Vale Refei'#231#227'o '
                '12 - Vale Presente '
                '13 - Vale Combust'#237'vel '
                '99 - Outros')
              Groups = <>
              Options.Placeholders = 'Selecione'
              Options.noResults = 'No Results Found'
            end
          end
          object UniPanel136: TUniPanel
            Left = 1140
            Top = 3
            Width = 73
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 2
            Caption = ''
            Color = 16249327
            object UniContainerPanel116: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 71
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
              object UniLabel76: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit92: TUniEdit
              Left = 1
              Top = 28
              Width = 71
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Pagto'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Pagto'
            end
          end
          object UniPanel137: TUniPanel
            Left = 1034
            Top = 3
            Width = 100
            Height = 70
            Hint = 't1w100h0;'
            TabOrder = 3
            Caption = ''
            Color = clWhite
            object compCODCC_L11: TUniEdit
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
              ClientEvents.UniEvents.Strings = (
                
                  'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
                  '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
                  'n: /^[0-9\s]+$/g, recursive: true },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
            end
            object UniContainerPanel117: TUniContainerPanel
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
              object UniLabel77: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 51
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = 'Atividade'
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
              OnClick = UniSFBitBtn13Click
              FAIcon.Icon = fa_search
              FAIcon.Size = fs_16
              FAIcon.Color = fc_grey
              ButtonStyles = bs_transparent
            end
          end
          object UniPanel138: TUniPanel
            Left = 881
            Top = 3
            Width = 139
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 4
            Caption = ''
            Color = 16249327
            object UniContainerPanel118: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 137
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
              object UniLabel78: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit94: TUniEdit
              Left = 1
              Top = 28
              Width = 137
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Centro de custo'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Centro de custo'
            end
          end
          object UniPanel139: TUniPanel
            Left = 695
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 5
            Caption = ''
            Color = 16249327
            object UniEdit95: TUniEdit
              Left = 1
              Top = 28
              Width = 178
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
            object UniContainerPanel119: TUniContainerPanel
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
            end
          end
          object UniPanel140: TUniPanel
            Left = 592
            Top = 3
            Width = 89
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 6
            Caption = ''
            Color = 16249327
            object UniContainerPanel120: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 87
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
              object UniLabel79: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit96: TUniEdit
              Left = 1
              Top = 28
              Width = 87
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Cheque'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Cheque'
            end
          end
          object UniPanel141: TUniPanel
            Left = 406
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 7
            Caption = ''
            Color = 16249327
            object UniEdit97: TUniEdit
              Left = 1
              Top = 28
              Width = 178
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
            object UniContainerPanel121: TUniContainerPanel
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
            end
          end
          object UniPanel142: TUniPanel
            Left = 212
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 8
            Caption = ''
            Color = 16249327
            object UniContainerPanel122: TUniContainerPanel
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
              TabOrder = 1
              TabStop = False
              LayoutConfig.Cls = 'body_grdnt_rounded'
            end
            object UniDateTimePicker11: TUniDateTimePicker
              Left = 1
              Top = 28
              Width = 178
              Height = 41
              Hint = ''
              DateTime = 46029.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              Align = alClient
              TabOrder = 2
            end
          end
          object UniPanel143: TUniPanel
            Left = 125
            Top = 3
            Width = 73
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 9
            Caption = ''
            Color = 16249327
            object UniContainerPanel123: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 71
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
              object UniLabel80: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit98: TUniEdit
              Left = 1
              Top = 28
              Width = 71
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'DIA(S)'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'DIA(S)'
            end
          end
          object UniPanel144: TUniPanel
            Left = 55
            Top = 3
            Width = 65
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 10
            Caption = ''
            Color = 16249327
            object UniEdit99: TUniEdit
              Left = 1
              Top = 28
              Width = 63
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
            object UniContainerPanel124: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 63
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
          object UniPanel145: TUniPanel
            Left = 4
            Top = 3
            Width = 45
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 11
            Caption = ''
            Color = 16249327
            object UniContainerPanel125: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 43
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
              object UniLabel81: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit100: TUniEdit
              AlignWithMargins = True
              Left = 4
              Top = 31
              Width = 37
              Height = 35
              Hint = ''
              Enabled = False
              CharCase = ecUpperCase
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = '11'#186
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = '11'#186
            end
          end
        end
        object compLN12: TUniPanel
          Left = 3
          Top = 1329
          Width = 1462
          Height = 79
          Hint = ''
          TabOrder = 11
          Caption = ''
          object UniPanel147: TUniPanel
            Left = 1227
            Top = 3
            Width = 218
            Height = 70
            Hint = 't1w400h0;'
            TabOrder = 1
            Caption = ''
            Color = clWhite
            object UniContainerPanel126: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 216
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
              object UniLabel82: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 108
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = 'Tipo de pagamento'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniSFComboBox12: TUniSFComboBox
              Left = 3
              Top = 45
              Width = 206
              Hint = ''
              Text = ''
              TabOrder = 2
              Items.Strings = (
                '1 - Dinheiro '
                '2 - Cheque '
                '3 - Cart'#227'o de Cr'#233'dito '
                '4 - Cart'#227'o de D'#233'bito '
                '5 - Cr'#233'dito Loja '
                '10 - Vale Alimenta'#231#227'o '
                '11 - Vale Refei'#231#227'o '
                '12 - Vale Presente '
                '13 - Vale Combust'#237'vel '
                '99 - Outros')
              Groups = <>
              Options.Placeholders = 'Selecione'
              Options.noResults = 'No Results Found'
            end
          end
          object UniPanel148: TUniPanel
            Left = 1140
            Top = 3
            Width = 73
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 2
            Caption = ''
            Color = 16249327
            object UniContainerPanel127: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 71
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
              object UniLabel83: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit101: TUniEdit
              Left = 1
              Top = 28
              Width = 71
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Pagto'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Pagto'
            end
          end
          object UniPanel149: TUniPanel
            Left = 1034
            Top = 3
            Width = 100
            Height = 70
            Hint = 't1w100h0;'
            TabOrder = 3
            Caption = ''
            Color = clWhite
            object compCODCC_L12: TUniEdit
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
              ClientEvents.UniEvents.Strings = (
                
                  'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
                  '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
                  'n: /^[0-9\s]+$/g, recursive: true },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
            end
            object UniContainerPanel128: TUniContainerPanel
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
              object UniLabel84: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 51
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = 'Atividade'
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
              OnClick = UniSFBitBtn14Click
              FAIcon.Icon = fa_search
              FAIcon.Size = fs_16
              FAIcon.Color = fc_grey
              ButtonStyles = bs_transparent
            end
          end
          object UniPanel150: TUniPanel
            Left = 881
            Top = 3
            Width = 139
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 4
            Caption = ''
            Color = 16249327
            object UniContainerPanel129: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 137
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
              object UniLabel85: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit103: TUniEdit
              Left = 1
              Top = 28
              Width = 137
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Centro de custo'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Centro de custo'
            end
          end
          object UniPanel151: TUniPanel
            Left = 695
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 5
            Caption = ''
            Color = 16249327
            object UniEdit104: TUniEdit
              Left = 1
              Top = 28
              Width = 178
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
            object UniContainerPanel130: TUniContainerPanel
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
            end
          end
          object UniPanel152: TUniPanel
            Left = 592
            Top = 3
            Width = 89
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 6
            Caption = ''
            Color = 16249327
            object UniContainerPanel131: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 87
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
              object UniLabel86: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit105: TUniEdit
              Left = 1
              Top = 28
              Width = 87
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'Cheque'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'Cheque'
            end
          end
          object UniPanel153: TUniPanel
            Left = 406
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 7
            Caption = ''
            Color = 16249327
            object UniEdit106: TUniEdit
              Left = 1
              Top = 28
              Width = 178
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
            object UniContainerPanel132: TUniContainerPanel
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
            end
          end
          object UniPanel154: TUniPanel
            Left = 212
            Top = 3
            Width = 180
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 8
            Caption = ''
            Color = 16249327
            object UniContainerPanel133: TUniContainerPanel
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
              TabOrder = 1
              TabStop = False
              LayoutConfig.Cls = 'body_grdnt_rounded'
            end
            object UniDateTimePicker12: TUniDateTimePicker
              Left = 1
              Top = 28
              Width = 178
              Height = 41
              Hint = ''
              DateTime = 46029.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              Align = alClient
              TabOrder = 2
            end
          end
          object UniPanel155: TUniPanel
            Left = 125
            Top = 3
            Width = 73
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 9
            Caption = ''
            Color = 16249327
            object UniContainerPanel134: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 71
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
              object UniLabel87: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit107: TUniEdit
              Left = 1
              Top = 28
              Width = 71
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = 'DIA(S)'
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = 'DIA(S)'
            end
          end
          object UniPanel156: TUniPanel
            Left = 55
            Top = 3
            Width = 65
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 10
            Caption = ''
            Color = 16249327
            object UniEdit108: TUniEdit
              Left = 1
              Top = 28
              Width = 63
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
            object UniContainerPanel135: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 63
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
          object UniPanel157: TUniPanel
            Left = 4
            Top = 3
            Width = 45
            Height = 70
            Hint = 't1w200h0;'
            TabOrder = 11
            Caption = ''
            Color = 16249327
            object UniContainerPanel136: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 43
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
              object UniLabel88: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 45
                Height = 17
                Hint = ''
                Margins.Left = 10
                Visible = False
                Caption = '1'#186' Dia(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object UniEdit109: TUniEdit
              AlignWithMargins = True
              Left = 4
              Top = 31
              Width = 37
              Height = 35
              Hint = ''
              Enabled = False
              CharCase = ecUpperCase
              MaxLength = 6
              BorderStyle = ubsNone
              Alignment = taCenter
              Text = '12'#186
              ParentFont = False
              Font.Height = -16
              Align = alClient
              TabOrder = 2
              Color = 16249327
              EmptyText = '12'#186
            end
          end
        end
      end
    end
  end
  object cpMenuTopo: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 1672
    Height = 97
    Hint = ''
    ParentColor = False
    Align = alTop
    TabOrder = 2
    LayoutConfig.Cls = 'body_grdnt_rounded'
    object UniPanel4: TUniPanel
      Left = 12
      Top = 11
      Width = 152
      Height = 70
      Hint = 't1w200h0;'
      TabOrder = 1
      Caption = ''
      Color = 16249327
      object compTOTALGERALF: TUniEdit
        Left = 1
        Top = 28
        Width = 150
        Height = 41
        Hint = ''
        Enabled = False
        CharCase = ecUpperCase
        MaxLength = 60
        BorderStyle = ubsNone
        Text = ''
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
        Width = 150
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
    object UniPanel41: TUniPanel
      Left = 178
      Top = 11
      Width = 100
      Height = 70
      Hint = 't1w100h0;'
      TabOrder = 2
      Caption = ''
      Color = clWhite
      object compCODPAG: TUniEdit
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
        ClientEvents.UniEvents.Strings = (
          
            'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
            '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
            'n: /^[0-9\s]+$/g, recursive: true },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
      end
      object UniContainerPanel40: TUniContainerPanel
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
        object UniLabel33: TUniLabel
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
      object UniSFBitBtn2: TUniSFBitBtn
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
        OnClick = UniSFBitBtn2Click
        FAIcon.Icon = fa_search
        FAIcon.Size = fs_16
        FAIcon.Color = fc_grey
        ButtonStyles = bs_transparent
      end
    end
    object UniPanel5: TUniPanel
      Left = 292
      Top = 11
      Width = 453
      Height = 70
      Hint = 't1w200h0;'
      TabOrder = 3
      Caption = ''
      Color = 16249327
      object compDESCRPG: TUniEdit
        Left = 1
        Top = 28
        Width = 451
        Height = 41
        Hint = ''
        Enabled = False
        CharCase = ecUpperCase
        MaxLength = 60
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
        Width = 451
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
          Width = 53
          Height = 17
          Hint = ''
          Margins.Left = 10
          Caption = 'Descri'#231#227'o'
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
      Left = 759
      Top = 11
      Width = 152
      Height = 70
      Hint = 't1w200h0;'
      TabOrder = 4
      Caption = ''
      Color = 16249327
      object compNUMPARC: TUniEdit
        Left = 1
        Top = 28
        Width = 150
        Height = 41
        Hint = ''
        CharCase = ecUpperCase
        MaxLength = 60
        BorderStyle = ubsNone
        Alignment = taCenter
        Text = '1'
        ParentFont = False
        Font.Height = -16
        Align = alClient
        TabOrder = 1
        OnChange = compNUMPARCChange
      end
      object UniContainerPanel5: TUniContainerPanel
        Left = 1
        Top = 1
        Width = 150
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
          Width = 43
          Height = 17
          Hint = ''
          Margins.Left = 10
          Caption = 'Parcelas'
          Align = alTop
          ParentFont = False
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Light'
          TabOrder = 1
        end
      end
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
    Left = 968
    Top = 36
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
end
