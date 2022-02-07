<#
|==============================================================================>|
   AP-Alarm System by APoorv Verma [AP] on 10/14/2013
|==============================================================================>|
      $) Hikes the Volume up to 100%
      $) Playes A Cool Tune Else Plays a random video [Docs/Videos]
      $) Works with Dont-Sleep To make sure computer doesn't fall asleep
      $) Key Press Handling
         @) 'Esc' = Quit
|==============================================================================>|
#>
param([ValidateRange(0, 24)]$Hour = 9, [ValidateRange(0, 60)]$minutes = 0, $VideoScanString = '~\Downloads\Videos\*.mp4')
# =======================================START=OF=COMPILER==========================================================|
#    The Following Code was added by AP-Compiler Version [1.2] To Make this program independent of AP-Core Engine
#    GitHub: https://github.com/avdaredevil/AP-Compiler
# ==================================================================================================================|
$Script:PSHell=$(if($PSHell){$PSHell}elseif($PSScriptRoot){$PSScriptRoot}else{"."});
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gS2V5UHJlc3NlZENvZGUge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV1bSW50XSRLZXksICRTdG9yZT0iXl5eIikNCg0KICAgIGlmICghJEhvc3QuVUkuUmF3VUkuS2V5QXZhaWxhYmxlIC1hbmQgJFN0b3JlIC1lcSAiXl5eIikge1JldHVybiAkRmFsc2V9DQogICAgaWYgKCRTdG9yZSAtZXEgIl5eXiIpIHskU3RvcmUgPSAkSG9zdC5VSS5SYXdVSS5SZWFkS2V5KCJJbmNsdWRlS2V5VXAsTm9FY2hvIil9DQogICAgcmV0dXJuICgkS2V5IC1pbiAkU3RvcmUuVmlydHVhbEtleUNvZGUpDQp9CgpmdW5jdGlvbiBJbnZva2UtVGVybmFyeSB7cGFyYW0oW2Jvb2xdJGRlY2lkZXIsIFtzY3JpcHRibG9ja10kaWZ0cnVlLCBbc2NyaXB0YmxvY2tdJGlmZmFsc2UpDQoNCiAgICBpZiAoJGRlY2lkZXIpIHsgJiRpZnRydWV9IGVsc2UgeyAmJGlmZmFsc2UgfQ0KfQoKZnVuY3Rpb24gVGltZS1BZGoge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSR0cnVlKV1bRG91YmxlXSRNaWxsaXNlY29uZHMsICRJbnB1dFR5cGUgPSAiTWlsbGlzZWNvbmRzIiwgW1N3aXRjaF0kRnVsbEZvcm0pDQoNCiAgICBpZiAoJE1pbGxpc2Vjb25kcyAtZXEgMCkge3JldHVybiAiMCAkKD86KCRmdWxsRm9ybSl7Ik1pbGxpc2Vjb25kcyJ9eyJtcyJ9KSJ9DQogICAgaWYgKCRJbnB1dFR5cGUgLW5lICIiKSB7DQogICAgICAgICRDb252ID0gQHsiTWlsbGlzZWNvbmRzIiA9IDF9DQogICAgICAgICRDb252ICs9IEB7IlNlY29uZHMiID0gMTAwMCokQ29udi5NaWxsaXNlY29uZHN9DQogICAgICAgICRDb252ICs9IEB7Ik1pbnV0ZXMiID0gNjAqJENvbnYuU2Vjb25kc30NCiAgICAgICAgJENvbnYgKz0gQHsiSG91cnMiID0gNjAqJENvbnYuTWludXRlc30NCiAgICAgICAgJENvbnYgKz0gQHsiRGF5cyIgPSAyNCokQ29udi5Ib3Vyc30NCiAgICAgICAgJENvbnYgKz0gQHsiWWVhcnMiID0gMzY1LjI1KiRDb252LkRheXN9DQogICAgICAgIGlmICgkQ29udi5Db250YWluc0tleSgkSW5wdXRUeXBlKSkgeyRNaWxsaXNlY29uZHMgKj0gJENvbnYuJElucHV0VHlwZX0NCiAgICB9DQogICAgJFNpZ24gID0gPzooJE1pbGxpc2Vjb25kcyAtbHQgMCl7LTF9ezF9DQogICAgJE1pbGxpc2Vjb25kcyAqPSAkU2lnbg0KICAgICRTcGFuICA9IE5ldy1UaW1lU3BhbiAoR2V0LURhdGUgLU1pbGxpc2Vjb25kIDApICQoR2V0LURhdGUgLU1pbGxpc2Vjb25kIDApLkFkZE1pbGxpc2Vjb25kcygkTWlsbGlzZWNvbmRzKQ0KICAgICRQcm9wcyA9ICgkc3BhbiB8IGdtIHwgPyB7JF8gLW1hdGNoICJUb3RhbCJ9KS5uYW1lDQogICAgJFNpemVzID0gPzooJEZ1bGxGb3JtKXskUHJvcHMgfCAlIHskXy5zdWJzdHJpbmcoNSl9fXtAKCJkYXlzIiwiaHJzIiwibXMiLCJtaW4iLCJzZWMiKX0NCiAgICAkU2l6ZXMgPSAkU2l6ZXNbMCwxLDMsNCwyXQ0KICAgICRQcm9wcyA9ICRQcm9wc1swLDEsMyw0LDJdDQogICAgJERlZyA9IC0xDQogICAgZG8gew0KICAgICAgICAkREVHKysNCiAgICB9IHdoaWxlIChbU3lzdGVtLk1hdGhdOjpSb3VuZCgkU3Bhbi4oJHByb3BzWyRkZWddKSwyKSAtbHQgMSkNCiAgICAkYW5zID0gJFNwYW4uKCRwcm9wc1skZGVnXSk7JHVuaXQgPSAkU2l6ZXNbJERlZ10NCiAgICBpZiAoJERFRyAtZXEgMCAtYW5kICRTcGFuLigkcHJvcHNbJGRlZ10pIC1nZSAzNjUuMjUpIHskYW5zIC89IDM2NS4yNTskdW5pdD0/OigkRnVsbEZvcm0peyJZZWFycyJ9eyJ5ciJ9fQ0KICAgICRSZXR1cm5hID0gIiQoJFNpZ24qW1N5c3RlbS5NYXRoXTo6Um91bmQoJGFucywyKSkiLCIkdW5pdCINCiAgICAkUmV0dXJuYVsxXSA9ID86KCRSZXR1cm5hWzBdIC1lcSAxKXskUmV0dXJuYVsxXS50cmltRW5kKCJzIil9eyRSZXR1cm5hWzFdfQ0KICAgIGlmICgkUmV0dXJuYVsxXSAtZXEgIm0iKSB7JFJldHVybmFbMV0gKz0gInMifQ0KICAgIFJldHVybiAoJFJldHVybmEgLWpvaW4oIiAiKSkNCn0KCmZ1bmN0aW9uIEdldC1Fc2NhcGUge1tDaGFyXTB4MWJ9CgpmdW5jdGlvbiBHZXQtV2hlcmUge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSR0cnVlKV1bc3RyaW5nXSRGaWxlLCBbU3dpdGNoXSRBbGwsIFtTd2l0Y2hdJE1hbnVhbFNjYW4pDQoNCiAgICAkV2hlcmVCaW5FeGlzdHMgPSBHZXQtQ29tbWFuZCAid2hlcmUiIC1lYSBTaWxlbnRseUNvbnRpbnVlDQogICAgJElzVW5peCA9ICRQU1ZlcnNpb25UYWJsZS5QbGF0Zm9ybSAtZXEgIlVuaXgiDQogICAgaWYgKCRGaWxlIC1lcSAid2hlcmUiIC1vciAkRmlsZSAtZXEgIndoZXJlLmV4ZSIpIHtyZXR1cm4gJFdoZXJlQmluRXhpc3RzfQ0KICAgIGlmICgkV2hlcmVCaW5FeGlzdHMgLWFuZCAhJE1hbnVhbFNjYW4pIHsNCiAgICAgICAgJE91dD0kbnVsbA0KICAgICAgICBpZiAoJElzVW5peCkgew0KICAgICAgICAgICAgJE91dCA9IHdoaWNoICRmaWxlIDI+JG51bGwNCiAgICAgICAgfSBlbHNlIHskT3V0ID0gd2hlcmUuZXhlICRmaWxlIDI+JG51bGx9DQogICAgICAgIA0KICAgICAgICBpZiAoISRPdXQpIHtyZXR1cm59DQogICAgICAgIGlmICgkQWxsKSB7cmV0dXJuICRPdXR9DQogICAgICAgIHJldHVybiBAKCRPdXQpWzBdDQogICAgfQ0KICAgIGZvcmVhY2ggKCRGb2xkZXIgaW4gKEdldC1QYXRoKSkgew0KICAgICAgICBpZiAoJElzVW5peCkgew0KICAgICAgICAgICAgJExvb2t1cCA9ICIkRm9sZGVyLyRGaWxlIg0KICAgICAgICAgICAgaWYgKCEoVGVzdC1QYXRoIC1QYXRoVHlwZSBMZWFmICRMb29rdXApKSB7Y29udGludWV9DQogICAgICAgICAgICBSZXNvbHZlLVBhdGggJExvb2t1cCB8ICUgUGF0aA0KICAgICAgICAgICAgaWYgKCEkQWxsKSB7cmV0dXJufQ0KICAgICAgICB9IGVsc2Ugew0KICAgICAgICAgICAgZm9yZWFjaCAoJEV4dGVuc2lvbiBpbiAoR2V0LVBhdGggLVBhdGhWYXIgUEFUSEVYVCkpIHsNCiAgICAgICAgICAgICAgICAkTG9va3VwID0gIiRGb2xkZXIvJEZpbGUkRXh0ZW5zaW9uIg0KICAgICAgICAgICAgICAgIGlmICghKFRlc3QtUGF0aCAtUGF0aFR5cGUgTGVhZiAkTG9va3VwKSkge2NvbnRpbnVlfQ0KICAgICAgICAgICAgICAgIFJlc29sdmUtUGF0aCAkTG9va3VwIHwgJSBQYXRoDQogICAgICAgICAgICAgICAgaWYgKCEkQWxsKSB7cmV0dXJufQ0KICAgICAgICAgICAgfQ0KICAgICAgICB9DQogICAgfQ0KfQoKZnVuY3Rpb24gQVAtUmVxdWlyZSB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtBbGlhcygiRnVuY3Rpb25hbGl0eSIsIkxpYnJhcnkiKV1bU3RyaW5nXSRMaWIsIFtTY3JpcHRCbG9ja10kT25GYWlsPXt9LCBbU3dpdGNoXSRQYXNzVGhydSkNCg0KICAgICRMb2FkTW9kdWxlID0gew0KICAgICAgICBwYXJhbSgkRmlsZSxbYm9vbF0kSW1wb3J0KQ0KICAgICAgICB0cnkge0ltcG9ydC1Nb2R1bGUgJEZpbGUgLWVhIHN0b3A7cmV0dXJuIDF9IGNhdGNoIHt9DQogICAgICAgICRMaWI9QVAtQ29udmVydFBhdGggIjxMSUI+IjskTEYgPSAiJExpYlwkRmlsZSINCiAgICAgICAgW3N0cmluZ10kZiA9IGlmKHRlc3QtcGF0aCAtdCBsZWFmICRMRil7JExGfWVsc2VpZih0ZXN0LXBhdGggLXQgbGVhZiAiJExGLmRsbCIpeyIkTEYuZGxsIn0NCiAgICAgICAgaWYgKCRmIC1hbmQgJEltcG9ydCkge0ltcG9ydC1Nb2R1bGUgJGZ9DQogICAgICAgIHJldHVybiAkZg0KICAgIH0NCiAgICAkU3RhdCA9ICQoc3dpdGNoIC1yZWdleCAoJExpYi50cmltKCkpIHsNCiAgICAgICAgIl5JbnRlcm5ldCIgICAgICAgICAgICAgICB7dGVzdC1jb25uZWN0aW9uIGdvb2dsZS5jb20gLUNvdW50IDEgLVF1aWV0fQ0KICAgICAgICAiXmRlcDooLiopIiAgICAgICAgICAgICAgIHtHZXQtV2hlcmUgJE1hdGNoZXNbMV19DQogICAgICAgICJeKGxpYnxtb2R1bGUpOiguKikiICAgICAgeyRMb2FkTW9kdWxlLmludm9rZSgkTWF0Y2hlc1syXSwgJHRydWUpfQ0KICAgICAgICAiXihsaWJ8bW9kdWxlKV90ZXN0OiguKikiIHskTG9hZE1vZHVsZS5pbnZva2UoJE1hdGNoZXNbMl0pfQ0KICAgICAgICAiXmZ1bmN0aW9uOiguKikiICAgICAgICAgIHtnY20gJE1hdGNoZXNbMV0gLWVhIFNpbGVudGx5Q29udGludWV9DQogICAgICAgICJec3RyaWN0X2Z1bmN0aW9uOiguKikiICAge1Rlc3QtUGF0aCAiRnVuY3Rpb246XCQoJE1hdGNoZXNbMV0pIn0NCiAgICAgICAgZGVmYXVsdCB7V3JpdGUtQVAgIiFJbnZhbGlkIHNlbGVjdG9yIHByb3ZpZGVkIFskKCIkTGliIi5zcGxpdCgnOicpWzBdKV0iO3Rocm93ICdCQURfU0VMRUNUT1InfQ0KICAgIH0pDQogICAgaWYgKCEkU3RhdCkgeyRPbkZhaWwuSW52b2tlKCl9DQogICAgaWYgKCRQYXNzVGhydSkge3JldHVybiAkU3RhdH0NCn0KCmZ1bmN0aW9uIFdyaXRlLUFQIHsNCiAgICBbQ21kbGV0QmluZGluZygpXQ0KICAgIHBhcmFtKFtQYXJhbWV0ZXIoVmFsdWVGcm9tUGlwZWxpbmU9JHRydWUsIE1hbmRhdG9yeT0kVHJ1ZSldJFRleHQsW1N3aXRjaF0kTm9TaWduLFtTd2l0Y2hdJFBsYWluVGV4dCxbVmFsaWRhdGVTZXQoIkNlbnRlciIsIlJpZ2h0IiwiTGVmdCIpXVtTdHJpbmddJEFsaWduPSdMZWZ0JyxbU3dpdGNoXSRQYXNzVGhydSkNCiAgICBiZWdpbiB7JFRUID0gQCgpfQ0KICAgIFByb2Nlc3MgeyRUVCArPSAsJFRleHR9DQogICAgRU5EIHsNCiAgICAgICAgJEJsdWUgPSAkKGlmICgkV1JJVEVfQVBfTEVHQUNZX0NPTE9SUyl7M31lbHNleydCbHVlJ30pDQogICAgICAgIGlmICgkVFQuY291bnQgLWVxIDEpIHskVFQgPSAkVFRbMF19OyRUZXh0ID0gJFRUDQogICAgICAgIGlmICgkdGV4dC5jb3VudCAtZ3QgMSAtb3IgJHRleHQuR2V0VHlwZSgpLk5hbWUgLW1hdGNoICJcW1xdJCIpIHsNCiAgICAgICAgICAgIHJldHVybiAkVGV4dCB8ID8geyIkXyJ9IHwgJSB7DQogICAgICAgICAgICAgICAgV3JpdGUtQVAgJF8gLU5vU2lnbjokTm9TaWduIC1QbGFpblRleHQ6JFBsYWluVGV4dCAtQWxpZ24gJEFsaWduIC1QYXNzVGhydTokUGFzc1RocnUNCiAgICAgICAgICAgIH0NCiAgICAgICAgfQ0KICAgICAgICBpZiAoISR0ZXh0IC1vciAkdGV4dCAtbm90bWF0Y2ggIl4oKD88Tk5MPngpfCg/PE5TPm5zPykpezAsMn0oPzx0Plw+KikoPzxzPlsrXC0hXCpcI1xAX10pKD88dz4uKikiKSB7cmV0dXJuICRUZXh0fQ0KICAgICAgICAkdGIgID0gIiAgICAiKiRNYXRjaGVzLnQubGVuZ3RoDQogICAgICAgICRDb2wgPSBAeycrJz0nMic7Jy0nPScxMic7JyEnPScxNCc7JyonPSRCbHVlOycjJz0nRGFya0dyYXknOydAJz0nR3JheSc7J18nPSd3aGl0ZSd9WygkU2lnbiA9ICRNYXRjaGVzLlMpXQ0KICAgICAgICBpZiAoISRDb2wpIHtUaHJvdyAiSW5jb3JyZWN0IFNpZ24gWyRTaWduXSBQYXNzZWQhIn0NCiAgICAgICAgJFNpZ24gPSAkKGlmICgkTm9TaWduIC1vciAkTWF0Y2hlcy5OUykgeyIifSBlbHNlIHsiWyRTaWduXSAifSkNCiAgICAgICAgQVAtUmVxdWlyZSAiZnVuY3Rpb246QWxpZ24tVGV4dCIge2Z1bmN0aW9uIEdsb2JhbDpBbGlnbi1UZXh0KCRhbGlnbiwkdGV4dCkgeyR0ZXh0fX0NCiAgICAgICAgJERhdGEgPSAiJHRiJFNpZ24kKCRNYXRjaGVzLlcpIjtpZiAoISREYXRhKSB7cmV0dXJufQ0KICAgICAgICAkRGF0YSA9IEFsaWduLVRleHQgLUFsaWduICRBbGlnbiAiJHRiJFNpZ24kKCRNYXRjaGVzLlcpIg0KICAgICAgICBpZiAoJFBsYWluVGV4dCkge3JldHVybiAkRGF0YX0NCiAgICAgICAgV3JpdGUtSG9zdCAtTm9OZXdMaW5lOiQoW2Jvb2xdJE1hdGNoZXMuTk5MKSAtZiAkQ29sICREYXRhDQogICAgICAgIGlmICgkUGFzc1RocnUpIHtyZXR1cm4gJERhdGF9DQogICAgfQ0KfQoKZnVuY3Rpb24gS2V5UHJlc3NlZCB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtTdHJpbmdbXV0kS2V5LCAkU3RvcmU9Il5eXiIpDQoNCiAgICBpZiAoJFN0b3JlIC1lcSAiXl5eIiAtYW5kICRIb3N0LlVJLlJhd1VJLktleUF2YWlsYWJsZSkgeyRTdG9yZSA9ICRIb3N0LlVJLlJhd1VJLlJlYWRLZXkoIkluY2x1ZGVLZXlVcCxOb0VjaG8iKX0gZWxzZSB7aWYgKCRTdG9yZSAtZXEgIl5eXiIpIHtyZXR1cm4gJEZhbHNlfX0NCiAgICAkQW5zID0gJEZhbHNlDQogICAgJEtleSB8ICUgew0KICAgICAgICAkU09VUkNFID0gJF8NCiAgICAgICAgdHJ5IHsNCiAgICAgICAgICAgICRBbnMgPSAkQW5zIC1vciAoS2V5UHJlc3NlZENvZGUgJFNPVVJDRSAkU3RvcmUpDQogICAgICAgIH0gY2F0Y2ggew0KICAgICAgICAgICAgRm9yZWFjaCAoJEsgaW4gJFNPVVJDRSkgew0KICAgICAgICAgICAgICAgIFtTdHJpbmddJEsgPSAkSw0KICAgICAgICAgICAgICAgIGlmICgkSy5sZW5ndGggLWd0IDQgLWFuZCAoJEtbMCwxLC0xLC0yXSAtam9pbigiIikpIC1lcSAifn5+fiIpIHsNCiAgICAgICAgICAgICAgICAgICAgJEFucyA9ICRBTlMgLW9yIChLZXlQcmVzc2VkQ29kZSAoS2V5VHJhbnNsYXRlKCRLKSkgJFN0b3JlKQ0KICAgICAgICAgICAgICAgIH0gZWxzZSB7DQogICAgICAgICAgICAgICAgICAgICRBbnMgPSAkQU5TIC1vciAoJEsuY2hhcnMoMCkgLWluICRTdG9yZS5DaGFyYWN0ZXIpDQogICAgICAgICAgICAgICAgfQ0KICAgICAgICAgICAgfQ0KICAgICAgICB9DQogICAgfQ0KICAgIHJldHVybiAkQW5zDQp9CgpmdW5jdGlvbiBLZXlUcmFuc2xhdGUge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV1bU3RyaW5nXSRLZXkpDQoNCiAgICAkSGFzaEtleSA9IEB7DQogICAgICAgICJ+fkN0cmxDfn4iPTY3DQogICAgICAgICJ+flNwYWNlfn4iPTMyDQogICAgICAgICJ+fkVTQ0FQRX5+Ij0yNw0KICAgICAgICAifn5FbnRlcn5+Ij0xMw0KICAgICAgICAifn5TaGlmdH5+Ij0xNg0KICAgICAgICAifn5Db250cm9sfn4iPTE3DQogICAgICAgICJ+fkFsdH5+Ij0xOA0KICAgICAgICAifn5CYWNrU3BhY2V+fiI9OA0KICAgICAgICAifn5EZWxldGV+fiI9NDYNCiAgICAgICAgIn5+ZjF+fiI9MTEyDQogICAgICAgICJ+fmYyfn4iPTExMw0KICAgICAgICAifn5mM35+Ij0xMTQNCiAgICAgICAgIn5+ZjR+fiI9MTE1DQogICAgICAgICJ+fmY1fn4iPTExNg0KICAgICAgICAifn5mNn5+Ij0xMTcNCiAgICAgICAgIn5+Zjd+fiI9MTE4DQogICAgICAgICJ+fmY4fn4iPTExOQ0KICAgICAgICAifn5mOX5+Ij0xMjANCiAgICAgICAgIn5+ZjEwfn4iPTEyMQ0KICAgICAgICAifn5mMTF+fiI9MTIyDQogICAgICAgICJ+fmYxMn5+Ij0xMjMNCiAgICAgICAgIn5+TXV0ZX5+Ij0xNzMNCiAgICAgICAgIn5+SW5zZXJ0fn4iPTQ1DQogICAgICAgICJ+flBhZ2VVcH5+Ij0zMw0KICAgICAgICAifn5QYWdlRG93bn5+Ij0zNA0KICAgICAgICAifn5FTkR+fiI9MzUNCiAgICAgICAgIn5+SE9NRX5+Ij0zNg0KICAgICAgICAifn50YWJ+fiI9OQ0KICAgICAgICAifn5DYXBzTG9ja35+Ij0yMA0KICAgICAgICAifn5OdW1Mb2Nrfn4iPTE0NA0KICAgICAgICAifn5TY3JvbGxMb2Nrfn4iPTE0NQ0KICAgICAgICAifn5XaW5kb3dzfn4iPTkxDQogICAgICAgICJ+fkxlZnR+fiI9MzcNCiAgICAgICAgIn5+VXB+fiI9MzgNCiAgICAgICAgIn5+UmlnaHR+fiI9MzkNCiAgICAgICAgIn5+RG93bn5+Ij00MA0KICAgICAgICAifn5LUDB+fiI9OTYNCiAgICAgICAgIn5+S1Axfn4iPTk3DQogICAgICAgICJ+fktQMn5+Ij05OA0KICAgICAgICAifn5LUDN+fiI9OTkNCiAgICAgICAgIn5+S1A0fn4iPTEwMA0KICAgICAgICAifn5LUDV+fiI9MTAxDQogICAgICAgICJ+fktQNn5+Ij0xMDINCiAgICAgICAgIn5+S1A3fn4iPTEwMw0KICAgICAgICAifn5LUDh+fiI9MTA0DQogICAgICAgICJ+fktQOX5+Ij0xMDUNCiAgICB9DQogICAgaWYgKFtpbnRdJENvbnZlcnQgPSAkSGFzaEtleS4kS2V5KSB7cmV0dXJuICRDb252ZXJ0fQ0KICAgIFRocm93ICJJbnZhbGlkIFNwZWNpYWwgS2V5IENvbnZlcnNpb24iDQp9CgpTZXQtQWxpYXMgPzogSW52b2tlLVRlcm5hcnkKU2V0LUFsaWFzIGVzYyBHZXQtRXNjYXBl")))
# ========================================END=OF=COMPILER===========================================================|

