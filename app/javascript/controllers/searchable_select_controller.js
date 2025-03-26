import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input", "dropdown"]
  static values = {
    cars: Array
  }

  connect() {
    this.dropdownTarget.style.display = 'none'
  }

  filter(event) {
    const searchTerm = event.target.value.toLowerCase()
    const dropdown = this.dropdownTarget

    // Clear current dropdown options
    dropdown.innerHTML = ""

    // Filter and add matching options
    this.carsValue.forEach(car => {
      if (car.full_name.toLowerCase().includes(searchTerm)) {
        const div = document.createElement("div")
        div.className = "px-4 py-2 hover:bg-gray-100 cursor-pointer"
        div.textContent = car.full_name
        div.addEventListener('click', () => {
          this.inputTarget.value = car.full_name
          this.element.querySelector('input[type="hidden"]').value = car.id
          dropdown.style.display = 'none'
        })
        dropdown.appendChild(div)
      }
    })

    // Show/hide dropdown based on search term
    if (searchTerm) {
      dropdown.style.display = dropdown.children.length > 0 ? 'block' : 'none'
    } else {
      dropdown.style.display = 'none'
    }
  }

  // Close dropdown when clicking outside
  clickOutside(event) {
    if (!this.element.contains(event.target)) {
      this.dropdownTarget.style.display = 'none'
    }
  }

  // Show dropdown on focus
  showDropdown() {
    if (this.inputTarget.value) {
      this.dropdownTarget.style.display = 'block'
    }
  }
} 