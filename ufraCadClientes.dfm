object fraCadClientes: TfraCadClientes
  Left = 0
  Top = 0
  Width = 1437
  Height = 831
  OnCreate = UniFrameCreate
  OnReady = UniFrameReady
  TabOrder = 0
  ClientEvents.UniEvents.Strings = (
    
      'beforeInit=function window.beforeInit(sender, config)'#13#10'{'#13#10'   sen' +
      'der.cls="slide-in-left";'#13#10'}')
  object imgFundo: TUniImage
    Left = 0
    Top = 40
    Width = 1437
    Height = 791
    Hint = ''
    Align = alClient
  end
  object scrFundo: TUniScrollBox
    Left = 0
    Top = 40
    Width = 1437
    Height = 791
    Hint = ''
    Align = alClient
    TabOrder = 1
    object pgcTela: TUniPageControl
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1429
      Height = 783
      Hint = ''
      ActivePage = UniTabSheet1
      TabBarVisible = False
      Align = alClient
      TabOrder = 0
      object UniTabSheet1: TUniTabSheet
        Hint = ''
        Caption = 'Listagem'
        object gridTela: TUniDBGrid
          Left = 0
          Top = 71
          Width = 1421
          Height = 684
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
              Width = 50
            end
            item
              FieldName = 'codCli'
              Title.Caption = 'C'#243'digo'
              Width = 50
            end
            item
              FieldName = 'nome'
              Title.Caption = 'Nome'
              Width = 200
            end
            item
              FieldName = 'nomeF'
              Title.Caption = 'Nome fantasia'
              Width = 200
            end
            item
              FieldName = 'iconeAtivo'
              Title.Caption = 'AT'
              Width = 20
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
        object cpPesquisa: TUniContainerPanel
          AlignWithMargins = True
          Left = 0
          Top = 3
          Width = 1421
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
        object cpMenuRodape: TUniContainerPanel
          Left = 0
          Top = 715
          Width = 1421
          Height = 40
          Hint = ''
          ParentColor = False
          Align = alBottom
          TabOrder = 0
          LayoutConfig.Cls = 'body_grdnt_rounded'
          object btnSalvar: TUniSFBitBtn
            AlignWithMargins = True
            Left = 1296
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
            Left = 1166
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
            OnToggled = compATIVOToggled
            Align = alLeft
          end
        end
        object UniContainerPanel12: TUniContainerPanel
          AlignWithMargins = True
          Left = 8
          Top = 5
          Width = 1401
          Height = 27
          Hint = ''
          Margins.Left = 8
          Margins.Top = 5
          Margins.Right = 12
          Margins.Bottom = 0
          ParentColor = False
          Align = alTop
          TabOrder = 1
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
        object pgcTelaDtl: TUniPageControl
          Left = 0
          Top = 32
          Width = 1421
          Height = 683
          Hint = ''
          ActivePage = tab0
          Align = alClient
          TabOrder = 2
          object tab0: TUniTabSheet
            Hint = ''
            Caption = '1 - Dados cadastrais'
            object pn1: TUniPanel
              Left = 0
              Top = 0
              Width = 1413
              Height = 655
              Hint = ''
              Align = alClient
              TabOrder = 0
              Caption = ''
              object sBox1: TUniScrollBox
                Left = 1
                Top = 1
                Width = 1411
                Height = 653
                Hint = ''
                Align = alClient
                Color = 16249327
                TabOrder = 1
                ExplicitTop = 3
                ScrollHeight = 877
                ScrollWidth = 1329
                object UniPanel13: TUniPanel
                  Left = 11
                  Top = 105
                  Width = 100
                  Height = 70
                  Hint = 't1w100h0;'
                  TabOrder = 4
                  Caption = 'UniPanel4'
                  Color = clWhite
                  object compclassif: TUniEdit
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
                  object btnClassificacao: TUniSFBitBtn
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
                    OnClick = btnClassificacaoClick
                    FAIcon.Icon = fa_search
                    FAIcon.Size = fs_16
                    FAIcon.Color = fc_grey
                    ButtonStyles = bs_transparent
                  end
                end
                object UniPanel28: TUniPanel
                  Left = 10
                  Top = 9
                  Width = 100
                  Height = 70
                  Hint = 't1w100h0;'
                  TabOrder = 0
                  Caption = ''
                  Color = 16249327
                  object compcodCli: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 98
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
                    object UniLabel28: TUniLabel
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
                object UniPanel29: TUniPanel
                  Left = 170
                  Top = 9
                  Width = 500
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 1
                  Caption = ''
                  Color = 16249327
                  object compnome: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 498
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
                  object UniContainerPanel35: TUniContainerPanel
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
                    TabOrder = 2
                    TabStop = False
                    LayoutConfig.Cls = 'body_grdnt_rounded'
                    object UniLabel29: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 34
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Nome'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                    end
                  end
                end
                object UniPanel30: TUniPanel
                  Left = 674
                  Top = 9
                  Width = 400
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 2
                  Caption = ''
                  Color = 16249327
                  object compnomeF: TUniEdit
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
                  end
                  object UniContainerPanel36: TUniContainerPanel
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
                    object UniLabel30: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 79
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Nome fantasia'
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
                  Left = 170
                  Top = 105
                  Width = 400
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 5
                  Caption = ''
                  Color = 16249327
                  object compdescrclf: TUniEdit
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
                  object UniContainerPanel2: TUniContainerPanel
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
                object UniPanel2: TUniPanel
                  Left = 586
                  Top = 105
                  Width = 180
                  Height = 70
                  Hint = 't1w180h0;'
                  TabOrder = 6
                  Caption = ''
                  Color = 16249327
                  object compdAlt: TUniEdit
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
                    ReadOnly = True
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
                      Width = 149
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = #218'ltima atualiz'#231#227'o HCI-CNPJ'
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
                  Left = 731
                  Top = 265
                  Width = 250
                  Height = 70
                  Hint = 't1w250h0;'
                  TabOrder = 15
                  Caption = 'UniPanel4'
                  Color = 16249327
                  object compbairro: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 248
                    Height = 41
                    Hint = ''
                    CharCase = ecUpperCase
                    MaxLength = 100
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
                    Width = 248
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
                    object UniLabel12: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 31
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Bairro'
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
                  Left = 10
                  Top = 265
                  Width = 150
                  Height = 70
                  Hint = 't1w150h0;'
                  TabOrder = 11
                  Caption = ''
                  Color = 16249327
                  object compcep: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 148
                    Height = 41
                    Hint = ''
                    CharCase = ecUpperCase
                    MaxLength = 8
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
                    OnExit = compcepExit
                    OnKeyPress = compcepKeyPress
                  end
                  object UniContainerPanel9: TUniContainerPanel
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
                    object UniLabel10: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 22
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'CEP'
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
                  Left = 175
                  Top = 265
                  Width = 256
                  Height = 70
                  Hint = 't1w250h0;'
                  TabOrder = 12
                  Caption = 'UniPanel3'
                  Color = 16249327
                  object compendereco: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 254
                    Height = 41
                    Hint = ''
                    CharCase = ecUpperCase
                    MaxLength = 50
                    BorderStyle = ubsNone
                    Text = ''
                    ParentFont = False
                    Font.Height = -16
                    Align = alClient
                    TabOrder = 1
                    OnChange = compenderecoChange
                    OnEnter = compenderecoEnter
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
                    object UniLabel4: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 52
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Endere'#231'o'
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
                  Left = 548
                  Top = 265
                  Width = 165
                  Height = 70
                  Hint = 't1w165h0;'
                  TabOrder = 14
                  Caption = 'UniPanel4'
                  Color = 16249327
                  object compcomplemento: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 163
                    Height = 41
                    Hint = ''
                    CharCase = ecUpperCase
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
                    Width = 163
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
                      Width = 79
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Complemento'
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
                  Left = 439
                  Top = 265
                  Width = 100
                  Height = 70
                  Hint = 't1w100h0;'
                  TabOrder = 13
                  Caption = 'UniPanel3'
                  Color = 16249327
                  object compnumero: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 98
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
                  object UniContainerPanel13: TUniContainerPanel
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
                      Width = 45
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'N'#250'mero'
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
                  Left = 995
                  Top = 265
                  Width = 100
                  Height = 70
                  Hint = 't1w100h0;'
                  TabOrder = 16
                  Caption = 'UniPanel4'
                  Color = clWhite
                  object UniContainerPanel16: TUniContainerPanel
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
                    object UniLabel15: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 14
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'UF'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                    end
                  end
                  object compestado: TUniSFComboBox
                    Left = 3
                    Top = 36
                    Width = 90
                    Hint = ''
                    Text = ''
                    TabOrder = 2
                    OnChange = compestadoChange
                    Items.Strings = (
                      'AC'
                      'AL'
                      'AM'
                      'AP'
                      'BA'
                      'CE'
                      'DF'
                      'ES'
                      'GO'
                      'MA'
                      'MG'
                      'MS'
                      'MT'
                      'PA'
                      'PB'
                      'PE'
                      'PI'
                      'PR'
                      'RJ'
                      'RN'
                      'RO'
                      'RR'
                      'RS'
                      'SC'
                      'SE'
                      'SP'
                      'TO')
                    Groups = <>
                    Options.Placeholders = 'Selecione'
                    Options.noResults = 'No Results Found'
                  end
                end
                object UniPanel16: TUniPanel
                  Left = 10
                  Top = 345
                  Width = 250
                  Height = 70
                  Hint = 't1w250h0;'
                  TabOrder = 17
                  Caption = 'UniPanel4'
                  Color = clWhite
                  object UniContainerPanel17: TUniContainerPanel
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
                    object UniLabel16: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 38
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Cidade'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                    end
                  end
                  object compcidade: TUniSFComboBox
                    Left = 3
                    Top = 36
                    Width = 250
                    Hint = ''
                    Text = ''
                    TabOrder = 2
                    OnChange = compcidadeChange
                    Groups = <>
                    Options.Placeholders = 'Selecione'
                    Options.noResults = 'No Results Found'
                  end
                end
                object UniPanel17: TUniPanel
                  Left = 271
                  Top = 345
                  Width = 100
                  Height = 70
                  Hint = 't1w100h0;'
                  TabOrder = 18
                  Caption = 'UniPanel4'
                  Color = clWhite
                  object compAREA: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 98
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
                  object UniContainerPanel18: TUniContainerPanel
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
                    object UniLabel17: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 83
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'C'#243'd. Munic'#237'pio'
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
                  Left = 548
                  Top = 345
                  Width = 114
                  Height = 70
                  Hint = 't1w150h0;'
                  TabOrder = 19
                  Caption = 'UniPanel4'
                  Color = clWhite
                  object comptelefone: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 112
                    Height = 41
                    Hint = ''
                    MaxLength = 11
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
                    ExplicitWidth = 148
                  end
                  object UniContainerPanel19: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 112
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
                    ExplicitWidth = 148
                    object UniLabel18: TUniLabel
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
                object UniPanel19: TUniPanel
                  Left = 893
                  Top = 345
                  Width = 150
                  Height = 70
                  Hint = 't1w150h0;'
                  TabOrder = 21
                  Caption = 'UniPanel4'
                  Color = clWhite
                  object compcelular: TUniEdit
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
                    ClientEvents.UniEvents.Strings = (
                      
                        'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
                        '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
                        'n: /^[0-9\s]+$/g, recursive: true },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
                  end
                  object UniContainerPanel20: TUniContainerPanel
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
                    object UniLabel19: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 38
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Celular'
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
                  Left = 131
                  Top = 433
                  Width = 250
                  Height = 70
                  Hint = 't1w250h0;'
                  TabOrder = 24
                  Caption = 'UniPanel4'
                  Color = 16249327
                  object comppais: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 248
                    Height = 41
                    Hint = ''
                    CharCase = ecUpperCase
                    MaxLength = 100
                    BorderStyle = ubsNone
                    Text = ''
                    ParentFont = False
                    Font.Height = -16
                    Align = alClient
                    TabOrder = 1
                  end
                  object UniContainerPanel21: TUniContainerPanel
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
                    TabOrder = 2
                    TabStop = False
                    LayoutConfig.Cls = 'body_grdnt_rounded'
                    object UniLabel20: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 20
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Pa'#237's'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                    end
                  end
                end
                object UniPanel21: TUniPanel
                  Left = 11
                  Top = 433
                  Width = 100
                  Height = 70
                  Hint = 't1w100h0;'
                  TabOrder = 23
                  Caption = 'UniPanel4'
                  Color = clWhite
                  object compcodPais: TUniEdit
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
                  object UniContainerPanel25: TUniContainerPanel
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
                      Width = 49
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'C'#243'd. Pa'#237's'
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
                    Visible = False
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
                object UniPanel4: TUniPanel
                  Left = 787
                  Top = 105
                  Width = 100
                  Height = 70
                  Hint = 't1w100h0;'
                  TabOrder = 7
                  Caption = 'UniPanel4'
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
                    object UniLabel1: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 36
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Pessoa'
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
                      'F'
                      'J'
                      'E')
                    Groups = <>
                    Options.Placeholders = 'Selecione'
                    Options.noResults = 'No Results Found'
                  end
                end
                object UniPanel22: TUniPanel
                  Left = 911
                  Top = 105
                  Width = 256
                  Height = 70
                  Hint = 't1w250h0;'
                  TabOrder = 8
                  Caption = 'UniPanel3'
                  Color = 16249327
                  object compcgcCpf: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 254
                    Height = 41
                    Hint = ''
                    CharCase = ecUpperCase
                    MaxLength = 50
                    BorderStyle = ubsNone
                    Text = ''
                    ParentFont = False
                    Font.Height = -16
                    Align = alClient
                    TabOrder = 1
                  end
                  object UniContainerPanel28: TUniContainerPanel
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
                      Width = 169
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'CNPJ / CPF / ID do Estrangeiro'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                    end
                  end
                end
                object UniPanel23: TUniPanel
                  Left = 11
                  Top = 185
                  Width = 100
                  Height = 70
                  Hint = 't1w100h0;'
                  TabOrder = 9
                  Caption = 'UniPanel4'
                  Color = clWhite
                  object compindIeDest: TUniEdit
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
                  object UniContainerPanel29: TUniContainerPanel
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
                    object UniLabel22: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 64
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Indicador IE'
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
                    Visible = False
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
                object UniPanel24: TUniPanel
                  Left = 170
                  Top = 185
                  Width = 180
                  Height = 70
                  Hint = 't1w180h0;'
                  TabOrder = 10
                  Caption = ''
                  Color = 16249327
                  object compie: TUniEdit
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
                    ReadOnly = True
                  end
                  object UniContainerPanel30: TUniContainerPanel
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
                    object UniLabel23: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 96
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Inscri'#231#227'o estadual'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                    end
                  end
                end
                object UniPanel25: TUniPanel
                  Left = 719
                  Top = 345
                  Width = 150
                  Height = 70
                  Hint = 't1w150h0;'
                  TabOrder = 20
                  Caption = 'UniPanel4'
                  Color = clWhite
                  object comptelefone2: TUniEdit
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
                    ClientEvents.UniEvents.Strings = (
                      
                        'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
                        '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
                        'n: /^[0-9\s]+$/g, recursive: true },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
                  end
                  object UniContainerPanel31: TUniContainerPanel
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
                    object UniLabel24: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 58
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Telefone 2'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                    end
                  end
                end
                object UniPanel26: TUniPanel
                  Left = 222
                  Top = 92
                  Width = 1075
                  Height = 2
                  Hint = 't2w2075h2;'
                  TabOrder = 3
                  Caption = ''
                  Color = 16249327
                end
                object UniPanel7: TUniPanel
                  Left = 1101
                  Top = 345
                  Width = 150
                  Height = 70
                  Hint = 't1w150h0;'
                  TabOrder = 22
                  Caption = 'UniPanel4'
                  Color = clWhite
                  object compfax: TUniEdit
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
                    ClientEvents.UniEvents.Strings = (
                      
                        'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
                        '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
                        'n: /^[0-9\s]+$/g, recursive: true },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
                  end
                  object UniContainerPanel1: TUniContainerPanel
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
                    object UniLabel2: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 49
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Celular 2'
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
                  Left = 230
                  Top = 524
                  Width = 1075
                  Height = 2
                  Hint = 't2w2075h2;'
                  TabOrder = 25
                  Caption = ''
                  Color = 16249327
                end
                object UniPanel9: TUniPanel
                  Left = 10
                  Top = 553
                  Width = 500
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 26
                  Caption = ''
                  Color = 16249327
                  object compemailNfe: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 498
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
                  object UniContainerPanel3: TUniContainerPanel
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
                    TabOrder = 2
                    TabStop = False
                    LayoutConfig.Cls = 'body_grdnt_rounded'
                    object UniLabel5: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 196
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Email NF-e (Recebe DANFe e XML)'
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
                  Left = 562
                  Top = 553
                  Width = 500
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 27
                  Caption = ''
                  Color = 16249327
                  object comphomePage: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 498
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
                    Width = 498
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
                      Width = 65
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Home page'
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
                  Left = 238
                  Top = 652
                  Width = 1075
                  Height = 2
                  Hint = 't2w2075h2;'
                  TabOrder = 28
                  Caption = ''
                  Color = 16249327
                end
                object UniPanel27: TUniPanel
                  Left = 18
                  Top = 673
                  Width = 500
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 29
                  Caption = ''
                  Color = 16249327
                  object compemailCom: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 498
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
                  object UniContainerPanel5: TUniContainerPanel
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
                    TabOrder = 2
                    TabStop = False
                    LayoutConfig.Cls = 'body_grdnt_rounded'
                    object UniLabel7: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 89
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Email Comercial'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                    end
                  end
                end
                object UniPanel31: TUniPanel
                  Left = 570
                  Top = 673
                  Width = 500
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 30
                  Caption = ''
                  Color = 16249327
                  object compemailFin: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 498
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
                  object UniContainerPanel6: TUniContainerPanel
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
                    TabOrder = 2
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
                      Caption = 'Email Financeiro'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                    end
                  end
                end
                object UniPanel32: TUniPanel
                  Left = 246
                  Top = 755
                  Width = 1075
                  Height = 2
                  Hint = 't2w2075h2;'
                  TabOrder = 31
                  Caption = ''
                  Color = 16249327
                end
                object UniPanel33: TUniPanel
                  Left = 18
                  Top = 777
                  Width = 500
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 32
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
                      Width = 42
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Regime'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                    end
                  end
                  object compregime1: TUniRadioButton
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
                    Caption = 'Simples Nacional'
                    TabOrder = 2
                    OnClick = compregime1Click
                  end
                  object compregime2: TUniRadioButton
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
                    Caption = 'Normal'
                    TabOrder = 3
                    OnClick = compregime2Click
                  end
                end
                object UniPanel34: TUniPanel
                  Left = 570
                  Top = 777
                  Width = 500
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 33
                  Caption = ''
                  Color = clWhite
                  object UniContainerPanel33: TUniContainerPanel
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
                    object UniLabel26: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 209
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Indica opera'#231#227'o com consumidor final'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                    end
                  end
                  object compconsumidor1: TUniRadioButton
                    AlignWithMargins = True
                    Left = 6
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
                    TabOrder = 2
                    OnClick = compconsumidor1Click
                  end
                  object compconsumidor2: TUniRadioButton
                    AlignWithMargins = True
                    Left = 129
                    Top = 35
                    Width = 120
                    Height = 34
                    Hint = ''
                    Margins.Left = 5
                    Margins.Top = 7
                    Margins.Right = 5
                    Margins.Bottom = 0
                    Align = alLeft
                    Caption = 'Consumidor final'
                    TabOrder = 3
                    OnClick = compconsumidor2Click
                  end
                end
                object UniPanel35: TUniPanel
                  Left = 254
                  Top = 875
                  Width = 1075
                  Height = 2
                  Hint = 't2w2075h2;'
                  TabOrder = 34
                  Caption = ''
                  Color = 16249327
                end
                object UniPanel55: TUniPanel
                  Left = 385
                  Top = 345
                  Width = 153
                  Height = 70
                  Hint = 't1w100h0;'
                  TabOrder = 35
                  Caption = 'UniPanel4'
                  Color = clWhite
                  object compMunicipio: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 151
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
                    ExplicitWidth = 98
                  end
                  object UniContainerPanel55: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 151
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
                    ExplicitWidth = 98
                  end
                end
              end
            end
          end
          object tab1: TUniTabSheet
            Hint = ''
            Caption = '2 - Dados adicionais'
            object pn2: TUniPanel
              Left = 0
              Top = 0
              Width = 1413
              Height = 655
              Hint = ''
              Align = alClient
              TabOrder = 0
              Caption = ''
              object sBox2: TUniScrollBox
                Left = 1
                Top = 1
                Width = 1411
                Height = 653
                Hint = ''
                Align = alClient
                Color = 16249327
                ClientEvents.UniEvents.Strings = (
                  
                    'beforeInit=function window.beforeInit(sender, config)'#13#10'{'#13#10'   sen' +
                    'der.cls="slide-in-left";'#13#10'}')
                TabOrder = 1
                ExplicitLeft = 14
                ExplicitTop = 15
                ExplicitHeight = 874
                ScrollHeight = 750
                ScrollWidth = 1305
                object UniPanel36: TUniPanel
                  Left = 10
                  Top = 17
                  Width = 160
                  Height = 70
                  Hint = 't1w160h0;'
                  TabOrder = 0
                  Caption = ''
                  Color = 16249327
                  object compUltComp: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 158
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
                  object UniContainerPanel37: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 158
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
                    object UniLabel27: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 80
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = #218'ltima compra'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                    end
                  end
                end
                object UniPanel37: TUniPanel
                  Left = 178
                  Top = 17
                  Width = 160
                  Height = 70
                  Hint = 't1w160h0;'
                  TabOrder = 1
                  Caption = ''
                  Color = 16249327
                  object compCliDesde: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 158
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
                    Width = 158
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
                      Width = 76
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Cliente desde'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                    end
                  end
                end
                object UniPanel38: TUniPanel
                  Left = 346
                  Top = 17
                  Width = 160
                  Height = 70
                  Hint = 't1w160h0;'
                  TabOrder = 2
                  Caption = ''
                  Color = 16249327
                  object compDNasc: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 158
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
                  object UniContainerPanel39: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 158
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
                      Width = 130
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Nascimento / Funda'#231#227'o'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                    end
                  end
                end
                object UniPanel39: TUniPanel
                  Left = 230
                  Top = 100
                  Width = 1075
                  Height = 2
                  Hint = 't2w2075h2;'
                  TabOrder = 4
                  Caption = ''
                  Color = 16249327
                end
                object UniPanel40: TUniPanel
                  Left = 514
                  Top = 49
                  Width = 160
                  Height = 2
                  Hint = 't1w160h0;'
                  TabOrder = 3
                  Caption = ''
                  Color = 16249327
                end
                object UniPanel41: TUniPanel
                  Left = 11
                  Top = 113
                  Width = 100
                  Height = 70
                  Hint = 't1w100h0;'
                  TabOrder = 5
                  Caption = 'UniPanel4'
                  Color = clWhite
                  object compAtiv: TUniEdit
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
                      Width = 51
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Atividade'
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
                object UniPanel42: TUniPanel
                  Left = 178
                  Top = 113
                  Width = 400
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 6
                  Caption = ''
                  Color = 16249327
                  object compdescrat: TUniEdit
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
                object UniPanel43: TUniPanel
                  Left = 46
                  Top = 196
                  Width = 1075
                  Height = 2
                  Hint = 't2w2075h2;'
                  TabOrder = 7
                  Caption = ''
                  Color = 16249327
                end
                object UniPanel44: TUniPanel
                  Left = 11
                  Top = 217
                  Width = 100
                  Height = 70
                  Hint = 't1w100h0;'
                  TabOrder = 8
                  Caption = 'UniPanel4'
                  Color = clWhite
                  object compCodVend: TUniEdit
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
                  object UniContainerPanel42: TUniContainerPanel
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
                    object UniLabel34: TUniLabel
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
                      ExplicitWidth = 51
                    end
                  end
                  object btnVendedorers: TUniSFBitBtn
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
                    OnClick = btnVendedorersClick
                    FAIcon.Icon = fa_search
                    FAIcon.Size = fs_16
                    FAIcon.Color = fc_grey
                    ButtonStyles = bs_transparent
                  end
                end
                object UniPanel45: TUniPanel
                  Left = 186
                  Top = 217
                  Width = 400
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 9
                  Caption = ''
                  Color = 16249327
                  object compnomevend: TUniEdit
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
                  object UniContainerPanel43: TUniContainerPanel
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
                object UniPanel46: TUniPanel
                  Left = 54
                  Top = 300
                  Width = 1075
                  Height = 2
                  Hint = 't2w2075h2;'
                  TabOrder = 10
                  Caption = ''
                  Color = 16249327
                end
                object UniPanel47: TUniPanel
                  Left = 11
                  Top = 321
                  Width = 100
                  Height = 70
                  Hint = 't1w100h0;'
                  TabOrder = 11
                  Caption = 'UniPanel4'
                  Color = clWhite
                  object compCodReg: TUniEdit
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
                  object UniContainerPanel44: TUniContainerPanel
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
                    object UniLabel35: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 37
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Regi'#227'o'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                      ExplicitWidth = 53
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
                object UniPanel48: TUniPanel
                  Left = 186
                  Top = 321
                  Width = 400
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 12
                  Caption = ''
                  Color = 16249327
                  object compDescrReg: TUniEdit
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
                  object UniContainerPanel45: TUniContainerPanel
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
                object UniPanel49: TUniPanel
                  Left = 62
                  Top = 404
                  Width = 1075
                  Height = 2
                  Hint = 't2w2075h2;'
                  TabOrder = 13
                  Caption = ''
                  Color = 16249327
                end
                object UniPanel50: TUniPanel
                  Left = 10
                  Top = 425
                  Width = 160
                  Height = 70
                  Hint = 't1w160h0;'
                  TabOrder = 14
                  Caption = ''
                  Color = 16249327
                  object compLimite: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 158
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
                  object UniContainerPanel46: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 158
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
                      Width = 34
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Limite'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                    end
                  end
                end
                object UniPanel51: TUniPanel
                  Left = 194
                  Top = 425
                  Width = 400
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 15
                  Caption = ''
                  Color = 16249327
                  object compIndicacao: TUniEdit
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
                  object UniContainerPanel47: TUniContainerPanel
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
                    object UniContainerPanel48: TUniContainerPanel
                      Left = 0
                      Top = 0
                      Width = 398
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
                        Width = 51
                        Height = 17
                        Hint = ''
                        Margins.Left = 10
                        Caption = 'Indica'#231#227'o'
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
                object UniPanel52: TUniPanel
                  Left = 70
                  Top = 516
                  Width = 1075
                  Height = 2
                  Hint = 't2w2075h2;'
                  TabOrder = 16
                  Caption = ''
                  Color = 16249327
                end
                object UniPanel53: TUniPanel
                  Left = 11
                  Top = 529
                  Width = 100
                  Height = 70
                  Hint = 't1w100h0;'
                  TabOrder = 17
                  Caption = 'UniPanel4'
                  Color = clWhite
                  object compCodEmpCadastro: TUniEdit
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
                  object UniContainerPanel49: TUniContainerPanel
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
                    object UniLabel38: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 73
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Empresa cad.'
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
                    FAIcon.Icon = fa_search
                    FAIcon.Size = fs_16
                    FAIcon.Color = fc_grey
                    ButtonStyles = bs_transparent
                  end
                end
                object UniPanel54: TUniPanel
                  Left = 123
                  Top = 529
                  Width = 150
                  Height = 70
                  Hint = 't1w150h0;'
                  Visible = False
                  TabOrder = 18
                  Caption = 'UniPanel4'
                  Color = clWhite
                  object UniEdit14: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 148
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
                  object UniContainerPanel50: TUniContainerPanel
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
                    object UniLabel39: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 86
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'C'#243'digo cont'#225'bil'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                    end
                  end
                end
                object UniPanel56: TUniPanel
                  Left = 78
                  Top = 628
                  Width = 1075
                  Height = 2
                  Hint = 't2w2075h2;'
                  TabOrder = 19
                  Caption = ''
                  Color = 16249327
                end
                object UniPanel57: TUniPanel
                  Left = 19
                  Top = 649
                  Width = 100
                  Height = 70
                  Hint = 't1w100h0;'
                  Visible = False
                  TabOrder = 20
                  Caption = 'UniPanel4'
                  Color = clWhite
                  object UniEdit15: TUniEdit
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
                  object UniContainerPanel51: TUniContainerPanel
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
                    object UniLabel40: TUniLabel
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
                    FAIcon.Icon = fa_search
                    FAIcon.Size = fs_16
                    FAIcon.Color = fc_grey
                    ButtonStyles = bs_transparent
                  end
                end
                object UniPanel58: TUniPanel
                  Left = 194
                  Top = 649
                  Width = 400
                  Height = 70
                  Hint = 't1w500h0;'
                  Visible = False
                  TabOrder = 21
                  Caption = ''
                  Color = 16249327
                  object UniEdit16: TUniEdit
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
                  object UniContainerPanel52: TUniContainerPanel
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
                object UniPanel59: TUniPanel
                  Left = 86
                  Top = 748
                  Width = 1075
                  Height = 2
                  Hint = 't2w2075h2;'
                  TabOrder = 22
                  Caption = ''
                  Color = 16249327
                end
                object UniPanel60: TUniPanel
                  Left = 20
                  Top = 761
                  Width = 100
                  Height = 70
                  Hint = 't1w100h0;'
                  Visible = False
                  TabOrder = 23
                  Caption = 'UniPanel4'
                  Color = clWhite
                  object UniEdit17: TUniEdit
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
                  object UniContainerPanel53: TUniContainerPanel
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
                    FAIcon.Icon = fa_search
                    FAIcon.Size = fs_16
                    FAIcon.Color = fc_grey
                    ButtonStyles = bs_transparent
                  end
                end
                object UniPanel61: TUniPanel
                  Left = 195
                  Top = 761
                  Width = 400
                  Height = 70
                  Hint = 't1w500h0;'
                  Visible = False
                  TabOrder = 24
                  Caption = ''
                  Color = 16249327
                  object UniEdit18: TUniEdit
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
                  object UniContainerPanel54: TUniContainerPanel
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
              end
            end
          end
          object tab2: TUniTabSheet
            Hint = ''
            Caption = '3 - Fatura'
            object pn3: TUniPanel
              Left = 0
              Top = 0
              Width = 1413
              Height = 655
              Hint = ''
              Align = alClient
              TabOrder = 0
              Caption = ''
              object sBox3: TUniScrollBox
                Left = 1
                Top = 1
                Width = 1411
                Height = 653
                Hint = ''
                Align = alClient
                Color = 16249327
                TabOrder = 1
                ScrollHeight = 110
                ScrollWidth = 1313
                object UniPanel62: TUniPanel
                  Left = 18
                  Top = 9
                  Width = 154
                  Height = 70
                  Hint = 't1w100h0;'
                  TabOrder = 0
                  Caption = ''
                  Color = 16249327
                  object UniEdit1: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 152
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
                    ExplicitWidth = 98
                  end
                  object UniContainerPanel56: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 152
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
                    ExplicitWidth = 98
                    object UniLabel42: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 28
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'C.E.P.'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                      ExplicitWidth = 39
                    end
                  end
                end
                object UniPanel63: TUniPanel
                  Left = 186
                  Top = 9
                  Width = 483
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 1
                  Caption = ''
                  Color = 16249327
                  object UniEdit2: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 481
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
                    ExplicitWidth = 498
                  end
                  object UniContainerPanel57: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 481
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
                    ExplicitWidth = 498
                    object UniLabel43: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 123
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Endere'#231'o de cobran'#231'a'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                      ExplicitWidth = 34
                    end
                  end
                end
                object UniPanel64: TUniPanel
                  Left = 682
                  Top = 9
                  Width = 137
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 2
                  Caption = ''
                  Color = 16249327
                  object UniEdit3: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 135
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
                    ExplicitWidth = 398
                  end
                  object UniContainerPanel58: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 135
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
                    ExplicitWidth = 398
                    object UniLabel44: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 45
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'N'#250'mero'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                      ExplicitWidth = 79
                    end
                  end
                end
                object UniPanel65: TUniPanel
                  Left = 238
                  Top = 108
                  Width = 1075
                  Height = 2
                  Hint = 't2w2075h2;'
                  TabOrder = 3
                  Caption = ''
                  Color = 16249327
                end
              end
            end
          end
          object tab3: TUniTabSheet
            Hint = ''
            Caption = '4 - Coment'#225'rios'
            object pn4: TUniPanel
              Left = 0
              Top = 0
              Width = 1413
              Height = 655
              Hint = ''
              Align = alClient
              TabOrder = 0
              Caption = ''
              object sBox4: TUniScrollBox
                Left = 1
                Top = 1
                Width = 1411
                Height = 653
                Hint = ''
                Align = alClient
                Color = 16249327
                TabOrder = 1
              end
            end
          end
          object tab4: TUniTabSheet
            Hint = ''
            Caption = '5 - Contatos'
            object pn5: TUniPanel
              Left = 0
              Top = 0
              Width = 1413
              Height = 655
              Hint = ''
              Align = alClient
              TabOrder = 0
              Caption = ''
              object sBox5: TUniScrollBox
                Left = 1
                Top = 1
                Width = 1411
                Height = 653
                Hint = ''
                Align = alClient
                Color = 16249327
                TabOrder = 1
              end
            end
          end
          object tab5: TUniTabSheet
            Hint = ''
            Caption = '6 - Outros'
            object pn6: TUniPanel
              Left = 0
              Top = 0
              Width = 1413
              Height = 655
              Hint = ''
              Align = alClient
              TabOrder = 0
              Caption = ''
              object sBox6: TUniScrollBox
                Left = 1
                Top = 1
                Width = 1411
                Height = 653
                Hint = ''
                Align = alClient
                Color = 16249327
                TabOrder = 1
              end
            end
          end
          object tab6: TUniTabSheet
            Hint = ''
            Caption = '7 - For'#231'a de Venda'
            object pn7: TUniPanel
              Left = 0
              Top = 0
              Width = 1413
              Height = 655
              Hint = ''
              Align = alClient
              TabOrder = 0
              Caption = ''
              object sBox7: TUniScrollBox
                Left = 1
                Top = 1
                Width = 1411
                Height = 653
                Hint = ''
                Align = alClient
                Color = 16249327
                TabOrder = 1
                ScrollHeight = 87
                ScrollWidth = 265
                object UniPanel66: TUniPanel
                  Left = 18
                  Top = 17
                  Width = 110
                  Height = 70
                  Hint = 't1w100h0;'
                  TabOrder = 0
                  Caption = ''
                  Color = 16249327
                  object UniContainerPanel59: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 108
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
                    ExplicitWidth = 98
                    object UniLabel45: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 75
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Status Cliente'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                      ExplicitWidth = 39
                    end
                  end
                  object UniFSToggle1: TUniFSToggle
                    AlignWithMargins = True
                    Left = 11
                    Top = 33
                    Width = 88
                    Height = 31
                    Hint = ''
                    Margins.Left = 10
                    Margins.Top = 5
                    Margins.Right = 10
                    Margins.Bottom = 5
                    ThemeOn = Success
                    ThemeOff = Gray
                    TitleOn = 'Ativo'
                    TitleOff = 'Inativo'
                    OnToggled = compATIVOToggled
                    Align = alClient
                    ExplicitLeft = 20
                    ExplicitTop = 35
                    ExplicitWidth = 80
                    ExplicitHeight = 35
                  end
                end
                object UniPanel67: TUniPanel
                  Left = 138
                  Top = 17
                  Width = 127
                  Height = 70
                  Hint = 't1w100h0;'
                  TabOrder = 1
                  Caption = ''
                  Color = 16249327
                  object UniContainerPanel60: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 125
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
                    ExplicitWidth = 98
                    object UniLabel46: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 101
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Cliente Bloqueado'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                      ExplicitWidth = 75
                    end
                  end
                  object UniFSToggle2: TUniFSToggle
                    AlignWithMargins = True
                    Left = 11
                    Top = 33
                    Width = 105
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
                    OnToggled = compATIVOToggled
                    Align = alClient
                    ExplicitWidth = 78
                  end
                end
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
    Width = 1437
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
      Width = 169
      Height = 21
      Hint = ''
      Margins.Top = 7
      Caption = 'CADASTRO DE CLIENTES'
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
      Width = 934
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
      Left = 1408
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
    Left = 1071
    Top = 334
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
  object rg1: TRGLayoutUnigui
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
    ScrollBox = sBox1
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
    Panel = pn2
    Frame = Owner
    HeightCampos = 70
    ScrollBox = sBox2
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
    Panel = pn3
    Frame = Owner
    HeightCampos = 70
    ScrollBox = sBox3
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
    Panel = pn4
    Frame = Owner
    HeightCampos = 70
    ScrollBox = sBox4
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
    Panel = pn5
    Frame = Owner
    HeightCampos = 70
    ScrollBox = sBox5
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
    Panel = pn6
    Frame = Owner
    HeightCampos = 70
    ScrollBox = sBox6
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
    Panel = pn7
    Frame = Owner
    HeightCampos = 70
    ScrollBox = sBox7
    TamanhoMinimoCampos = 100
    TopInicialCampos = 20
    Left = 864
    Top = 331
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
end
