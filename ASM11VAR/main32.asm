section .data
    promptResult db "Numbers whose sum of digits is less than 10: ", 0
    formatIn db "%d", 0
    formatOut db "%d ", 0
    newline db 10, 0

section .bss
    n resd 1                                                    ; Переменная для хранения количества чисел
    numbers resd 1000                                           ; Массив для хранения чисел

section .text
    global main
    extern printf
    extern scanf
    extern exit

; Функция для вычисления суммы цифр числа
sumOfDigits:
    push ebp
    mov ebp, esp
    sub esp, 4                  ; Локальная переменная для хранения суммы
    mov dword [ebp - 4], 0      ; Инициализируем сумму нулем
    mov eax, [ebp + 8]          ; Загружаем число в eax

sum_loop:
    cmp eax, 0                  ; Проверяем, равно ли число 0
    je sum_done
    mov edx, 0                  ; Очищаем edx для деления
    mov ecx, 10                 ; Делим на 10
    div ecx                     ; Делим eax на ecx, частное в eax, остаток в edx
    add [ebp - 4], edx          ; Добавляем остаток (текущую цифру) к сумме
    jmp sum_loop                ; Повторяем для следующей цифры

sum_done:
    mov eax, [ebp - 4]          ; Загружаем сумму в eax
    mov esp, ebp                ; Восстанавливаем esp
    pop ebp                     ; Восстанавливаем ebp
    ret                         ; Возвращаемся из функции

main:
    ; Ввод количества чисел
    push n
    push formatIn
    call scanf
    add esp, 8

    ; Ввод чисел
    mov ecx, dword [n]
    mov edi, numbers

input_loop:
    pusha
    push edi
    push formatIn
    call scanf
    add esp, 8
    popa
    add edi, 4
    loop input_loop

    ; Вывод сообщения о результатах
    push promptResult
    call printf
    add esp, 4

    ; Проверка каждого числа
    mov ecx, dword [n]
    mov esi, numbers

check_loop:
    pusha
    mov eax, dword [esi]
    push eax                    ; Помещаем число на стек
    call sumOfDigits            ; Вызываем функцию sumOfDigits
    add esp, 4                  ; Очищаем стек
    cmp eax, 10                 ; Сравниваем сумму с 10
    jge skip_print              ; Пропускаем вывод, если сумма больше или равна 10
    pusha
    push dword [esi]            ; Помещаем число на стек
    push formatOut
    call printf
    add esp, 8
    popa

skip_print:
    popa
    add esi, 4
    loop check_loop

    ; Перенос строки после результатов
    push newline
    call printf
    add esp, 4

    ; Завершение программы
    push 0
    call exit