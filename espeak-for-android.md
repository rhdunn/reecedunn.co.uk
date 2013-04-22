---
layout: project
_copyright_: "Copyright (C) 2013 Reece H. Dunn"
_license_: "CC-BY-SA 3.0"
description: The eSpeak text-to-speech program for Android 4.0 and later.
long-description: The eSpeak for Android program is a port of the eSpeak Text-to-Speech synthesiser to Android, supporting 75 languages and accents.
keywords: text to speech, tts, espeak, android
title: eSpeak for Android
parent: /index.html
install: "https://play.google.com/store/apps/details?id=com.reecedunn.espeak"
issues: "https://github.com/rhdunn/espeak/issues"
license: gpl3+
programming-language:
  - C++
  - Java
os:
  - Android
homepage: "http://rhdunn.github.com/espeak-for-android"
repositories:
  - { name: GitHub ,
      id: github ,
      location: "git://github.com/rhdunn/espeak.git" ,
      browse: "https://github.com/rhdunn/espeak" }
developers:
  - { name: "Jonathan Duddington" , url: "http://sourceforge.net/users/jonsd" }
  - { name: "Google Inc." , url: "http://www.google.com" }
  - { name: "Alan Viverette" , url: "https://plus.google.com/102998416034718374371" }
  - { name: "Reece H. Dunn" , url: "/about#me" , maintainer: true }
categories:
  - { name: "Speech Synthesis" , url: "http://dbpedia.org/resource/Category:Speech_synthesis" }
rdf: ['rdfxml']
feeds: ['rss2']
---

This port of eSpeak is built on the eyes-free version. It fixes multiple issues found in the eyes-free version:

1. Speech rate and pitch are correctly handled, so eSpeak on Android sounds like it does on the desktop
2. Languages are correctly selected (e.g. selecting Slovak and Slovenian, or selecting Cantonese Chinese)
3. Language names are correctly displayed (e.g. "Scottish English" is displayed as "English (United Kingdom, Scottish Standard English)")
4. Accent and special characters are supported
5. MIPS-based devices are supported
6. Various memory leaks and crashes are fixed
7. SSML is only processed if the SSML markup is wrapped in a &lt;speak&gt; tag

Pronunciation errors should be reported to the [espeak-general@lists.sourceforge.net](mailto:espeak-general@lists.sourceforge.net) mailing list.

# Languages and Accents

<ol class="columns3 flex">
<li property="s:countriesSupported" datatype="dct:RFC5646" content="af">Afrikaans</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="sq" title="Albanian">shqip</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="am" title="Amharic">ኣማርኛ <sup><a href="#note1">1</a></sup></li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="an" title="Aragonese">Fabla</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="hy" title="Armenian">Հայերէն</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="hy-arevmda" title="Armenian (Western)">Արեւմտահայերէն</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="bn" title="Bengali">বাংলা <sup><a href="#note1">1</a></sup></li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="bs" title="Bosnian">Bosanski</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="bg" title="Bulgarian">български</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="ca" title="Catalan">català</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="zh-yue" title="Chinese (Cantonese)">廣東話 (广东话)</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="zh" title="Chinese (Manderin)">普通話 (普通话)</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="hr" title="Croatian">Hrvatski</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="cs" title="Czech">čeština</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="da" title="Danish">dansk</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="nl" title="Dutch">Nederlands</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="en">English</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="eo">Esperanto</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="et" title="Estonian">eesti keel</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="fi" title="Finnish">suomi</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="fr" title="French">français</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="fr-BE" title="French (Belgium)">français (belgique)</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="ka" title="Georgian">ქართული</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="de" title="German">Deutsch</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="el" title="Greek">ελληνικά</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="grc" title="Greek (Ancient)">αρχαία ελληνική</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="hu" title="Hungarian">magyar</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="hi" title="Hindi">हिन्दी</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="is" title="Icelandic">Íslenska</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="in" title="Indonesian">Bahasa Indonesia</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="ga" title="Irish">Gaeilge (na hÉireann)</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="it" title="Italian">Italiano</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="kl">Kalaallisut <sup><a href="#note1">1</a></sup></li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="kn" title="Kannada">ಕನ್ನಡ</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="kk" title="Kazakh">Қазақ тілі</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="ko" title="Korean">한국어 (韓國語) <sup><a href="#note1">1</a></sup></li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="ku" title="Kurdish">کوردی</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="la" title="Latin">Lingua Latina</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="lv" title="Latvian">latviešu valoda</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="lt" title="Lithuanian">lietuvių kalba</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="jbo">Lojban</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="mk" title="Macedonian">македонски</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="ml" title="Malayalam">മലയാളം</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="ne" title="Nepali">नेपाली</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="no" title="Norwegian">Norsk</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="pap" title="Papiamento">Papiamentu <sup><a href="#note1">1</a></sup></li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="fa" title="Farsi">فارسى</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="pl" title="Polish">polski</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="pt" title="Portuguese">português</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="pt-BR" title="Portuguese (Brazillian)">português do Brasil</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="pa" title="Punjabi">ﺏﺎﺠﻨﭘ</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="ro" title="Romanian">român</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="ru" title="Russian">Русский язык</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="sr" title="Serbian">српски</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="si" title="Sinhalese">සිංහල <sup><a href="#note1">1</a></sup></li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="sk" title="Slovak">slovenčina</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="sl" title="Slovenian">slovenščina <sup><a href="#note1">1</a></sup></li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="es" title="Spanish">español</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="es-419" title="Spanish (Latin American)">español de América</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="sw" title="Swahili">Kiswahili</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="sv" title="Swedish">Svenska</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="ta" title="Tamil">தமிழ்</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="te" title="Telugu">	తెలుగు <sup><a href="#note1">1</a></sup></li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="tr" title="Turkish">Türkçe</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="ur" title="Urdu">اردو <sup><a href="#note1">1</a></sup></li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="vi" title="Vietnamese">tiếng việt</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="vi-x-hue" title="Vietnamese">huế việt</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="cy" title="Welsh">Cymraeg</li>
</ol>

1. {#note1} These are the test voices from eSpeak.

# English Accents

<ol class="columns3 flex">
<li property="s:countriesSupported" datatype="dct:RFC5646" content="en-GB-x-wmids">West Midlands</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="en-029">Caribbean</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="en-GB-x-north">Lancastrian</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="en-GB-x-rp">Received Pronunciation</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="en-GB-scotland">Scottish</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="en-GB">British</li>
<li property="s:countriesSupported" datatype="dct:RFC5646" content="en-US">American</li>
</ol>
