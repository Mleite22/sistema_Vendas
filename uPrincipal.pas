unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uDTMConexao, Enter;

type
  TfrmPrincipal = class(TForm)
    mainPrincipal: TMainMenu;
    CADASTRO1: TMenuItem;
    N1: TMenuItem;
    MOVIMENTAO1: TMenuItem;
    RELATRIO1: TMenuItem;
    N2: TMenuItem;
    CATEGORIA1: TMenuItem;
    N3: TMenuItem;
    PRODUTO1: TMenuItem;
    N4: TMenuItem;
    menuFechar: TMenuItem;
    VENDAS1: TMenuItem;
    CLIENTE1: TMenuItem;
    N5: TMenuItem;
    PRODUTO2: TMenuItem;
    N6: TMenuItem;
    VENDAPORDATA1: TMenuItem;
    procedure menuFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CATEGORIA1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
    procedure PRODUTO1Click(Sender: TObject);
  private
    { Private declarations }
    TeclaEnter : TMREnter;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}
             //Categorias
uses uCadcategoria, uCadCliente, uCadProduto;

procedure TfrmPrincipal.CATEGORIA1Click(Sender: TObject);
begin
   frmCadCategoria := TfrmCadCategoria.Create(Self);
   frmCadCategoria.ShowModal;
   frmCadCategoria.Release;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(TeclaEnter);
  FreeAndNil(dtmConexao);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
   dtmConexao := TdtmConexao.Create(Self);
   dtmConexao.ConexaoDB.SQLHourGlass:= True;
   dtmConexao.ConexaoDB.Connected :=True;
   TeclaEnter := TMREnter.Create(Self);
   TeclaEnter.FocusEnabled:= True;
   TeclaEnter.FocusColor:= clInfoBk;

end;



procedure TfrmPrincipal.menuFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.N1Click(Sender: TObject);
begin
   frmCadCliente:=TfrmCadCliente.Create(Self);
   frmCadCliente.ShowModal;
   frmCadCliente.Release;
end;

procedure TfrmPrincipal.PRODUTO1Click(Sender: TObject);
begin
    frmCadProduto:= TfrmCadProduto.Create(Self);
    frmCadProduto.ShowModal;
    frmCadProduto.Release;
end;

end.
