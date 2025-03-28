import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    this.scrollToBottom();
  }

  scrollToBottom() {
    const messagesContainer = document.getElementById("messages-container");
    if (messagesContainer) {
      messagesContainer.scrollTop = messagesContainer.scrollHeight;
    }
  }
}
