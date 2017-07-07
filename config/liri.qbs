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
