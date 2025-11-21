object frmListaEmpresas: TfrmListaEmpresas
  Left = 0
  Top = 0
  ClientHeight = 479
  ClientWidth = 605
  Caption = 'frmListaEmpresas'
  OnShow = UniFormShow
  BorderStyle = bsNone
  OldCreateOrder = False
  OnClose = UniFormClose
  MonitoredKeys.Keys = <>
  ClientEvents.UniEvents.Strings = (
    
      'window.beforeInit=function window.beforeInit(sender, config)'#13#10'{'#13 +
      #10'   sender.cls="animation-form";'#13#10'}')
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 605
    Height = 479
    Hint = ''
    Align = alClient
    TabOrder = 0
    Caption = 'UniPanel1'
    object UniScrollBox1: TUniScrollBox
      Left = 1
      Top = 1
      Width = 603
      Height = 477
      Hint = ''
      Align = alClient
      TabOrder = 1
      ScrollHeight = 108
      object cpMenuTopo: TUniContainerPanel
        Left = 0
        Top = 0
        Width = 601
        Height = 40
        Hint = ''
        ParentColor = False
        Align = alTop
        TabOrder = 0
        TabStop = False
        object lblDescricao: TUniLabel
          AlignWithMargins = True
          Left = 10
          Top = 7
          Width = 73
          Height = 21
          Hint = ''
          Margins.Left = 10
          Margins.Top = 7
          Caption = 'EMPRESAS'
          Align = alLeft
          ParentFont = False
          Font.Height = -16
          Font.Name = 'Segoe UI Light'
          TabOrder = 1
        end
        object btnFechar: TUniSFBitBtn
          AlignWithMargins = True
          Left = 572
          Top = 3
          Width = 26
          Height = 28
          Hint = ''
          Caption = ''
          Align = alRight
          ParentFont = False
          Font.Color = clGray
          TabStop = False
          TabOrder = 2
          Scale = bbsSmall
          LayoutConfig.Cls = 'botaoPadraoManipulacao'
          OnClick = btnFecharClick
          FAIcon.Icon = fa_times
          FAIcon.Size = fs_16
          FAIcon.Color = fc_grey
          ButtonStyles = bs_transparent
        end
        object UniContainerPanel27: TUniContainerPanel
          AlignWithMargins = True
          Left = 3
          Top = 37
          Width = 98
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
      end
      object cpIdentificarPaciente: TUniContainerPanel
        AlignWithMargins = True
        Left = 0
        Top = 43
        Width = 601
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
          Width = 288
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
            Left = 30
            Top = 5
            Width = 63
            Height = 16
            Hint = ''
            Margins.Left = 30
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
            Left = 30
            Top = 26
            Width = 230
            Height = 34
            Hint = ''
            Margins.Left = 30
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 5
            ParentColor = False
            Color = clWhite
            Align = alLeft
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
              Width = 230
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
      end
      object gridTela: TUniDBGrid
        Left = 0
        Top = 111
        Width = 601
        Height = 364
        Hint = ''
        DataSource = DSTela
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        LayoutConfig.Cls = 'dbgrid-light'
        Align = alClient
        TabOrder = 2
        OnCellClick = gridTelaCellClick
        OnDblClick = gridTelaDblClick
        OnDrawColumnCell = gridTelaDrawColumnCell
        Columns = <
          item
            FieldName = 'id'
            Title.Caption = 'Id'
            Width = 65
          end
          item
            FieldName = 'NOMEMP'
            Title.Caption = 'Raz'#227'o Social'
            Width = 200
          end
          item
            FieldName = 'iconeAtivo'
            Title.Caption = 'AT'
            Width = 12
            Visible = False
          end
          item
            FieldName = 'botaoEditar'
            Title.Caption = ' '
            Width = 50
          end>
      end
    end
  end
  object CDSTela: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 151
    Top = 206
    object CDSTelabotaoEditar: TAggregateField
      FieldName = 'botaoEditar'
      OnGetText = CDSTelabotaoEditarGetText
      DisplayName = ''
    end
    object CDSTelaiconeAtivo: TAggregateField
      FieldName = 'iconeAtivo'
      DisplayName = ''
    end
  end
  object DSTela: TDataSource
    DataSet = CDSTela
    Left = 281
    Top = 206
  end
end
