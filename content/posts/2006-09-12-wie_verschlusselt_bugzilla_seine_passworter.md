---
date: "2006-09-12"
title: Wie verschlüsselt Bugzilla seine Passwörter?
slug: wie_verschlusselt_bugzilla_seine_passworter
tags: [ "Programming" ]
---

[Bugzilla](http://www.bugzilla.org/) kennt wohl jeder der schon mal einen Bug gemeldet hat. Heute hat mich interessiert wie ich es schaffe mit PHP einen neuen Bugzilla User anzulegen. Dazu muss man erst einmal herausfinden wie Bugzilla seine Hashes generiert. 

<pre>
mysql> SELECT cryptpassword FROM profiles WHERE login_name = "test";
+---------------+
| cryptpassword |
+---------------+
| 8QjCvBCpWNgQU |
+---------------+
1 row in set (0.00 sec)
</pre>

Dieser Hash sagt einem so noch nicht viel. Aber er hat 13 Stellen und ist ein DES Hash mit Salt. Genau genommen sind die ersten 2 Zeichen der Salt. Hier also "_8Q_".Wenn man ein wenig im PHP Manual sucht findet man [crypt()](http://at.php.net/manual/en/function.crypt.php) das auch in Perl so verwendet wird um den Hash zu erzeugen. 

<pre>
decke@chango:~$ php -r 'echo crypt("test", "8Q")."n";'
8QjCvBCpWNgQU
</pre>

Ein kurzer Test zeigt: es funktioniert! Nachdem wir ja schon wissen womit wir es zu tun haben ist es ein leichtes. Hier eine kleine Funktion für alle die es nicht selbst schreiben wollen. 

```php
function bz_crypt($password, $salt = '')
{
   $charset = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz./';
   $len = strlen($charset)-1; 

   if($salt == '')
      $salt = $charset[rand(0, $len)].$charset[rand(0, $len)]; 

   return crypt($password, $salt);
}
```

So generiert man nun einen neuen Passwort Hash ...

```php
echo bz_crypt("test");
```

und das Passwort beim Login zu prüfen ist damit auch recht einfach. 

```php
if(bz_crypt($password, substr($password_hash, 0, 2)) == $password_hash)
   echo "Login erfolgreich;
else
   echo "Passwort war falsch";
```

