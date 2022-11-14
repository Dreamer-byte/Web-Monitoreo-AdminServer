#!/bin/bash

echo " <h1>Servidor:`hostname` `who -b`</h1>";
echo "<br>"

#Tabla de usuarios conectados
CantUser="`who -H |wc -l`";
echo "<h1>Usuarios conectados al sistema</h1>";
echo "
<table class="content-table disco">
        <thead>
          <tr>
            <th>`who -H |tr "\n" "*" |cut -d "*" -f1| awk '{print $1}'`</th>
           <th>` who -H |tr "\n" "*" |cut -d "*" -f1| awk '{print $2}'`</th>
           <th>` who -H |tr "\n" "*" |cut -d "*" -f1| awk '{print $3}'`</th>
           <th>` who -H |tr "\n" "*" |cut -d "*" -f1| awk '{print $4}'`</th>
          </tr>
        </thead>
        <tbody>
";


for (( i=2; i <= $CantUser; i++ ))
do
echo " <tr> ";
 echo "
 <td>`who -H |tr "\n" "*" |cut -d "*" -f$i| awk '{print $1}'`</td>
 <td>`who -H |tr "\n" "*" |cut -d "*" -f$i| awk '{print $2}'`</td>
 <td>`who -H |tr "\n" "*" |cut -d "*" -f$i| awk '{print $3}'`
 `who -H |tr "\n" "*" |cut -d "*" -f$i| awk '{print $4}'`
 </td>
 <td>`who -H |tr "\n" "*" |cut -d "*" -f$i| awk '{print $5}'`</td>
 ";
echo "</tr>";
done
echo " </tbody> </table>";

#Tabla de memoria
echo "<h1> Memoria:</h1>";
echo "
<table class="content-table">
        <thead>
          <tr>
            <th>comando free</th>
            <th>`free -h|grep total| awk '{print $1}'`</th>
            <th>`free -h|grep total| awk '{print $2}'`</th>
            <th>`free -h|grep total| awk '{print $3}'`</th>
            <th>`free -h|grep total| awk '{print $4}'`</th>
            <th>`free -h|grep total| awk '{print $5}'`</th>
            <th>`free -h|grep total| awk '{print $6}'`</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>`free -h|grep Mem| awk '{print $1}'`</td>
            <td>`free -h|grep Mem| awk '{print $2}'`</td>
            <td>`free -h|grep Mem| awk '{print $3}'`</td>
            <td>`free -h|grep Mem| awk '{print $4}'`</td>
            <td>`free -h|grep Mem| awk '{print $5}'`</td>
            <td>`free -h|grep Mem| awk '{print $6}'`</td>
            <td>`free -h|grep Mem| awk '{print $7}'`</td>
          </tr>
          <tr class="active-row">
            <td>`free -h|grep   Swap| awk '{print $1}'`</td>
            <td>`free -h|grep   Swap| awk '{print $2}'`</td>
            <td>`free -h|grep   Swap| awk '{print $3}'`</td>
            <td>`free -h|grep   Swap| awk '{print $4}'`</td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
         
        </tbody>
      </table>
";

#Tabloa de monitorizacion del disco duro.
let countLines="`df -h| wc -l`";
  echo "<h1> Disco:</h1>";
echo "
<table class="content-table disco">
        <thead>
          <tr>
            <th>` df -h  |tr "\n" ":" |cut -d ":" -f1| awk '{print $1}'`</th>
            <th>` df -h  |tr "\n" ":" |cut -d ":" -f1| awk '{print $2}'`</th>
            <th>` df -h  |tr "\n" ":" |cut -d ":" -f1| awk '{print $3}'`</th>
            <th>` df -h  |tr "\n" ":" |cut -d ":" -f1| awk '{print $4}'`</th>
            <th>` df -h  |tr "\n" ":" |cut -d ":" -f1| awk '{print $5}'`</th>
            <th>` df -h  |tr "\n" ":" |cut -d ":" -f1| awk '{print $6}'
             df -h  |tr "\n" ":" |cut -d ":" -f1| awk '{print $7}'
            `</th>
          </tr>
        </thead>
        <tbody>
