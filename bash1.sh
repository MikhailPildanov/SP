#!/bin/bash
echo "Pildanov Mikhail. Навигатор по файловой системе"
while :
do
echo "Выберите действие:"
echo "1.Показать текущий каталог"
echo "2.Подняться на каталог выше"
echo "3.Перейти в каталог"
read a
case $a in
1)      echo "Текущий каталог:"
        CUR_PATH=$(pwd)
        echo $CUR_PATH
        echo "Содержимое каталога:"
        ls -a;;
2)      echo "Текущий каталог:"
        CUR_PATH=$(pwd)
        echo $CUR_PATH
        echo "Каталог после поднятия на один уровень выше:"
        cd ..
        UPPER_PATH=$(pwd)
        echo $UPPER_PATH;;
3)      ls -d */ 2>/dev/null
	echo "Введите название директории:"
	read dir
	if [ "$dir"!=" " ]; then 
		if [ -d ./$dir ]; then cd ./$dir; else echo 'Такого каталога не найдено'; fi
	fi;;
*)	echo "Такого действия не существует";;
esac
	echo "Чтобы выйти нажмите n"
	read ANSWER
	if [ "$ANSWER" == "n" ]; then
	break
	fi
done
