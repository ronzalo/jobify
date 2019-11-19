job = JSON.parse(File.read("public/jobs.json"))["jobs"][0] 

FavoriteJob.create slug: job["id"], url: "https://www.getonbrd.com#{job["url"]}", metadata: job.to_json
