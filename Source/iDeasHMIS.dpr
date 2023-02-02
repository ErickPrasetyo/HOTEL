program iDeasHMIS;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  uRoomData in 'uRoomData.pas' {frmRoomData},
  uTools in 'uTools.pas',
  uDM in 'uDM.pas' {DataModule1: TDataModule},
  uGuestData in 'uGuestData.pas' {frmGuestData},
  uFloorData in 'uFloorData.pas' {frmFloorData},
  uRoomType in 'uRoomType.pas' {frmRoomType},
  uDash in 'uDash.pas' {frmDash},
  uBilling in 'uBilling.pas' {frmBilling},
  uRegTamu in 'uRegTamu.pas' {RegTamuFrm},
  uRoomMoving in 'uRoomMoving.pas' {frmRoomMoving},
  uExtraBed in 'uExtraBed.pas' {frmExtraBed},
  uItemResto in 'uItemResto.pas' {frmItemResto},
  uLapHK in 'uLapHK.pas' {frmLapHK},
  uLapKolamRenang in 'uLapKolamRenang.pas' {frmLapKolamRenang},
  uLapResto in 'uLapResto.pas' {frmLapResto},
  uPostingBillingTamu in 'uPostingBillingTamu.pas' {frmPostingBillingTamu},
  uPostingHK in 'uPostingHK.pas' {frmPostingHK},
  uPostingKolamRenang in 'uPostingKolamRenang.pas' {frmPostingKolamRenang},
  uPostingResto in 'uPostingResto.pas' {frmPostingResto},
  uLapBatalRegistrasi in 'uLapBatalRegistrasi.pas' {frmLapBatalRegistrasi},
  uLapKamar in 'uLapKamar.pas' {frmLapKamar},
  uLapRegistrasi in 'uLapRegistrasi.pas' {frmLapRegistrasi},
  uLapKasirFO in 'uLapKasirFO.pas' {frmLapKasirFO},
  uLapKasir in 'uLapKasir.pas' {frmLapKasir},
  uBillingPenjualan in 'uBillingPenjualan.pas' {frmBillingPenjualan},
  uUserLogin in 'uUserLogin.pas' {frmUserLogin},
  MD5 in 'MD5.pas',
  uIniFilesProcs in 'uIniFilesProcs.pas',
  uBayarNota in 'uBayarNota.pas' {BayarNota},
  uBayarNotaKredit in 'uBayarNotaKredit.pas' {BayarNotaKredit},
  uBillingKredit in 'uBillingKredit.pas' {frmBillingKredit},
  uBayar in 'uBayar.pas' {Bayar},
  ufrmUserMgt in 'ufrmUserMgt.pas' {frmUserMgt},
  uChangePass in 'uChangePass.pas' {frmChangePass},
  uExtendStay in 'uExtendStay.pas' {frmExtendStay},
  uAdel in 'uAdel.pas' {frmAdel},
  uReservasiData in 'uReservasiData.pas' {frmReservasiData},
  uFest in 'uFest.pas' {FrmFest},
  Unit2Fest in 'Unit2Fest.pas' {Form2Fest},
  uVerifikasi in 'uVerifikasi.pas' {frmVerifikasi},
  uPembatalan in 'uPembatalan.pas' {frmPembatalan},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Sapphire Kamri');
  Application.Title := 'iDeasHMIS';

//  Application.CreateForm(TfrmMain, frmMain);
//  Application.CreateForm(TDataModule1, DataModule1);
//  Application.Run;

  Application.CreateForm(TDataModule1, DataModule1);
  if DataModule1.zconHotel.Connected  then begin
     Application.CreateForm(TfrmMain, frmMain);
  end;

  Application.Run;

end.
