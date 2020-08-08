use actix_files as fs;
use actix_web::{App, HttpServer};

#[actix_rt::main]
async fn main() -> std::io::Result<()> {
    HttpServer::new(|| {
        App::new().service(fs::Files::new("/", ".").show_files_listing())
    })
    .bind("127.0.0.1:8088")?
    .run()
    .await
}