";
for (( i=2; i <= $countLines; i++ ))
do
echo " <tr> ";
 echo "
 <td>`df -h  |tr "\n" ":" |cut -d ":" -f$i| awk '{print $1}'`</td>
 <td>`df -h  |tr "\n" ":" |cut -d ":" -f$i| awk '{print $2}'`</td>
 <td>`df -h  |tr "\n" ":" |cut -d ":" -f$i| awk '{print $3}'`</td>
 <td>`df -h  |tr "\n" ":" |cut -d ":" -f$i| awk '{print $4}'`</td>
 <td>`df -h  |tr "\n" ":" |cut -d ":" -f$i| awk '{print $5}'`</td>
 <td>`df -h  |tr "\n" ":" |cut -d ":" -f$i| awk '{print $6}'`</td>
 ";
echo "</tr>";
done
echo " </tbody> </table>";
echo "<br>"
echo "<br>"
echo "<br>"

#Tabla de enrutamiento 

let Lineas="`route -n | wc -l`"
#route -n | tr "\n" ":" |cut -d ":" -f1| awk '{print $1}'

echo "<h1>Tabla de enrutamiento</h1>";
echo "
<table class="content-table disco">
        <thead>
          <tr>
            <th colspan=8><center>`route -n  |tr "\n" ":" |cut -d ":" -f1`</center></th>
            </tr>
            <tr>
            <th>` route -n | tr "\n" ":" |cut -d ":" -f2| awk '{print $1}'`</th>
            <th>` route -n | tr "\n" ":" |cut -d ":" -f2| awk '{print $2}'`</th>
            <th>` route -n | tr "\n" ":" |cut -d ":" -f2| awk '{print $3}'`</th>
            <th>` route -n | tr "\n" ":" |cut -d ":" -f2| awk '{print $4}'`</th>
            <th>` route -n | tr "\n" ":" |cut -d ":" -f2| awk '{print $5}'`</th>
            <th>` route -n | tr "\n" ":" |cut -d ":" -f2| awk '{print $6}'`</th>
            <th>` route -n | tr "\n" ":" |cut -d ":" -f2| awk '{print $7}'`</th>
            <th>` route -n | tr "\n" ":" |cut -d ":" -f2| awk '{print $8}'`</th>
          </tr>
        </thead>
        <tbody>
";

for (( i=2; i <= $Lineas; i++ ))
do
echo " <tr> ";
 echo "
 <td>`route -n | tr "\n" ":" |cut -d ":" -f$i| awk '{print $1}'`</td>
 <td>`route -n | tr "\n" ":" |cut -d ":" -f$i| awk '{print $2}'`</td>
 <td>`route -n | tr "\n" ":" |cut -d ":" -f$i| awk '{print $3}'`</td>
 <td>`route -n | tr "\n" ":" |cut -d ":" -f$i| awk '{print $4}'`</td>
 <td>`route -n | tr "\n" ":" |cut -d ":" -f$i| awk '{print $5}'`</td>
 <td>`route -n | tr "\n" ":" |cut -d ":" -f$i| awk '{print $6}'`</td>
 <td>`route -n | tr "\n" ":" |cut -d ":" -f$i| awk '{print $7}'`</td>
 <td>`route -n | tr "\n" ":" |cut -d ":" -f$i| awk '{print $8}'`</td>
 ";
echo "</tr>";
done
echo " 
</tbody> 
</table>";

echo "<br>"
echo "<br>"
echo "<br>"


#Puertos TCP abiertos
 #netstat -t |tr "\n" "*" |cut -d "*" -f2| awk '{print $1}'

 let TCPLines="`netstat -tn | wc -l`";
  echo "<h1>Conexiones  TCP:</h1>";
echo "
<table class="content-table disco">
        <thead>
          <tr>
            <th>`netstat -tn |tr "\n" "*" |cut -d "*" -f2| awk '{print $1}'`</th>
            <th>`netstat -tn |tr "\n" "*" |cut -d "*" -f2| awk '{print $2}'`</th>
            <th>`netstat -tn |tr "\n" "*" |cut -d "*" -f2| awk '{print $3}'`</th>
            <th>`netstat -tn |tr "\n" "*" |cut -d "*" -f2| awk '{print $4}'` 
                `netstat -tn |tr "\n" "*" |cut -d "*" -f2| awk '{print $5}'`
            </th>
            <th>`netstat -tn |tr "\n" "*" |cut -d "*" -f2| awk '{print $6}'` 
                `netstat -tn |tr "\n" "*" |cut -d "*" -f2| awk '{print $7}'`
            </th>
            <th>`netstat -tn |tr "\n" "*" |cut -d "*" -f2| awk '{print $8}'`</th>
          </tr>
        </thead>
        <tbody>
