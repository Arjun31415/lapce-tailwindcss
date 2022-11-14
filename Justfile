xdg_data_dir :=  "$HOME/.local/share"
plugin_dir := "plugins/Arjun31415.lapce-tailwindcss"

build:
    cargo make

install-stable: build
    mkdir -p {{xdg_data_dir}}/lapce-stable/{{plugin_dir}}/bin
    yes | cp  bin/lapce-tailwindcss.wasm {{xdg_data_dir}}/lapce-stable/{{plugin_dir}}/bin
    yes | cp  volt.toml {{xdg_data_dir}}/lapce-stable/{{plugin_dir}}/

