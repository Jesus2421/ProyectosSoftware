unit Pic16Devices;
{$mode objfpc}{$H+}
interface
uses
  Classes, SysUtils , Pic16Utils;

procedure GetSupportedDevices(list: TStrings);
function GetHardwareInfo(pic: TPIC16; model: string): boolean;

implementation

procedure SetRAM16F70_71(pic: TPIC16);
begin
   pic.SetStateRAM($020, $07F, cs_impleGPR);
   pic.SetStateRAM($0A0, $0BF, cs_impleGPR);
   pic.SetStateRAM($0F0, $0FF, cs_mapToBnk, 0);
   pic.SetStateRAM($120, $16F, cs_impleGPR);
   pic.SetStateRAM($170, $17F, cs_mapToBnk, 0);
   pic.SetStateRAM($1A0, $1BF, cs_impleGPR);
   pic.SetStateRAM($1F0, $1FF, cs_mapToBnk, 0);
end;
procedure SetRAM16F73_74(pic: TPIC16);
begin
   pic.SetStateRAM($020, $07F, cs_impleGPR);
   pic.SetStateRAM($0A0, $0FF, cs_impleGPR);
   pic.SetStateRAM($120, $17F, cs_mapToBnk, 0);
   pic.SetStateRAM($1A0, $1FF, cs_mapToBnk, 1);
end;
procedure SetRAM16F76_77(pic: TPIC16);
begin
   pic.SetStateRAM($020, $07F, cs_impleGPR);
   pic.SetStateRAM($0A0, $0EF, cs_impleGPR);
   pic.SetStateRAM($0F0, $0FF, cs_mapToBnk, 0);
   pic.SetStateRAM($110, $16F, cs_impleGPR);
   pic.SetStateRAM($170, $17F, cs_mapToBnk, 0);
   pic.bank2.GPRStart:=$10;
   pic.SetStateRAM($190, $1EF, cs_impleGPR);
   pic.SetStateRAM($1F0, $1FF, cs_mapToBnk, 0);
   pic.bank3.GPRStart:=$10;
end;
procedure SetRAM16F627_628(pic: TPIC16);
begin
   pic.SetStateRAM($020, $07F, cs_impleGPR);
   pic.SetStateRAM($0A0, $0EF, cs_impleGPR);
   pic.SetStateRAM($0F0, $0FF, cs_mapToBnk, 0);
   pic.SetStateRAM($120, $14F, cs_impleGPR);
   pic.SetStateRAM($170, $17F, cs_mapToBnk, 0);
   pic.SetStateRAM($1F0, $1FF, cs_mapToBnk, 0);
end;

procedure GetSupportedDevices(list: TStrings);
{Devuelve la lista de dispositivos soportados. Esta lista debe ser la misma que hay en
 GetHardwareInfo. }
begin
   list.Add('PIC16F83');
   list.Add('PIC16CR83');
   list.Add('PIC16F84');
   list.Add('PIC16CR84');
   list.Add('PIC16F84A');
   list.Add('PIC16F870');
   list.Add('PIC16F871');
   list.Add('PIC16F872');
   list.Add('PIC16F873');
   list.Add('PIC16F873A');
   list.Add('PIC16F874');
   list.Add('PIC16F874A');
   list.Add('PIC16F876');
   list.Add('PIC16F876A');
   list.Add('PIC16F877');
   list.Add('PIC16F877A');
   list.Add('PIC16F887');
   list.Add('PIC16F627A');
   list.Add('PIC16F628A');
   list.Add('PIC16F648A');
end;

function GetHardwareInfo(pic: TPIC16; model: string): boolean;
{Obtiene información parra un modelo de PIC en especial. Si no lo encuentra, devuelve
 FALSE}
