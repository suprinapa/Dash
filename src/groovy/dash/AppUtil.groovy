package dash

class AppUtil {

    static saveResponse(Boolean isSuccess, def model) {
        return [isSuccess: isSuccess, model: model]
    }

    static infoMessage(String message, boolean status = true) {
        return [info: message, success: status]
    }
}
