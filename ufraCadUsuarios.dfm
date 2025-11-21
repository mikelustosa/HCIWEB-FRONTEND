object fraCadUsuarios: TfraCadUsuarios
  Left = 0
  Top = 0
  Width = 1147
  Height = 709
  OnCreate = UniFrameCreate
  OnReady = UniFrameReady
  TabOrder = 0
  ClientEvents.UniEvents.Strings = (
    
      'beforeInit=function window.beforeInit(sender, config)'#13#10'{'#13#10'   sen' +
      'der.cls="slide-in-left";'#13#10'}')
  object imgFundo: TUniImage
    Left = 0
    Top = 40
    Width = 1147
    Height = 669
    Hint = ''
    Align = alClient
    OnResize = imgFundoResize
  end
  object scrFundo: TUniScrollBox
    Left = 0
    Top = 40
    Width = 1147
    Height = 669
    Hint = ''
    Align = alClient
    TabOrder = 0
    object pgcTela: TUniPageControl
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1139
      Height = 661
      Hint = ''
      ActivePage = tabNovo
      TabBarVisible = False
      Align = alClient
      TabOrder = 0
      object UniTabSheet1: TUniTabSheet
        Hint = ''
        Caption = 'Listagem'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 256
        ExplicitHeight = 128
        object gridTela: TUniDBGrid
          Left = 0
          Top = 71
          Width = 1131
          Height = 562
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
              Width = 65
            end
            item
              FieldName = 'usuario'
              Title.Caption = 'Usu'#225'rio'
              Width = 200
            end
            item
              FieldName = 'senha'
              Title.Caption = 'senha'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'email'
              Title.Caption = 'E-mail'
              Width = 200
            end
            item
              FieldName = 'telefone'
              Title.Caption = 'Telefone'
              Width = 150
            end
            item
              FieldName = 'geral'
              Title.Caption = 'geral'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'cadcli'
              Title.Caption = 'cadcli'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'cadpro'
              Title.Caption = 'cadpro'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'opeest'
              Title.Caption = 'opeest'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'opecon'
              Title.Caption = 'opecon'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'pedven'
              Title.Caption = 'pedven'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'pedcom'
              Title.Caption = 'pedcom'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'operos'
              Title.Caption = 'operos'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'empope'
              Title.Caption = 'empope'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'mudaemp'
              Title.Caption = 'mudaemp'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'senhaesp'
              Title.Caption = 'senhaesp'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'cadtabsup'
              Title.Caption = 'cadtabsup'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'botsaldo'
              Title.Caption = 'botsaldo'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'pedvenf7'
              Title.Caption = 'pedvenf7'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'pedvenf4'
              Title.Caption = 'pedvenf4'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'pedcomf7'
              Title.Caption = 'pedcomf7'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'pedcomf4'
              Title.Caption = 'pedcomf4'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'osf7'
              Title.Caption = 'osf7'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'osf4'
              Title.Caption = 'osf4'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'arvore'
              Title.Caption = 'arvore'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'mostex'
              Title.Caption = 'mostex'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'ajustaimagem'
              Title.Caption = 'ajustaimagem'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'permitealtdescr'
              Title.Caption = 'permitealtdescr'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'bloqos'
              Title.Caption = 'bloqos'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'podexcel'
              Title.Caption = 'podexcel'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'margemesquerda'
              Title.Caption = 'margemesquerda'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'habcodped'
              Title.Caption = 'habcodped'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'podeverlucr'
              Title.Caption = 'podeverlucr'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'podebaixar'
              Title.Caption = 'podebaixar'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'edtcodban'
              Title.Caption = 'edtcodban'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'temfdv'
              Title.Caption = 'temfdv'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'versaldobancario'
              Title.Caption = 'versaldobancario'
              Width = 64
              Visible = False
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
          Width = 1131
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
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 256
        ExplicitHeight = 128
        object cpMenuRodape: TUniContainerPanel
          Left = 0
          Top = 593
          Width = 1131
          Height = 40
          Hint = ''
          ParentColor = False
          Align = alBottom
          TabOrder = 0
          LayoutConfig.Cls = 'body_grdnt_rounded'
          object btnSalvar: TUniSFBitBtn
            AlignWithMargins = True
            Left = 1006
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
            Left = 876
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
          object tgAtivo: TUniFSToggle
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
            OnToggled = tgAtivoToggled
            Align = alLeft
          end
        end
        object UniContainerPanel12: TUniContainerPanel
          AlignWithMargins = True
          Left = 8
          Top = 5
          Width = 1111
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
          object lblTipoManipulacao: TUniLabel
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
          Width = 1131
          Height = 561
          Hint = ''
          Align = alClient
          TabOrder = 2
          Caption = ''
          object sBoxFundoRegistro: TUniScrollBox
            Left = 1
            Top = 0
            Width = 1129
            Height = 559
            Hint = ''
            Color = 16249327
            TabOrder = 1
            object UniPanel4: TUniPanel
              Left = 8
              Top = 256
              Width = 1043
              Height = 200
              Hint = 't2w1500h1000;'
              TabOrder = 6
              Caption = 'pnFundoPermissoes'
              Color = 16249327
              object htmlPermissoes: TUniHTMLFrame
                Left = 1
                Top = 28
                Width = 1041
                Height = 171
                Hint = ''
                AutoScroll = True
                Align = alClient
                OnAjaxEvent = htmlPermissoesAjaxEvent
                ScrollHeight = 171
                ScrollWidth = 1041
              end
              object UniContainerPanel1: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 1041
                Height = 27
                Hint = ''
                Margins.Left = 8
                Margins.Top = 5
                Margins.Right = 12
                Margins.Bottom = 0
                ParentColor = False
                Align = alTop
                TabOrder = 2
                TabStop = False
                LayoutConfig.Cls = 'body_grdnt_rounded'
                object UniLabel2: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 70
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'PERMISS'#213'ES'
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
              Left = 947
              Top = 9
              Width = 165
              Height = 70
              Hint = 't1w250h0;'
              TabOrder = 4
              Caption = 'UniPanel4'
              Color = 16249327
              object edConfirmaSenha: TUniEdit
                Left = 1
                Top = 28
                Width = 163
                Height = 41
                Hint = ''
                PasswordChar = '*'
                MaxLength = 150
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
                object UniLabel12: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 106
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Confirme a senha *'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
            end
            object UniPanel2: TUniPanel
              Left = 10
              Top = 9
              Width = 256
              Height = 70
              Hint = 't1w500h0;'
              TabOrder = 0
              Caption = ''
              Color = 16249327
              object edUsuario: TUniEdit
                Left = 1
                Top = 28
                Width = 254
                Height = 41
                Hint = ''
                CharCase = ecUpperCase
                MaxLength = 10
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 1
                ClientEvents.UniEvents.Strings = (
                  
                    'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
                    '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
                    'n: /^[A-Za-z'#225#224#226#227#233#232#234#237#239#243#244#245#246#250#231#241#193#192#194#195#201#200#205#207#211#212#213#214#218#199#209'\s]+$/g, recursive: t' +
                    'rue },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
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
                  Width = 49
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Usu'#225'rio *'
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
              object edEmail: TUniEdit
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
                  Width = 30
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Email'
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
              Left = 764
              Top = 11
              Width = 165
              Height = 70
              Hint = 't1w250h0;'
              TabOrder = 3
              Caption = 'UniPanel4'
              Color = 16249327
              object edSenha: TUniEdit
                Left = 1
                Top = 28
                Width = 163
                Height = 41
                Hint = ''
                PasswordChar = '*'
                MaxLength = 150
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
                object UniLabel3: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 42
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Senha *'
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
              Left = 535
              Top = 9
              Width = 203
              Height = 70
              Hint = 't1w250h0;'
              TabOrder = 2
              Caption = 'UniPanel3'
              Color = 16249327
              object edTelefone: TUniEdit
                Left = 1
                Top = 28
                Width = 201
                Height = 41
                Hint = ''
                BorderStyle = ubsNone
                Text = ''
                ParentFont = False
                Font.Height = -16
                Align = alClient
                TabOrder = 1
                OnKeyUp = edTelefoneKeyUp
              end
              object UniContainerPanel2: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 201
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
            object UniPanel7: TUniPanel
              Left = 10
              Top = 89
              Width = 377
              Height = 70
              Hint = 't1w250h0;'
              TabOrder = 5
              Caption = 'UniPanel4'
              Color = 16249327
              object UniContainerPanel3: TUniContainerPanel
                Left = 1
                Top = 1
                Width = 375
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
                object UniLabel5: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 101
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Outras permiss'#245'es'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
              object chkPermiteAltDescProd: TUniCheckBox
                AlignWithMargins = True
                Left = 1
                Top = 31
                Width = 375
                Height = 17
                Hint = ''
                Margins.Left = 0
                Margins.Right = 0
                Caption = 'Permite altera'#231#227'o na descri'#231#227'o do produto'
                Align = alTop
                TabOrder = 2
                OnChange = chkPermiteAltDescProdChange
              end
              object chkBloqos: TUniCheckBox
                AlignWithMargins = True
                Left = 1
                Top = 51
                Width = 375
                Height = 17
                Hint = ''
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Caption = 'Bloquear altera'#231#227'o/exclus'#227'o de itens da O. S.'
                Align = alTop
                TabOrder = 3
                OnChange = chkBloqosChange
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
    Width = 1147
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
      Width = 248
      Height = 21
      Hint = ''
      Margins.Top = 7
      Caption = 'CADASTRO DE USU'#193'RIOS E SENHAS'
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
      Width = 644
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
      Left = 1118
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
      OnClick = btnFecharClick
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
  object RGLayoutUnigui1: TRGLayoutUnigui
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