";
for (( i=3; i <= $TCPLines; i++ ))
do
echo " <tr> ";
 echo "
 <td>`netstat -tn |tr "\n" "*" |cut -d "*" -f$i| awk '{print $1}'`</td>
 <td>`netstat -tn |tr "\n" "*" |cut -d "*" -f$i| awk '{print $2}'`</td>
 <td>`netstat -tn |tr "\n" "*" |cut -d "*" -f$i| awk '{print $3}'`</td>
 <td>`netstat -tn |tr "\n" "*" |cut -d "*" -f$i| awk '{print $4}'`</td>
 <td>`netstat -tn |tr "\n" "*" |cut -d "*" -f$i| awk '{print $5}'`</td>
 <td>`netstat -tn |tr "\n" "*" |cut -d "*" -f$i| awk '{print $6}'`</td>
 ";
echo "</tr>";
done
echo " 
</tbody> 
</table>";

echo "<br>"
echo "<br>"
echo "<br>"

#UDP puertos abiertos

let UDPLines="`netstat -un | wc -l`";
  echo "<h1>Conexiones  UDP:</h1>";
echo "
<table class="content-table disco">
        <thead>
          <tr>
            <th>`netstat -un |tr "\n" "*" |cut -d "*" -f2| awk '{print $1}'`</th>
            <th>`netstat -un |tr "\n" "*" |cut -d "*" -f2| awk '{print $2}'`</th>
            <th>`netstat -un |tr "\n" "*" |cut -d "*" -f2| awk '{print $3}'`</th>
            <th>`netstat -un |tr "\n" "*" |cut -d "*" -f2| awk '{print $4}'` 
                `netstat -un |tr "\n" "*" |cut -d "*" -f2| awk '{print $5}'`
            </th>
            <th>`netstat -un |tr "\n" "*" |cut -d "*" -f2| awk '{print $6}'` 
                `netstat -un |tr "\n" "*" |cut -d "*" -f2| awk '{print $7}'`
            </th>
            <th>`netstat -un |tr "\n" "*" |cut -d "*" -f2| awk '{print $8}'`</th>
          </tr>
        </thead>
        <tbody>
";
for (( i=3; i <= $UDPLines; i++ ))
do
echo " <tr> ";
 echo "
 <td>`netstat -un |tr "\n" "*" |cut -d "*" -f$i| awk '{print $1}'`</td>
 <td>`netstat -un |tr "\n" "*" |cut -d "*" -f$i| awk '{print $2}'`</td>
 <td>`netstat -un |tr "\n" "*" |cut -d "*" -f$i| awk '{print $3}'`</td>
 <td>`netstat -un |tr "\n" "*" |cut -d "*" -f$i| awk '{print $4}'`</td>
 <td>`netstat -un |tr "\n" "*" |cut -d "*" -f$i| awk '{print $5}'`</td>
 <td>`netstat -un |tr "\n" "*" |cut -d "*" -f$i| awk '{print $6}'`</td>
 ";
echo "</tr>";
done
echo " 
</tbody> 
</table>";

echo "<br>"
echo "<br>"
echo "<br>"

#procesos del sistema

let PSLines="`ps -e | wc -l`";
echo "<h1>Procesos del sistema:</h1>";
ps -e > ps.txt
echo "
<table class="content-table disco">
        <thead>
          <tr>
            <th>`cat ps.txt |tr "\n" "*" |cut -d "*" -f1| awk '{print $1}'`</th>
            <th>`cat ps.txt |tr "\n" "*" |cut -d "*" -f1| awk '{print $2}'`</th>
            <th>`cat ps.txt |tr "\n" "*" |cut -d "*" -f1| awk '{print $3}'`</th>
            <th>`cat ps.txt |tr "\n" "*" |cut -d "*" -f1| awk '{print $4}'`</th> 
          </tr>
        </thead>
        <tbody>
";

for (( i=2; i <= $PSLines; i++ ))
do
echo " <tr> ";
 echo "
 <td>`cat ps.txt |tr "\n" "*" |cut -d "*" -f$i| awk '{print $1}'`</td>
 <td>`cat ps.txt |tr "\n" "*" |cut -d "*" -f$i| awk '{print $2}'`</td>
 <td>`cat ps.txt |tr "\n" "*" |cut -d "*" -f$i| awk '{print $3}'`</td>
 <td>`cat ps.txt |tr "\n" "*" |cut -d "*" -f$i| awk '{print $4}'`</td>
 
 ";
echo "</tr>";
done
echo " 
</tbody> 
</table>";

echo "<br>"
echo "<br>"
echo "<br>"