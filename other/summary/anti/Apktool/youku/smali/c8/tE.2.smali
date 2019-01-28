.class public Lc8/tE;
.super Ljava/lang/Object;
.source "WVAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/sE;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static setup()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 29
    invoke-static {}, Lc8/fE;->getInstance()Lc8/fE;

    move-result-object v0

    invoke-virtual {v0}, Lc8/fE;->init()V

    .line 30
    const-string/jumbo v0, "Base"

    const-class v1, Lc8/wE;

    invoke-static {v0, v1}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 31
    const-string/jumbo v0, "WVLocation"

    const-class v1, Lc8/bF;

    invoke-static {v0, v1}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 32
    const-string/jumbo v0, "WVMotion"

    const-class v1, Lc8/hF;

    invoke-static {v0, v1}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 33
    const-string/jumbo v0, "WVCookie"

    const-class v1, Lc8/UE;

    invoke-static {v0, v1}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 34
    const-string/jumbo v0, "WVCamera"

    const-class v1, Lc8/HE;

    invoke-static {v0, v1}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 35
    const-string/jumbo v0, "WVUI"

    const-class v1, Lc8/pF;

    invoke-static {v0, v1}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 36
    const-string/jumbo v0, "WVNotification"

    const-class v1, Lc8/mF;

    invoke-static {v0, v1}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 37
    const-string/jumbo v0, "WVNetwork"

    const-class v1, Lc8/kF;

    invoke-static {v0, v1}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 38
    const-string/jumbo v0, "WVUIToast"

    const-class v1, Lc8/vF;

    invoke-static {v0, v1}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 39
    const-string/jumbo v0, "WVUIDialog"

    const-class v1, Lc8/uF;

    invoke-static {v0, v1}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 40
    const-string/jumbo v0, "WVUIActionSheet"

    const-class v1, Lc8/rF;

    invoke-static {v0, v1}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 41
    const-string/jumbo v0, "WVContacts"

    const-class v1, Lc8/TE;

    invoke-static {v0, v1}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 42
    const-string/jumbo v0, "WVReporter"

    const-class v1, Lc8/nF;

    invoke-static {v0, v1}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 43
    const-string/jumbo v0, "WVStandardEventCenter"

    const-class v1, Lc8/sH;

    invoke-static {v0, v1}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 44
    const-string/jumbo v0, "WVFile"

    const-class v1, Lc8/WE;

    invoke-static {v0, v1}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 45
    const-string/jumbo v0, "WVScreen"

    const-class v1, Lc8/oF;

    invoke-static {v0, v1}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 46
    const-string/jumbo v0, "WVNativeDetector"

    const-class v1, Lc8/jF;

    invoke-static {v0, v1, v2}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 47
    const-string/jumbo v0, "WVBluetooth"

    const-class v1, Lc8/BE;

    invoke-static {v0, v1, v2}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 48
    return-void
.end method
