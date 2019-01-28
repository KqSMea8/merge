.class public Lc8/Sxe;
.super Ljava/lang/Object;
.source "WBAgent.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WBAgent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onEvent(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lc8/Sxe;->onEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 112
    return-void
.end method

.method public static onEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p2, "extend":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 117
    const-string/jumbo v0, "WBAgent"

    const-string/jumbo v1, "unexpected null page or activity in onEvent"

    invoke-static {v0, v1}, Lc8/qye;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-void

    .line 120
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-nez p1, :cond_1

    .line 121
    const-string/jumbo v0, "WBAgent"

    const-string/jumbo v1, "unexpected null eventId in onEvent"

    invoke-static {v0, v1}, Lc8/qye;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_1
    instance-of v0, p0, Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    .line 129
    .end local p0    # "obj":Ljava/lang/Object;
    :cond_2
    invoke-static {}, Lc8/Zxe;->getInstance()Lc8/Zxe;

    move-result-object v0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2}, Lc8/Zxe;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static onKillProcess()V
    .locals 1

    .prologue
    .line 162
    invoke-static {}, Lc8/Zxe;->getInstance()Lc8/Zxe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Zxe;->onKillProcess()V

    .line 163
    return-void
.end method

.method public static onPageEnd(Ljava/lang/String;)V
    .locals 1
    .param p0, "pageName"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-static {}, Lc8/Zxe;->getInstance()Lc8/Zxe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/Zxe;->onPageEnd(Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method public static onPageStart(Ljava/lang/String;)V
    .locals 1
    .param p0, "pageName"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Lc8/Zxe;->getInstance()Lc8/Zxe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/Zxe;->onPageStart(Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    if-nez p0, :cond_0

    .line 104
    const-string/jumbo v0, "WBAgent"

    const-string/jumbo v1, "unexpected null context in onResume"

    invoke-static {v0, v1}, Lc8/qye;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-static {}, Lc8/Zxe;->getInstance()Lc8/Zxe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/Zxe;->onPause(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    if-nez p0, :cond_0

    .line 96
    const-string/jumbo v0, "WBAgent"

    const-string/jumbo v1, "unexpected null context in onResume"

    invoke-static {v0, v1}, Lc8/qye;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-static {}, Lc8/Zxe;->getInstance()Lc8/Zxe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/Zxe;->onResume(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static onStop(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    if-nez p0, :cond_0

    .line 152
    const-string/jumbo v0, "WBAgent"

    const-string/jumbo v1, "unexpected null context in onStop"

    invoke-static {v0, v1}, Lc8/qye;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-static {}, Lc8/Zxe;->getInstance()Lc8/Zxe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/Zxe;->onStop(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static openActivityDurationTrack(Z)V
    .locals 0
    .param p0, "open"    # Z

    .prologue
    .line 25
    sput-boolean p0, Lc8/Rxe;->ACTIVITY_DURATION_OPEN:Z

    .line 26
    return-void
.end method

.method public static registerApptoAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "channel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p3, "extend":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const-string/jumbo v0, "WBAgent"

    const-string/jumbo v1, "registerApptoAd appKey is  null  "

    invoke-static {v0, v1}, Lc8/qye;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-static {p1}, Lc8/Sxe;->setAppKey(Ljava/lang/String;)V

    .line 187
    invoke-static {p2}, Lc8/Sxe;->setChannel(Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lc8/Zxe;->getInstance()Lc8/Zxe;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p3}, Lc8/Zxe;->registerApptoAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .locals 0
    .param p0, "appkey"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p0}, Lc8/Rxe;->setAppkey(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static setChannel(Ljava/lang/String;)V
    .locals 0
    .param p0, "channel"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p0}, Lc8/Rxe;->setChannel(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static setDebugMode(ZZ)V
    .locals 0
    .param p0, "isLogEnable"    # Z
    .param p1, "isGzip"    # Z

    .prologue
    .line 166
    sput-boolean p0, Lc8/qye;->sIsLogEnable:Z

    .line 167
    invoke-static {p1}, Lc8/Rxe;->setNeedGizp(Z)V

    .line 168
    return-void
.end method

.method public static setForceUploadInterval(J)V
    .locals 0
    .param p0, "interval"    # J

    .prologue
    .line 70
    invoke-static {p0, p1}, Lc8/Rxe;->setForceUploadInterval(J)V

    .line 71
    return-void
.end method

.method public static setNeedGzip(Z)V
    .locals 0
    .param p0, "needGizp"    # Z

    .prologue
    .line 79
    invoke-static {p0}, Lc8/Rxe;->setNeedGizp(Z)V

    .line 80
    return-void
.end method

.method public static setSessionContinueMillis(J)V
    .locals 0
    .param p0, "interval"    # J

    .prologue
    .line 34
    sput-wide p0, Lc8/Rxe;->kContinueSessionMillis:J

    .line 35
    return-void
.end method

.method public static setUploadInterval(J)V
    .locals 0
    .param p0, "interval"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p0, p1}, Lc8/Rxe;->setUploadInterval(J)V

    .line 63
    return-void
.end method

.method public static uploadAppLogs(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    if-nez p0, :cond_0

    .line 139
    const-string/jumbo v0, "WBAgent"

    const-string/jumbo v1, "unexpected null context in uploadAppLogs"

    invoke-static {v0, v1}, Lc8/qye;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-static {}, Lc8/Zxe;->getInstance()Lc8/Zxe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/Zxe;->uploadAppLogs(Landroid/content/Context;)V

    goto :goto_0
.end method
