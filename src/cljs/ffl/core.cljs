(ns ^:figwheel-always ffl.core
  (:require [goog.dom :as gdom]
            [om.next :as om :refer-macros [defui]]
            [om.dom :as dom]))

(enable-console-print!)

(defui SignIn
  Object
  (render [this]
    (dom/form nil
      (dom/input #js {:type "text"
                      :placeholder "email"
                      :autofocus true})
      (dom/input #js {:type "password"
                      :placeholder "password"})
      (dom/button #js {:type "submit"} "Sign In"))))

(def hello (om/factory SignIn))

(js/ReactDOM.render (hello) (gdom/getElement "app"))
