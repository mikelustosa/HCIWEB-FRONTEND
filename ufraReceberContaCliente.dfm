object fraReceberContaCliente: TfraReceberContaCliente
  Left = 0
  Top = 0
  Width = 1252
  Height = 698
  OnCreate = UniFrameCreate
  OnReady = UniFrameReady
  TabOrder = 0
  object scrFundo: TUniScrollBox
    Left = 0
    Top = 0
    Width = 1252
    Height = 698
    Hint = ''
    Align = alClient
    TabOrder = 0
    object UniPageControl1: TUniPageControl
      Left = 0
      Top = 0
      Width = 1250
      Height = 696
      Hint = ''
      ActivePage = tsAdicionarConta
      Align = alClient
      TabOrder = 0
      object tsAReceber: TUniTabSheet
        Hint = ''
        Caption = 'A receber'
        object UniPanel18: TUniPanel
          Left = 0
          Top = 0
          Width = 1242
          Height = 668
          Hint = ''
          Align = alClient
          TabOrder = 0
          Caption = 'UniPanel18'
          object cpPesquisa: TUniContainerPanel
            AlignWithMargins = True
            Left = 1
            Top = 4
            Width = 1240
            Height = 65
            Hint = ''
            Margins.Left = 0
            Margins.Right = 0
            ParentColor = False
            Color = clWhite
            Align = alTop
            TabOrder = 1
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
                Width = 103
                Height = 16
                Hint = ''
                Margins.Top = 5
                Margins.Bottom = 5
                Caption = 'DATA PREVISTA'
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
                object compDIADESPP: TUniDateTimePicker
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
                Width = 76
                Height = 16
                Hint = ''
                Margins.Top = 5
                Margins.Bottom = 5
                Caption = 'DOCUMENTO'
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
                object compNUMDOC: TUniEdit
                  Left = 1
                  Top = -7
                  Width = 104
                  Height = 41
                  Hint = ''
                  MaxLength = 50
                  BorderStyle = ubsNone
                  Text = ''
                  ParentFont = False
                  Font.Height = -16
                  TabOrder = 2
                end
              end
            end
            object UniPanel19: TUniPanel
              Left = 814
              Top = 0
              Width = 167
              Height = 65
              Hint = 't1w150h0;'
              Align = alLeft
              TabOrder = 3
              Caption = ''
              Color = 16249327
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
            object UniContainerPanel17: TUniContainerPanel
              AlignWithMargins = True
              Left = 493
              Top = 0
              Width = 316
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
              object UniSFLabel1: TUniSFLabel
                AlignWithMargins = True
                Left = 3
                Top = 5
                Width = 35
                Height = 16
                Hint = ''
                Margins.Top = 5
                Margins.Bottom = 5
                Caption = 'NOME'
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
                Width = 308
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
                object compNOME: TUniEdit
                  Left = 9
                  Top = -7
                  Width = 216
                  Height = 41
                  Hint = ''
                  MaxLength = 50
                  BorderStyle = ubsNone
                  Text = ''
                  ParentFont = False
                  Font.Height = -16
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
              TabOrder = 5
              LayoutConfig.Cls = 'painel-sem-borda'
              object UniSFLabel3: TUniSFLabel
                AlignWithMargins = True
                Left = 3
                Top = 5
                Width = 44
                Height = 16
                Hint = ''
                Margins.Top = 5
                Margins.Bottom = 5
                Caption = 'VALOR'
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
                object compVALORP: TUniEdit
                  Left = 17
                  Top = -9
                  Width = 104
                  Height = 41
                  Hint = ''
                  MaxLength = 50
                  BorderStyle = ubsNone
                  Text = ''
                  ParentFont = False
                  Font.Height = -16
                  TabOrder = 2
                end
              end
            end
            object UniPanel10: TUniPanel
              Left = 1073
              Top = 0
              Width = 167
              Height = 65
              Hint = 't1w150h0;'
              Align = alRight
              TabOrder = 6
              Caption = ''
              Color = 16249327
              object btnAdicionarConta: TUniSFBitBtn
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
                Caption = 'Adicionar conta'
                Align = alClient
                TabOrder = 1
                Scale = bbsSmall
                LayoutConfig.Cls = 'botaoSemBorda'
                OnClick = btnAdicionarContaClick
                FAIcon.Icon = fa_check_circle
                FAIcon.Size = fs_16
                FAIcon.Color = fc_grey
                FAIcon.Style = regular
                ButtonStyles = bs_default
              end
            end
          end
          object cpMenuRodape: TUniContainerPanel
            Left = 1
            Top = 627
            Width = 1240
            Height = 40
            Hint = ''
            ParentColor = False
            Align = alBottom
            TabOrder = 2
            LayoutConfig.Cls = 'body_grdnt_rounded'
            object btnFecharCaixa: TUniSFBitBtn
              AlignWithMargins = True
              Left = 1115
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
              Caption = 'FECHAR'
              Align = alRight
              TabOrder = 1
              Scale = bbsSmall
              LayoutConfig.Cls = 'botaoSemBorda'
              FAIcon.Icon = fa_check_circle
              FAIcon.Size = fs_16
              FAIcon.Color = fc_white
              FAIcon.Style = regular
              ButtonStyles = bs_danger
            end
            object btnCancelar: TUniSFBitBtn
              AlignWithMargins = True
              Left = 985
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
          object UniScrollBox1: TUniScrollBox
            Left = 1
            Top = 72
            Width = 1240
            Height = 555
            Hint = ''
            Align = alClient
            TabOrder = 3
            object UniPanel20: TUniPanel
              Left = 0
              Top = 0
              Width = 1238
              Height = 553
              Hint = ''
              Align = alClient
              TabOrder = 0
              Caption = 'UniPanel20'
              object UniScrollBox2: TUniScrollBox
                Left = 1
                Top = 1
                Width = 1236
                Height = 551
                Hint = ''
                Align = alClient
                TabOrder = 1
                ScrollHeight = 120
                object gridTela: TUniDBGrid
                  Left = 0
                  Top = 0
                  Width = 1234
                  Height = 429
                  Hint = ''
                  Margins.Top = 10
                  DataSource = DSTela
                  Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
                  LoadMask.Message = 'Loading data...'
                  ForceFit = True
                  LayoutConfig.Cls = 'dbgrid-light responsiva mostrar-mobile'
                  Align = alClient
                  TabOrder = 0
                  OnCellClick = gridTelaCellClick
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
                      Title.Caption = 'Data de prevista'
                      Width = 100
                    end
                    item
                      FieldName = 'valorP'
                      Title.Caption = 'Valor'
                      Width = 100
                    end
                    item
                      FieldName = 'numDoc'
                      Title.Caption = 'Documento'
                      Width = 100
                    end
                    item
                      FieldName = 'nome'
                      Title.Caption = 'Nome'
                      Width = 200
                    end
                    item
                      FieldName = 'botaoEditar'
                      Title.Caption = ' '
                      Width = 64
                    end>
                end
                object pnlDadosRecebimento: TUniPanel
                  Left = 0
                  Top = 429
                  Width = 1234
                  Height = 120
                  Hint = ''
                  Align = alBottom
                  TabOrder = 1
                  Caption = ''
                  object UniPanel1: TUniPanel
                    AlignWithMargins = True
                    Left = 3
                    Top = 38
                    Width = 143
                    Height = 70
                    Hint = 't1w200h0;'
                    Margins.Top = 5
                    Margins.Bottom = 5
                    TabOrder = 1
                    Caption = 'UniPanel4'
                    Color = clWhite
                    object compVALORPREVISTO: TUniEdit
                      Left = 1
                      Top = 28
                      Width = 141
                      Height = 41
                      Hint = ''
                      Enabled = False
                      MaxLength = 50
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
                    object UniContainerPanel2: TUniContainerPanel
                      Left = 1
                      Top = 1
                      Width = 141
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
                        Width = 74
                        Height = 17
                        Hint = ''
                        Margins.Left = 10
                        Caption = 'Valor previsto'
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
                    AlignWithMargins = True
                    Left = 160
                    Top = 38
                    Width = 143
                    Height = 70
                    Hint = 't1w200h0;'
                    Margins.Top = 5
                    Margins.Bottom = 5
                    TabOrder = 2
                    Caption = 'UniPanel4'
                    Color = clWhite
                    object compVALORREAL: TUniEdit
                      Left = 1
                      Top = 28
                      Width = 104
                      Height = 41
                      Hint = ''
                      Enabled = False
                      MaxLength = 50
                      BorderStyle = ubsNone
                      Text = ''
                      ParentFont = False
                      Font.Height = -16
                      TabOrder = 1
                      ClientEvents.UniEvents.Strings = (
                        
                          'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
                          '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
                          'n: /^[0-9\s]+$/g, recursive: true },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
                    end
                    object UniContainerPanel3: TUniContainerPanel
                      Left = 1
                      Top = 1
                      Width = 141
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
                  end
                  object UniPanel3: TUniPanel
                    AlignWithMargins = True
                    Left = 317
                    Top = 38
                    Width = 300
                    Height = 70
                    Hint = 't1w200h0;'
                    Margins.Top = 5
                    Margins.Bottom = 5
                    TabOrder = 3
                    Caption = ''
                    Color = clWhite
                    object UniContainerPanel4: TUniContainerPanel
                      Left = 1
                      Top = 1
                      Width = 298
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
                      Left = 3
                      Top = 36
                      Width = 294
                      Hint = ''
                      Text = '01 - Dinheiro '
                      TabOrder = 2
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
                  object UniContainerPanel1: TUniContainerPanel
                    Left = 1
                    Top = 1
                    Width = 1232
                    Height = 27
                    Hint = ''
                    Margins.Left = 8
                    Margins.Top = 5
                    Margins.Right = 12
                    Margins.Bottom = 5
                    ParentColor = False
                    Align = alTop
                    TabOrder = 4
                    TabStop = False
                    LayoutConfig.Cls = 'body_grdnt_rounded'
                    object UniLabel1: TUniLabel
                      AlignWithMargins = True
                      Left = 10
                      Top = 3
                      Width = 171
                      Height = 17
                      Hint = ''
                      Margins.Left = 10
                      Caption = 'DADOS DO RECEBIMENTO'
                      Align = alTop
                      ParentFont = False
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Segoe UI Light'
                      Font.Style = [fsBold]
                      TabOrder = 1
                    end
                  end
                end
              end
            end
          end
        end
      end
      object tsAdicionarConta: TUniTabSheet
        Hint = ''
        Caption = 'Adicionar conta'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 1250
        ExplicitHeight = 696
        object UniPanel4: TUniPanel
          Left = 0
          Top = 0
          Width = 1242
          Height = 668
          Hint = ''
          Align = alClient
          TabOrder = 0
          Caption = 'UniPanel18'
          object UniContainerPanel14: TUniContainerPanel
            Left = 1
            Top = 627
            Width = 1240
            Height = 40
            Hint = ''
            ParentColor = False
            Align = alBottom
            TabOrder = 1
            LayoutConfig.Cls = 'body_grdnt_rounded'
            object UniSFBitBtn3: TUniSFBitBtn
              AlignWithMargins = True
              Left = 1115
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
              Caption = 'FECHAR'
              Align = alRight
              TabOrder = 1
              Scale = bbsSmall
              LayoutConfig.Cls = 'botaoSemBorda'
              FAIcon.Icon = fa_check_circle
              FAIcon.Size = fs_16
              FAIcon.Color = fc_white
              FAIcon.Style = regular
              ButtonStyles = bs_danger
            end
            object UniSFBitBtn4: TUniSFBitBtn
              AlignWithMargins = True
              Left = 985
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
          object UniScrollBox3: TUniScrollBox
            Left = 1
            Top = 1
            Width = 1240
            Height = 626
            Hint = ''
            Align = alClient
            TabOrder = 2
            ExplicitTop = 72
            ExplicitHeight = 555
            ScrollHeight = 585
            ScrollWidth = 1195
            object UniPanel8: TUniPanel
              Left = 3
              Top = 9
              Width = 1192
              Height = 576
              Hint = ''
              TabOrder = 0
              Caption = ''
              object UniPanel9: TUniPanel
                AlignWithMargins = True
                Left = 3
                Top = 10
                Width = 143
                Height = 70
                Hint = 't1w200h0;'
                Margins.Top = 5
                Margins.Bottom = 5
                TabOrder = 0
                Caption = 'UniPanel4'
                Color = clWhite
                object compVALORP_ADC: TUniEdit
                  Left = 1
                  Top = 28
                  Width = 100
                  Height = 41
                  Hint = ''
                  Enabled = False
                  MaxLength = 50
                  BorderStyle = ubsNone
                  Text = ''
                  ParentFont = False
                  Font.Height = -16
                  TabOrder = 1
                  ClientEvents.UniEvents.Strings = (
                    
                      'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
                      '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
                      'n: /^[0-9\s]+$/g, recursive: true },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
                end
                object UniContainerPanel15: TUniContainerPanel
                  Left = 1
                  Top = 1
                  Width = 141
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
                    Width = 74
                    Height = 17
                    Hint = ''
                    Margins.Left = 10
                    Caption = 'Valor previsto'
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
                AlignWithMargins = True
                Left = 160
                Top = 11
                Width = 143
                Height = 70
                Hint = 't1w200h0;'
                Margins.Top = 5
                Margins.Bottom = 5
                TabOrder = 1
                Caption = ''
                Color = clWhite
                object UniContainerPanel16: TUniContainerPanel
                  Left = 1
                  Top = 1
                  Width = 141
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
                    Width = 71
                    Height = 17
                    Hint = ''
                    Margins.Left = 10
                    Caption = 'Data prevista'
                    Align = alTop
                    ParentFont = False
                    Font.Color = clBlack
                    Font.Height = -13
                    Font.Name = 'Segoe UI Light'
                    TabOrder = 1
                    ExplicitWidth = 51
                  end
                end
                object compDIADESPP_ADC: TUniDateTimePicker
                  Left = 3
                  Top = 36
                  Width = 120
                  Hint = ''
                  DateTime = 46174.000000000000000000
                  DateFormat = 'dd/MM/yyyy'
                  TimeFormat = 'HH:mm:ss'
                  TabOrder = 2
                end
              end
              object UniPanel7: TUniPanel
                AlignWithMargins = True
                Left = 309
                Top = 10
                Width = 143
                Height = 70
                Hint = 't1w200h0;'
                Margins.Top = 5
                Margins.Bottom = 5
                TabOrder = 2
                Caption = ''
                Color = clWhite
                object UniContainerPanel20: TUniContainerPanel
                  Left = 1
                  Top = 1
                  Width = 141
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
                    Width = 84
                    Height = 17
                    Hint = ''
                    Margins.Left = 10
                    Caption = 'Data refer'#234'ncia'
                    Align = alTop
                    ParentFont = False
                    Font.Color = clBlack
                    Font.Height = -13
                    Font.Name = 'Segoe UI Light'
                    TabOrder = 1
                    ExplicitWidth = 71
                  end
                end
                object compDIADESPR_ADC: TUniDateTimePicker
                  Left = 11
                  Top = 36
                  Width = 120
                  Hint = ''
                  DateTime = 46174.000000000000000000
                  DateFormat = 'dd/MM/yyyy'
                  TimeFormat = 'HH:mm:ss'
                  TabOrder = 2
                end
              end
              object UniPanel13: TUniPanel
                AlignWithMargins = True
                Left = 458
                Top = 10
                Width = 143
                Height = 70
                Hint = 't1w200h0;'
                Margins.Top = 5
                Margins.Bottom = 5
                TabOrder = 3
                Caption = 'UniPanel4'
                Color = clWhite
                object compNUMDOC_ADC: TUniEdit
                  Left = 0
                  Top = 27
                  Width = 104
                  Height = 41
                  Hint = ''
                  Enabled = False
                  MaxLength = 50
                  BorderStyle = ubsNone
                  Text = ''
                  ParentFont = False
                  Font.Height = -16
                  TabOrder = 1
                  ClientEvents.UniEvents.Strings = (
                    
                      'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
                      '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
                      'n: /^[0-9\s]+$/g, recursive: true },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
                end
                object UniContainerPanel24: TUniContainerPanel
                  Left = 1
                  Top = 1
                  Width = 141
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
                    ExplicitWidth = 71
                  end
                end
              end
              object UniPanel26: TUniPanel
                Left = 13
                Top = 89
                Width = 1075
                Height = 2
                Hint = 't2w2075h2;'
                TabOrder = 4
                Caption = ''
                Color = 16249327
              end
              object UniPanel23: TUniPanel
                Left = 3
                Top = 97
                Width = 142
                Height = 70
                Hint = 't1w100h0;'
                TabOrder = 5
                Caption = 'UniPanel4'
                Color = clWhite
                object compCODCC: TUniEdit
                  Left = 1
                  Top = 28
                  Width = 100
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
                  ExplicitWidth = 58
                end
                object UniContainerPanel29: TUniContainerPanel
                  Left = 1
                  Top = 1
                  Width = 140
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
                  object UniLabel22: TUniLabel
                    AlignWithMargins = True
                    Left = 10
                    Top = 3
                    Width = 93
                    Height = 17
                    Hint = ''
                    Margins.Left = 10
                    Caption = 'Centro de custos'
                    Align = alTop
                    ParentFont = False
                    Font.Color = clBlack
                    Font.Height = -13
                    Font.Name = 'Segoe UI Light'
                    TabOrder = 1
                    ExplicitWidth = 64
                  end
                end
                object UniSFBitBtn10: TUniSFBitBtn
                  AlignWithMargins = True
                  Left = 106
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
                  OnClick = UniSFBitBtn10Click
                  FAIcon.Icon = fa_search
                  FAIcon.Size = fs_16
                  FAIcon.Color = fc_grey
                  ButtonStyles = bs_transparent
                  ExplicitLeft = 64
                end
              end
              object UniPanel14: TUniPanel
                Left = 0
                Top = 181
                Width = 142
                Height = 70
                Hint = 't1w100h0;'
                TabOrder = 8
                Caption = 'UniPanel4'
                Color = clWhite
                object compCODBAN: TUniEdit
                  Left = 1
                  Top = 28
                  Width = 100
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
                object UniContainerPanel26: TUniContainerPanel
                  Left = 1
                  Top = 1
                  Width = 140
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
                    ExplicitWidth = 93
                  end
                end
                object UniSFBitBtn5: TUniSFBitBtn
                  AlignWithMargins = True
                  Left = 106
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
              object UniPanel15: TUniPanel
                Left = 3
                Top = 173
                Width = 1075
                Height = 2
                Hint = 't2w2075h2;'
                TabOrder = 7
                Caption = ''
                Color = 16249327
              end
              object UniPanel16: TUniPanel
                Left = 3
                Top = 257
                Width = 1075
                Height = 2
                Hint = 't2w2075h2;'
                TabOrder = 10
                Caption = ''
                Color = 16249327
              end
              object UniPanel21: TUniPanel
                Left = 3
                Top = 267
                Width = 142
                Height = 70
                Hint = 't1w100h0;'
                TabOrder = 11
                Caption = 'UniPanel4'
                Color = clWhite
                object compCODCLI: TUniEdit
                  Left = 1
                  Top = 28
                  Width = 100
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
                object UniContainerPanel27: TUniContainerPanel
                  Left = 1
                  Top = 1
                  Width = 140
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
                    ExplicitWidth = 93
                  end
                end
                object UniSFBitBtn6: TUniSFBitBtn
                  AlignWithMargins = True
                  Left = 106
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
              object UniPanel12: TUniPanel
                Left = 160
                Top = 97
                Width = 440
                Height = 70
                Hint = 't1w500h0;'
                TabOrder = 6
                Caption = ''
                Color = 16249327
                object compDESCRCC: TUniEdit
                  Left = 1
                  Top = 28
                  Width = 304
                  Height = 41
                  Hint = ''
                  CharCase = ecUpperCase
                  MaxLength = 150
                  BorderStyle = ubsNone
                  Text = ''
                  ParentFont = False
                  Font.Height = -16
                  TabOrder = 1
                  ReadOnly = True
                end
                object UniContainerPanel19: TUniContainerPanel
                  Left = 1
                  Top = 1
                  Width = 438
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
                end
              end
              object UniPanel17: TUniPanel
                Left = 160
                Top = 181
                Width = 440
                Height = 70
                Hint = 't1w500h0;'
                TabOrder = 9
                Caption = ''
                Color = 16249327
                object compDESCRBAN: TUniEdit
                  Left = 1
                  Top = 28
                  Width = 304
                  Height = 41
                  Hint = ''
                  CharCase = ecUpperCase
                  MaxLength = 150
                  BorderStyle = ubsNone
                  Text = ''
                  ParentFont = False
                  Font.Height = -16
                  TabOrder = 1
                  ReadOnly = True
                end
                object UniContainerPanel28: TUniContainerPanel
                  Left = 1
                  Top = 1
                  Width = 438
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
                end
              end
              object UniPanel22: TUniPanel
                Left = 160
                Top = 267
                Width = 440
                Height = 70
                Hint = 't1w500h0;'
                TabOrder = 12
                Caption = ''
                Color = 16249327
                object compNOMCLI: TUniEdit
                  Left = 1
                  Top = 28
                  Width = 304
                  Height = 41
                  Hint = ''
                  CharCase = ecUpperCase
                  MaxLength = 150
                  BorderStyle = ubsNone
                  Text = ''
                  ParentFont = False
                  Font.Height = -16
                  TabOrder = 1
                  ReadOnly = True
                end
                object UniContainerPanel30: TUniContainerPanel
                  Left = 1
                  Top = 1
                  Width = 438
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
                end
              end
              object UniContainerPanel5: TUniContainerPanel
                Left = 1
                Top = 535
                Width = 1190
                Height = 40
                Hint = ''
                ParentColor = False
                Align = alBottom
                TabOrder = 16
                LayoutConfig.Cls = 'body_grdnt_rounded'
                ExplicitTop = 627
                ExplicitWidth = 1240
                object UniSFBitBtn2: TUniSFBitBtn
                  AlignWithMargins = True
                  Left = 1065
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
                  FAIcon.Icon = fa_arrow_alt_circle_left
                  FAIcon.Size = fs_16
                  FAIcon.Color = fc_white
                  FAIcon.Style = regular
                  ButtonStyles = bs_danger
                  ExplicitLeft = 935
                end
              end
              object UNITEXT: TUniPanel
                AlignWithMargins = True
                Left = 3
                Top = 353
                Width = 596
                Height = 70
                Hint = 't1w200h0;'
                Margins.Top = 5
                Margins.Bottom = 5
                TabOrder = 14
                Caption = 'UniPanel4'
                Color = clWhite
                object UniEdit1: TUniEdit
                  Left = 1
                  Top = 28
                  Width = 104
                  Height = 41
                  Hint = ''
                  Enabled = False
                  MaxLength = 50
                  BorderStyle = ubsNone
                  Text = ''
                  ParentFont = False
                  Font.Height = -16
                  TabOrder = 1
                  ClientEvents.UniEvents.Strings = (
                    
                      'afterCreate=function afterCreate(sender)'#13#10'{   '#13#10'  $("#" + sender' +
                      '.id + "-inputEl").mask('#39'A'#39', {'#13#10'  translation: {'#13#10'    A: { patter' +
                      'n: /^[0-9\s]+$/g, recursive: true },'#13#10'  },'#13#10'});  '#13#10'  '#13#10'}')
                end
                object UniContainerPanel6: TUniContainerPanel
                  Left = 1
                  Top = 1
                  Width = 594
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
                  ExplicitWidth = 141
                  object UniLabel7: TUniLabel
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
                    ExplicitWidth = 71
                  end
                end
                object compDESCRMV: TUniEdit
                  Left = 9
                  Top = 29
                  Width = 439
                  Height = 41
                  Hint = ''
                  CharCase = ecUpperCase
                  MaxLength = 150
                  BorderStyle = ubsNone
                  Text = ''
                  ParentFont = False
                  Font.Height = -16
                  TabOrder = 3
                  ReadOnly = True
                end
              end
              object UniPanel6: TUniPanel
                Left = 3
                Top = 343
                Width = 1075
                Height = 2
                Hint = 't2w2075h2;'
                TabOrder = 13
                Caption = ''
                Color = 16249327
              end
            end
          end
        end
      end
      object tsCancelarRecebimentos: TUniTabSheet
        Hint = ''
        Caption = 'Cancelar recebimentos'
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
    Left = 384
    Top = 551
  end
  object CDSDados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 837
    Top = 342
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
    Left = 925
    Top = 342
    object CDSTelabotaoEditar: TAggregateField
      FieldName = 'botaoEditar'
      Visible = True
      OnGetText = CDSTelabotaoEditarGetText
      DisplayName = ''
    end
    object CDSTelaiconeAtivo: TAggregateField
      FieldName = 'iconeAtivo'
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
    Left = 805
    Top = 182
  end
end
