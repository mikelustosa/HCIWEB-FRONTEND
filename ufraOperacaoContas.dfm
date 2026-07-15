object fraOperacaoContas: TfraOperacaoContas
  Left = 0
  Top = 0
  Width = 1287
  Height = 769
  OnCreate = UniFrameCreate
  OnReady = UniFrameReady
  TabOrder = 0
  object cpMenuTopo: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 1287
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
      Width = 203
      Height = 21
      Hint = ''
      Margins.Top = 7
      Caption = 'MOVIMENTA'#199#195'O DE CONTAS'
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
      Width = 784
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
      Left = 1258
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
    Width = 1287
    Height = 729
    Hint = ''
    Align = alClient
  end
  object scrFundo: TUniScrollBox
    Left = 0
    Top = 40
    Width = 1287
    Height = 729
    Hint = ''
    Align = alClient
    TabOrder = 2
    object pgcTela: TUniPageControl
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1279
      Height = 721
      Hint = ''
      ActivePage = tsListagem
      TabBarVisible = False
      Align = alClient
      TabOrder = 0
      object tsListagem: TUniTabSheet
        Hint = ''
        Caption = 'Listagem'
        object gridTela: TUniDBGrid
          Left = 0
          Top = 142
          Width = 1271
          Height = 551
          Hint = 
            'Selecione o registro e tecle [ENTER] ou d'#234' um clique duplo para ' +
            'selecionar.'
          ShowHint = True
          ParentShowHint = False
          DataSource = DSTela
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
          LoadMask.Message = 'Loading data...'
          LayoutConfig.Cls = 'dbgrid-light responsiva mostrar-mobile'
          Align = alClient
          TabOrder = 0
          OnCellClick = gridTelaCellClick
          OnDblClick = gridTelaDblClick
          OnDrawColumnCell = gridTelaDrawColumnCell
          Columns = <
            item
              FieldName = 'botaoEditar'
              Title.Caption = ' '
              Width = 200
            end
            item
              FieldName = 'Empresa'
              Title.Caption = 'Empresa'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'id'
              Title.Caption = 'Id'
              Width = 150
              Visible = False
            end
            item
              FieldName = 'DIADESPP'
              Title.Caption = 'Data Prevista'
              Width = 150
            end
            item
              FieldName = 'VALORP'
              Title.Caption = 'Valor Previsto'
              Width = 150
            end
            item
              FieldName = 'CODCLI'
              Title.Caption = ' Cliente'
              Width = 150
            end
            item
              FieldName = 'DIADESPR'
              Title.Caption = 'Data Real'
              Width = 150
            end
            item
              FieldName = 'VALORR'
              Title.Caption = ' Valor Real'
              Width = 150
            end
            item
              FieldName = 'DREF'
              Title.Caption = 'Data Refer'#234'ncia'
              Width = 150
            end
            item
              FieldName = 'CODBAN'
              Title.Caption = 'Banco'
              Width = 150
            end
            item
              FieldName = 'CODCC'
              Title.Caption = ' C'#243'digo Centro de Custo'
              Width = 150
            end
            item
              FieldName = 'DEBCRED'
              Title.Caption = ' D'#233'bito/Cr'#233'dito'
              Width = 150
            end
            item
              FieldName = 'CODPR'
              Title.Caption = 'C'#243'digo Departamento'
              Width = 150
            end
            item
              FieldName = 'DESCRMV'
              Title.Caption = 'Descri'#231#227'o'
              Width = 150
            end
            item
              FieldName = 'NUMDOC'
              Title.Caption = 'Documento'
              Width = 150
            end
            item
              FieldName = 'NUMDOC2'
              Title.Caption = 'Cheque'
              Width = 150
            end
            item
              FieldName = 'VENDEDOR'
              Title.Caption = 'C'#243'digo Vendedor'
              Width = 150
            end
            item
              FieldName = 'REPASSE'
              Title.Caption = ' Repasse'
              Width = 150
            end
            item
              FieldName = 'AGENCIA'
              Title.Caption = 'Ag'#234'ncia'
              Width = 150
            end
            item
              FieldName = 'OBS'
              Title.Caption = 'Observa'#231#227'o Resumida'
              Width = 150
            end
            item
              FieldName = 'CONCILIA'
              Title.Caption = 'Conciliado'
              Width = 150
            end
            item
              FieldName = 'NOSSONUMERO'
              Title.Caption = 'Nosso N'#250'mero'
              Width = 150
            end
            item
              FieldName = 'ANOPED'
              Title.Caption = 'Prefixo Pedido'
              Width = 150
            end
            item
              FieldName = 'CODPED'
              Title.Caption = ' Sufixo Pedido'
              Width = 150
            end
            item
              FieldName = 'INCRNFE'
              Title.Caption = 'C'#243'digo NFE Interno'
              Width = 150
            end
            item
              FieldName = 'NOME'
              Title.Caption = ' Nome Cliente'
              Width = 300
            end
            item
              FieldName = 'NOMEF'
              Title.Caption = 'Nome Cliente Fantasia '
              Width = 300
            end>
        end
        object cpPesquisa: TUniContainerPanel
          AlignWithMargins = True
          Left = 0
          Top = 74
          Width = 1271
          Height = 65
          Hint = ''
          Margins.Left = 0
          Margins.Right = 0
          ParentColor = False
          Color = clWhite
          Align = alTop
          TabOrder = 1
          LayoutConfig.Cls = 'painel-sem-borda'
          object UniContainerPanel61: TUniContainerPanel
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 295
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
            object UniSFLabel3: TUniSFLabel
              AlignWithMargins = True
              Left = 3
              Top = 5
              Width = 254
              Height = 16
              Hint = ''
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'PESQUISAR VALORES NUM'#201'RICOS ENTRE'
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
            object UniContainerPanel62: TUniContainerPanel
              AlignWithMargins = True
              Left = 3
              Top = 26
              Width = 135
              Height = 34
              Hint = ''
              Margins.Top = 0
              Margins.Right = 5
              Margins.Bottom = 5
              ParentColor = False
              Color = clWhite
              Align = alLeft
              TabOrder = 2
              LayoutConfig.Cls = 'painel-com-borda-m'
              object UniSFLabel4: TUniSFLabel
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
              object compVALORNUM1: TUniEdit
                Left = 0
                Top = 0
                Width = 135
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
            object UniContainerPanel23: TUniContainerPanel
              AlignWithMargins = True
              Left = 146
              Top = 26
              Width = 135
              Height = 34
              Hint = ''
              Margins.Top = 0
              Margins.Right = 5
              Margins.Bottom = 5
              ParentColor = False
              Color = clWhite
              Align = alLeft
              TabOrder = 3
              LayoutConfig.Cls = 'painel-com-borda-m'
              object UniSFLabel1: TUniSFLabel
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
              object compVALORNUM2: TUniEdit
                Left = 0
                Top = 0
                Width = 135
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
          object UniContainerPanel63: TUniContainerPanel
            AlignWithMargins = True
            Left = 300
            Top = 0
            Width = 295
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
            object UniSFLabel5: TUniSFLabel
              AlignWithMargins = True
              Left = 3
              Top = 5
              Width = 162
              Height = 16
              Hint = ''
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'PESQUISAR DATAS ENTRE'
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
            object compDATA1: TUniContainerPanel
              AlignWithMargins = True
              Left = 3
              Top = 26
              Width = 135
              Height = 34
              Hint = ''
              Margins.Top = 0
              Margins.Right = 5
              Margins.Bottom = 5
              ParentColor = False
              Color = clWhite
              Align = alLeft
              TabOrder = 2
              LayoutConfig.Cls = 'painel-com-borda-m'
              object UniSFLabel6: TUniSFLabel
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
              object compDiaDespPIni: TUniDateTimePicker
                Left = 0
                Top = 0
                Width = 135
                Height = 34
                Hint = ''
                DateTime = 46156.000000000000000000
                DateFormat = 'dd/MM/yyyy'
                TimeFormat = 'HH:mm:ss'
                Align = alClient
                TabOrder = 2
              end
            end
            object UniContainerPanel24: TUniContainerPanel
              AlignWithMargins = True
              Left = 146
              Top = 26
              Width = 135
              Height = 34
              Hint = ''
              Margins.Top = 0
              Margins.Right = 5
              Margins.Bottom = 5
              ParentColor = False
              Color = clWhite
              Align = alLeft
              TabOrder = 3
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
              object compDiaDespPFin: TUniDateTimePicker
                Left = 0
                Top = 0
                Width = 135
                Height = 34
                Hint = ''
                DateTime = 46156.000000000000000000
                DateFormat = 'dd/MM/yyyy'
                TimeFormat = 'HH:mm:ss'
                Align = alClient
                TabOrder = 2
              end
            end
          end
          object UniContainerPanel65: TUniContainerPanel
            AlignWithMargins = True
            Left = 600
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
            TabOrder = 3
            LayoutConfig.Cls = 'painel-sem-borda'
            object UniSFLabel7: TUniSFLabel
              AlignWithMargins = True
              Left = 3
              Top = 5
              Width = 100
              Height = 16
              Hint = ''
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'TIPO DE PEDIDO'
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
            object UniContainerPanel66: TUniContainerPanel
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
              object UniSFLabel8: TUniSFLabel
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
              object compCBLIMITEREGISTROS: TUniSFComboBox
                Left = 5
                Top = 8
                Width = 134
                Hint = ''
                Text = 'Ambos'
                TabOrder = 2
                Items.Strings = (
                  'HCI'
                  'Fdv'
                  'Ambos')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
          end
          object UniContainerPanel26: TUniContainerPanel
            AlignWithMargins = True
            Left = 755
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
            TabOrder = 4
            LayoutConfig.Cls = 'painel-sem-borda'
            object UniSFLabel18: TUniSFLabel
              AlignWithMargins = True
              Left = 3
              Top = 5
              Width = 36
              Height = 16
              Hint = ''
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = '         '
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
            object UniContainerPanel64: TUniContainerPanel
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
              object btnPesquisar: TUniSFBitBtn
                Left = 0
                Top = 0
                Width = 172
                Height = 34
                Hint = 'Efetua a pesquisa em cima da condi'#231#227'o estabelacida'
                Margins.Top = 2
                Margins.Bottom = 5
                ParentShowHint = False
                Caption = 'Efetuar pesquisa'
                Align = alClient
                TabOrder = 1
                Scale = bbsSmall
                LayoutConfig.Cls = 'botao'
                OnClick = btnPesquisarClick
                FAIcon.Icon = fa_search
                FAIcon.Size = fs_16
                FAIcon.Color = fc_white
                ButtonStyles = bs_primary
              end
            end
          end
        end
        object UniContainerPanel22: TUniContainerPanel
          AlignWithMargins = True
          Left = 0
          Top = 3
          Width = 1271
          Height = 65
          Hint = ''
          Margins.Left = 0
          Margins.Right = 0
          ParentColor = False
          Color = clWhite
          Align = alTop
          TabOrder = 2
          LayoutConfig.Cls = 'painel-sem-borda'
          object UniContainerPanel67: TUniContainerPanel
            AlignWithMargins = True
            Left = 401
            Top = 0
            Width = 349
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
            object UniSFLabel9: TUniSFLabel
              AlignWithMargins = True
              Left = 3
              Top = 5
              Width = 129
              Height = 16
              Hint = ''
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'TEXTO A PESQUISAR'
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
            object UniContainerPanel68: TUniContainerPanel
              AlignWithMargins = True
              Left = 3
              Top = 26
              Width = 341
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
              object UniSFLabel10: TUniSFLabel
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
              object compTEXTOPESQUISAR: TUniEdit
                Left = 0
                Top = 0
                Width = 341
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
          object UniContainerPanel69: TUniContainerPanel
            AlignWithMargins = True
            Left = 931
            Top = 0
            Width = 180
            Height = 65
            Hint = ''
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 0
            Visible = False
            ParentColor = False
            Color = clWhite
            Align = alRight
            TabOrder = 2
            LayoutConfig.Cls = 'painel-sem-borda'
            object UniSFLabel11: TUniSFLabel
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
            object UniContainerPanel70: TUniContainerPanel
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
              object UniSFBitBtn3: TUniSFBitBtn
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
          object UniContainerPanel71: TUniContainerPanel
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 241
            Height = 65
            Hint = ''
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 0
            ParentColor = False
            Color = clWhite
            Align = alLeft
            TabOrder = 3
            LayoutConfig.Cls = 'painel-sem-borda'
            object UniSFLabel12: TUniSFLabel
              AlignWithMargins = True
              Left = 3
              Top = 5
              Width = 54
              Height = 16
              Hint = ''
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'CAMPOS'
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
            object UniContainerPanel72: TUniContainerPanel
              AlignWithMargins = True
              Left = 3
              Top = 26
              Width = 233
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
              object UniSFLabel13: TUniSFLabel
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
              object cbCampos: TUniSFComboBox
                Left = 3
                Top = 6
                Width = 227
                Hint = ''
                Text = 'Todos'
                TabOrder = 2
                Items.Strings = (
                  'Todos'
                  'Data Prevista'
                  'Valor Previsto'
                  'Cliente'
                  'DataReal'
                  'ValorReal'
                  'Data Refer'#234'ncia'
                  'Banco'
                  'C'#243'digo Centro de Custo'
                  'D'#233'bito/Cr'#233'dito'
                  'C'#243'digo Departamento'
                  'Descri'#231#227'o'
                  'Documento'
                  'Cheque'
                  'C'#243'digoVendedor'
                  'Repasse'
                  'Ag'#234'ncia'
                  'Observa'#231#227'o Resumida'
                  'Concilliado'
                  'Nosso N'#250'mero'
                  'Prefixo Pedido'
                  'Sufixo Pedido'
                  'C'#243'digo NFE Interno'
                  'Nome Cliente'
                  'Nome Cliente Fantasia')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
          end
          object UniContainerPanel73: TUniContainerPanel
            AlignWithMargins = True
            Left = 246
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
            TabOrder = 4
            LayoutConfig.Cls = 'painel-sem-borda'
            object UniSFLabel14: TUniSFLabel
              AlignWithMargins = True
              Left = 3
              Top = 5
              Width = 95
              Height = 16
              Hint = ''
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'TIPO DE BUSCA'
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
            object UniContainerPanel74: TUniContainerPanel
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
              object UniSFLabel15: TUniSFLabel
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
              object UniSFComboBox2: TUniSFComboBox
                Left = 3
                Top = 6
                Width = 136
                Hint = ''
                Text = 'Iniciais'
                TabOrder = 2
                Items.Strings = (
                  'Exata'
                  'Iniciais'
                  'Partes do texto')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
          end
          object UniContainerPanel75: TUniContainerPanel
            AlignWithMargins = True
            Left = 1116
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
            Align = alRight
            TabOrder = 5
            LayoutConfig.Cls = 'painel-sem-borda'
            object UniSFLabel16: TUniSFLabel
              AlignWithMargins = True
              Left = 3
              Top = 5
              Width = 136
              Height = 16
              Hint = ''
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'LIMITE DE REGISTROS'
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
            object UniContainerPanel76: TUniContainerPanel
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
              object UniSFLabel17: TUniSFLabel
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
              object UniSFComboBox3: TUniSFComboBox
                Left = 3
                Top = 6
                Width = 132
                Hint = 
                  'N'#250'mero de registros m'#225'ximo definido em par'#226'metros gerais para pe' +
                  'squisa de grandes tabelas'
                ShowHint = True
                ParentShowHint = False
                Text = '100'
                TabOrder = 2
                Items.Strings = (
                  '100'
                  '200'
                  '300'
                  '400'
                  '500'
                  '1000'
                  '10000'
                  '100000'
                  'Todos')
                Groups = <>
                Options.Placeholders = 'Selecione'
                Options.noResults = 'No Results Found'
              end
            end
          end
        end
      end
      object tsDetalhe: TUniTabSheet
        Hint = ''
        TabVisible = False
        Caption = 'tabDetalhe'
        object cpMenuRodape: TUniContainerPanel
          Left = 0
          Top = 653
          Width = 1271
          Height = 40
          Hint = ''
          ParentColor = False
          Align = alBottom
          TabOrder = 0
          LayoutConfig.Cls = 'body_grdnt_rounded'
          object btnVoltar: TUniSFBitBtn
            AlignWithMargins = True
            Left = 1146
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
            OnClick = btnVoltarClick
            FAIcon.Icon = fa_check_circle
            FAIcon.Size = fs_16
            FAIcon.Color = fc_white
            FAIcon.Style = regular
            ButtonStyles = bs_danger
          end
          object btExcluir: TUniSFBitBtn
            AlignWithMargins = True
            Left = 886
            Top = 5
            Width = 120
            Height = 30
            Hint = ''
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ParentShowHint = False
            Caption = 'EXCLUIR'
            Align = alRight
            TabOrder = 2
            Scale = bbsSmall
            LayoutConfig.Cls = 'botaoSemBorda'
            OnClick = btExcluirClick
            FAIcon.Icon = fa_arrow_alt_circle_left
            FAIcon.Size = fs_16
            FAIcon.Color = fc_white
            FAIcon.Style = regular
            ButtonStyles = bs_danger
          end
          object btIncluir: TUniSFBitBtn
            AlignWithMargins = True
            Left = 626
            Top = 5
            Width = 120
            Height = 30
            Hint = ''
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ParentShowHint = False
            Caption = 'INCLUIR'
            Align = alRight
            TabOrder = 3
            Scale = bbsSmall
            LayoutConfig.Cls = 'botaoSemBorda'
            OnClick = btIncluirClick
            FAIcon.Icon = fa_arrow_alt_circle_left
            FAIcon.Size = fs_16
            FAIcon.Color = fc_white
            FAIcon.Style = regular
            ButtonStyles = bs_danger
          end
          object btAlterar: TUniSFBitBtn
            AlignWithMargins = True
            Left = 756
            Top = 5
            Width = 120
            Height = 30
            Hint = ''
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ParentShowHint = False
            Caption = 'ALTERAR'
            Align = alRight
            TabOrder = 4
            Scale = bbsSmall
            LayoutConfig.Cls = 'botaoSemBorda'
            OnClick = btAlterarClick
            FAIcon.Icon = fa_arrow_alt_circle_left
            FAIcon.Size = fs_16
            FAIcon.Color = fc_white
            FAIcon.Style = regular
            ButtonStyles = bs_danger
          end
          object btGravar: TUniSFBitBtn
            AlignWithMargins = True
            Left = 1016
            Top = 5
            Width = 120
            Height = 30
            Hint = ''
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ParentShowHint = False
            Caption = 'GRAVAR'
            Align = alRight
            TabOrder = 5
            Scale = bbsSmall
            LayoutConfig.Cls = 'botaoSemBorda'
            OnClick = btGravarClick
            FAIcon.Icon = fa_arrow_alt_circle_left
            FAIcon.Size = fs_16
            FAIcon.Color = fc_white
            FAIcon.Style = regular
            ButtonStyles = bs_danger
          end
        end
        object UniContainerPanel12: TUniContainerPanel
          AlignWithMargins = True
          Left = 8
          Top = 5
          Width = 1251
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
            Width = 108
            Height = 17
            Hint = ''
            Margins.Left = 10
            Caption = 'DADOS DA CONTA'
            Align = alTop
            ParentFont = False
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI Light'
            TabOrder = 1
          end
        end
        object pgcDetalhe: TUniPageControl
          Left = 3
          Top = 3
          Width = 1230
          Height = 630
          Hint = ''
          ActivePage = tsDadosDaConta
          TabOrder = 2
          object tsDadosDaConta: TUniTabSheet
            Hint = ''
            Caption = 'Dados da conta'
            DesignSize = (
              1222
              602)
            object UniContainerPanel1: TUniContainerPanel
              AlignWithMargins = True
              Left = 8
              Top = 5
              Width = 1202
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
              object UniLabel1: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 108
                Height = 17
                Hint = ''
                Margins.Left = 10
                Caption = 'DADOS DA CONTA'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object PnlDadosConta: TUniPanel
              Left = 18
              Top = 47
              Width = 1087
              Height = 564
              Hint = ''
              Anchors = [akLeft, akTop, akRight, akBottom]
              TabOrder = 0
              Caption = ''
              object scrDetalhe: TUniScrollBox
                Left = 21
                Top = 7
                Width = 1050
                Height = 505
                Hint = ''
                Color = 16249327
                TabOrder = 1
                ScrollHeight = 420
                ScrollWidth = 1097
                object UniPanel6: TUniPanel
                  Left = 339
                  Top = 3
                  Width = 157
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 2
                  Caption = ''
                  Color = 16249327
                  object UniContainerPanel6: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 155
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
                    object UniLabel6: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 78
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Dt. Refer'#234'ncia'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                    end
                  end
                  object compDREF: TUniDateTimePicker
                    Left = 1
                    Top = 28
                    Width = 155
                    Height = 41
                    Hint = ''
                    DateTime = 46156.000000000000000000
                    DateFormat = 'dd/MM/yyyy'
                    TimeFormat = 'HH:mm:ss'
                    Align = alClient
                    TabOrder = 2
                  end
                end
                object UniPanel7: TUniPanel
                  Left = 674
                  Top = 34
                  Width = 336
                  Height = 37
                  Hint = 't1w500h0;'
                  TabOrder = 4
                  Caption = ''
                  Color = 16249327
                  object UniEdit2: TUniEdit
                    Left = 1
                    Top = 1
                    Width = 334
                    Height = 35
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
                end
                object UniPanel3: TUniPanel
                  Left = 3
                  Top = 3
                  Width = 157
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 0
                  Caption = ''
                  Color = 16249327
                  object UniContainerPanel4: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 155
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
                      Width = 65
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Dia previsto'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                    end
                  end
                  object compDIADESPP: TUniDateTimePicker
                    Left = 1
                    Top = 28
                    Width = 155
                    Height = 41
                    Hint = ''
                    DateTime = 46156.000000000000000000
                    DateFormat = 'dd/MM/yyyy'
                    TimeFormat = 'HH:mm:ss'
                    Align = alClient
                    TabOrder = 2
                  end
                end
                object UniPanel4: TUniPanel
                  Left = 171
                  Top = 3
                  Width = 157
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 1
                  Caption = ''
                  Color = 16249327
                  object UniContainerPanel5: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 155
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
                      Width = 42
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Dia real'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                    end
                  end
                  object compDIADESPR: TUniDateTimePicker
                    Left = 1
                    Top = 28
                    Width = 155
                    Height = 41
                    Hint = ''
                    DateTime = 46156.000000000000000000
                    DateFormat = 'dd/MM/yyyy'
                    TimeFormat = 'HH:mm:ss'
                    Align = alClient
                    TabOrder = 2
                  end
                end
                object UniPanel9: TUniPanel
                  Left = 171
                  Top = 86
                  Width = 157
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 7
                  Caption = ''
                  Color = 16249327
                  object UniContainerPanel7: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 155
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
                    object compVALORPaa: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 74
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Valor Previsto'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                    end
                  end
                  object compVALORP: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 155
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
                    ClientEvents.UniEvents.Strings = (
                      
                        'afterCreate=function afterCreate(sender)'#13#10'{'#13#10'    $("#" + sender.' +
                        'id + "-inputEl").mask('#39'#.##0,00'#39', {'#13#10'        reverse: true'#13#10'    ' +
                        '});'#13#10'}')
                  end
                end
                object UniPanel10: TUniPanel
                  Left = 3
                  Top = 86
                  Width = 157
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 6
                  Caption = ''
                  Color = 16249327
                  object UniContainerPanel8: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 155
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
                    object compVALORRdfdf: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 51
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Valor real'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                    end
                  end
                  object compVALORR: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 155
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
                    ClientEvents.UniEvents.Strings = (
                      
                        'afterCreate=function afterCreate(sender)'#13#10'{'#13#10'    $("#" + sender.' +
                        'id + "-inputEl").mask('#39'#.##0,00'#39', {'#13#10'        reverse: true'#13#10'    ' +
                        '});'#13#10'}')
                  end
                end
                object UniPanel2: TUniPanel
                  Left = 339
                  Top = 86
                  Width = 157
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 8
                  Caption = ''
                  Color = 16249327
                  object UniContainerPanel9: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 155
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
                      Width = 65
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Documento'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                    end
                  end
                  object compNUMDOC: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 155
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
                object UniPanel8: TUniPanel
                  Left = 510
                  Top = 86
                  Width = 157
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 9
                  Caption = ''
                  Color = 16249327
                  object UniContainerPanel10: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 155
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
                      Width = 43
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Cheque'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                    end
                  end
                  object compNUMDOC2: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 155
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
                object UniPanel11: TUniPanel
                  Left = 681
                  Top = 86
                  Width = 157
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 10
                  Caption = ''
                  Color = 16249327
                  object UniContainerPanel11: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 155
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
                      Width = 119
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Banco/Ag'#234'ncia/Conta'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                    end
                  end
                  object compAGENCIA: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 155
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
                object UniPanel12: TUniPanel
                  Left = 852
                  Top = 86
                  Width = 158
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 11
                  Caption = ''
                  Color = 16249327
                  object UniContainerPanel13: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 156
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
                      Width = 84
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Repassado para'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                    end
                  end
                  object compREPASSE: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 156
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
                object UniPanel13: TUniPanel
                  Left = -39
                  Top = 163
                  Width = 1075
                  Height = 2
                  Hint = 't2w2075h2;'
                  TabOrder = 12
                  Caption = ''
                  Color = 16249327
                end
                object UniPanel42: TUniPanel
                  Left = 171
                  Top = 170
                  Width = 325
                  Height = 70
                  Hint = 't1w300h0;'
                  TabOrder = 14
                  Caption = ''
                  Color = 16249327
                  object compDESCRPR: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 323
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
                    Width = 323
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
                object UniPanel41: TUniPanel
                  Left = 3
                  Top = 170
                  Width = 158
                  Height = 70
                  Hint = 't1w100h0;'
                  TabOrder = 13
                  Caption = 'UniPanel4'
                  Color = clWhite
                  object compCODPR: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 116
                    Height = 41
                    Hint = ''
                    MaxLength = 50
                    BorderStyle = ubsNone
                    Text = ''
                    ParentFont = False
                    Font.Height = -16
                    Align = alClient
                    TabOrder = 1
                    ReadOnly = True
                  end
                  object UniContainerPanel40: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 156
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
                  object UniSFBitBtn2: TUniSFBitBtn
                    AlignWithMargins = True
                    Left = 122
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
                object UniPanel14: TUniPanel
                  Left = 510
                  Top = 170
                  Width = 158
                  Height = 70
                  Hint = 't1w100h0;'
                  TabOrder = 15
                  Caption = 'UniPanel4'
                  Color = clWhite
                  object compCODCC: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 116
                    Height = 41
                    Hint = ''
                    MaxLength = 50
                    BorderStyle = ubsNone
                    Text = ''
                    ParentFont = False
                    Font.Height = -16
                    Align = alClient
                    TabOrder = 1
                    ReadOnly = True
                  end
                  object UniContainerPanel14: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 156
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
                      Width = 90
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Centro de Custo'
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
                    Left = 122
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
                object UniPanel15: TUniPanel
                  Left = 681
                  Top = 170
                  Width = 217
                  Height = 70
                  Hint = 't1w300h0;'
                  TabOrder = 16
                  Caption = ''
                  Color = 16249327
                  object compDESCR: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 215
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
                  object UniContainerPanel15: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 215
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
                  Left = 681
                  Top = 266
                  Width = 331
                  Height = 70
                  Hint = 't1w300h0;'
                  TabOrder = 22
                  Caption = ''
                  Color = 16249327
                  object compNOMECLI: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 329
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
                  object UniContainerPanel16: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 329
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
                object UniPanel17: TUniPanel
                  Left = 510
                  Top = 266
                  Width = 158
                  Height = 70
                  Hint = 't1w100h0;'
                  TabOrder = 21
                  Caption = 'UniPanel4'
                  Color = clWhite
                  object compCODCLI: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 116
                    Height = 41
                    Hint = ''
                    MaxLength = 50
                    BorderStyle = ubsNone
                    Text = ''
                    ParentFont = False
                    Font.Height = -16
                    Align = alClient
                    TabOrder = 1
                    ReadOnly = True
                  end
                  object UniContainerPanel17: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 156
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
                      Width = 36
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Ciente'
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
                    Left = 122
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
                object UniPanel18: TUniPanel
                  Left = 171
                  Top = 266
                  Width = 325
                  Height = 70
                  Hint = 't1w300h0;'
                  TabOrder = 20
                  Caption = ''
                  Color = 16249327
                  object compNOME: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 323
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
                  object UniContainerPanel18: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 323
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
                object UniPanel19: TUniPanel
                  Left = 3
                  Top = 266
                  Width = 158
                  Height = 70
                  Hint = 't1w100h0;'
                  TabOrder = 19
                  Caption = 'UniPanel4'
                  Color = clWhite
                  object compCODBAN: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 116
                    Height = 41
                    Hint = ''
                    MaxLength = 50
                    BorderStyle = ubsNone
                    Text = ''
                    ParentFont = False
                    Font.Height = -16
                    Align = alClient
                    TabOrder = 1
                    ReadOnly = True
                  end
                  object UniContainerPanel19: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 156
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
                  object UniSFBitBtn6: TUniSFBitBtn
                    AlignWithMargins = True
                    Left = 122
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
                object UniPanel20: TUniPanel
                  Left = -39
                  Top = 247
                  Width = 1075
                  Height = 2
                  Hint = 't2w2075h2;'
                  TabOrder = 18
                  Caption = ''
                  Color = 16249327
                end
                object UniPanel21: TUniPanel
                  Left = -36
                  Top = 343
                  Width = 1075
                  Height = 2
                  Hint = 't2w2075h2;'
                  TabOrder = 23
                  Caption = ''
                  Color = 16249327
                end
                object UniPanel23: TUniPanel
                  Left = 3
                  Top = 350
                  Width = 493
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 24
                  Caption = ''
                  Color = 16249327
                  object UniContainerPanel21: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 491
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
                  object compDESCRMV: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 491
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
                object UniPanel22: TUniPanel
                  Left = 510
                  Top = 350
                  Width = 502
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 25
                  Caption = ''
                  Color = 16249327
                  object UniContainerPanel20: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 500
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
                      Width = 122
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Observa'#231#227'o Resumida'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                    end
                  end
                  object compOBS: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 500
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
                object UniPanel24: TUniPanel
                  Left = 904
                  Top = 170
                  Width = 106
                  Height = 70
                  Hint = 't1w300h0;'
                  TabOrder = 17
                  Caption = ''
                  Color = 16249327
                  object UniContainerPanel29: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 104
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
                  object compDEBCRED: TUniSFComboBox
                    Left = 3
                    Top = 36
                    Width = 94
                    Hint = ''
                    Text = ''
                    TabOrder = 2
                    Items.Strings = (
                      'C'
                      'D')
                    Groups = <>
                    Options.Placeholders = 'Select Some Options'
                    Options.noResults = 'No Results Found'
                  end
                end
                object UniPanel35: TUniPanel
                  Left = 22
                  Top = 77
                  Width = 1075
                  Height = 2
                  Hint = 't2w2075h2;'
                  TabOrder = 5
                  Caption = ''
                  Color = 16249327
                end
                object pnlID: TUniPanel
                  Left = 502
                  Top = 3
                  Width = 166
                  Height = 70
                  Hint = 't1w100h0;'
                  TabOrder = 3
                  Caption = 'UniPanel4'
                  Color = clWhite
                  object compID: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 164
                    Height = 41
                    Hint = ''
                    Enabled = False
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
                  object UniContainerPanel37: TUniContainerPanel
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
                    object UniLabel23: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 12
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'ID'
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
            object UniContainerPanel39: TUniContainerPanel
              Left = 0
              Top = 562
              Width = 1222
              Height = 40
              Hint = ''
              ParentColor = False
              Align = alBottom
              TabOrder = 2
              LayoutConfig.Cls = 'body_grdnt_rounded'
              object btnBaixar: TUniSFBitBtn
                AlignWithMargins = True
                Left = 1097
                Top = 5
                Width = 120
                Height = 30
                Hint = ''
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 5
                ParentShowHint = False
                Caption = 'BAIXAR'
                Align = alRight
                TabOrder = 1
                Scale = bbsSmall
                LayoutConfig.Cls = 'botaoSemBorda'
                OnClick = btBaixarClick
                FAIcon.Icon = fa_check_circle
                FAIcon.Size = fs_16
                FAIcon.Color = fc_white
                FAIcon.Style = regular
                ButtonStyles = bs_danger
              end
            end
          end
          object tsObservacoes: TUniTabSheet
            Hint = ''
            Caption = 'Observa'#231#245'es'
            DesignSize = (
              1222
              602)
            object UniContainerPanel2: TUniContainerPanel
              AlignWithMargins = True
              Left = 8
              Top = 5
              Width = 1202
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
              object UniLabel2: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 83
                Height = 17
                Hint = ''
                Margins.Left = 10
                Caption = 'OBSERVA'#199#213'ES'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object pnlObservacoes: TUniPanel
              Left = 18
              Top = 38
              Width = 1087
              Height = 564
              Hint = ''
              Anchors = [akLeft, akTop, akRight, akBottom]
              TabOrder = 1
              Caption = ''
              object scrObservacoes: TUniScrollBox
                Left = 3
                Top = 62
                Width = 1033
                Height = 441
                Hint = ''
                Color = 16249327
                TabOrder = 1
                ScrollHeight = 401
                ScrollWidth = 873
                object UniPanel53: TUniPanel
                  Left = 18
                  Top = 17
                  Width = 855
                  Height = 384
                  Hint = 't1w300h0;'
                  TabOrder = 0
                  Caption = ''
                  Color = 16249327
                  object UniContainerPanel50: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 853
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
                  object compTEXTO: TUniMemo
                    Left = 1
                    Top = 28
                    Width = 853
                    Height = 355
                    Hint = ''
                    Align = alClient
                    TabOrder = 2
                  end
                end
              end
            end
          end
          object tsRemessaBancaria: TUniTabSheet
            Hint = ''
            Caption = 'Remessa banc'#225'ria'
            DesignSize = (
              1222
              602)
            object UniContainerPanel3: TUniContainerPanel
              AlignWithMargins = True
              Left = 8
              Top = 5
              Width = 1202
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
              object UniLabel3: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 114
                Height = 17
                Hint = ''
                Margins.Left = 10
                Caption = 'REMESSA BANC'#193'RIA'
                Align = alTop
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI Light'
                TabOrder = 1
              end
            end
            object pnlRemessaBancaria: TUniPanel
              Left = 26
              Top = 38
              Width = 1087
              Height = 564
              Hint = ''
              Anchors = [akLeft, akTop, akRight, akBottom]
              TabOrder = 1
              Caption = ''
              object scrRemessaBancaria: TUniScrollBox
                Left = 14
                Top = 14
                Width = 1033
                Height = 441
                Hint = ''
                Color = 16249327
                TabOrder = 1
                ScrollHeight = 339
                ScrollWidth = 768
                object UniPanel1: TUniPanel
                  Left = 153
                  Top = 12
                  Width = 157
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 1
                  Caption = ''
                  Color = 16249327
                  object UniContainerPanel28: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 155
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
                  object UniDateTimePicker2: TUniDateTimePicker
                    Left = 1
                    Top = 28
                    Width = 155
                    Height = 41
                    Hint = ''
                    DateTime = 46156.000000000000000000
                    DateFormat = 'dd/MM/yyyy'
                    TimeFormat = 'HH:mm:ss'
                    Align = alClient
                    TabOrder = 2
                  end
                end
                object UniPanel25: TUniPanel
                  Left = 16
                  Top = 88
                  Width = 742
                  Height = 2
                  Hint = 't2w2075h2;'
                  TabOrder = 2
                  Caption = ''
                  Color = 16249327
                end
                object UniPanel27: TUniPanel
                  Left = 13
                  Top = 12
                  Width = 126
                  Height = 70
                  Hint = 't1w100h0;'
                  TabOrder = 0
                  Caption = ''
                  Color = clWhite
                  object UniContainerPanel31: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 124
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
                      Width = 86
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Gerou Remessa'
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
                    Width = 110
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
                object UniPanel28: TUniPanel
                  Left = 16
                  Top = 101
                  Width = 446
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 3
                  Caption = ''
                  Color = 16249327
                  object UniContainerPanel32: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 444
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
                      Width = 80
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Nome Arquivo'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      TabOrder = 1
                    end
                  end
                  object UniEdit3: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 444
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
                object UniPanel29: TUniPanel
                  Left = 23
                  Top = 177
                  Width = 742
                  Height = 2
                  Hint = 't2w2075h2;'
                  TabOrder = 4
                  Caption = ''
                  Color = 16249327
                end
                object UniPanel30: TUniPanel
                  Left = 16
                  Top = 185
                  Width = 126
                  Height = 70
                  Hint = 't1w100h0;'
                  TabOrder = 5
                  Caption = ''
                  Color = clWhite
                  object UniContainerPanel33: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 124
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
                      Width = 63
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Imp. Boleto'
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
                    Width = 110
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
                object UniPanel31: TUniPanel
                  Left = 156
                  Top = 185
                  Width = 157
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 6
                  Caption = ''
                  Color = 16249327
                  object UniContainerPanel34: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 155
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
                  object UniDateTimePicker3: TUniDateTimePicker
                    Left = 1
                    Top = 28
                    Width = 155
                    Height = 41
                    Hint = ''
                    DateTime = 46156.000000000000000000
                    DateFormat = 'dd/MM/yyyy'
                    TimeFormat = 'HH:mm:ss'
                    Align = alClient
                    TabOrder = 2
                  end
                end
                object UniPanel32: TUniPanel
                  Left = 26
                  Top = 261
                  Width = 742
                  Height = 2
                  Hint = 't2w2075h2;'
                  TabOrder = 9
                  Caption = ''
                  Color = 16249327
                end
                object UniPanel33: TUniPanel
                  Left = 19
                  Top = 269
                  Width = 294
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 7
                  Caption = ''
                  Color = 16249327
                  object UniContainerPanel35: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 292
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
                  object UniEdit5: TUniEdit
                    Left = 1
                    Top = 28
                    Width = 292
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
                object UniPanel34: TUniPanel
                  Left = 327
                  Top = 269
                  Width = 294
                  Height = 70
                  Hint = 't1w500h0;'
                  TabOrder = 8
                  Caption = ''
                  Color = 16249327
                  object UniContainerPanel36: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 292
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
                      Width = 82
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'Nosso N'#250'mero'
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
                    Width = 292
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
          end
        end
        object UniContainerPanel38: TUniContainerPanel
          Left = 0
          Top = 613
          Width = 1271
          Height = 40
          Hint = ''
          Visible = False
          ParentColor = False
          Align = alBottom
          TabOrder = 3
          LayoutConfig.Cls = 'body_grdnt_rounded'
          object UniSFBitBtn25: TUniSFBitBtn
            AlignWithMargins = True
            Left = 5
            Top = 5
            Width = 120
            Height = 30
            Hint = ''
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ParentShowHint = False
            Caption = 'SALDO BANC'#193'RIO'
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
          object UniSFBitBtn26: TUniSFBitBtn
            AlignWithMargins = True
            Left = 135
            Top = 5
            Width = 120
            Height = 30
            Hint = ''
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ParentShowHint = False
            Caption = 'REPETE VALOR'
            Align = alLeft
            TabOrder = 2
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
            Left = 265
            Top = 5
            Width = 120
            Height = 30
            Hint = ''
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ParentShowHint = False
            Caption = 'MUDA EMPRESA'
            Align = alLeft
            TabOrder = 3
            Scale = bbsSmall
            LayoutConfig.Cls = 'botaoSemBorda'
            FAIcon.Icon = fa_arrow_alt_circle_left
            FAIcon.Size = fs_16
            FAIcon.Color = fc_white
            FAIcon.Style = regular
            ButtonStyles = bs_danger
          end
          object UniSFBitBtn28: TUniSFBitBtn
            AlignWithMargins = True
            Left = 395
            Top = 5
            Width = 120
            Height = 30
            Hint = ''
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ParentShowHint = False
            Caption = 'CHEQUE'
            Align = alLeft
            TabOrder = 4
            Scale = bbsSmall
            LayoutConfig.Cls = 'botaoSemBorda'
            FAIcon.Icon = fa_arrow_alt_circle_left
            FAIcon.Size = fs_16
            FAIcon.Color = fc_white
            FAIcon.Style = regular
            ButtonStyles = bs_danger
          end
          object btnRecibo: TUniSFBitBtn
            AlignWithMargins = True
            Left = 525
            Top = 5
            Width = 120
            Height = 30
            Hint = ''
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ParentShowHint = False
            Caption = 'RECIBO'
            Align = alLeft
            TabOrder = 5
            Scale = bbsSmall
            LayoutConfig.Cls = 'botaoSemBorda'
            OnClick = btnReciboClick
            FAIcon.Icon = fa_arrow_alt_circle_left
            FAIcon.Size = fs_16
            FAIcon.Color = fc_white
            FAIcon.Style = regular
            ButtonStyles = bs_danger
          end
          object UniSFBitBtn30: TUniSFBitBtn
            AlignWithMargins = True
            Left = 655
            Top = 5
            Width = 120
            Height = 30
            Hint = ''
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ParentShowHint = False
            Caption = 'CONCILIA'
            Align = alLeft
            TabOrder = 6
            Scale = bbsSmall
            LayoutConfig.Cls = 'botaoSemBorda'
            FAIcon.Icon = fa_arrow_alt_circle_left
            FAIcon.Size = fs_16
            FAIcon.Color = fc_white
            FAIcon.Style = regular
            ButtonStyles = bs_danger
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
    Left = 496
    Top = 467
  end
  object CDSDados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 991
    Top = 294
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
    Frame = Owner
    HeightCampos = 70
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
    Frame = Owner
    HeightCampos = 70
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
    Frame = Owner
    HeightCampos = 70
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
    Frame = Owner
    HeightCampos = 70
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
    Frame = Owner
    HeightCampos = 70
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
    Frame = Owner
    HeightCampos = 70
    TamanhoMinimoCampos = 100
    TopInicialCampos = 20
    Left = 864
    Top = 331
  end
  object DSTela: TDataSource
    DataSet = CDSTela
    Left = 1071
    Top = 334
  end
  object UniSFBadge1: TUniSFBadge
    BackGroundColor = clRed
    FontColor = clWhite
    Left = 1194
    Top = 155
  end
end
