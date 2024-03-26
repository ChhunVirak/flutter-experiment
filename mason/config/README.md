# Mason Structure Generation Guide

### Module

> Inputs

- `name` <code style="color:#2a9df4; font-weight:500">String</code>

##### generate module with custom input

```dart
mason make module
```

##### generate module with json configuration

```dart
mason make module -c mason/config/module.json --on-conflict overwrite
```

### Screen

> Inputs

- `name` <code style="color:#2a9df4; font-weight:500">String</code>
- `module` <code style="color:#2a9df4; font-weight:500">String</code>

##### generate module with manual input

```dart
mason make screen
```

##### generate module with json configuration

```dart
mason make screen -c mason/config/screen.json --on-conflict overwrite
```

> NOTE: if <code style="color:red; font-weight:400">module</code> not given or given not matched any module in `modules` directory you will see promt to select module
