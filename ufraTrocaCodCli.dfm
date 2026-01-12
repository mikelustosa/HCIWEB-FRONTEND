object fraTrocaCodCli: TfraTrocaCodCli
  Left = 0
  Top = 0
  Width = 967
  Height = 613
  TabOrder = 0
  object cpMenuTopo: TUniContainerPanel
    Left = 0
    Top = 32
    Width = 967
    Height = 40
    Hint = ''
    ParentColor = False
    Align = alTop
    TabOrder = 0
    TabStop = False
    ExplicitTop = 0
    ExplicitWidth = 960
    object lblDescricao: TUniLabel
      AlignWithMargins = True
      Left = 46
      Top = 7
      Width = 203
      Height = 21
      Hint = ''
      Margins.Top = 7
      Caption = 'TROCA C'#211'DIGO DE CLIENTES'
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
      Width = 464
      Height = 3
      Hint = ''
      Margins.Right = 500
      Margins.Bottom = 0
      ParentColor = False
      Color = 16747287
      Align = alBottom
      TabOrder = 3
      LayoutConfig.Cls = 'painel-sem-borda'
      ExplicitWidth = 457
    end
    object btnFechar: TUniSFBitBtn
      AlignWithMargins = True
      Left = 938
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
      ExplicitLeft = 931
    end
  end
  object imgFundo: TUniImage
    Left = 0
    Top = 72
    Width = 967
    Height = 501
    Hint = ''
    Align = alClient
    ExplicitTop = -94
    ExplicitWidth = 960
    ExplicitHeight = 707
  end
  object scrFundo: TUniScrollBox
    Left = 0
    Top = 72
    Width = 967
    Height = 501
    Hint = ''
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 7
    ExplicitTop = -94
    ExplicitWidth = 960
    ExplicitHeight = 707
  end
  object cpMenuRodape: TUniContainerPanel
    Left = 0
    Top = 573
    Width = 967
    Height = 40
    Hint = ''
    ParentColor = False
    Align = alBottom
    TabOrder = 3
    LayoutConfig.Cls = 'body_grdnt_rounded'
    ExplicitTop = 497
    ExplicitWidth = 951
    object btnSalvar: TUniSFBitBtn
      AlignWithMargins = True
      Left = 842
      Top = 5
      Width = 120
      Height = 30
      Hint = ''
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ParentShowHint = False
      Caption = 'OK'
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
      ExplicitLeft = 826
    end
    object btnCancelar: TUniSFBitBtn
      AlignWithMargins = True
      Left = 712
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
      Caption = 'CANCELAR'
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
      ExplicitLeft = 696
    end
  end
  object pn1: TUniPanel
    Left = 0
    Top = 72
    Width = 967
    Height = 501
    Hint = ''
    Align = alClient
    TabOrder = 4
    Caption = 'pn1'
    ExplicitTop = 32
    ExplicitWidth = 951
    ExplicitHeight = 465
    object sBoxFundoRegistro: TUniScrollBox
      Left = 3
      Top = 0
      Width = 1129
      Height = 559
      Hint = ''
      Color = 16249327
      TabOrder = 1
      ScrollHeight = 183
      ScrollWidth = 1101
      object UniPanel2: TUniPanel
        Left = 10
        Top = 9
        Width = 256
        Height = 70
        Hint = 't1w500h0;'
        TabOrder = 0
        Caption = ''
        Color = clWhite
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
          TabOrder = 1
          TabStop = False
          LayoutConfig.Cls = 'body_grdnt_rounded'
          object UniLabel10: TUniLabel
            AlignWithMargins = True
            Left = 10
            Top = 3
            Width = 57
            Height = 17
            Hint = ''
            Margins.Left = 10
            Caption = 'C'#243'digo de'
            Align = alTop
            ParentFont = False
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI Light'
            TabOrder = 1
            ExplicitWidth = 39
          end
        end
        object UniSFBitBtn2: TUniSFBitBtn
          AlignWithMargins = True
          Left = 220
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
          TabOrder = 2
          Scale = bbsSmall
          IconAlign = iaTop
          OnClick = UniSFBitBtn2Click
          FAIcon.Icon = fa_search
          FAIcon.Size = fs_16
          FAIcon.Color = fc_grey
          ButtonStyles = bs_transparent
          ExplicitLeft = 64
        end
        object compCODCLIINI: TUniEdit
          Left = 1
          Top = 28
          Width = 214
          Height = 41
          Hint = ''
          CharCase = ecUpperCase
          MaxLength = 150
          BorderStyle = ubsNone
          Text = ''
          ParentFont = False
          Font.Height = -16
          Align = alClient
          TabOrder = 3
          ExplicitLeft = 9
          ExplicitTop = 29
        end
      end
      object UniPanel3: TUniPanel
        Left = 271
        Top = 9
        Width = 256
        Height = 70
        Hint = 't1w250h0;'
        TabOrder = 1
        Caption = ''
        Color = clWhite
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
          TabOrder = 1
          TabStop = False
          LayoutConfig.Cls = 'body_grdnt_rounded'
          object UniLabel1: TUniLabel
            AlignWithMargins = True
            Left = 10
            Top = 3
            Width = 19
            Height = 17
            Hint = ''
            Margins.Left = 10
            Caption = 'At'#233
            Align = alTop
            ParentFont = False
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI Light'
            TabOrder = 1
            ExplicitWidth = 53
          end
        end
        object UniSFBitBtn1: TUniSFBitBtn
          AlignWithMargins = True
          Left = 220
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
          TabOrder = 2
          Scale = bbsSmall
          IconAlign = iaTop
          OnClick = UniSFBitBtn1Click
          FAIcon.Icon = fa_search
          FAIcon.Size = fs_16
          FAIcon.Color = fc_grey
          ButtonStyles = bs_transparent
          ExplicitLeft = 226
          ExplicitTop = 41
        end
        object compCODCLIFIN: TUniEdit
          Left = 1
          Top = 28
          Width = 214
          Height = 41
          Hint = ''
          MaxLength = 50
          BorderStyle = ubsNone
          Text = ''
          ParentFont = False
          Font.Height = -16
          Align = alClient
          TabOrder = 3
          ExplicitLeft = 9
          ExplicitTop = 29
        end
      end
      object UniPanel65: TUniPanel
        Left = 26
        Top = 92
        Width = 1075
        Height = 2
        Hint = 't2w2075h2;'
        TabOrder = 2
        Caption = ''
        Color = 16249327
      end
      object UniPanel1: TUniPanel
        Left = 14
        Top = 113
        Width = 256
        Height = 70
        Hint = 't1w250h0;'
        TabOrder = 3
        Caption = 'UniPanel3'
        Color = 16249327
        object compCONT: TUniEdit
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
            Width = 87
            Height = 17
            Hint = ''
            Margins.Left = 10
            Caption = 'Gera a partir de'
            Align = alTop
            ParentFont = False
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI Light'
            TabOrder = 1
            ExplicitWidth = 19
          end
        end
      end
    end
  end
  object UniContainerPanel12: TUniContainerPanel
    AlignWithMargins = True
    Left = 8
    Top = 5
    Width = 947
    Height = 27
    Hint = ''
    Margins.Left = 8
    Margins.Top = 5
    Margins.Right = 12
    Margins.Bottom = 0
    Visible = False
    ParentColor = False
    Align = alTop
    TabOrder = 5
    TabStop = False
    LayoutConfig.Cls = 'body_grdnt_rounded'
    ExplicitWidth = 931
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
    Top = 585
  end
  object CDSTela: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 543
    Top = 182
    object CDSTelabotaoEditar: TAggregateField
      FieldName = 'botaoEditar'
      DisplayName = ''
    end
    object CDSTelaiconeAtivo: TAggregateField
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
    Panel = pn1
    Frame = Owner
    HeightCampos = 70
    ScrollBox = sBoxFundoRegistro
    TamanhoMinimoCampos = 100
    TopInicialCampos = 20
    Left = 56
    Top = 531
  end
end
