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
    qbsSearchPaths: ["common/qbs-shared"]

    /*
     * Common
     */

    SubProject {
        filePath: "common/qbs-shared/qbs-shared.qbs"
        Properties {
            condition: project.exclude.indexOf("qbs-shared") == -1
        }
    }

    /*
     * Libraries
     */

    SubProject {
        filePath: "libraries/fluid/fluid.qbs"
        Properties {
            condition: project.exclude.indexOf("fluid") == -1
            useSystemQbsShared: true
            useStaticAnalyzer: project.useStaticAnalyzer
            autotestEnabled: project.autotestEnabled
        }
    }

    SubProject {
        filePath: "libraries/libliri/libliri.qbs"
        Properties {
            condition: project.exclude.indexOf("libliri") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
            autotestEnabled: project.autotestEnabled
        }
    }

    SubProject {
        filePath: "libraries/qtaccountsservice/qtaccountsservice.qbs"
        Properties {
            condition: project.exclude.indexOf("qtaccountsservice") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
            autotestEnabled: project.autotestEnabled
        }
    }

    SubProject {
        filePath: "libraries/qtgsettings/qtgsettings.qbs"
        Properties {
            condition: project.exclude.indexOf("qtgsettings") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
            autotestEnabled: project.autotestEnabled
        }
    }

    SubProject {
        filePath: "libraries/qtudev/qtudev.qbs"
        Properties {
            condition: project.exclude.indexOf("qtudev") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
            autotestEnabled: project.autotestEnabled
        }
    }

    /*
     * Desktop
     */

    SubProject {
        filePath: "desktop/eglfs/eglfs.qbs"
        Properties {
            condition: project.exclude.indexOf("eglfs") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
            autotestEnabled: project.autotestEnabled
        }
    }

    SubProject {
        filePath: "desktop/materialdecoration/materialdecoration.qbs"
        Properties {
            condition: project.exclude.indexOf("materialdecoration") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "desktop/networkmanager/networkmanager.qbs"
        Properties {
            condition: project.exclude.indexOf("networkmanager") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "desktop/platformtheme/platformtheme.qbs"
        Properties {
            condition: project.exclude.indexOf("platformtheme") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "desktop/power-manager/power-manager.qbs"
        Properties {
            condition: project.exclude.indexOf("power-manager") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "desktop/pulseaudio/pulseaudio.qbs"
        Properties {
            condition: project.exclude.indexOf("pulseaudio") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "desktop/screencast/screencast.qbs"
        Properties {
            condition: project.exclude.indexOf("screencast") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "desktop/screenshot/screenshot.qbs"
        Properties {
            condition: project.exclude.indexOf("screenshot") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "desktop/settings/settings.qbs"
        Properties {
            condition: project.exclude.indexOf("settings") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "desktop/shell/shell.qbs"
        Properties {
            condition: project.exclude.indexOf("shell") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "desktop/themes/themes.qbs"
        Properties {
            condition: project.exclude.indexOf("themes") == -1
        }
    }

    SubProject {
        filePath: "desktop/wallpapers/wallpapers.qbs"
        Properties {
            condition: project.exclude.indexOf("wallpapers") == -1
        }
    }

    SubProject {
        filePath: "desktop/qml-xwayland/qml-xwayland.qbs"
        Properties {
            condition: project.exclude.indexOf("qml-xwayland") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
            autotestEnabled: project.autotestEnabled
        }
    }

    SubProject {
        filePath: "desktop/xdg-desktop-portal-liri/xdg-desktop-portal-liri.qbs"
        Properties {
            condition: project.exclude.indexOf("xdg-desktop-portal-liri") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    /*
     * Apps
     */

    SubProject {
        filePath: "apps/appcenter/appcenter.qbs"
        Properties {
            condition: project.exclude.indexOf("appcenter") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "apps/browser/browser.qbs"
        Properties {
            condition: project.exclude.indexOf("browser") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "apps/calculator/calculator.qbs"
        Properties {
            condition: project.exclude.indexOf("calculator") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "apps/files/files.qbs"
        Properties {
            condition: project.exclude.indexOf("files") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "apps/player/player.qbs"
        Properties {
            condition: project.exclude.indexOf("player") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "apps/terminal/terminal.qbs"
        Properties {
            condition: project.exclude.indexOf("terminal") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    SubProject {
        filePath: "apps/text/text.qbs"
        Properties {
            condition: project.exclude.indexOf("text") == -1
            useStaticAnalyzer: project.useStaticAnalyzer
        }
    }

    /*
     * OS
     */

    SubProject {
        filePath: "os/calamares-branding/calamares-branding.qbs"
        Properties {
            condition: project.exclude.indexOf("calamares-branding") == -1
        }
    }
}
