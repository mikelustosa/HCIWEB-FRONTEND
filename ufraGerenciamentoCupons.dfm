object fraGerenciamentoCupons: TfraGerenciamentoCupons
  Left = 0
  Top = 0
  Width = 1214
  Height = 997
  OnReady = UniFrameReady
  TabOrder = 0
  object UniScrollBox1: TUniScrollBox
    Left = 0
    Top = 0
    Width = 1214
    Height = 997
    Hint = ''
    Align = alClient
    TabOrder = 0
    ScrollHeight = 896
    object gridTela: TUniDBGrid
      Left = 0
      Top = 142
      Width = 1212
      Height = 294
      Hint = ''
      Margins.Top = 10
      DataSource = DSTelaCupom
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
      WebOptions.Paged = False
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      LayoutConfig.Cls = 'dbgrid-light responsiva mostrar-mobile'
      Align = alTop
      TabOrder = 0
      OnCellClick = gridTelaCellClick
      OnDrawColumnCell = gridTelaDrawColumnCell
      Columns = <
        item
          FieldName = 'id'
          Title.Caption = 'Id'
          Width = 50
          Visible = False
        end
        item
          FieldName = 'status'
          Title.Caption = 'Status'
          Width = 70
        end
        item
          FieldName = 'incr'
          Title.Caption = 'C'#243'd. HCI'
          Width = 50
        end
        item
          FieldName = 'ncfe'
          Title.Caption = 'C'#243'd. Receita'
          Width = 50
        end
        item
          FieldName = 'int_Caixa'
          Title.Caption = 'Caixa'
          Width = 50
        end
        item
          FieldName = 'dt_Cupom'
          Title.Caption = 'Data'
          Width = 50
        end
        item
          FieldName = 'vcfe'
          Title.Caption = 'Valor'
          Width = 50
        end
        item
          FieldName = 'int_TipoPagamento'
          Title.Caption = 'M'#233'todo Pagto.'
          Width = 50
        end
        item
          FieldName = 'cpf'
          Title.Caption = 'CPF'
          Width = 100
        end
        item
          FieldName = 'chNfce'
          Title.Caption = 'Chave'
          Width = 150
        end
        item
          FieldName = 'gerouCaixa'
          Title.Caption = 'Caixa'
          Width = 50
        end
        item
          FieldName = 'gerouFiscal'
          Title.Caption = 'Fiscal'
          Width = 50
        end
        item
          FieldName = 'gerouEstoque'
          Title.Caption = 'Estoque'
          Width = 50
        end
        item
          FieldName = 'botaoEditar'
          Title.Caption = ' '
          Width = 100
        end>
    end
    object UniContainerPanel1: TUniContainerPanel
      Left = 0
      Top = 436
      Width = 1212
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
        Width = 151
        Height = 17
        Hint = ''
        Margins.Left = 10
        Caption = 'PRODUTOS DO CUPOM'
        Align = alTop
        ParentFont = False
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Light'
        Font.Style = [fsBold]
        TabOrder = 1
      end
    end
    object UniDBGrid1: TUniDBGrid
      Left = 0
      Top = 463
      Width = 1212
      Height = 265
      Hint = ''
      Margins.Top = 10
      DataSource = DSTelaCupomP
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
      WebOptions.Paged = False
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      LayoutConfig.Cls = 'dbgrid-light responsiva mostrar-mobile'
      Align = alTop
      TabOrder = 2
      OnDrawColumnCell = UniDBGrid1DrawColumnCell
      Columns = <
        item
          FieldName = 'id'
          Title.Caption = 'Id'
          Width = 50
          Visible = False
        end
        item
          FieldName = 'CODPRO'
          Title.Caption = 'Produto'
          Width = 50
        end
        item
          FieldName = 'DESCR'
          Title.Caption = 'Descri'#231#227'o'
          Width = 150
        end
        item
          FieldName = 'MOV'
          Title.Caption = 'Quantidade'
          Width = 50
        end
        item
          FieldName = 'VALORU'
          Title.Caption = 'R$ Unit'#225'rio'
          Width = 50
        end
        item
          FieldName = 'TOTAL'
          Title.Caption = 'R$ Total'
          Width = 50
        end
        item
          FieldName = 'VDESC'
          Title.Caption = ' Desconto'
          Width = 50
        end
        item
          FieldName = 'botaoEditar'
          Title.Caption = ' '
          Width = 64
        end>
    end
    object UniContainerPanel2: TUniContainerPanel
      Left = 0
      Top = 728
      Width = 1212
      Height = 27
      Hint = ''
      Margins.Left = 8
      Margins.Top = 5
      Margins.Right = 12
      Margins.Bottom = 5
      ParentColor = False
      Align = alTop
      TabOrder = 3
      TabStop = False
      LayoutConfig.Cls = 'body_grdnt_rounded'
      object UniLabel2: TUniLabel
        AlignWithMargins = True
        Left = 10
        Top = 3
        Width = 53
        Height = 17
        Hint = ''
        Margins.Left = 10
        Caption = 'CONTAS'
        Align = alTop
        ParentFont = False
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Light'
        Font.Style = [fsBold]
        TabOrder = 1
      end
    end
    object UniDBGrid2: TUniDBGrid
      Left = 0
      Top = 755
      Width = 1212
      Height = 141
      Hint = ''
      Margins.Top = 10
      DataSource = DSTelaContas
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
      WebOptions.Paged = False
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      LayoutConfig.Cls = 'dbgrid-light responsiva mostrar-mobile'
      Align = alTop
      TabOrder = 4
      OnDrawColumnCell = UniDBGrid2DrawColumnCell
      Columns = <
        item
          FieldName = 'id'
          Title.Caption = 'Id'
          Width = 50
          Visible = False
        end
        item
          FieldName = 'incr'
          Title.Caption = 'Incr'
          Width = 50
          Visible = False
        end
        item
          FieldName = 'diaDespP'
          Title.Caption = 'Data'
          Width = 100
        end
        item
          FieldName = 'valorP'
          Title.Caption = 'Valor'
          Width = 100
        end
        item
          FieldName = 'botaoEditar'
          Title.Caption = ' '
          Width = 64
        end>
    end
    object cpPesquisa: TUniContainerPanel
      AlignWithMargins = True
      Left = 0
      Top = 3
      Width = 1212
      Height = 65
      Hint = ''
      Margins.Left = 0
      Margins.Right = 0
      ParentColor = False
      Color = clWhite
      Align = alTop
      TabOrder = 5
      LayoutConfig.Cls = 'painel-sem-borda'
      object UniContainerPanel21: TUniContainerPanel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 178
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
        object UniSFLabel5: TUniSFLabel
          AlignWithMargins = True
          Left = 3
          Top = 5
          Width = 36
          Height = 16
          Hint = ''
          Margins.Top = 5
          Margins.Bottom = 5
          Caption = 'DATA'
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
        object UniContainerPanel25: TUniContainerPanel
          AlignWithMargins = True
          Left = 3
          Top = 26
          Width = 170
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
          object compDT_DATA: TUniDateTimePicker
            Left = 0
            Top = 0
            Width = 170
            Height = 34
            Hint = ''
            DateTime = 46150.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            Align = alClient
            TabOrder = 2
          end
        end
      end
      object UniContainerPanel31: TUniContainerPanel
        AlignWithMargins = True
        Left = 338
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
        TabOrder = 2
        LayoutConfig.Cls = 'painel-sem-borda'
        object UniSFLabel11: TUniSFLabel
          AlignWithMargins = True
          Left = 3
          Top = 5
          Width = 105
          Height = 16
          Hint = ''
          Margins.Top = 5
          Margins.Bottom = 5
          Caption = 'C'#211'DIGO RECEITA'
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
        object UniContainerPanel32: TUniContainerPanel
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
          object UniSFLabel12: TUniSFLabel
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
          object compNCFE: TUniEdit
            Left = 0
            Top = 0
            Width = 142
            Height = 34
            Hint = ''
            MaxLength = 50
            BorderStyle = ubsNone
            Text = ''
            ParentFont = False
            Font.Height = -16
            Align = alClient
            TabOrder = 2
          end
        end
      end
      object UniContainerPanel17: TUniContainerPanel
        AlignWithMargins = True
        Left = 493
        Top = 0
        Width = 167
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
        object UniSFLabel1: TUniSFLabel
          AlignWithMargins = True
          Left = 3
          Top = 5
          Width = 42
          Height = 16
          Hint = ''
          Margins.Top = 5
          Margins.Bottom = 5
          Caption = 'CAIXA'
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
        object UniContainerPanel18: TUniContainerPanel
          AlignWithMargins = True
          Left = 3
          Top = 26
          Width = 159
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
          object compINT_CAIXA: TUniEdit
            Left = 0
            Top = 0
            Width = 159
            Height = 34
            Hint = ''
            MaxLength = 50
            BorderStyle = ubsNone
            Text = ''
            ParentFont = False
            Font.Height = -16
            Align = alClient
            TabOrder = 2
          end
        end
      end
      object UniContainerPanel22: TUniContainerPanel
        AlignWithMargins = True
        Left = 183
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
        object UniSFLabel3: TUniSFLabel
          AlignWithMargins = True
          Left = 3
          Top = 5
          Width = 74
          Height = 16
          Hint = ''
          Margins.Top = 5
          Margins.Bottom = 5
          Caption = 'C'#211'DIGO HCI'
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
          object compINCR: TUniEdit
            Left = 0
            Top = 0
            Width = 142
            Height = 34
            Hint = ''
            MaxLength = 50
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
    object UniContainerPanel3: TUniContainerPanel
      AlignWithMargins = True
      Left = 0
      Top = 74
      Width = 1212
      Height = 65
      Hint = ''
      Margins.Left = 0
      Margins.Right = 0
      ParentColor = False
      Color = clWhite
      Align = alTop
      TabOrder = 6
      LayoutConfig.Cls = 'painel-sem-borda'
      object UniContainerPanel4: TUniContainerPanel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 178
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
        object UniSFLabel7: TUniSFLabel
          AlignWithMargins = True
          Left = 3
          Top = 5
          Width = 48
          Height = 16
          Hint = ''
          Margins.Top = 5
          Margins.Bottom = 5
          Caption = 'STATUS'
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
        object UniContainerPanel5: TUniContainerPanel
          AlignWithMargins = True
          Left = 3
          Top = 26
          Width = 170
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
          object compSTATUS: TUniSFComboBox
            Left = 3
            Top = 9
            Width = 164
            Hint = ''
            Text = 'Todos'
            TabOrder = 2
            Items.Strings = (
              'Todos'
              'Or'#231'amento'
              'Autorizados'
              'Rejeitados')
            Groups = <>
            Options.Placeholders = 'Select Some Options'
            Options.noResults = 'No Results Found'
          end
        end
      end
      object UniContainerPanel6: TUniContainerPanel
        AlignWithMargins = True
        Left = 338
        Top = 0
        Width = 322
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
        object UniSFLabel9: TUniSFLabel
          AlignWithMargins = True
          Left = 3
          Top = 5
          Width = 43
          Height = 16
          Hint = ''
          Margins.Top = 5
          Margins.Bottom = 5
          Caption = 'CHAVE'
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
        object UniContainerPanel7: TUniContainerPanel
          AlignWithMargins = True
          Left = 3
          Top = 26
          Width = 314
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
          object compCHNFCE: TUniEdit
            Left = 0
            Top = 0
            Width = 314
            Height = 34
            Hint = ''
            MaxLength = 50
            BorderStyle = ubsNone
            Text = ''
            ParentFont = False
            Font.Height = -16
            Align = alClient
            TabOrder = 2
          end
        end
      end
      object UniContainerPanel10: TUniContainerPanel
        AlignWithMargins = True
        Left = 183
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
        object UniSFLabel15: TUniSFLabel
          AlignWithMargins = True
          Left = 3
          Top = 5
          Width = 22
          Height = 16
          Hint = ''
          Margins.Top = 5
          Margins.Bottom = 5
          Caption = 'CPF'
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
        object UniContainerPanel11: TUniContainerPanel
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
          object UniSFLabel16: TUniSFLabel
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
          object compCPF: TUniEdit
            Left = 0
            Top = 0
            Width = 142
            Height = 34
            Hint = ''
            MaxLength = 50
            BorderStyle = ubsNone
            Text = ''
            ParentFont = False
            Font.Height = -16
            Align = alClient
            TabOrder = 2
          end
        end
      end
      object UniPanel2: TUniPanel
        Left = 1045
        Top = 0
        Width = 167
        Height = 65
        Hint = 't1w150h0;'
        Align = alRight
        TabOrder = 4
        Caption = ''
        Color = clWhite
        object UniSFBitBtn2: TUniSFBitBtn
          AlignWithMargins = True
          Left = 6
          Top = 6
          Width = 155
          Height = 53
          Hint = ''
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          ParentShowHint = False
          Caption = 'Nfce'
          Align = alClient
          TabOrder = 1
          Scale = bbsSmall
          LayoutConfig.Cls = 'botaoSemBorda'
          FAIcon.Icon = fa_check_circle
          FAIcon.Size = fs_16
          FAIcon.Color = fc_grey
          FAIcon.Style = regular
          ButtonStyles = bs_default
        end
      end
      object UniPanel19: TUniPanel
        Left = 665
        Top = 0
        Width = 167
        Height = 65
        Hint = 't1w150h0;'
        Align = alLeft
        TabOrder = 5
        Caption = ''
        Color = clWhite
        object btnPesquisar: TUniSFBitBtn
          AlignWithMargins = True
          Left = 6
          Top = 6
          Width = 155
          Height = 53
          Hint = ''
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          ParentShowHint = False
          Caption = 'Pesquisar'
          Align = alClient
          TabOrder = 1
          Scale = bbsSmall
          LayoutConfig.Cls = 'botaoSemBorda'
          OnClick = btnPesquisarClick
          FAIcon.Icon = fa_check_circle
          FAIcon.Size = fs_16
          FAIcon.Color = fc_grey
          FAIcon.Style = regular
          ButtonStyles = bs_default
        end
      end
    end
  end
  object DSTelaCupom: TDataSource
    DataSet = CDSTelaCupom
    Left = 373
    Top = 206
  end
  object CDSTelaCupom: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 373
    Top = 270
    object CDSTelaCupombotaoEditar: TAggregateField
      FieldName = 'botaoEditar'
      Visible = True
      OnGetText = CDSTelaCupombotaoEditarGetText
      DisplayName = ''
    end
    object CDSTelaCupomiconeAtivo: TAggregateField
      FieldName = 'iconeAtivo'
      OnGetText = CDSTelaCupomiconeAtivoGetText
      DisplayName = ''
    end
    object CDSTelaCupomgerouEstoque: TAggregateField
      FieldName = 'gerouEstoque'
      OnGetText = CDSTelaCupomgerouEstoqueGetText
      DisplayName = ''
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
    Left = 82
    Top = 390
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
    Left = 80
    Top = 431
  end
  object DSTelaCupomP: TDataSource
    DataSet = CDSTelaCupomP
    Left = 501
    Top = 206
  end
  object CDSTelaCupomP: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 501
    Top = 270
    object AggregateField1: TAggregateField
      FieldName = 'botaoEditar'
      Visible = True
      OnGetText = AggregateField1GetText
      DisplayName = ''
    end
    object AggregateField2: TAggregateField
      FieldName = 'iconeAtivo'
      DisplayName = ''
    end
  end
  object DSTelaContas: TDataSource
    DataSet = CDSTelaContas
    Left = 621
    Top = 206
  end
  object CDSTelaContas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 621
    Top = 270
    object AggregateField3: TAggregateField
      FieldName = 'botaoEditar'
      Visible = True
      OnGetText = AggregateField1GetText
      DisplayName = ''
    end
    object AggregateField4: TAggregateField
      FieldName = 'iconeAtivo'
      DisplayName = ''
    end
  end
end
