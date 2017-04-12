(function () {

    jQuery(function ($) {

        $("#message-form").submit(function (event) {
            console.log("form submitted");

            $("#send-status").text("");

            var message = $("#message-field").val();

            console.log("form submitted. message = ", message);

            sendMessage(message);

            $("#message-field").val("");

            event.preventDefault();
            return false;
        });

        $("#btn-get-message").click(function () {

            $("#received-message").text("");
            $("#receive-status").text("");

            getMessage();

            return false;
        });

    });

    function sendMessage(message) {

        $.ajax({
            "url": "/api/Patient/SendNotification",
            "method": "POST",
            "data": JSON.stringify({ userId: message }),
            "contentType": "application/json"
        }).done(function (data) {
            console.log("Message sent.", data);

            $("#send-status").text("Message sent successfully");

        }).fail(function () {
            console.log("Failed to send message sent.");
        }).always(function () {
            console.log("completed");
        });
    }

}());