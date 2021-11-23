function output = ka_load_single_button_data(app, channel)

        single_button_data = filter_highfreq(app.f3, app.f4, app.fs, app.filter_lowfreq_notch);