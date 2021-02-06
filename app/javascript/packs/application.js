// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "stylesheets/application"
import "@popperjs/core"
import "bootstrap-icons/font/bootstrap-icons.css"
import { Toast, Carousel } from "bootstrap"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

document.addEventListener("turbolinks:load", () => {
  var carousel = new Carousel(document.querySelector('#featuredGroupbuys'), {
    interval: 5000,
    wrap: true
  })

  var toastElList = [].slice.call(document.querySelectorAll('.toast'))
  var toastList = toastElList.map(function (toastEl) {
    return new Toast(toastEl)
  })

  carousel.cycle()
  toastList.forEach(toast => toast.show())
})

import "controllers"
