object fraCnpjConfig: TfraCnpjConfig
  Left = 0
  Top = 0
  Width = 920
  Height = 727
  OnCreate = UniFrameCreate
  OnReady = UniFrameReady
  TabOrder = 0
  object scrFundo: TUniScrollBox
    Left = 0
    Top = 72
    Width = 920
    Height = 615
    Hint = ''
    Align = alClient
    TabOrder = 4
    ExplicitHeight = 502
  end
  object cpMenuRodape: TUniContainerPanel
    Left = 0
    Top = 687
    Width = 920
    Height = 40
    Hint = ''
    ParentColor = False
    Align = alBottom
    TabOrder = 0
    LayoutConfig.Cls = 'body_grdnt_rounded'
    ExplicitTop = 574
    object btnSalvar: TUniSFBitBtn
      AlignWithMargins = True
      Left = 795
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
    end
    object btnCancelar: TUniSFBitBtn
      AlignWithMargins = True
      Left = 665
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
      FAIcon.Icon = fa_arrow_alt_circle_left
      FAIcon.Size = fs_16
      FAIcon.Color = fc_white
      FAIcon.Style = regular
      ButtonStyles = bs_danger
    end
  end
  object cpMenuTopo: TUniContainerPanel
    Left = 0
    Top = 32
    Width = 920
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
      Width = 186
      Height = 21
      Hint = ''
      Margins.Top = 7
      Caption = 'CONFIGURA'#199#213'ES API CNPJ'
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
      Width = 417
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
      Left = 891
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
    Top = 72
    Width = 920
    Height = 615
    Hint = ''
    Align = alClient
    ExplicitHeight = 502
  end
  object pn1: TUniPanel
    Left = 0
    Top = 72
    Width = 920
    Height = 615
    Hint = ''
    Align = alClient
    TabOrder = 2
    Caption = 'pn1'
    ExplicitHeight = 502
    object sBoxFundoRegistro: TUniScrollBox
      Left = 1
      Top = 1
      Width = 918
      Height = 613
      Hint = ''
      Align = alClient
      Color = 16249327
      TabOrder = 1
      ExplicitLeft = 3
      ExplicitTop = 29
      ExplicitWidth = 1129
      ExplicitHeight = 559
      ScrollHeight = 495
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
            Width = 112
            Height = 17
            Hint = ''
            Margins.Left = 10
            Caption = 'M'#225'scara de telefone'
            Align = alTop
            ParentFont = False
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI Light'
            TabOrder = 1
          end
        end
        object compMASCARATELEFONE: TUniEdit
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
          TabOrder = 2
          EmptyText = '(9999)9999-9999'
        end
      end
      object UniPanel65: TUniPanel
        Left = 26
        Top = 92
        Width = 1075
        Height = 2
        Hint = 't2w2075h2;'
        TabOrder = 1
        Caption = ''
        Color = 16249327
      end
      object UniPanel33: TUniPanel
        Left = 14
        Top = 232
        Width = 500
        Height = 70
        Hint = 't1w500h0;'
        TabOrder = 4
        Caption = ''
        Color = clWhite
        object UniContainerPanel32: TUniContainerPanel
          Left = 1
          Top = 1
          Width = 498
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
            Width = 116
            Height = 17
            Hint = ''
            Margins.Left = 10
            Caption = 'Altera Nome Fantasia'
            Align = alTop
            ParentFont = False
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI Light'
            TabOrder = 1
          end
        end
        object compALTERAFANTASIASIM: TUniRadioButton
          AlignWithMargins = True
          Left = 6
          Top = 35
          Width = 140
          Height = 34
          Hint = ''
          Margins.Left = 5
          Margins.Top = 7
          Margins.Right = 5
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Sim'
          TabOrder = 2
          OnClick = compALTERAFANTASIASIMClick
        end
        object compALTERAFANTASIANAO: TUniRadioButton
          AlignWithMargins = True
          Left = 156
          Top = 35
          Width = 113
          Height = 34
          Hint = ''
          Margins.Left = 5
          Margins.Top = 7
          Margins.Right = 5
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'N'#227'o'
          TabOrder = 3
          OnClick = compALTERAFANTASIANAOClick
        end
      end
      object UniPanel1: TUniPanel
        Left = 26
        Top = 308
        Width = 1075
        Height = 2
        Hint = 't2w2075h2;'
        TabOrder = 5
        Caption = ''
        Color = 16249327
      end
      object UniPanel3: TUniPanel
        Left = 11
        Top = 316
        Width = 500
        Height = 70
        Hint = 't1w500h0;'
        TabOrder = 6
        Caption = ''
        Color = clWhite
        object UniContainerPanel1: TUniContainerPanel
          Left = 1
          Top = 1
          Width = 498
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
            Width = 126
            Height = 17
            Hint = ''
            Margins.Left = 10
            Caption = 'Altera Email Financeiro'
            Align = alTop
            ParentFont = False
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI Light'
            TabOrder = 1
          end
        end
        object compALTERAEMAILCNPJJASIM: TUniRadioButton
          AlignWithMargins = True
          Left = 6
          Top = 35
          Width = 140
          Height = 34
          Hint = ''
          Margins.Left = 5
          Margins.Top = 7
          Margins.Right = 5
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Sim'
          TabOrder = 2
          OnClick = compALTERAEMAILCNPJJASIMClick
        end
        object compALTERAEMAILCNPJJANAO: TUniRadioButton
          AlignWithMargins = True
          Left = 156
          Top = 35
          Width = 113
          Height = 34
          Hint = ''
          Margins.Left = 5
          Margins.Top = 7
          Margins.Right = 5
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'N'#227'o'
          TabOrder = 3
          OnClick = compALTERAEMAILCNPJJANAOClick
        end
      end
      object UniPanel5: TUniPanel
        Left = 14
        Top = 100
        Width = 595
        Height = 43
        Hint = 't1w500h0;'
        TabOrder = 2
        Caption = ''
        Color = 16249327
        object UniLabel2: TUniLabel
          Left = 1
          Top = 1
          Width = 570
          Height = 13
          Hint = ''
          Caption = 
            'Aconselhamos o preenchimento em todo o cone'#250'do da mascara com a ' +
            'letra '#39'a'#39', os dados do telefone '
          Align = alTop
          ParentFont = False
          Font.Color = clRed
          Font.Style = [fsBold]
          TabOrder = 1
        end
        object UniLabel5: TUniLabel
          Left = 3
          Top = 22
          Width = 411
          Height = 13
          Hint = ''
          Caption = 
            'n'#227'o vem com uma formata'#231#227'o Definida, isso pode Gerar perda de Di' +
            'gitos'
          ParentFont = False
          Font.Color = clRed
          Font.Style = [fsBold]
          ParentColor = False
          Color = 16249327
          TabOrder = 2
        end
      end
      object UniPanel7: TUniPanel
        Left = 17
        Top = 157
        Width = 1075
        Height = 2
        Hint = 't2w2075h2;'
        TabOrder = 3
        Caption = ''
        Color = 16249327
      end
      object UniPanel8: TUniPanel
        Left = 26
        Top = 404
        Width = 1075
        Height = 2
        Hint = 't2w2075h2;'
        TabOrder = 7
        Caption = ''
        Color = 16249327
      end
      object UniPanel9: TUniPanel
        Left = 14
        Top = 425
        Width = 256
        Height = 70
        Hint = 't1w500h0;'
        TabOrder = 8
        Caption = ''
        Color = clWhite
        object UniContainerPanel2: TUniContainerPanel
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
          object UniLabel4: TUniLabel
            AlignWithMargins = True
            Left = 10
            Top = 3
            Width = 32
            Height = 17
            Hint = ''
            Margins.Left = 10
            Caption = 'Token'
            Align = alTop
            ParentFont = False
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI Light'
            TabOrder = 1
            ExplicitWidth = 112
          end
        end
        object compTOKENCNPJJA: TUniEdit
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
          TabOrder = 2
        end
      end
    end
  end
  object UniContainerPanel12: TUniContainerPanel
    AlignWithMargins = True
    Left = 8
    Top = 5
    Width = 900
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
    Left = 392
    Top = 531
  end
  object CDSDados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 892
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
  object DSTela: TDataSource
    DataSet = CDSTela
    Left = 892
    Top = 342
  end
end
