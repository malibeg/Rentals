function ProductsViewModel() {
    var self = this;
    self.items = ko.observableArray();

    var baseUri = 'api/items/';

    // New code
    self.create = function (formElement) {
        // If the form data is valid, post the serialized form data to the web API.
        $(formElement).validate();
        if ($(formElement).valid()) {
            $.post(baseUri, $(formElement).serialize(), null, "json")
                .done(function (o) {
                    // Add the new item to the view-model.
                    self.items.push(o);
                    DisplaySuccess('Successfully created item ' + o.ItemId)
                });
        }
    };

    self.update = function (item) {
        // Shallow copy
        var itemCopy = jQuery.extend({}, item);
        if (itemCopy.ItemCategory !== undefined) itemCopy.ItemCategory = [];
        var index = self.items.indexOf(item);
        $.ajax({ type: "PUT", url: baseUri + '/' + itemCopy.ItemId, data: itemCopy })
            .done(function (obj) {
                DisplaySuccess('Successfully updated item ' + item.ItemId);
                self.getItems(itemCopy.ItemId, index);
            })
            .error(function (xhr, status, error) {
                DisplayError(xhr);
            });;
    };

    self.remove = function (item) {
        // First remove from the server, then from the view-model.
        $.ajax({ type: "DELETE", url: baseUri + '/' + item.ItemId })
            .done(function () {
                self.items.remove(item);
                DisplaySuccess('Successfully updated item ' + item.ItemId);
            })
            .error(function (xhr, status, error) {
                DisplayError(xhr);
            });
    };

    self.getItems = function (id, index) {
        if (id !== undefined) {
            $.getJSON(baseUri + id, function (result) {
                //self.items.remove(item);
                //self.items.push(result);
                var oldItem = ko.utils.arrayFirst(self.items(), function (item) {
                    return item.ItemId == id;
                });
                if (oldItem) {
                    self.items.replace(oldItem, result);
                }
            });
        }
        else {
            //$.getJSON(baseUri, self.items);
            $.getJSON(baseUri, function (result) {
                ko.utils.arrayMap(result, function (item) {
                    self.items.push(item);
                });
            });
        }
    };

    self.getItems();

}

function DisplaySuccess(msg) {
    alert(msg);
}

function DisplayError(xhr) {
    var msg = JSON.parse(xhr.responseText);
    alert(msg.Message);
}

$(document).ready(function () {
    ko.applyBindings(new ProductsViewModel());
});

