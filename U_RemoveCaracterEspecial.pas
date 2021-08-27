unit U_RemoveCaracterEspecial;

interface

uses
   winapi.windows, System.SysUtils, System.MaskUtils;


Function FormataData(TextoData:String):String;
Function FormataCNPJ(TextoCNPJ:String):String;



implementation




Function FormataData(TextoData:String):String;
begin

    Delete(TextoData,ansipos('"',TextoData),1);
    Delete(TextoData,ansipos('\',TextoData),1);
    Result := FormatmaskText('99/99/9999',TextoData); // Formata os numero

end;


Function FormataCNPJ(TextoCNPJ:String):String;
begin

    Delete(TextoCNPJ,ansipos('.',TextoCNPJ),1);
    Delete(TextoCNPJ,ansipos('.',TextoCNPJ),1);
    Delete(TextoCNPJ,ansipos('/',TextoCNPJ),1);
    Delete(TextoCNPJ,ansipos('-',TextoCNPJ),1);
    Result := FormatmaskText('99999999999999',TextoCNPJ); // Formata os numero

end;


end.
