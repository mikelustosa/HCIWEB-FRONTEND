object fraCadVendedores: TfraCadVendedores
  Left = 0
  Top = 0
  Width = 1056
  Height = 733
  TabOrder = 0
  ClientEvents.UniEvents.Strings = (
    
      'beforeInit=function window.beforeInit(sender, config)'#13#10'{'#13#10'   sen' +
      'der.cls="slide-in-left";'#13#10'}')
  object imgFundo: TUniImage
    Left = 0
    Top = 40
    Width = 1056
    Height = 693
    Hint = ''
    Align = alClient
    ExplicitLeft = -17
    ExplicitTop = 15
    ExplicitWidth = 1073
    ExplicitHeight = 718
  end
  object scrFundo: TUniScrollBox
    Left = 0
    Top = 40
    Width = 1056
    Height = 693
    Hint = ''
    Align = alClient
    TabOrder = 1
    ExplicitLeft = -17
    ExplicitTop = 15
    ExplicitWidth = 1073
    ExplicitHeight = 718
    object pgcTela: TUniPageControl
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1048
      Height = 685
      Hint = ''
      ActivePage = UniTabSheet1
      TabBarVisible = False
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 1065
      ExplicitHeight = 710
      object UniTabSheet1: TUniTabSheet
        Hint = ''
        Caption = 'Listagem'
        ExplicitWidth = 1057
        ExplicitHeight = 682
        object gridTela: TUniDBGrid
          Left = 0
          Top = 71
          Width = 1040
          Height = 586
          Hint = ''
          DataSource = DSTela
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
          LoadMask.Message = 'Loading data...'
          ForceFit = True
          LayoutConfig.Cls = 'dbgrid-light responsiva mostrar-mobile'
          Align = alClient
          TabOrder = 0
          Columns = <
            item
              FieldName = 'id'
              Title.Caption = 'id'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'codAtv'
              Title.Caption = 'C'#243'digo'
              Width = 50
            end
            item
              FieldName = 'descrAt'
              Title.Caption = 'Descri'#231#227'o'
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
          Width = 1040
          Height = 65
          Hint = ''
          Margins.Left = 0
          Margins.Right = 0
          ParentColor = False
          Color = clWhite
          Align = alTop
          TabOrder = 1
          LayoutConfig.Cls = 'painel-sem-borda'
          ExplicitWidth = 1057
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
        ExplicitWidth = 1057
        ExplicitHeight = 682
        object UniContainerPanel12: TUniContainerPanel
          AlignWithMargins = True
          Left = 8
          Top = 5
          Width = 1020
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
          ExplicitWidth = 1037
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
          Width = 1040
          Height = 585
          Hint = ''
          Align = alClient
          TabOrder = 1
          Caption = 'pn1'
          ExplicitWidth = 1057
          ExplicitHeight = 610
          object sBoxFundoRegistro: TUniScrollBox
            Left = 3
            Top = 0
            Width = 1129
            Height = 559
            Hint = ''
            Color = 16249327
            TabOrder = 1
            ScrollHeight = 79
            ScrollWidth = 527
            object UniPanel2: TUniPanel
              Left = 10
              Top = 9
              Width = 256
              Height = 70
              Hint = 't1w500h0;'
              TabOrder = 0
              Caption = ''
              Color = 16249327
              object compcodAtv: TUniEdit
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
              object compdescrAt: TUniEdit
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
          end
        end
        object cpMenuRodape: TUniContainerPanel
          Left = 0
          Top = 617
          Width = 1040
          Height = 40
          Hint = ''
          ParentColor = False
          Align = alBottom
          TabOrder = 2
          LayoutConfig.Cls = 'body_grdnt_rounded'
          ExplicitTop = 642
          ExplicitWidth = 1057
          object btnSalvar: TUniSFBitBtn
            AlignWithMargins = True
            Left = 915
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
            FAIcon.Icon = fa_check_circle
            FAIcon.Size = fs_16
            FAIcon.Color = fc_white
            FAIcon.Style = regular
            ButtonStyles = bs_danger
            ExplicitLeft = 932
          end
          object btnCancelar: TUniSFBitBtn
            AlignWithMargins = True
            Left = 785
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
            FAIcon.Icon = fa_arrow_alt_circle_left
            FAIcon.Size = fs_16
            FAIcon.Color = fc_white
            FAIcon.Style = regular
            ButtonStyles = bs_danger
            ExplicitLeft = 802
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
            Align = alLeft
          end
        end
      end
    end
  end
  object cpMenuTopo: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 1056
    Height = 40
    Hint = ''
    ParentColor = False
    Align = alTop
    TabOrder = 2
    TabStop = False
    ExplicitLeft = -17
    ExplicitWidth = 1073
    object lblDescricao: TUniLabel
      AlignWithMargins = True
      Left = 46
      Top = 7
      Width = 201
      Height = 21
      Hint = ''
      Margins.Top = 7
      Caption = 'CADASTRO DE VENDEDORES'
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
      Width = 553
      Height = 3
      Hint = ''
      Margins.Right = 500
      Margins.Bottom = 0
      ParentColor = False
      Color = 16747287
      Align = alBottom
      TabOrder = 3
      LayoutConfig.Cls = 'painel-sem-borda'
      ExplicitWidth = 570
    end
    object btnFechar: TUniSFBitBtn
      AlignWithMargins = True
      Left = 1027
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
      ExplicitLeft = 1044
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
      DisplayName = ''
    end
    object CDSTelaiconeAtivo: TAggregateField
      FieldName = 'iconeAtivo'
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
end
