import qbs 1.0
import qbs.File
import qbs.FileInfo
import qbs.Process

Project {
    id: project

    name: "Liri"

    property bool autotestEnabled: true

    minimumQbsVersion: "1.8.0"
    qbsSearchPaths: ["qbs-shared"]

    /*
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
    */

    SubProject {
        filePath: "qbs-shared/qbs-shared.qbs"
    }

    SubProject {
        filePath: "fluid/fluid.qbs"
        Properties {
            autotestEnabled: project.autotestEnabled
        }
    }

    SubProject {
        filePath: "qtaccountsservice/qtaccountsservice.qbs"
        Properties {
            autotestEnabled: project.autotestEnabled
        }
    }

    SubProject {
        filePath: "qtgsettings/qtgsettings.qbs"
        Properties {
            autotestEnabled: project.autotestEnabled
        }
    }

    SubProject {
        filePath: "libliri/libliri.qbs"
        Properties {
            autotestEnabled: project.autotestEnabled
        }
    }

    SubProject {
        filePath: "vibe/vibe.qbs"
    }

    SubProject {
        filePath: "wayland/wayland.qbs"
        Properties {
            autotestEnabled: project.autotestEnabled
        }
    }

    SubProject {
        filePath: "shell/shell.qbs"
    }

    SubProject {
        filePath: "workspace/workspace.qbs"
    }

    SubProject {
        filePath: "settings/settings.qbs"
    }

    SubProject {
        filePath: "platformtheme/platformtheme.qbs"
    }

    SubProject {
        filePath: "themes/themes.qbs"
    }

    SubProject {
        filePath: "wallpapers/wallpapers.qbs"
    }

    SubProject {
        filePath: "browser/browser.qbs"
    }

    SubProject {
        filePath: "calculator/calculator.qbs"
    }

    SubProject {
        filePath: "text/text.qbs"
    }

    SubProject {
        filePath: "appcenter/appcenter.qbs"
    }

    SubProject {
        filePath: "files/files.qbs"
    }

    SubProject {
        filePath: "terminal/terminal.qbs"
    }
}
