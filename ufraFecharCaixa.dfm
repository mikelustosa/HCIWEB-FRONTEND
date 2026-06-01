object fraFecharCaixa: TfraFecharCaixa
  Left = 0
  Top = 0
  Width = 1001
  Height = 841
  OnReady = UniFrameReady
  TabOrder = 0
  ClientEvents.UniEvents.Strings = (
    
      'beforeInit=function window.beforeInit(sender, config)'#13#10'{'#13#10'   sen' +
      'der.cls="slide-in-left";'#13#10'}')
  object scrFundo: TUniScrollBox
    Left = 0
    Top = 0
    Width = 1001
    Height = 841
    Hint = ''
    Align = alClient
    TabOrder = 0
  end
  object UniPanel18: TUniPanel
    Left = 0
    Top = 0
    Width = 1001
    Height = 841
    Hint = ''
    Align = alClient
    TabOrder = 1
    Caption = 'UniPanel18'
    object cpPesquisa: TUniContainerPanel
      AlignWithMargins = True
      Left = 1
      Top = 4
      Width = 999
      Height = 65
      Hint = ''
      Margins.Left = 0
      Margins.Right = 0
      ParentColor = False
      Color = clWhite
      Align = alTop
      TabOrder = 1
      LayoutConfig.Cls = 'painel-sem-borda'
      object UniContainerPanel17: TUniContainerPanel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 101
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
          Width = 76
          Height = 16
          Hint = ''
          Margins.Top = 5
          Margins.Bottom = 5
          Caption = 'C'#211'D. CAIXA'
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
          Width = 93
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
          object compCAIXA: TUniEdit
            Left = 0
            Top = 0
            Width = 93
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
      object UniContainerPanel21: TUniContainerPanel
        AlignWithMargins = True
        Left = 106
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
        TabOrder = 2
        LayoutConfig.Cls = 'painel-sem-borda'
        object UniSFLabel5: TUniSFLabel
          AlignWithMargins = True
          Left = 3
          Top = 5
          Width = 128
          Height = 16
          Hint = ''
          Margins.Top = 5
          Margins.Bottom = 5
          Caption = 'DATA DE ABERTURA'
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
          object compDtIni: TUniDateTimePicker
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
      object UniContainerPanel27: TUniContainerPanel
        AlignWithMargins = True
        Left = 289
        Top = 0
        Width = 92
        Height = 65
        Hint = ''
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Enabled = False
        ParentColor = False
        Color = clWhite
        Align = alLeft
        TabOrder = 3
        LayoutConfig.Cls = 'painel-sem-borda'
        object UniSFLabel7: TUniSFLabel
          AlignWithMargins = True
          Left = 3
          Top = 5
          Width = 24
          Height = 16
          Hint = ''
          Margins.Top = 5
          Margins.Bottom = 5
          Visible = False
          Caption = 'AT'#201
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
        object UniContainerPanel28: TUniContainerPanel
          AlignWithMargins = True
          Left = 3
          Top = 26
          Width = 84
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
          object UniEdit18: TUniEdit
            Left = 0
            Top = 0
            Width = 84
            Height = 34
            Hint = ''
            CharCase = ecUpperCase
            MaxLength = 150
            BorderStyle = ubsNone
            Alignment = taCenter
            Text = 'AT'#201
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
      object UniContainerPanel29: TUniContainerPanel
        AlignWithMargins = True
        Left = 386
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
        TabOrder = 4
        LayoutConfig.Cls = 'painel-sem-borda'
        object UniSFLabel9: TUniSFLabel
          AlignWithMargins = True
          Left = 3
          Top = 5
          Width = 154
          Height = 16
          Hint = ''
          Margins.Top = 5
          Margins.Bottom = 5
          Caption = 'FIM DATA DE ABERTURA'
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
        object UniContainerPanel30: TUniContainerPanel
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
          object compDtFim: TUniDateTimePicker
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
        Left = 569
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
        object UniSFLabel11: TUniSFLabel
          AlignWithMargins = True
          Left = 3
          Top = 5
          Width = 57
          Height = 16
          Hint = ''
          Margins.Top = 5
          Margins.Bottom = 5
          Caption = 'USU'#193'RIO'
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
          object cbUsuario: TUniSFComboBox
            AlignWithMargins = True
            Left = 3
            Top = 8
            Width = 136
            Hint = ''
            Text = 'cbUsuario'
            TabOrder = 2
            Groups = <>
            Options.Placeholders = 'Select Some Options'
            Options.noResults = 'No Results Found'
          end
        end
      end
      object UniPanel19: TUniPanel
        Left = 724
        Top = 0
        Width = 167
        Height = 65
        Hint = 't1w150h0;'
        Align = alLeft
        TabOrder = 6
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
    end
    object cpMenuRodape: TUniContainerPanel
      Left = 1
      Top = 800
      Width = 999
      Height = 40
      Hint = ''
      ParentColor = False
      Align = alBottom
      TabOrder = 2
      LayoutConfig.Cls = 'body_grdnt_rounded'
      object btnFecharCaixa: TUniSFBitBtn
        AlignWithMargins = True
        Left = 874
        Top = 5
        Width = 120
        Height = 30
        Hint = ''
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ParentShowHint = False
        Caption = 'FECHAR'
        Align = alRight
        TabOrder = 1
        Scale = bbsSmall
        LayoutConfig.Cls = 'botaoSemBorda'
        OnClick = btnFecharCaixaClick
        FAIcon.Icon = fa_check_circle
        FAIcon.Size = fs_16
        FAIcon.Color = fc_white
        FAIcon.Style = regular
        ButtonStyles = bs_danger
      end
      object btnCancelar: TUniSFBitBtn
        AlignWithMargins = True
        Left = 744
        Top = 5
        Width = 120
        Height = 30
        Hint = ''
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ParentShowHint = False
        Caption = 'IMPRIMIR'
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
        Visible = False
        ThemeOn = Success
        ThemeOff = Gray
        TitleOn = 'Ativo'
        TitleOff = 'Inativo'
        Align = alLeft
      end
    end
    object UniScrollBox1: TUniScrollBox
      Left = 1
      Top = 72
      Width = 999
      Height = 728
      Hint = ''
      Align = alClient
      TabOrder = 3
      object UniPanel20: TUniPanel
        Left = 0
        Top = 0
        Width = 997
        Height = 726
        Hint = ''
        Align = alClient
        TabOrder = 0
        Caption = 'UniPanel20'
        object UniScrollBox2: TUniScrollBox
          Left = 1
          Top = 1
          Width = 995
          Height = 724
          Hint = ''
          Align = alClient
          TabOrder = 1
          ScrollHeight = 701
          object gridTela: TUniDBGrid
            Left = 0
            Top = 0
            Width = 993
            Height = 177
            Hint = ''
            Margins.Top = 10
            DataSource = DSTela
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
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
                FieldName = 'incr'
                Title.Caption = 'C'#243'd. Caixa'
                Width = 50
              end
              item
                FieldName = 'dataAbertura'
                Title.Caption = 'Data de abertura'
                Width = 200
              end
              item
                FieldName = 'usuario'
                Title.Caption = 'Usu'#225'rio'
                Width = 200
              end
              item
                FieldName = 'status'
                Title.Caption = 'Status'
                Width = 64
              end
              item
                FieldName = 'botaoEditar'
                Title.Caption = ' '
                Width = 80
              end>
          end
          object pnlEntradasDeCaixa: TUniPanel
            Left = 0
            Top = 257
            Width = 993
            Height = 198
            Hint = ''
            Align = alTop
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
              object compFLTDINHEIRO: TUniEdit
                Left = 1
                Top = 28
                Width = 141
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
                  Width = 47
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Dinheiro'
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
              object compFLTPRAZO: TUniEdit
                Left = 1
                Top = 28
                Width = 141
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
                  Width = 42
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'A prazo'
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
              Width = 143
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 3
              Caption = 'UniPanel4'
              Color = clWhite
              object compCARTAODEBITO: TUniEdit
                Left = 1
                Top = 28
                Width = 141
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
              object UniContainerPanel4: TUniContainerPanel
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
                object UniLabel4: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 75
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Cart'#227'o d'#233'bito'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
            end
            object UniPanel4: TUniPanel
              AlignWithMargins = True
              Left = 474
              Top = 38
              Width = 143
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 4
              Caption = 'UniPanel4'
              Color = clWhite
              object compCARTAOCREDITO: TUniEdit
                Left = 1
                Top = 28
                Width = 141
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
                object UniLabel5: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 78
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Cart'#227'o cr'#233'dito'
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
              AlignWithMargins = True
              Left = 631
              Top = 38
              Width = 143
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 5
              Caption = 'UniPanel4'
              Color = clWhite
              object compCHEQUEAVISTA: TUniEdit
                Left = 1
                Top = 28
                Width = 141
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
              object UniContainerPanel6: TUniContainerPanel
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
                object UniLabel6: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 81
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Cheque a vista'
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
              AlignWithMargins = True
              Left = 3
              Top = 118
              Width = 143
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 6
              Caption = 'UniPanel4'
              Color = clWhite
              object compCHEQUEAPRAZO: TUniEdit
                Left = 1
                Top = 28
                Width = 141
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
              object UniContainerPanel7: TUniContainerPanel
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
                object UniLabel7: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 87
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Cheque a prazo'
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
              AlignWithMargins = True
              Left = 160
              Top = 118
              Width = 143
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 7
              Caption = 'UniPanel4'
              Color = clWhite
              object compREFORCO: TUniEdit
                Left = 1
                Top = 28
                Width = 141
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
              object UniContainerPanel8: TUniContainerPanel
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
                object UniLabel8: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 42
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Refor'#231'o'
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
              AlignWithMargins = True
              Left = 317
              Top = 118
              Width = 143
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 8
              Caption = 'Pix'
              Color = clWhite
              object compPIX: TUniEdit
                Left = 1
                Top = 28
                Width = 141
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
              object UniContainerPanel9: TUniContainerPanel
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
                  Width = 15
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Pix'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
            end
            object UniPanel9: TUniPanel
              AlignWithMargins = True
              Left = 474
              Top = 118
              Width = 143
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 9
              Caption = 'UniPanel4'
              Color = clWhite
              object compOUTROS: TUniEdit
                Left = 1
                Top = 28
                Width = 141
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
                TabOrder = 2
                TabStop = False
                LayoutConfig.Cls = 'body_grdnt_rounded'
                object UniLabel10: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 37
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Outros'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
            end
            object UniContainerPanel1: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 991
              Height = 27
              Hint = ''
              Margins.Left = 8
              Margins.Top = 5
              Margins.Right = 12
              Margins.Bottom = 5
              ParentColor = False
              Align = alTop
              TabOrder = 10
              TabStop = False
              LayoutConfig.Cls = 'body_grdnt_rounded'
              object UniLabel1: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 136
                Height = 17
                Hint = ''
                Margins.Left = 10
                Caption = 'ENTRADAS DE CAIXA'
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
          object pnlSaidas: TUniPanel
            Left = 0
            Top = 455
            Width = 993
            Height = 123
            Hint = ''
            Align = alTop
            TabOrder = 2
            Caption = ''
            object UniPanel11: TUniPanel
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
              object compSANGRIASDINHEIRO: TUniEdit
                Left = 1
                Top = 28
                Width = 141
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
              object UniContainerPanel11: TUniContainerPanel
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
                object UniLabel11: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 93
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Sangrias dinheiro'
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
              object compSANGRIASCHEQUE: TUniEdit
                Left = 1
                Top = 28
                Width = 141
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
              object UniContainerPanel12: TUniContainerPanel
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
                object UniLabel12: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 89
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Sangrias cheque'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
            end
            object UniPanel13: TUniPanel
              AlignWithMargins = True
              Left = 317
              Top = 38
              Width = 143
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 3
              Caption = 'UniPanel4'
              Color = clWhite
              object compDESCONTOS: TUniEdit
                Left = 1
                Top = 28
                Width = 141
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
              object UniContainerPanel13: TUniContainerPanel
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
                object UniLabel13: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 57
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Descontos'
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
              AlignWithMargins = True
              Left = 474
              Top = 38
              Width = 143
              Height = 70
              Hint = 't1w200h0;'
              Margins.Top = 5
              Margins.Bottom = 5
              TabOrder = 4
              Caption = 'UniPanel4'
              Color = clWhite
              object compDEVOLUCOES: TUniEdit
                Left = 1
                Top = 28
                Width = 141
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
              object UniContainerPanel14: TUniContainerPanel
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
                object UniLabel14: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 64
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Devolu'#231#245'es'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
            end
            object UniContainerPanel20: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 991
              Height = 27
              Hint = ''
              Margins.Left = 8
              Margins.Top = 5
              Margins.Right = 12
              Margins.Bottom = 5
              ParentColor = False
              Align = alTop
              TabOrder = 5
              TabStop = False
              LayoutConfig.Cls = 'body_grdnt_rounded'
              object UniLabel20: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 46
                Height = 17
                Hint = ''
                Margins.Left = 10
                Caption = 'SA'#205'DAS'
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
          object pnlTotais: TUniPanel
            Left = 0
            Top = 578
            Width = 993
            Height = 123
            Hint = ''
            Align = alTop
            TabOrder = 3
            Caption = ''
            object UniPanel16: TUniPanel
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
              object compDISPONIVEL: TUniEdit
                Left = 1
                Top = 28
                Width = 141
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
                object UniLabel15: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 109
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Dispon'#237'vel em caixa'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
            end
            object UniPanel17: TUniPanel
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
              object compTOTALDECLARADO: TUniEdit
                Left = 1
                Top = 28
                Width = 141
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
                TabOrder = 2
                TabStop = False
                LayoutConfig.Cls = 'body_grdnt_rounded'
                object UniLabel16: TUniLabel
                  AlignWithMargins = True
                  Left = 10
                  Top = 3
                  Width = 82
                  Height = 17
                  Hint = ''
                  Margins.Left = 10
                  Caption = 'Total declarado'
                  Align = alTop
                  ParentFont = False
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI Light'
                  TabOrder = 1
                end
              end
            end
            object UniContainerPanel19: TUniContainerPanel
              Left = 1
              Top = 1
              Width = 991
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
              object UniLabel19: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 3
                Width = 44
                Height = 17
                Hint = ''
                Margins.Left = 10
                Caption = 'TOTAIS'
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
          object pnlValorInicial: TUniPanel
            AlignWithMargins = True
            Left = 3
            Top = 182
            Width = 987
            Height = 70
            Hint = 't1w200h0;'
            Margins.Top = 5
            Margins.Bottom = 5
            Align = alTop
            TabOrder = 4
            Caption = 'UniPanel4'
            Color = clWhite
            object compVALORINICIAL: TUniEdit
              Left = 1
              Top = 28
              Width = 985
              Height = 41
              Hint = ''
              Enabled = False
              MaxLength = 5
              BorderStyle = ubsNone
              Alignment = taCenter
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
              Width = 985
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
                Width = 972
                Height = 17
                Hint = ''
                Margins.Left = 10
                Alignment = taCenter
                AutoSize = False
                Caption = 'Valor de abertura'
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
    Top = 582
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
    Left = 853
    Top = 390
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
  object DSTela: TDataSource
    DataSet = CDSTela
    Left = 805
    Top = 182
  end
end
