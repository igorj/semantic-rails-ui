# this method makes it easier to select elements by their data-behavior attribute
window.$b = (selector) -> $("[data-behavior~='#{selector}']")
