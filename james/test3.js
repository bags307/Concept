/**
 * Created by brian on 11/1/14.
 */
url = 'http://www.acapela-group.com/demo-tts/DemoHTML5Form_V2.php';
text ='hello there';
sonid = 'sonid9';
voice = 'GRAHAM';
if (_GET['s']) sonid = _GET['s'];
if (_GET['v']) voice = _GET['v'];
if (_GET['q']) text = _GET['q'];

data =
{
  'MyLanguages' : sonid,
  'MySelectedVoice' : voice,
  'MyTextForTTS' : text,
  'SendToVaaS' :''};
// use key 'http' even if you send the request to https://...

options = {
  'http' : {
    'header'  : "Content-type: application/x-www-form-urlencoded\r\n",
    'method'  : 'POST',
    'content' : 'MyLanguages=' + data.MyLanguages + '&' + 'MySelectedVoice=' + data.MySelectedVoice + '&' + 'MyTextForTTS=' + data.MyTextForTTS +'&' + 'SendToVaas'
}
}
context  = stream_context_create{options};
result = file_get_contents(url, false, context);
hookp = "var myPhpVar = '";
fuck = substr(strstr(result,hookp),strlen(hookp));
rv = substr(fuck,0,strpos(fuck,"'"));
