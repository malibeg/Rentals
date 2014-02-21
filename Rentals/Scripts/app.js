$(document).ready(function() {
    ko.applyBindings(new ProductsViewModel());
});

function ProductsViewModel() {
    var self = this;
    self.items = ko.observableArray();

    var baseUri = '/api/MyItems';

    // New code
    self.create = function(formElement) {
        // If the form data is valid, post the serialized form data to the web API.
        $(formElement).validate();
        if ($(formElement).valid()) {
            $.post(baseUri, $(formElement).serialize(), null, "json")
                .done(function(o) {
                    // Add the new product to the view-model.
                    self.items.push(o);
                });
        }
    };

    self.update = function(product) {
        $.ajax({ type: "PUT", url: baseUri + '/' + product.Id, data: product });
    };

    self.remove = function(product) {
        // First remove from the server, then from the view-model.
        $.ajax({ type: "DELETE", url: baseUri + '/' + product.Id })
            .done(function() { self.items.remove(product); });
    };

    $.getJSON(baseUri, self.items);
}