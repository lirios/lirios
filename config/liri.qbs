import qbs 1.0
import qbs.File
import qbs.FileInfo
import qbs.Process

Project {
    id: project

    name: "Liri"

    property bool useStaticAnalyzer: true
    property bool autotestEnabled: true

    minimumQbsVersion: "1.8.0"
    qbsSearchPaths: ["qbs-shared"]

    SubProject {
        filePath: "qbs-shared/qbs-shared.qbs"
    }

    SubProject {
        filePath: "fluid/fluid.qbs"
        Properties {
            useSystemQbsShared: true
            useStaticAnalyzer: project.useStaticAnalyzer
            autotestEnabled: project.autotestEnabled
        }
    }

    SubProject {
        filePath: "qtaccountsservice/qtaccountsservice.qbs"
        Properties {
            useStaticAnalyzer: project.useStaticAnalyzer
            autotestEnabled: project.autotestEnabled
        }
    }

    SubProject {
        filePath: "qtgsettings/qtgsettings.qbs"
        Properties {
            useStaticAnalyzer: project.useStaticAnalyzer
            autotestEnabled: project.autotestEnabled
        }
    }

    SubProject {
        filePath: "libliri/libliri.qbs"
        Properties {
            useStaticAnalyzer: project.useStaticAnalyzer
            autotestEnabled: project.autotestEnabled
        }
    }

    SubProject {
        filePath: "vibe/vibe.qbs"
        Properties {
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "wayland/wayland.qbs"
        Properties {
            useStaticAnalyzer: project.useStaticAnalyzer
            autotestEnabled: project.autotestEnabled
        }
    }

    SubProject {
        filePath: "shell/shell.qbs"
        Properties {
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "workspace/workspace.qbs"
        Properties {
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "settings/settings.qbs"
        Properties {
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "platformtheme/platformtheme.qbs"
        Properties {
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "themes/themes.qbs"
    }

    SubProject {
        filePath: "wallpapers/wallpapers.qbs"
    }

    SubProject {
        filePath: "browser/browser.qbs"
        Properties {
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "calculator/calculator.qbs"
        Properties {
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "text/text.qbs"
        Properties {
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "appcenter/appcenter.qbs"
        Properties {
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "files/files.qbs"
        Properties {
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "terminal/terminal.qbs"
        Properties {
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }
}
