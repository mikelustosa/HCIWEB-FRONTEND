object frmPDV: TfrmPDV
  Left = 0
  Top = 0
  ClientHeight = 1099
  ClientWidth = 1295
  Caption = 'frmPDV'
  OnShow = UniFormShow
  BorderStyle = bsNone
  OldCreateOrder = False
  OnClose = UniFormClose
  OnKeyDown = UniFormKeyDown
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel39: TUniPanel
    Left = 0
    Top = 169
    Width = 1295
    Height = 890
    Hint = 't1w500h0;'
    Align = alClient
    TabOrder = 0
    Caption = 'UniPanel3'
    Color = 16249327
    object UniScrollBox1: TUniScrollBox
      Left = 1
      Top = 1
      Width = 1293
      Height = 888
      Hint = ''
      Align = alClient
      TabOrder = 1
      ScrollHeight = 665
      ScrollWidth = 1241
      object UniPanel42: TUniPanel
        Left = 318
        Top = 4
        Width = 923
        Height = 231
        Hint = 't1w200h0;'
        TabOrder = 0
        Caption = 'UniPanel4'
        Color = clWhite
        object gridTela: TUniDBGrid
          Left = 1
          Top = 1
          Width = 921
          Height = 229
          Hint = ''
          DataSource = DSTela
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
          LoadMask.Message = 'Loading data...'
          ForceFit = True
          LayoutConfig.Cls = 'dbgrid-light responsiva mostrar-mobile'
          Align = alClient
          TabOrder = 1
          OnCellClick = gridTelaCellClick
          Columns = <
            item
              FieldName = 'id'
              Title.Caption = 'Item'
              Width = 64
              Visible = False
            end
            item
              FieldName = 'codpro'
              Title.Caption = 'C'#243'digo'
              Width = 50
            end
            item
              FieldName = 'descr'
              Title.Caption = 'Descri'#231#227'o'
              Width = 200
            end
            item
              FieldName = 'mov'
              Title.Caption = 'Quantidade'
              Width = 64
            end
            item
              FieldName = 'valoru'
              Title.Caption = ' Valor Unit'#225'rio'
              Width = 64
            end
            item
              FieldName = 'total'
              Title.Caption = ' Total'
              Width = 64
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
      end
      object UniPanel1: TUniPanel
        Left = 0
        Top = 0
        Width = 314
        Height = 886
        Hint = 't1w200h0;'
        Align = alLeft
        TabOrder = 1
        Caption = ''
        Color = 16249327
        object UniPanel40: TUniPanel
          AlignWithMargins = True
          Left = 4
          Top = 45
          Width = 306
          Height = 70
          Hint = 't1w200h0;'
          Margins.Top = 5
          Margins.Bottom = 5
          Align = alTop
          TabOrder = 1
          Caption = 'UniPanel4'
          Color = clWhite
          object compCODPRO: TUniEdit
            Left = 1
            Top = 28
            Width = 304
            Height = 41
            Hint = ''
            MaxLength = 5
            BorderStyle = ubsNone
            Text = ''
            ParentFont = False
            Font.Height = -16
            Align = alClient
            TabOrder = 1
            OnExit = compCODPROExit
          end
          object UniContainerPanel23: TUniContainerPanel
            Left = 1
            Top = 1
            Width = 304
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
              Width = 43
              Height = 17
              Hint = ''
              Margins.Left = 10
              Caption = 'Produto'
              Align = alTop
              ParentFont = False
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Segoe UI Light'
              TabOrder = 1
            end
          end
        end
        object UniPanel47: TUniPanel
          AlignWithMargins = True
          Left = 4
          Top = 125
          Width = 306
          Height = 70
          Hint = 't1w200h0;'
          Margins.Top = 5
          Margins.Bottom = 5
          Align = alTop
          TabOrder = 2
          Caption = 'UniPanel4'
          Color = clWhite
          object compMOV: TUniEdit
            Left = 1
            Top = 28
            Width = 304
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
            OnChange = compMOVChange
          end
          object UniContainerPanel36: TUniContainerPanel
            Left = 1
            Top = 1
            Width = 304
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
              Width = 64
              Height = 17
              Hint = ''
              Margins.Left = 10
              Caption = 'Quantidade'
              Align = alTop
              ParentFont = False
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Segoe UI Light'
              TabOrder = 1
            end
          end
        end
        object UniPanel48: TUniPanel
          AlignWithMargins = True
          Left = 4
          Top = 205
          Width = 306
          Height = 70
          Hint = 't1w200h0;'
          Margins.Top = 5
          Margins.Bottom = 5
          Align = alTop
          TabOrder = 3
          Caption = 'UniPanel4'
          Color = clWhite
          object compVALORU: TUniEdit
            Left = 1
            Top = 28
            Width = 304
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
          object UniContainerPanel38: TUniContainerPanel
            Left = 1
            Top = 1
            Width = 304
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
            object UniLabel37: TUniLabel
              AlignWithMargins = True
              Left = 10
              Top = 3
              Width = 72
              Height = 17
              Hint = ''
              Margins.Left = 10
              Caption = 'Valor unit'#225'rio'
              Align = alTop
              ParentFont = False
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Segoe UI Light'
              TabOrder = 1
            end
          end
        end
        object UniPanel49: TUniPanel
          AlignWithMargins = True
          Left = 4
          Top = 285
          Width = 306
          Height = 70
          Hint = 't1w200h0;'
          Margins.Top = 5
          Margins.Bottom = 5
          Align = alTop
          TabOrder = 4
          Caption = 'UniPanel4'
          Color = clWhite
          object compTOTAL: TUniEdit
            Left = 1
            Top = 28
            Width = 304
            Height = 41
            Hint = ''
            Enabled = False
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
          object UniContainerPanel39: TUniContainerPanel
            Left = 1
            Top = 1
            Width = 304
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
              Width = 55
              Height = 17
              Hint = ''
              Margins.Left = 10
              Caption = 'Valor total'
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
          Left = 1
          Top = 1
          Width = 312
          Height = 39
          Hint = 't1w200h0;'
          Align = alTop
          TabOrder = 5
          Caption = ''
          Color = 16249327
          object chAlteraQtd: TUniCheckBox
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 304
            Height = 31
            Hint = ''
            Caption = '[F6] Alterar quantidade?'
            Align = alClient
            TabOrder = 1
            OnClick = chAlteraQtdClick
          end
        end
        object UniPanel50: TUniPanel
          Left = 1
          Top = 753
          Width = 312
          Height = 132
          Hint = 't1w200h0;'
          Align = alBottom
          TabOrder = 6
          Caption = ''
          Color = 16249327
        end
      end
      object UniPanel3: TUniPanel
        Left = 318
        Top = 256
        Width = 691
        Height = 409
        Hint = 't1w200h0;'
        TabOrder = 2
        Caption = ''
        Color = 16249327
        object UniPanel46: TUniPanel
          Left = 505
          Top = 108
          Width = 176
          Height = 70
          Hint = 't1w200h0;'
          TabOrder = 1
          Caption = 'UniPanel4'
          Color = clWhite
          object compNomeVend: TUniEdit
            Left = 1
            Top = 28
            Width = 174
            Height = 41
            Hint = ''
            Enabled = False
            MaxLength = 5
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
          object UniContainerPanel26: TUniContainerPanel
            Left = 1
            Top = 1
            Width = 174
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
              Width = 108
              Height = 17
              Hint = ''
              Margins.Left = 10
              Caption = 'Nome do vendedor'
              Align = alTop
              ParentFont = False
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Segoe UI Light'
              TabOrder = 1
            end
          end
        end
        object UniPanel45: TUniPanel
          Left = 400
          Top = 108
          Width = 99
          Height = 70
          Hint = 't1w200h0;'
          TabOrder = 2
          Caption = ''
          Color = clWhite
          object compINT_CODVEN: TUniEdit
            Left = 1
            Top = 28
            Width = 57
            Height = 41
            Hint = ''
            Enabled = False
            MaxLength = 5
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
          object UniContainerPanel24: TUniContainerPanel
            Left = 1
            Top = 1
            Width = 97
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
              Width = 64
              Height = 17
              Hint = ''
              Margins.Left = 10
              Caption = '[F2] C'#243'digo'
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
            Left = 63
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
        object UniPanel43: TUniPanel
          Left = 6
          Top = 29
          Width = 370
          Height = 70
          Hint = 't1w300h0;'
          TabOrder = 3
          Caption = 'UniPanel4'
          Color = clWhite
          object compNOME: TUniEdit
            Left = 1
            Top = 28
            Width = 368
            Height = 41
            Hint = ''
            Enabled = False
            MaxLength = 5
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
            Width = 368
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
              Width = 39
              Height = 17
              Hint = ''
              Margins.Left = 10
              Caption = 'Cliente'
              Align = alTop
              ParentFont = False
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Segoe UI Light'
              TabOrder = 1
            end
          end
        end
        object UniPanel44: TUniPanel
          Left = 400
          Top = 29
          Width = 281
          Height = 70
          Hint = 't1w200h0;'
          TabOrder = 4
          Caption = 'UniPanel4'
          Color = clWhite
          object compTOTALGERAL: TUniEdit
            Left = 1
            Top = 28
            Width = 279
            Height = 41
            Hint = ''
            Enabled = False
            MaxLength = 5
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
          object UniContainerPanel22: TUniContainerPanel
            Left = 1
            Top = 1
            Width = 279
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
            object lb_desconto: TUniLabel
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
      end
    end
  end
  object cpMenuRodape: TUniContainerPanel
    Left = 0
    Top = 1059
    Width = 1295
    Height = 40
    Hint = ''
    ParentColor = False
    Align = alBottom
    TabOrder = 1
    LayoutConfig.Cls = 'body_grdnt_rounded'
    object btnSalvar: TUniSFBitBtn
      AlignWithMargins = True
      Left = 1170
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
      Left = 910
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
    object UniSFBitBtn26: TUniSFBitBtn
      AlignWithMargins = True
      Left = 187
      Top = 5
      Width = 150
      Height = 30
      Hint = ''
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ParentShowHint = False
      Caption = '[CTRL + F4] FATURA'
      Align = alLeft
      TabOrder = 3
      Scale = bbsSmall
      LayoutConfig.Cls = 'botaoSemBorda'
      OnClick = UniSFBitBtn26Click
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
      Width = 172
      Height = 30
      Hint = ''
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ParentShowHint = False
      Caption = '[CTRL + F3] REF. CLIENTE'
      Align = alLeft
      TabOrder = 4
      Scale = bbsSmall
      LayoutConfig.Cls = 'botaoSemBorda'
      OnClick = UniSFBitBtn27Click
      FAIcon.Icon = fa_arrow_alt_circle_left
      FAIcon.Size = fs_16
      FAIcon.Color = fc_white
      FAIcon.Style = regular
      ButtonStyles = bs_danger
    end
    object UniSFBitBtn14: TUniSFBitBtn
      AlignWithMargins = True
      Left = 723
      Top = 5
      Width = 174
      Height = 30
      Hint = ''
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ParentShowHint = False
      Caption = '[CTRL + F2] UTILIDADES'
      Align = alLeft
      TabOrder = 5
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
      Left = 531
      Top = 5
      Width = 182
      Height = 30
      Hint = ''
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ParentShowHint = False
      Caption = '[CTRL + F7] LIMPAR VENDA'
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
    object UniSFBitBtn2: TUniSFBitBtn
      AlignWithMargins = True
      Left = 347
      Top = 5
      Width = 174
      Height = 30
      Hint = ''
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ParentShowHint = False
      Caption = '[CTRL + F6] PRODUTOS'
      Align = alLeft
      TabOrder = 7
      Scale = bbsSmall
      LayoutConfig.Cls = 'botaoSemBorda'
      OnClick = UniSFBitBtn2Click
      FAIcon.Icon = fa_arrow_alt_circle_left
      FAIcon.Size = fs_16
      FAIcon.Color = fc_white
      FAIcon.Style = regular
      ButtonStyles = bs_danger
    end
    object UniSFBitBtn4: TUniSFBitBtn
      AlignWithMargins = True
      Left = 1040
      Top = 5
      Width = 120
      Height = 30
      Hint = ''
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ParentShowHint = False
      Caption = 'CONCLUIR'
      Align = alRight
      TabOrder = 8
      Scale = bbsSmall
      LayoutConfig.Cls = 'botaoSemBorda'
      OnClick = UniSFBitBtn4Click
      FAIcon.Icon = fa_check_circle
      FAIcon.Size = fs_16
      FAIcon.Color = fc_white
      FAIcon.Style = regular
      ButtonStyles = bs_danger
    end
  end
  object cpMenuTopo: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 1295
    Height = 40
    Hint = ''
    ParentColor = False
    Align = alTop
    TabOrder = 2
    TabStop = False
    object lblDescricao: TUniLabel
      AlignWithMargins = True
      Left = 10
      Top = 7
      Width = 30
      Height = 21
      Hint = ''
      Margins.Left = 10
      Margins.Top = 7
      Caption = 'PDV'
      Align = alLeft
      ParentFont = False
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      TabOrder = 1
    end
    object UniSFBitBtn3: TUniSFBitBtn
      AlignWithMargins = True
      Left = 1266
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
      OnClick = UniSFBitBtn3Click
      FAIcon.Icon = fa_times
      FAIcon.Size = fs_16
      FAIcon.Color = fc_grey
      ButtonStyles = bs_transparent
    end
    object UniContainerPanel27: TUniContainerPanel
      AlignWithMargins = True
      Left = 3
      Top = 37
      Width = 792
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
  object UniContainerPanel1: TUniContainerPanel
    AlignWithMargins = True
    Left = 8
    Top = 45
    Width = 1275
    Height = 124
    Hint = ''
    Margins.Left = 8
    Margins.Top = 5
    Margins.Right = 12
    Margins.Bottom = 0
    ParentColor = False
    Align = alTop
    TabOrder = 3
    TabStop = False
    LayoutConfig.Cls = 'body_grdnt_rounded'
    object UniPanel36: TUniPanel
      Left = 0
      Top = 0
      Width = 127
      Height = 124
      Hint = 't1w200h0;'
      Align = alLeft
      TabOrder = 1
      Caption = ''
      Color = 16249327
    end
    object UniPanel37: TUniPanel
      Left = 1148
      Top = 0
      Width = 127
      Height = 124
      Hint = 't1w200h0;'
      Align = alRight
      TabOrder = 2
      Caption = ''
      Color = 16249327
    end
    object compDESCR: TUniPanel
      Left = 127
      Top = 0
      Width = 1021
      Height = 124
      Hint = 't1w200h0;'
      Align = alClient
      ParentFont = False
      Font.Height = -33
      TabOrder = 3
      Caption = 'CAIXA LIVRE'
      Color = 16249327
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
    Left = 656
    Top = 547
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
  object DSTela: TDataSource
    DataSet = CDSTela
    Left = 759
    Top = 294
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
  object RG1: TRGLayoutUnigui
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
    Left = 64
    Top = 403
  end
end
