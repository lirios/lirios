import qbs 1.0
import qbs.File
import qbs.FileInfo
import qbs.Process

Project {
    name: "Liri"

    references: {
        var p = new Process();
        try {
            p.setEnv("LC_ALL", "C");
            p.setWorkingDirectory(sourceDirectory);
            p.exec("repo", ["list"], true);
            var projects = [];
            p.readStdOut().trim().split("\n").map(function(line) {
                var parts = line.split(" : ", 2);
                if (parts.length == 2) {
                    var path = FileInfo.joinPaths(sourceDirectory, parts[0], parts[1] + ".qbs");
                    if (File.exists(path))
                        projects.push(FileInfo.relativePath(sourceDirectory, path));
                }
            });
            return projects;
        } finally {
            p.close();
        }
    }

    minimumQbsVersion: "1.6"
}
