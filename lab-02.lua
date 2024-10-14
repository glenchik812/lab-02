lgi = require 'lgi'
gtk = lgi.Gtk
gtk.init()
bld = gtk.Builder()
bld:add_fron_file('lab_02_labuzov.glade')
ui = bld.objects

ui.wnd.title = 'lab-02'
ui.wnd.on_destroy = gtk.main_quit
ui.wnd:show_all()
gtk.main()

function ui.btn_add:on_clicked(...)
 a = tonumber(ui.txt_a.text)
 b = tonumber(ui.txt_b.text)
ui.lbl_res.label = a + b
end

function ui.btn_sub:on_clicked(...)
 a = tonumber(ui.txt_a.text)
 b = tonumber(ui.txt_b.text)
 ui.lbl_res.label = a - b
end

function ui.btn_mul:on_clicked(...)
 a = tonumber(ui.txt_a.text)
 b = tonumber(ui.txt_a.text)
 ui.lbl_res.label = a * b
end

function ui.btn_div:on_clicked(...)
 a = tonumber(ui.txt_a.text)
 a = tonumber(ui.txt_a.text)
 ui.lbl_res.label = a / b
end