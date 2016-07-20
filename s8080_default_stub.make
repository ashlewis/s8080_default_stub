; -------------------------------------------------
; S8080 Default Makefile STUB
; -------------------------------------------------
; stub makefile for s8080_default modules

; using a stub files means that this file can be copied/cloned/submoduled into a project repo
; and as it will be unlikely to change very often (unlike the s8080_default.make which may change more regularly)
; it would carry a lesser maintenance overhead (submodule updates etc.)

; CORE
; -----------------------------
api = 2
core = 7.x

projects[] = drupal

; PROFILE
; -----------------------------
projects[s8080_default][type] = "module"
projects[s8080_default][subdir] = "custom"
projects[s8080_default][download][type] = "git"
projects[s8080_default][download][url] = "https://s8080.visualstudio.com/DefaultCollection/_git/s8080_default"
projects[s8080_default][download][branch] = "develop"