import Foundation
import Kitura

let router = Router()

router.get("/") { request, response, next in
    response.send("Hello, World!")
    next()
}

let port = 3000
Kitura.addHTTPServer(onPort: port, with: router)
print("Server is running on http://localhost:\(port)")
Kitura.run()

// Note: Swift doesn't have a direct equivalent for handling signals like SIGTERM and SIGINT. You can use the Dispatch framework to handle signals, but it's not as straightforward as in Node.js. The code above will create a basic server without graceful shutdown.