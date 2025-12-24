import Foundation

class CodexService {
    let apiKey: String

    init(apiKey: String) {
        self.apiKey = apiKey
    }

    func generateCode(prompt: String, completion: @escaping (String?) -> Void) {
        guard let url = URL(string: "https://api.openai.com/v1/completions") else {
            completion(nil)
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("Bearer \(apiKey)", forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

        let body: [String: Any] = [
            "model": "code-davinci-002",
            "prompt": prompt,
            "max_tokens": 128,
            "temperature": 0.2
        ]

        request.httpBody = try? JSONSerialization.data(withJSONObject: body)

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard
                let data = data,
                let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any],
                let choices = json["choices"] as? [[String: Any]],
                let first = choices.first,
                let text = first["text"] as? String
            else {
                completion(nil)
                return
            }

            completion(text.trimmingCharacters(in: .whitespacesAndNewlines))
        }

        task.resume()
    }
}
