function ProductsViewModel() {
    var self = this;
    self.items = ko.observableArray();

    var baseUri = 'api/items';

    // New code
    self.create = function(formElement) {
        // If the form data is valid, post the serialized form data to the web API.
        $(formElement).validate();
        if ($(formElement).valid()) {
            $.post(baseUri, $(formElement).serialize(), null, "json")
                .done(function(o) {
                    // Add the new item to the view-model.
                    self.items.push(o);
                });
        }
    };

    self.update = function (item) {
        // Shallow copy
        var itemCopy = jQuery.extend({}, item);
        if (itemCopy.ItemCategory !== undefined) itemCopy.ItemCategory = [];
        $.ajax({ type: "PUT", url: baseUri + '/' + itemCopy.ItemId, data: itemCopy })
            .error(function (xhr, status, error) {
            DisplayError(xhr);
        });;
    };

    self.remove = function(item) {
        // First remove from the server, then from the view-model.
        $.ajax({ type: "DELETE", url: baseUri + '/' + item.ItemId})
            .done(function () { self.items.remove(item); })
            .error(function (xhr, status, error) {
                 DisplayError(xhr);
            });
    };

    //$.getJSON(baseUri, self.items);
    $.getJSON(baseUri, function (result) {
        ko.utils.arrayMap(result, function (item) {
            self.items.push(item);
        });
    });
}

function DisplayError(xhr) {
    var msg = JSON.parse(xhr.responseText);
    alert(msg.Message);
}
$(document).ready(function () {
    ko.applyBindings(new ProductsViewModel());
});

