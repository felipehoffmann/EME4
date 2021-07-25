program TesteEME4;

uses
  Vcl.Forms,
  EME4.Forms.Pessoa in 'EME4.Forms.Pessoa.pas' {FrmPessoa},
  EME4.WebServices.ReceitaWS in 'EME4.WebServices.ReceitaWS.pas',
  EME4.WebServices.ReceitaWS.Models in 'EME4.WebServices.ReceitaWS.Models.pas',
  EME4.Metodos in 'EME4.Metodos.pas',
  EME4.DM in 'EME4.DM.pas' {DM: TDataModule},
  EME4.Forms.Pessoa.Previa in 'EME4.Forms.Pessoa.Previa.pas' {FrmPessoaPrevia},
  EME4.DB.Pessoa in 'EME4.DB.Pessoa.pas',
  EME4.DB.ComboBox in 'EME4.DB.ComboBox.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmPessoa, FrmPessoa);
  Application.CreateForm(TFrmPessoaPrevia, FrmPessoaPrevia);
  Application.Run;
end.
