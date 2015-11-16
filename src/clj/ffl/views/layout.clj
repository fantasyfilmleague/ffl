(ns ffl.views.layout
  (:require [hiccup.page :as h]))

(defn common []
  (h/html5
   [:head
    [:meta {:charset "utf-8"}]
    [:meta {:http-equiv "X-UA-Compatible" :content "IE=edge,chrome=1"}]
    [:meta {:name "viewport" :content "width=device-width, initial-scale=1, maximum-scale=1"}]
    [:title "ffl"]]
   [:body
    [:div {:id "app"}]
    (h/include-js "js/main.js")]))
