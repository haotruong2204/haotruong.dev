import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["category"];
  
  showAction(event) {
    event.preventDefault();

    const element = this.element.querySelector(".js-category-action");
    element.classList.remove("d-none");
  }

  hideAction(event) {
    event.preventDefault();
    
    const element = this.element.querySelector(".js-category-action");
    element.classList.add("d-none");
  }

  openModal() {
    const modalDelete = document.querySelector("#modal-delete-category");
    const categoryId = this.element.querySelector(".action-delete").dataset.id;

    modalDelete.classList.remove("d-none");
    document.body.classList.add("overflow-hide");
    modalDelete.dataset.id = categoryId;
  }

  closeModal() {
    const modalDelete = document.querySelector("#modal-delete-category");

    modalDelete.classList.add("d-none");
    document.body.classList.remove("overflow-hide");
  }

  removeCategory() {
    const categoryId = this.element.dataset.id;
    const url = `/admin/categories/${categoryId}`
    let token = document.querySelector("meta[name='csrf-token']").getAttribute("content");

    fetch(url, {
      method: 'DELETE',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': token
      }
    })
    .then(res => {
      if(res.ok){
        window.location.href = "/admin/categories";
      }
    })
  }

  disconnect() {
    if (this.hasCategoryTarget) {
      this.categoryTarget.remove();
    }
  }
}
