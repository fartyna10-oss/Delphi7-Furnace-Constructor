# Delphi 7 3D Furnace Constructor - Руководство по запуску

## 🚀 Быстрый старт

### Требования
- **Delphi 7** Professional Edition или выше
- **OpenGL 1.2+** (обычно встроена в Windows)
- **Windows 95/98/ME/2000/XP/Vista/7**

### Установка

1. **Скачайте архив**
   ```
   https://github.com/fartyna10-oss/Delphi7-Furnace-Constructor/archive/refs/heads/main.zip
   ```

2. **Распакуйте его**
   - Распакуйте содержимое в удобную папку
   - Например: `C:\Projects\Furnace7\`

3. **Откройте проект в Delphi 7**
   - Запустите Delphi 7
   - Выберите File → Open Project
   - Найдите файл `FurnaceConstructor.dpr`
   - Нажмите Open

### Компиляция и запуск

#### Способ 1: Через IDE
- Нажмите **F9** или выберите Run → Run
- Приложение скомпилируется и запустится

#### Способ 2: Через командную строку
```bash
cd C:\Projects\Furnace7
dcc32.exe FurnaceConstructor.dpr
FurnaceConstructor.exe
```

#### Способ 3: Через Build
- Выберите Project → Build All
- Это создаст файл `FurnaceConstructor.exe` в текущей папке

## 📁 Структура проекта

```
FurnaceConstructor/
├── FurnaceConstructor.dpr       - Главный файл проекта
├── FurnaceConstructor.dof       - Опции Delphi
├── FurnaceConstructor.cfg       - Конфигурация компилятора
├── FurnaceConstructor.res       - Ресурсы проекта
├── MainForm.pas                 - Главная форма (код)
├── MainForm.dfm                 - Главная форма (дизайн)
├── FurnaceEngine.pas            - Ядро симулятора
├── FurnaceComponents.pas        - Компоненты печи
├── Rendering3D.pas              - 3D визуализация
├── MathUtils.pas                - Математические функции
├── README.md                    - Документация
├── GETTING_STARTED.md           - Этот файл
└── .gitignore                   - Конфигурация Git
```

## 🎮 Первый запуск

### После успешной компиляции:

1. **Главное окно приложения**
   - Слева: Панель управления и свойств
   - Справа: 3D viewport (черная область)
   - Внизу: Строка статуса

2. **Создайте первый компонент**
   - Нажмите кнопку "Add Component"
   - Компонент появится в списке "Components:"
   - Выберите его из списка

3. **Отредактируйте свойства**
   - В панели "Properties" введите значения
   - Width, Height, Depth - размеры (в сотых долях)
   - Rotation X, Y, Z - углы поворота (0-360°)
   - Temperature - температура в градусах (°C)
   - Нажмите "Apply"

4. **Запустите симуляцию**
   - Нажмите кнопку "Simulate"
   - Компоненты начнут обмениваться теплом
   - Температуры будут меняться

5. **Сохраните проект**
   - Нажмите "Save" (файл сохранится как `furnace_project.fcp`)
   - Позже можно загрузить через "Load"

## ⚠️ Возможные проблемы

### Проблема: "Unit not found"
**Решение:**
- Убедитесь, что все файлы .pas находятся в одной папке
- Project → Options → Directories/Conditionals
- Добавьте папку проекта в "Search Path"

### Проблема: "Compiled with a different version"
**Решение:**
- Project → Delete .dcu Files
- Project → Build All

### Проблема: Form doesn't display correctly
**Решение:**
- Закройте форму в дизайнере (File → Close All)
- Delete файл `MainForm.dfm.local` если существует
- Заново откройте форму (View → Object Inspector на MainForm)

### Проблема: "Can't find DLL"
**Решение:**
- Это может быть связано с OpenGL
- Переустановите видеодрайверы
- Или используйте MESA3D совместимые DLL

## 💡 Полезные советы

1. **F9** - Компилировать и запустить
2. **Ctrl+F9** - Только компилировать
3. **F12** - Переключаться между кодом и формой
4. **View → Object Inspector** - Изменить свойства компонентов формы
5. **Tools → Environment Options** - Настройки IDE

## 🔧 Расширение функционала

Для добавления новых функций:

1. **Новые типы компонентов:**
   - Отредактируйте `FurnaceComponents.pas`
   - Добавьте новый тип в `TComponentType`
   - Обновите инициализацию в `TFurnaceComponent.Create`

2. **Расширенная физика:**
   - Модифицируйте `FurnaceEngine.SimulateHeatTransfer`
   - Добавьте новые параметры материалов

3. **Улучшение визуализации:**
   - Работайте в `Rendering3D.pas`
   - Реализуйте OpenGL рендеринг в методе `DrawBox`

## 📚 Дополнительные ресурсы

- [Delphi 7 Documentation](https://www.embarcadero.com/)
- [OpenGL Tutorial](https://learnopengl.com/)
- [VCL Components Reference](https://docwiki.embarcadero.com/)

## 🐛 Отчеты об ошибках

Если вы нашли ошибку:
1. Откройте GitHub Issues на https://github.com/fartyna10-oss/Delphi7-Furnace-Constructor/issues
2. Подробно опишите проблему
3. Приложите скриншоты или логи ошибок
4. Укажите версию Windows и Delphi

## ✨ Успешного использования!

Если у вас возникли вопросы - смотрите README.md или создавайте Issues!
