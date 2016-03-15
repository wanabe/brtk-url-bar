class Brtk
  class UrlBar < Base::Widget
    widget Gtk::Entry
    MainLayout.child :url_bar, {:before => :browser_window}

    def uri=(uri)
      widget.set_text uri
    end

    def uri
      widget.get_text
    end

    def on_activate
      send_uri uri
    end
  end
end
