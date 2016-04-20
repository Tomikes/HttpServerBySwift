//
//  main.swift
//  HttpServerEdit
//
//  Created by Vaith on 16/4/20.
//  Copyright © 2016年 Shenme Studio. All rights reserved.
//

import Vapor

let app = Application();

app.get("/") { (Request) -> ResponseRepresentable in
    return "Hello, I'm Vaith. This is my http server by swift";
}

app.get("SimpleGet") { (Request) -> ResponseRepresentable in
    return Json(["info":"hello, this is a simple get"]);
}

print("Visit http://localhost:8080")
app.start(port: 8080);