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
        filePath: "appcenter/appcenter.qbs"
        Properties {
            condition: project.exclude.indexOf("appcenter") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
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
        filePath: "calamares-branding/calamares-branding.qbs"
        Properties {
            condition: project.exclude.indexOf("calamares-branding") == -1
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
        filePath: "files/files.qbs"
        Properties {
            condition: project.exclude.indexOf("files") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
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
        filePath: "libliri/libliri.qbs"
        Properties {
            condition: project.exclude.indexOf("libliri") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
            autotestEnabled: project.autotestEnabled
        }
    }

    SubProject {
        filePath: "materialdecoration/materialdecoration.qbs"
        Properties {
            condition: project.exclude.indexOf("materialdecoration") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "networkmanager/networkmanager.qbs"
        Properties {
            condition: project.exclude.indexOf("networkmanager") == -1
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
        filePath: "power-manager/power-manager.qbs"
        Properties {
            condition: project.exclude.indexOf("power-manager") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "pulseaudio/pulseaudio.qbs"
        Properties {
            condition: project.exclude.indexOf("pulseaudio") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "qbs-shared/qbs-shared.qbs"
        Properties {
            condition: project.exclude.indexOf("qbs-shared") == -1
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
        filePath: "qtudev/qtudev.qbs"
        Properties {
            condition: project.exclude.indexOf("qtudev") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
            autotestEnabled: project.autotestEnabled
        }
    }

    SubProject {
        filePath: "screencast/screencast.qbs"
        Properties {
            condition: project.exclude.indexOf("screencast") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "screenshot/screenshot.qbs"
        Properties {
            condition: project.exclude.indexOf("screenshot") == -1
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
        filePath: "shell/shell.qbs"
        Properties {
            condition: project.exclude.indexOf("shell") == -1
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

    SubProject {
        filePath: "text/text.qbs"
        Properties {
            condition: project.exclude.indexOf("text") == -1
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
        filePath: "vibe/vibe.qbs"
        Properties {
            condition: project.exclude.indexOf("vibe") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "wallpapers/wallpapers.qbs"
        Properties {
            condition: project.exclude.indexOf("wallpapers") == -1
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
        filePath: "workspace/workspace.qbs"
        Properties {
            condition: project.exclude.indexOf("workspace") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "xdg-desktop-portal-liri/xdg-desktop-portal-liri.qbs"
        Properties {
            condition: project.exclude.indexOf("xdg-desktop-portal-liri") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }
}
