object frmSelecionaPagamentoF: TfrmSelecionaPagamentoF
  Left = 0
  Top = 0
  ClientHeight = 274
  ClientWidth = 562
  Caption = 'Selecione a forma de pagamento'
  BorderStyle = bsDialog
  OldCreateOrder = False
  OnClose = UniFormClose
  MonitoredKeys.Keys = <>
  OnReady = UniFormReady
  PixelsPerInch = 96
  TextHeight = 13
  object cpMenuRodape: TUniContainerPanel
    Left = 0
    Top = 234
    Width = 562
    Height = 40
    Hint = ''
    ParentColor = False
    Align = alBottom
    TabOrder = 0
    LayoutConfig.Cls = 'body_grdnt_rounded'
    ExplicitTop = 205
    object UniSFBitBtn26: TUniSFBitBtn
      AlignWithMargins = True
      Left = 363
      Top = 5
      Width = 194
      Height = 30
      Hint = ''
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ParentShowHint = False
      Caption = '[CTRL + F10] PARCELADO'
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
      Caption = '[CTRL + F2] A VISTA'
      Align = alLeft
      TabOrder = 2
      Scale = bbsSmall
      LayoutConfig.Cls = 'botaoSemBorda'
      OnClick = UniSFBitBtn27Click
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
      Caption = '[CTRL + F7] CANCELA'
      Align = alLeft
      TabOrder = 3
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
    Top = 0
    Width = 562
    Height = 234
    Hint = ''
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 205
    object PN1: TUniPanel
      Left = 0
      Top = 0
      Width = 560
      Height = 232
      Hint = ''
      Align = alClient
      TabOrder = 0
      Caption = ''
      ExplicitHeight = 203
      object UniScrollBox2: TUniScrollBox
        Left = 1
        Top = 1
        Width = 558
        Height = 230
        Hint = ''
        Align = alClient
        TabOrder = 1
        ExplicitHeight = 201
        ScrollHeight = 178
        ScrollWidth = 544
        object UniPanel1: TUniPanel
          Left = 4
          Top = 3
          Width = 152
          Height = 70
          Hint = 't1w200h0;'
          TabOrder = 0
          Caption = ''
          Color = 16249327
          object compTOTALGERAL: TUniEdit
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
          end
          object UniContainerPanel2: TUniContainerPanel
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
            object UniLabel48: TUniLabel
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
        object UniPanel13: TUniPanel
          Left = 15
          Top = 88
          Width = 500
          Height = 2
          Hint = 't2w2075h2;'
          TabOrder = 1
          Caption = ''
          Color = 16249327
        end
        object UniPanel2: TUniPanel
          Left = 170
          Top = 3
          Width = 180
          Height = 70
          Hint = 't1w200h0;'
          TabOrder = 2
          Caption = ''
          Color = 16249327
          object compVALORPAGO: TUniEdit
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
            OnChange = compVALORPAGOChange
          end
          object UniContainerPanel8: TUniContainerPanel
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
            object UniLabel3: TUniLabel
              AlignWithMargins = True
              Left = 10
              Top = 3
              Width = 58
              Height = 17
              Hint = ''
              Margins.Left = 10
              Caption = 'Valor pago'
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
          Left = 364
          Top = 3
          Width = 180
          Height = 70
          Hint = 't1w200h0;'
          TabOrder = 3
          Caption = ''
          Color = 16249327
          object compTROCO: TUniEdit
            Left = 1
            Top = 28
            Width = 178
            Height = 41
            Hint = ''
            Enabled = False
            CharCase = ecUpperCase
            MaxLength = 6
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
              Width = 29
              Height = 17
              Hint = ''
              Margins.Left = 10
              Caption = 'Troco'
              Align = alTop
              ParentFont = False
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Segoe UI Light'
              TabOrder = 1
            end
          end
        end
        object UniPanel83: TUniPanel
          Left = 10
          Top = 108
          Width = 340
          Height = 70
          Hint = 't1w400h0;'
          TabOrder = 4
          Caption = ''
          Color = clWhite
          object UniContainerPanel77: TUniContainerPanel
            Left = 1
            Top = 1
            Width = 338
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
              Width = 108
              Height = 17
              Hint = ''
              Margins.Left = 10
              Caption = 'Tipo de pagamento'
              Align = alTop
              ParentFont = False
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Segoe UI Light'
              TabOrder = 1
            end
          end
          object compTIPOPAGAMENTO: TUniSFComboBox
            Left = 11
            Top = 44
            Width = 310
            Hint = ''
            Text = '01 - Dinheiro '
            TabOrder = 2
            ItemIndex = 0
            Items.Strings = (
              '01 - Dinheiro '
              '02 - Cheque '
              '03 - Cart'#227'o de Cr'#233'dito '
              '04 - Cart'#227'o de D'#233'bito '
              '05 - Cr'#233'dito Loja '
              '10 - Vale Alimenta'#231#227'o '
              '11 - Vale Refei'#231#227'o '
              '12 - Vale Presente '
              '13 - Vale Combust'#237'vel'
              '97 - Cheque'
              '98 - Cheque Pr'#233' datado '
              '99 - Outros')
            Groups = <>
            Options.Placeholders = 'Selecione'
            Options.noResults = 'No Results Found'
          end
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
    Left = 528
    Top = 244
  end
end
