class Notify {
    /**
     * Creates a notification parent element with the class `notify` and appends it to the body of the document.
     * @returns The `parent` element.
     */
    static createParent() {
        const parent = document.createElement('div');
        parent.classList.add('notify');
        document.body.appendChild(parent);
        return parent;
    }

    /**
     * Sets a timeout to remove the given HTML element from the DOM after 2 seconds.
     * @param elem - The element to be removed.
     */
    static timeOut(elem) {
        setTimeout(() => {
            elem.classList.remove("show");
            setTimeout(() => {
                elem.remove();
            }, 1000);
        }, 2000);
    }

    /**
     * Displays a success notification.
     * @param message - The message to display in the notification.
     */
    static success(message) {
        if (!document.querySelector('.notify')) {
            this.createParent();
        }
        const elem = document.createElement("div");
        elem.innerText = message;
        elem.classList.add("notify-success", "show");
        const container = document.querySelector('.notify');
        container.appendChild(elem);
        this.timeOut(elem);
    }

    /**
     * Displays an error notification.
     * @param message - The message to display in the notification.
     */
    static error(message) {
        if (!document.querySelector('.notify')) {
            this.createParent();
        }
        const elem = document.createElement("div");
        elem.innerText = message;
        elem.classList.add("notify-error", "show");
        const container = document.querySelector('.notify');
        container.appendChild(elem);
        this.timeOut(elem);
    }
}
