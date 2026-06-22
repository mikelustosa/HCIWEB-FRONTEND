object fraSangria: TfraSangria
  Left = 0
  Top = 0
  Width = 1121
  Height = 657
  OnCreate = UniFrameCreate
  OnReady = UniFrameReady
  TabOrder = 0
  object UniScrollBox7: TUniScrollBox
    Left = 0
    Top = 0
    Width = 1121
    Height = 657
    Hint = ''
    Align = alClient
    TabOrder = 0
    object pgcGeral: TUniPageControl
      Left = 0
      Top = 0
      Width = 1119
      Height = 655
      Hint = ''
      ActivePage = tsReforco
      Align = alClient
      TabOrder = 0
      object tsSangria: TUniTabSheet
        Hint = ''
        Caption = 'SANGRIAS'
        object pgcSangria: TUniPageControl
          Left = 0
          Top = 0
          Width = 1111
          Height = 627
          Hint = ''
          ActivePage = tsSangriaAdiciona
          TabBarVisible = False
          Align = alClient
          TabOrder = 0
          object tsSangriaRetirada: TUniTabSheet
            Hint = ''
            Caption = 'Sangrias (retiradas de caixa)'
            object UniPanel24: TUniPanel
              Left = 0
              Top = 0
              Width = 1103
              Height = 599
              Hint = ''
              Align = alClient
              TabOrder = 0
              Caption = 'UniPanel18'
              object UniContainerPanel8: TUniContainerPanel
                AlignWithMargins = True
                Left = 1
                Top = 4
                Width = 1101
                Height = 65
                Hint = ''
                Margins.Left = 0
                Margins.Right = 0
                ParentColor = False
                Color = clWhite
                Align = alTop
                TabOrder = 1
                LayoutConfig.Cls = 'painel-sem-borda'
                object UniPanel25: TUniPanel
                  Left = 934
                  Top = 0
                  Width = 167
                  Height = 65
                  Hint = 't1w150h0;'
                  Align = alRight
                  TabOrder = 1
                  Caption = ''
                  Color = 16249327
                  object btnAdicionaSangria: TUniSFBitBtn
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
                    Caption = 'Adiconar'
                    Align = alClient
                    TabOrder = 1
                    Scale = bbsSmall
                    LayoutConfig.Cls = 'botaoSemBorda'
                    OnClick = btnAdicionaSangriaClick
                    FAIcon.Icon = fa_check_circle
                    FAIcon.Size = fs_16
                    FAIcon.Color = fc_grey
                    FAIcon.Style = regular
                    ButtonStyles = bs_default
                  end
                end
              end
              object UniScrollBox4: TUniScrollBox
                Left = 1
                Top = 72
                Width = 1101
                Height = 526
                Hint = ''
                Align = alClient
                TabOrder = 2
                object UniPanel28: TUniPanel
                  Left = 0
                  Top = 0
                  Width = 1099
                  Height = 524
                  Hint = ''
                  Align = alClient
                  TabOrder = 0
                  Caption = 'UniPanel20'
                  object UniScrollBox5: TUniScrollBox
                    Left = 1
                    Top = 1
                    Width = 1097
                    Height = 522
                    Hint = ''
                    Align = alClient
                    TabOrder = 1
                    object gridTelaEstorno: TUniDBGrid
                      Left = 0
                      Top = 0
                      Width = 1095
                      Height = 520
                      Hint = ''
                      Margins.Top = 10
                      DataSource = DSTelaSangria
                      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
                      WebOptions.Paged = False
                      LoadMask.Message = 'Loading data...'
                      ForceFit = True
                      LayoutConfig.Cls = 'dbgrid-light responsiva mostrar-mobile'
                      Align = alClient
                      TabOrder = 0
                      OnCellClick = gridTelaEstornoCellClick
                      OnDrawColumnCell = gridTelaEstornoDrawColumnCell
                      Columns = <
                        item
                          FieldName = 'id'
                          Title.Caption = 'C'#243'digo'
                          Width = 50
                        end
                        item
                          FieldName = 'incr'
                          Title.Caption = 'Incr'
                          Width = 50
                          Visible = False
                        end
                        item
                          FieldName = 'STR_DESCRICAO'
                          Title.Caption = 'Descri'#231#227'o'
                          Width = 100
                        end
                        item
                          FieldName = 'FLT_VALOR'
                          Title.Caption = 'Valor'
                          Width = 100
                        end
                        item
                          FieldName = 'botaoEditar'
                          Title.Caption = ' '
                          Width = 64
                        end
                        item
                          FieldName = 'botaoExcluir'
                          Title.Caption = ' '
                          Width = 64
                        end>
                    end
                  end
                end
              end
            end
          end
          object tsSangriaAdiciona: TUniTabSheet
            Hint = ''
            Caption = 'Sangrias (adicionar sangria)'
            object UniPanel4: TUniPanel
              Left = 0
              Top = 0
              Width = 1103
              Height = 599
              Hint = ''
              Align = alClient
              TabOrder = 0
              Caption = 'UniPanel18'
              object UniContainerPanel14: TUniContainerPanel
                Left = 1
                Top = 558
                Width = 1101
                Height = 40
                Hint = ''
                ParentColor = False
                Align = alBottom
                TabOrder = 1
                LayoutConfig.Cls = 'body_grdnt_rounded'
                object btnSairSangria: TUniSFBitBtn
                  AlignWithMargins = True
                  Left = 976
                  Top = 5
                  Width = 120
                  Height = 30
                  Hint = ''
                  Margins.Left = 5
                  Margins.Top = 5
                  Margins.Right = 5
                  Margins.Bottom = 5
                  ParentShowHint = False
                  Caption = 'SAIR'
                  Align = alRight
                  TabOrder = 1
                  Scale = bbsSmall
                  LayoutConfig.Cls = 'botaoSemBorda'
                  OnClick = btnSairSangriaClick
                  FAIcon.Icon = fa_check_circle
                  FAIcon.Size = fs_16
                  FAIcon.Color = fc_white
                  FAIcon.Style = regular
                  ButtonStyles = bs_danger
                end
                object btnOkSangria: TUniSFBitBtn
                  AlignWithMargins = True
                  Left = 846
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
                  OnClick = btnOkSangriaClick
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
                Width = 1101
                Height = 557
                Hint = ''
                Align = alClient
                TabOrder = 2
                object UniPanel8: TUniPanel
                  Left = 0
                  Top = 0
                  Width = 1099
                  Height = 555
                  Hint = ''
                  Align = alClient
                  TabOrder = 0
                  Caption = ''
                  object UniPanel9: TUniPanel
                    AlignWithMargins = True
                    Left = 3
                    Top = 99
                    Width = 143
                    Height = 70
                    Hint = 't1w200h0;'
                    Margins.Top = 5
                    Margins.Bottom = 5
                    TabOrder = 2
                    Caption = 'UniPanel4'
                    Color = clWhite
                    object compFLT_VALOR: TUniEdit
                      Left = 1
                      Top = 28
                      Width = 141
                      Height = 41
                      Hint = ''
                      MaxLength = 50
                      BorderStyle = ubsNone
                      Text = ''
                      ParentFont = False
                      Font.Height = -16
                      Align = alClient
                      TabOrder = 1
                      ClientEvents.UniEvents.Strings = (
                        
                          'afterCreate=function afterCreate(sender)'#13#10'{'#13#10'    $("#" + sender.' +
                          'id + "-inputEl").mask('#39'#0,00'#39', {'#13#10'        reverse: true '#13#10'    })' +
                          ';'#13#10'}')
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
                  object UniPanel26: TUniPanel
                    Left = 13
                    Top = 89
                    Width = 1075
                    Height = 2
                    Hint = 't2w2075h2;'
                    TabOrder = 1
                    Caption = ''
                    Color = 16249327
                  end
                  object UniPanel15: TUniPanel
                    Left = 3
                    Top = 173
                    Width = 1075
                    Height = 2
                    Hint = 't2w2075h2;'
                    TabOrder = 4
                    Caption = ''
                    Color = 16249327
                  end
                  object UniPanel16: TUniPanel
                    Left = 3
                    Top = 257
                    Width = 1075
                    Height = 2
                    Hint = 't2w2075h2;'
                    TabOrder = 6
                    Caption = ''
                    Color = 16249327
                  end
                  object UNITEXT: TUniPanel
                    AlignWithMargins = True
                    Left = 3
                    Top = 11
                    Width = 596
                    Height = 70
                    Hint = 't1w200h0;'
                    Margins.Top = 5
                    Margins.Bottom = 5
                    TabOrder = 0
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
                      end
                    end
                    object compSTR_DESCRICAO: TUniEdit
                      Left = 1
                      Top = 28
                      Width = 594
                      Height = 41
                      Hint = ''
                      MaxLength = 150
                      BorderStyle = ubsNone
                      Text = ''
                      ParentFont = False
                      Font.Height = -16
                      Align = alClient
                      TabOrder = 3
                    end
                  end
                  object UniPanel3: TUniPanel
                    AlignWithMargins = True
                    Left = 160
                    Top = 99
                    Width = 438
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
                      Width = 436
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
                        Width = 127
                        Height = 17
                        Hint = ''
                        Margins.Left = 10
                        Caption = 'Tipo de movimenta'#231#227'o'
                        Align = alTop
                        ParentFont = False
                        Font.Color = clBlack
                        Font.Height = -13
                        Font.Name = 'Segoe UI Light'
                        TabOrder = 1
                      end
                    end
                    object compINT_TIPOPAGAMENTO: TUniSFComboBox
                      Left = 3
                      Top = 36
                      Width = 422
                      Hint = ''
                      Text = '01 - Dinheiro '
                      TabOrder = 2
                      Items.Strings = (
                        '01 - Dinheiro '
                        '97 - Cheque a vista'
                        '98 - Cheque a prazo')
                      Groups = <>
                      Options.Placeholders = 'Selecione'
                      Options.noResults = 'No Results Found'
                    end
                  end
                  object pnlINT_CRIACONTA: TUniPanel
                    AlignWithMargins = True
                    Left = 3
                    Top = 183
                    Width = 143
                    Height = 70
                    Hint = 't1w200h0;'
                    Margins.Top = 5
                    Margins.Bottom = 5
                    TabOrder = 5
                    Caption = 'UniPanel4'
                    Color = clWhite
                    object UniContainerPanel1: TUniContainerPanel
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
                      object UniLabel1: TUniLabel
                        AlignWithMargins = True
                        Left = 10
                        Top = 3
                        Width = 108
                        Height = 17
                        Hint = ''
                        Margins.Left = 10
                        Caption = 'Criar contas a pagar'
                        Align = alTop
                        ParentFont = False
                        Font.Color = clBlack
                        Font.Height = -13
                        Font.Name = 'Segoe UI Light'
                        TabOrder = 1
                      end
                    end
                    object compINT_CRIACONTA: TUniFSToggle
                      AlignWithMargins = True
                      Left = 11
                      Top = 33
                      Width = 121
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
                      Align = alClient
                    end
                  end
                end
              end
            end
          end
        end
      end
      object tsReforco: TUniTabSheet
        Hint = ''
        Caption = 'REFOR'#199'OS'
        object pgcReforco: TUniPageControl
          Left = 0
          Top = 0
          Width = 1111
          Height = 627
          Hint = ''
          ActivePage = tsReforcoAdiciona
          TabBarVisible = False
          Align = alClient
          TabOrder = 0
          object tsReforcoInclusao: TUniTabSheet
            Hint = ''
            Caption = 'Refor'#231'os (inclus'#245'es de caixa)'
            object UniPanel1: TUniPanel
              Left = 0
              Top = 0
              Width = 1103
              Height = 599
              Hint = ''
              Align = alClient
              TabOrder = 0
              Caption = 'UniPanel18'
              object UniContainerPanel2: TUniContainerPanel
                AlignWithMargins = True
                Left = 1
                Top = 4
                Width = 1101
                Height = 65
                Hint = ''
                Margins.Left = 0
                Margins.Right = 0
                ParentColor = False
                Color = clWhite
                Align = alTop
                TabOrder = 1
                LayoutConfig.Cls = 'painel-sem-borda'
                object UniPanel2: TUniPanel
                  Left = 934
                  Top = 0
                  Width = 167
                  Height = 65
                  Hint = 't1w150h0;'
                  Align = alRight
                  TabOrder = 1
                  Caption = ''
                  Color = 16249327
                  object btnAdicionaReforco: TUniSFBitBtn
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
                    Caption = 'Adiconar'
                    Align = alClient
                    TabOrder = 1
                    Scale = bbsSmall
                    LayoutConfig.Cls = 'botaoSemBorda'
                    OnClick = btnAdicionaReforcoClick
                    FAIcon.Icon = fa_check_circle
                    FAIcon.Size = fs_16
                    FAIcon.Color = fc_grey
                    FAIcon.Style = regular
                    ButtonStyles = bs_default
                  end
                end
              end
              object UniScrollBox1: TUniScrollBox
                Left = 1
                Top = 72
                Width = 1101
                Height = 526
                Hint = ''
                Align = alClient
                TabOrder = 2
                object UniPanel5: TUniPanel
                  Left = 0
                  Top = 0
                  Width = 1099
                  Height = 524
                  Hint = ''
                  Align = alClient
                  TabOrder = 0
                  Caption = 'UniPanel20'
                  object UniScrollBox2: TUniScrollBox
                    Left = 1
                    Top = 1
                    Width = 1097
                    Height = 522
                    Hint = ''
                    Align = alClient
                    TabOrder = 1
                    object UniDBGrid1: TUniDBGrid
                      Left = 0
                      Top = 0
                      Width = 1095
                      Height = 520
                      Hint = ''
                      Margins.Top = 10
                      DataSource = DSTelaReforco
                      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
                      WebOptions.Paged = False
                      LoadMask.Message = 'Loading data...'
                      ForceFit = True
                      LayoutConfig.Cls = 'dbgrid-light responsiva mostrar-mobile'
                      Align = alClient
                      TabOrder = 0
                      OnCellClick = UniDBGrid1CellClick
                      OnDrawColumnCell = UniDBGrid1DrawColumnCell
                      Columns = <
                        item
                          FieldName = 'id'
                          Title.Caption = 'C'#243'digo'
                          Width = 50
                        end
                        item
                          FieldName = 'incr'
                          Title.Caption = 'Incr'
                          Width = 50
                          Visible = False
                        end
                        item
                          FieldName = 'STR_DESCRICAO'
                          Title.Caption = 'Descri'#231#227'o'
                          Width = 100
                        end
                        item
                          FieldName = 'FLT_VALOR'
                          Title.Caption = 'Valor'
                          Width = 100
                        end
                        item
                          FieldName = 'botaoEditar'
                          Title.Caption = ' '
                          Width = 64
                        end
                        item
                          FieldName = 'botaoExcluir'
                          Title.Caption = ' '
                          Width = 64
                        end>
                    end
                  end
                end
              end
            end
          end
          object tsReforcoAdiciona: TUniTabSheet
            Hint = ''
            Caption = 'Refor'#231'os (adicionar refor'#231'o)'
            object UniPanel6: TUniPanel
              Left = 0
              Top = 0
              Width = 1103
              Height = 599
              Hint = ''
              Align = alClient
              TabOrder = 0
              Caption = 'UniPanel18'
              object UniContainerPanel3: TUniContainerPanel
                Left = 1
                Top = 558
                Width = 1101
                Height = 40
                Hint = ''
                ParentColor = False
                Align = alBottom
                TabOrder = 1
                LayoutConfig.Cls = 'body_grdnt_rounded'
                object btnSairReforco: TUniSFBitBtn
                  AlignWithMargins = True
                  Left = 976
                  Top = 5
                  Width = 120
                  Height = 30
                  Hint = ''
                  Margins.Left = 5
                  Margins.Top = 5
                  Margins.Right = 5
                  Margins.Bottom = 5
                  ParentShowHint = False
                  Caption = 'SAIR'
                  Align = alRight
                  TabOrder = 1
                  Scale = bbsSmall
                  LayoutConfig.Cls = 'botaoSemBorda'
                  OnClick = btnSairReforcoClick
                  FAIcon.Icon = fa_check_circle
                  FAIcon.Size = fs_16
                  FAIcon.Color = fc_white
                  FAIcon.Style = regular
                  ButtonStyles = bs_danger
                end
                object btnOkReforco: TUniSFBitBtn
                  AlignWithMargins = True
                  Left = 846
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
                  OnClick = btnOkReforcoClick
                  FAIcon.Icon = fa_arrow_alt_circle_left
                  FAIcon.Size = fs_16
                  FAIcon.Color = fc_white
                  FAIcon.Style = regular
                  ButtonStyles = bs_danger
                end
              end
              object UniScrollBox6: TUniScrollBox
                Left = 1
                Top = 1
                Width = 1101
                Height = 557
                Hint = ''
                Align = alClient
                TabOrder = 2
                object UniPanel7: TUniPanel
                  Left = 0
                  Top = 0
                  Width = 1099
                  Height = 555
                  Hint = ''
                  Align = alClient
                  TabOrder = 0
                  Caption = ''
                  object UniPanel10: TUniPanel
                    AlignWithMargins = True
                    Left = 3
                    Top = 99
                    Width = 143
                    Height = 70
                    Hint = 't1w200h0;'
                    Margins.Top = 5
                    Margins.Bottom = 5
                    TabOrder = 2
                    Caption = 'UniPanel4'
                    Color = clWhite
                    object compFLT_VALOR_REFORCO: TUniEdit
                      Left = 1
                      Top = 28
                      Width = 141
                      Height = 41
                      Hint = ''
                      MaxLength = 50
                      BorderStyle = ubsNone
                      Text = ''
                      ParentFont = False
                      Font.Height = -16
                      Align = alClient
                      TabOrder = 1
                      ClientEvents.UniEvents.Strings = (
                        
                          'afterCreate=function afterCreate(sender)'#13#10'{'#13#10'    $("#" + sender.' +
                          'id + "-inputEl").mask('#39'#0,00'#39', {'#13#10'        reverse: true'#13#10'    });' +
                          #13#10'}')
                    end
                    object UniContainerPanel5: TUniContainerPanel
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
                  object UniPanel11: TUniPanel
                    Left = 13
                    Top = 89
                    Width = 1075
                    Height = 2
                    Hint = 't2w2075h2;'
                    TabOrder = 1
                    Caption = ''
                    Color = 16249327
                  end
                  object UniPanel12: TUniPanel
                    Left = 3
                    Top = 173
                    Width = 1075
                    Height = 2
                    Hint = 't2w2075h2;'
                    TabOrder = 4
                    Caption = ''
                    Color = 16249327
                  end
                  object UniPanel13: TUniPanel
                    Left = 3
                    Top = 257
                    Width = 1075
                    Height = 2
                    Hint = 't2w2075h2;'
                    TabOrder = 6
                    Caption = ''
                    Color = 16249327
                  end
                  object UniPanel14: TUniPanel
                    AlignWithMargins = True
                    Left = 3
                    Top = 11
                    Width = 596
                    Height = 70
                    Hint = 't1w200h0;'
                    Margins.Top = 5
                    Margins.Bottom = 5
                    TabOrder = 0
                    Caption = 'UniPanel4'
                    Color = clWhite
                    object UniEdit3: TUniEdit
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
                    object UniContainerPanel7: TUniContainerPanel
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
                      object UniLabel3: TUniLabel
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
                    object compSTR_DESCRICAO_REFORCO: TUniEdit
                      Left = 1
                      Top = 28
                      Width = 594
                      Height = 41
                      Hint = ''
                      MaxLength = 150
                      BorderStyle = ubsNone
                      Text = ''
                      ParentFont = False
                      Font.Height = -16
                      Align = alClient
                      TabOrder = 3
                    end
                  end
                  object UniPanel17: TUniPanel
                    AlignWithMargins = True
                    Left = 160
                    Top = 99
                    Width = 438
                    Height = 70
                    Hint = 't1w200h0;'
                    Margins.Top = 5
                    Margins.Bottom = 5
                    TabOrder = 3
                    Caption = ''
                    Color = clWhite
                    object UniContainerPanel9: TUniContainerPanel
                      Left = 1
                      Top = 1
                      Width = 436
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
                        Width = 127
                        Height = 17
                        Hint = ''
                        Margins.Left = 10
                        Caption = 'Tipo de movimenta'#231#227'o'
                        Align = alTop
                        ParentFont = False
                        Font.Color = clBlack
                        Font.Height = -13
                        Font.Name = 'Segoe UI Light'
                        TabOrder = 1
                      end
                    end
                    object compINT_TIPOPAGAMENTO_REFORCO: TUniSFComboBox
                      Left = 3
                      Top = 36
                      Width = 422
                      Hint = ''
                      Text = '01 - Dinheiro '
                      TabOrder = 2
                      Items.Strings = (
                        '01 - Dinheiro '
                        '97 - Cheque a vista'
                        '98 - Cheque a prazo')
                      Groups = <>
                      Options.Placeholders = 'Selecione'
                      Options.noResults = 'No Results Found'
                    end
                  end
                  object pnlINT_CRIACONTA_REFORCO: TUniPanel
                    AlignWithMargins = True
                    Left = 3
                    Top = 183
                    Width = 143
                    Height = 70
                    Hint = 't1w200h0;'
                    Margins.Top = 5
                    Margins.Bottom = 5
                    TabOrder = 5
                    Caption = 'UniPanel4'
                    Color = clWhite
                    object UniContainerPanel10: TUniContainerPanel
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
                        Width = 120
                        Height = 17
                        Hint = ''
                        Margins.Left = 10
                        Caption = 'Criar contas a receber'
                        Align = alTop
                        ParentFont = False
                        Font.Color = clBlack
                        Font.Height = -13
                        Font.Name = 'Segoe UI Light'
                        TabOrder = 1
                      end
                    end
                    object compINT_CRIACONTA_REFORCO: TUniFSToggle
                      AlignWithMargins = True
                      Left = 11
                      Top = 33
                      Width = 121
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
                      Align = alClient
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  object CDSTelaSangria: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 373
    Top = 270
    object CDSTelaSangriabotaoEditar: TAggregateField
      FieldName = 'botaoEditar'
      Visible = True
      OnGetText = CDSTelaSangriabotaoEditarGetText
      DisplayName = ''
    end
    object CDSTelaSangriaiconeAtivo: TAggregateField
      FieldName = 'iconeAtivo'
      DisplayName = ''
    end
    object CDSTelaSangriabotaoExcluir: TAggregateField
      FieldName = 'botaoExcluir'
      OnGetText = CDSTelaSangriabotaoExcluirGetText
      DisplayName = ''
    end
  end
  object DSTelaSangria: TDataSource
    DataSet = CDSTelaSangria
    Left = 373
    Top = 206
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
  object DSTelaReforco: TDataSource
    DataSet = CDSTelaReforco
    Left = 501
    Top = 214
  end
  object CDSTelaReforco: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 501
    Top = 278
    object CDSTelaReforcobotaoEditar: TAggregateField
      FieldName = 'botaoEditar'
      Visible = True
      OnGetText = CDSTelaSangriabotaoEditarGetText
      DisplayName = ''
    end
    object CDSTelaReforcoiconeAtivo: TAggregateField
      FieldName = 'iconeAtivo'
      DisplayName = ''
    end
    object CDSTelaReforcobotaoExcluir: TAggregateField
      FieldName = 'botaoExcluir'
      OnGetText = CDSTelaSangriabotaoExcluirGetText
      DisplayName = ''
    end
  end
end
