# Caelestia overwrites

Personalizaciones propias sobre [caelestia-dots](https://github.com/caelestia-dots/caelestia)
que no viven en el repo upstream. `overwrites/` contiene fragmentos o archivos
completos para reemplazar en una instalación limpia (ver tabla de mapeo abajo:
cada archivo indica si es solo un fragmento a pegar o el archivo completo a
reemplazar). `scripts/` contiene archivos que son 100% nuevos (no existen en
upstream), listos para copiar tal cual.

## Capturas

![Editor](../img/code.png)
![Paneles](../img/showpanels.png)
![Fondo](../img/wallpaper.png)

## Mapeo overwrites/ -> destino real

| Archivo en overwrites/ | Ruta real en la instalación             | Tipo                                            |
| ---------------------- | --------------------------------------- | ----------------------------------------------- |
| `variables.conf`       | `~/.config/hypr/variables.conf`         | Fragmento (pegar al final de la sección "Misc") |
| `execs.conf`           | `~/.config/hypr/hyprland/execs.conf`    | Fragmento (pegar al final del archivo)          |
| `input.conf`           | `~/.config/hypr/hyprland/input.conf`    | Archivo completo (reemplazar)                   |
| `keybinds.conf`        | `~/.config/hypr/hyprland/keybinds.conf` | Archivo completo (reemplazar)                   |
| `fish-config.fish`     | `~/.config/fish/config.fish`            | Archivo completo (reemplazar)                   |

## Random wallpaper (día/noche)

Cambia el fondo de pantalla cada `$wallpaperInterval` segundos, eligiendo al azar
entre `$wallpapersDir/diurno` (08:00-17:59) o `$wallpapersDir/nocturno` (resto),
usando `caelestia wallpaper -r`.

Para replicarlo en otra máquina con caelestia-dots instalado:

1. Copiar `scripts/wallpaper-cycle.fish` a `~/.config/hypr/scripts/` y darle
   permisos de ejecución (`chmod +x`).
2. Pegar el contenido de `overwrites/variables.conf` al final de la sección
   "Misc" en `~/.config/hypr/variables.conf`.
3. Pegar el contenido de `overwrites/execs.conf` al final de
   `~/.config/hypr/hyprland/execs.conf`.
4. Asegurarse de que `$wallpapersDir` (por defecto `~/Wallpapers`) tenga las
   subcarpetas `diurno/` y `nocturno/` con imágenes.

## Layout de teclado (input.conf)

`kb_layout` cambiado de `us` a `latam`, con comentarios dejados como referencia
para alternar a `es` o a variante dvorak. Reemplazar
`~/.config/hypr/hyprland/input.conf` completo con `overwrites/input.conf`.

## Binds de mouse para mover/redimensionar ventanas (keybinds.conf)

Se quitaron los binds de scroll/botones laterales del mouse (`mouse:274-277`,
`mouse_up`/`mouse_down`) para `caelestia:launcherInterrupt`, y se agregaron:

- `bindm = Super, mouse:272, movewindow` / `mouse:273, resizewindow` — mover y
  redimensionar ventanas con Super+click arrastrando.
- `binde = Super+Alt, left/right/up/down, resizeactive, ±20` — redimensionar
  con Super+Alt+flechas.

Reemplazar `~/.config/hypr/hyprland/keybinds.conf` completo con
`overwrites/keybinds.conf`.

## Shell de fish (config.fish)

Reemplaza el `fish/config.fish` de caelestia-dots por una versión con:

- Función `y` (cd al salir de yazi).
- Aliases de nvim apuntando al build custom en `dotfiles/nixvim/result/bin/nvim`
  (ajustar la ruta si cambia en la máquina destino).
- Aliases basados en `eza`/`bat` (`ls`, `la`, `ll`, `lg`, `lt`, `lw`, `less`, `icat`).
- `set -U fish_greeting` (desactiva el greeting — ver nota abajo).
- PATH de Herd Lite, pnpm y Antigravity CLI.
- `zoxide init fish` (sin override del builtin `cd`, a diferencia del upstream).

Reemplazar `~/.config/fish/config.fish` completo con `overwrites/fish-config.fish`.

**Nota:** no se versionan `fish/fish_plugins` ni los archivos vendorizados por
Fisher en `fish/functions`/`fish/completions` — ya están gestionados en
`dotfiles/fish/fish_plugins`. Basta con correr `fisher update` en la máquina
destino después de copiar ese manifiesto.

## Archivos eliminados respecto a upstream

Estos no requieren copiar nada, solo borrarlos en la instalación destino:

- `fastfetch/config.jsonc` — ya no se usa el override de fastfetch de caelestia-dots.
- `fish/functions/fish_greeting.fish` — el ASCII greeting personalizado se
  quitó, consistente con `set -U fish_greeting` en `fish-config.fish`.