$AlarmScript = "$PSHell\Popcornetune.ps1"

function Loud {
    if (AP-Require -PassThru "dep:nircmd") {
        nircmd setdefaultsounddevice "Speakers"
    	nircmd mutesysvolume 0
        nircmd setsysvolume 65535
        return
    }
    $ws = new-object -com wscript.shell
    1..100 | % {$ws.SendKeys([char]175)}
}
function Sleeper ([Parameter(Mandatory=$true)][Double]$Time){
    $maxSleepCycles = [Math]::Floor($time/3)
    foreach ($i in 1..$maxSleepCycles) {
        Start-Sleep -s 3
        KeyChecks $i $maxSleepCycles
    }
    Start-Sleep -s ($time%3)
}
function Warn {
    Loud
    $Guy = new-object -com SAPI.SpVoice
    [void]$Guy.speak("5 Minute warning before alarm")
}
function KeyChecks($num, $tot) {
    while ($Host.UI.RawUI.KeyAvailable) {
        $Store = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyup")
        If (KeyPressed "q","x","~~Escape~~" $Store) {Write-AP "!QUIT Signal...";Quit}
        If ($tot -and (KeyPressed "~~Space~~","~~Enter~~","~~ScrollLock~~" $Store)) {Write-AP ">!Sleep cycle [$num / $tot] for 3 secs"}
    }
}
function Quit {
    [Console]::Title = $otitle
    exit
}
function Detect-PossibleAlarm {
    if (test-path $AlarmScript -type leaf) {
        return "Script"
    }
    if (ls $VideoScanString -ea SilentlyContinue) {
        return "Videos"
    }
    return "Simple-Beep"
}
function Alarm {
    $AlarmStrategy = Detect-PossibleAlarm
    Loud
    Write-AP "x*","nx_Using Alarm Strategy: ","n!$AlarmStrategy"
    switch ($AlarmStrategy) {
        "Script" {
            Write-AP ">*Running: $AlarmScript"
            cmd /c start /wait /min powershell -noprofile -ep bypass $AlarmScript -scale 3.5
            break
        }
        "Videos" {
            ls $VideoScanString | Get-Random | % {Explorer $_}
            start-sleep (60*5) # 5 Minutes!
            break
        }
        "Simple-Beep" {
            $Iters = 60 * 5 / 4 # 5 mins / 4 seconds of beeping per loop
            1..$Iters | % {
                Write-AP ">#Beeping for 4 seconds iter [$_/$Iters]"
                [console]::Beep(500, 2000)
                sleep 2
                [console]::Beep(2000,2000)
                sleep 2
            }
        }
    }
}
function Get-TimeDiff($t) {
    New-TimeSpan (Get-Date) $t
}
#= Main Running Logic ==============================|
switch ((Detect-PossibleAlarm)) {
    "Script" {Write-AP "*Will use the local alarm script to wake you up :)";break}
    "Videos" {Write-AP "!Alarm script is missing, will need to use videos as alarm";break}
    "Simple-Beep" {Write-AP "!Alarm script is missing, and no videos found! Will use basic beeping patterns for final alarm";break}
    default {Write-AP "-Yo, you messed up developer!";Quit}
}
$OP = 0
$Trigger = $false
$otitle = [Console]::Title
$Timestamp = Get-Date -Hour $Hour -Second 0 -Minute $minutes
while ((TimeDiff $timestamp).TotalMinutes -lt 0) {$timestamp = $timestamp.AddDays(1)}
$AlarmTitle = Write-AP "x+","nx_Alarm set for ","n!$((Get-Date -Hour $Hour -Second 0 -Minute $minutes).toshorttimestring())" -PassThru | % {$_.substring(3)}
while ($true) {
    [Console]::Title = $AlarmTitle
    $OP++
    $Span = TimeDiff $Timestamp
    Write-AP "*Loop : $OP`t[Time To Fire = $(Time-Adj -fullForm ($Span.TotalMilliseconds))]"
    if ($Span.TotalMilliseconds -lt 0 -and $Span.TotalMilliseconds -gt -10) {
        Write-AP "*Time for Alarm";Alarm;$Trigger=$true
    }
    elseif ($Span.TotalMinutes -lt 5) {Write-AP "!Wake Up dude";Warn}
    $Sleep = $([Math]::Floor(($Span.TotalSeconds+250)/5))
    # write-ap "x+$Sleep"
    $Sleep = ?:($Sleep -lt 0){5}{?:($Sleep/60 -gt 45){$Sleep%(24*60*60)}{10}}
    Write-AP "+SET Sleep for $(Time-Adj -FullForm ($Sleep*1000))"
    Sleeper $Sleep
    KeyChecks
}
