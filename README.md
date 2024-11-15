# Pipline_DVC

DVC — это система контроля версий данных. По сути, он похож на Git, но используется 
для данных. С помощью DVC вы можете хранить информацию о различных версиях ваших данных 
в Git, сохраняя исходные данные где-то еще.
Инструмент, который позволяет отслеживать действия, является контроль версий данных (DVC),
который помогает управлять данными, базовой моделью и запускать воспроизводимые результаты.

###  Предварительные требования
```python
git clone  https://github.com/VoroninMaxim/Pipline_DVC.git
```
### Перейдите в каталог проекта:
```python
cd Pipline_DVC
```
### Создайте виртуальное окружение (необязательно, но рекомендуется):
```python
python -m venv venv
```
### Активируйте виртуальное окружение:
На macOS/Linux::
```python
source venv/bin/activate
```
### Установите необходимые пакеты:
```python
pip install dvc
pip install -r requirements.txt
```
### Инициализируйте команду
```python
git init
```

### Создайте три файла Python
```python
stage_01, stage_02, stage_03
```

##### Генерируем файл yaml с именем, в который мы включаем информацию о команде,которую нам нужно выполнить, зависимостях и выходных данныхdvc.yaml

##### Воспроизводим конвейер, выполнив команду . При запуске автоматически будет создан dvc.lock, который поможет отслеживать выходы конвейера. Кроме того, он также позволяет DVC обнаруживать изменения зависимостей и отслеживать промежуточные и конечные выходные данные файла.
```python
dvc repro
```

### Просмотр типа конвейера 
```python
dvc dag
```

### Результат тестировани
[![Build Staus](https://github.com/VoroninMaxim/Pipline_DVC/actions/workflows/python-app.yml/badge.svg?branch=main)](https://github.com/VoroninMaxim/Pipline_DVC/actions/workflows/python-app.yml)