begin
   Result := true;
   pic.MaxFlash := 0;  //inicia valor
   pic.MaxFreq := 0;
   pic.DisableAllRAM;
   case Upcase(model) of
   'PIC16F83',
   'PIC16CR83': begin
     pic.MaxFreq:=10000000;
     pic.Npins := 18;
     pic.NumBanks:=2;    //los bancos 2 y 3 están reflejados
     pic.NumPages:=1; pic.MaxFlash:=512;  //banco 0 implementado parcialmente
     pic.GPRStart:=$0C;
     pic.SetStateRAM($0C, $2F, cs_impleGPR);
     pic.SetStateRAM($8C, $AF, cs_mapToBnk, 0);
   end;
   'PIC16F84',
   'PIC16CR84': begin
     pic.MaxFreq:=10000000;
     pic.Npins := 18;
     pic.NumBanks:=2;    //los bancos 2 y 3 están reflejados
     pic.NumPages:=1; pic.MaxFlash:=1024;  //banco 0 implementado parcialmente
     pic.GPRStart:=$0C;
     pic.SetStateRAM($0C, $4F, cs_impleGPR);
     pic.SetStateRAM($8C, $CF, cs_mapToBnk, 0);
   end;
   'PIC16F84A': begin
     pic.MaxFreq:=20000000;
     pic.Npins := 18;
     pic.NumBanks:=2;    //los bancos 2 y 3 están reflejados
     pic.NumPages:=1; pic.MaxFlash:=1024;  //banco 0 implementado parcialmente
     pic.GPRStart:=$0C;
     pic.SetStateRAM($0C, $4F, cs_impleGPR);
     pic.SetStateRAM($8C, $CF, cs_mapToBnk, 0);
   end;
   'PIC16F870': begin
     pic.MaxFreq:=20000000;
     pic.Npins := 28;
     pic.NumBanks := 4;  //tiene un bloque sin usar en el banco 1 y reflejado los bancos 2 y 3
     pic.NumPages:=1;
     SetRAM16F70_71(pic);
   end;
   'PIC16F871': begin
     pic.MaxFreq:=20000000;
     pic.Npins := 40;
     pic.NumBanks := 4;  //tiene un bloque sin usar en el banco 1 y reflejado los bancos 2 y 3
     pic.NumPages:=1;
     SetRAM16F70_71(pic);
   end;
   'PIC16F872': begin
     pic.MaxFreq:=20000000;
     pic.Npins := 28;
     pic.NumBanks := 2;  //tiene un bloque sin usar en el banco 1 y reflejado los bancos 2 y 3
     pic.NumPages:=1;
     SetRAM16F70_71(pic);
   end;
   'PIC16F873',
   'PIC16F873A': begin
     pic.MaxFreq:=20000000;
     pic.Npins := 28;
     pic.NumBanks:=4;    //los bancos 2 y 3 están reflejados
     pic.NumPages:=2;
     pic.GPRStart:=$20;
     SetRAM16F73_74(pic);
   end;
   'PIC16F874',
   'PIC16F874A': begin
     pic.MaxFreq:=20000000;
     pic.Npins := 40;
     pic.NumBanks:=4;    //los bancos 2 y 3 están reflejados
     pic.NumPages:=2;
     pic.GPRStart:=$20;
     SetRAM16F73_74(pic);
   end;
   'PIC16F876',
   'PIC16F876A': begin
     pic.MaxFreq:=20000000;
     pic.Npins := 28;
     pic.NumBanks:=4;
     pic.NumPages:=4;
     pic.GPRStart:=$20;   //es solo el valor de los bancoa 0 y 1
     SetRAM16F76_77(pic);
   end;
   'PIC16F877',
   'PIC16F877A',
   'PIC16F887': begin
     pic.MaxFreq:=20000000;
     pic.Npins := 40;
     pic.NumBanks:=4;
     pic.NumPages:=4;
     pic.GPRStart:=$20;   //es solo el valor de los bancoa 0 y 1
     SetRAM16F76_77(pic);
   end;
   'PIC16F627A': begin
     pic.MaxFreq:=20000000;
     pic.Npins := 16;
     pic.NumBanks:=4;
     pic.NumPages:=1; pic.MaxFlash:=1024;  //banco 0 implementado parcialmente
     pic.GPRStart:=$20;
     SetRAM16F627_628(pic);
   end;
   'PIC16F628A': begin
     pic.MaxFreq:=20000000;
     pic.Npins := 16;
     pic.NumBanks:=4;
     pic.NumPages:=1;
     pic.GPRStart:=$20;   //es solo el valor de los bancoa 0 y 1
     SetRAM16F627_628(pic);
   end;
   'PIC16F648A': begin
     pic.MaxFreq:=20000000;
     pic.Npins := 16;
     pic.NumBanks:=4;
     pic.NumPages:=2;
     pic.GPRStart:=$20;   //es solo el valor de los bancoa 0 y 1
     pic.SetStateRAM($020, $07F, cs_impleGPR);
     pic.SetStateRAM($0A0, $0EF, cs_impleGPR);
     pic.SetStateRAM($0F0, $0FF, cs_mapToBnk, 0);
     pic.SetStateRAM($120, $16F, cs_impleGPR);
     pic.SetStateRAM($170, $17F, cs_mapToBnk, 0);
     pic.SetStateRAM($1F0, $1FF, cs_mapToBnk, 0);
   end
   else
     exit(false);
   end;
end;

end.

