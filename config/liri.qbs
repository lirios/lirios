import qbs 1.0
import qbs.File
import qbs.FileInfo
import qbs.Process

Project {
    id: project

    name: "Liri"

    property bool useStaticAnalyzer: true
    property bool autotestEnabled: true
    property stringList exclude: []

    minimumQbsVersion: "1.9.0"
    qbsSearchPaths: ["qbs-shared"]

    SubProject {
        filePath: "qbs-shared/qbs-shared.qbs"
        Properties {
            condition: project.exclude.indexOf("qbs-shared") == -1
        }
    }

    SubProject {
        filePath: "calamares-branding/calamares-branding.qbs"
        Properties {
            condition: project.exclude.indexOf("calamares-branding") == -1
        }
    }

    SubProject {
        filePath: "fluid/fluid.qbs"
        Properties {
            condition: project.exclude.indexOf("fluid") == -1
            useSystemQbsShared: true
            useStaticAnalyzer: project.useStaticAnalyzer
            autotestEnabled: project.autotestEnabled
        }
    }

    SubProject {
        filePath: "qtaccountsservice/qtaccountsservice.qbs"
        Properties {
            condition: project.exclude.indexOf("qtaccountsservice") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
            autotestEnabled: project.autotestEnabled
        }
    }

    SubProject {
        filePath: "qtgsettings/qtgsettings.qbs"
        Properties {
            condition: project.exclude.indexOf("qtgsettings") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
            autotestEnabled: project.autotestEnabled
        }
    }

    SubProject {
        filePath: "libliri/libliri.qbs"
        Properties {
            condition: project.exclude.indexOf("libliri") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
            autotestEnabled: project.autotestEnabled
        }
    }

    SubProject {
        filePath: "vibe/vibe.qbs"
        Properties {
            condition: project.exclude.indexOf("vibe") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "wayland/wayland.qbs"
        Properties {
            condition: project.exclude.indexOf("wayland") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
            autotestEnabled: project.autotestEnabled
        }
    }

    SubProject {
        filePath: "shell/shell.qbs"
        Properties {
            condition: project.exclude.indexOf("shell") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "workspace/workspace.qbs"
        Properties {
            condition: project.exclude.indexOf("workspace") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "settings/settings.qbs"
        Properties {
            condition: project.exclude.indexOf("settings") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "platformtheme/platformtheme.qbs"
        Properties {
            condition: project.exclude.indexOf("platformtheme") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "themes/themes.qbs"
        Properties {
            condition: project.exclude.indexOf("themes") == -1
        }
    }

    SubProject {
        filePath: "wallpapers/wallpapers.qbs"
        Properties {
            condition: project.exclude.indexOf("wallpapers") == -1
        }
    }

    SubProject {
        filePath: "browser/browser.qbs"
        Properties {
            condition: project.exclude.indexOf("browser") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "calculator/calculator.qbs"
        Properties {
            condition: project.exclude.indexOf("calculator") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "text/text.qbs"
        Properties {
            condition: project.exclude.indexOf("text") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "appcenter/appcenter.qbs"
        Properties {
            condition: project.exclude.indexOf("appcenter") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "files/files.qbs"
        Properties {
            condition: project.exclude.indexOf("files") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "terminal/terminal.qbs"
        Properties {
            condition: project.exclude.indexOf("terminal") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }
}
