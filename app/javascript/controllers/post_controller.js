import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["post"];
  
  showAction(event) {
    event.preventDefault();

    const element = this.element.querySelector(".post__action");
    element.classList.remove("d-none");
  }

  hideAction(event) {
    event.preventDefault();
    
    const element = this.element.querySelector(".post__action");
    element.classList.add("d-none");
  }

  openModal() {
    const modalDelete = document.querySelector("#modal-delete-post");
    const postId = this.element.querySelector(".action-delete").dataset.id;

    modalDelete.classList.remove("d-none");
    document.body.classList.add("overflow-hide");
    modalDelete.dataset.id = postId;
  }

  closeModal() {
    const modalDelete = document.querySelector("#modal-delete-post");

    modalDelete.classList.add("d-none");
    document.body.classList.remove("overflow-hide");
  }

  removePost() {
    const postId = this.element.dataset.id;
    const url = `/admin/posts/${postId}`
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
        window.location.href = "/admin/posts";
      }
    })
  }

  changeSlug() {
    var t = $("#title").val();
    if ("" != t) {
      var e = t
        .trim()
        .toLowerCase()
        .normalize("NFD")
        .replace(/[\u0300-\u036f]/g, "")
        .replace(/đ/g, "d")
        .replace(/Đ/g, "D")
        .replace(/\s/g, "-");
      $("#seo-url").val(e);
    }
  }

  disconnect() {
    if (this.hasPostTarget) {
      this.postTarget.remove();
    }
  }
}
