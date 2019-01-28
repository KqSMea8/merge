.class public Lc8/rC;
.super Ljava/lang/Object;
.source "TBJsApiManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initJsApi()V
    .locals 2

    .prologue
    .line 17
    const-class v0, Lc8/xC;

    invoke-static {v0}, Lc8/HE;->registerUploadService(Ljava/lang/Class;)V

    .line 19
    const-string/jumbo v0, "WVServer"

    const-class v1, Lc8/MC;

    invoke-static {v0, v1}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 20
    const-string/jumbo v0, "WVACCS"

    const-class v1, Lc8/zC;

    invoke-static {v0, v1}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 21
    const-string/jumbo v0, "WVApplication"

    const-class v1, Lc8/BC;

    invoke-static {v0, v1}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 22
    const-string/jumbo v0, "WVPackageAppInfo"

    const-class v1, Lc8/FC;

    invoke-static {v0, v1}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 23
    const-string/jumbo v0, "WVWebPerformance"

    const-class v1, Lc8/OC;

    invoke-static {v0, v1}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 24
    const-string/jumbo v0, "WVReporter"

    const-class v1, Lc8/GC;

    invoke-static {v0, v1}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 26
    invoke-static {}, Lc8/jC;->init()V

    .line 27
    return-void
.end method
