package dash

class AppUtil {

        static saveResponse(Boolean isSuccess, def model) {
            return [isSuccess: isSuccess, model: model]
        }
}
