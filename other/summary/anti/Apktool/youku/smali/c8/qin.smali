.class public abstract Lc8/qin;
.super Ljava/lang/Object;
.source "IStaticsImpl.java"

# interfaces
.implements Lc8/sin;


# static fields
.field public static DEBUG:Ljava/lang/Boolean;

.field public static IRESEARCH_OPEN:Ljava/lang/Boolean;

.field public static appKey:Ljava/lang/String;

.field private static appName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lc8/qin;->IRESEARCH_OPEN:Ljava/lang/Boolean;

    .line 16
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lc8/qin;->DEBUG:Ljava/lang/Boolean;

    .line 19
    const-string/jumbo v0, ""

    sput-object v0, Lc8/qin;->appName:Ljava/lang/String;

    .line 23
    sget-object v0, Lc8/KWc;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Youku"

    :goto_0
    sput-object v0, Lc8/qin;->appName:Ljava/lang/String;

    .line 25
    return-void

    .line 23
    :cond_0
    sget-object v0, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/LWc;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Youku HD"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "Youku"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adPlayEnd(Landroid/content/Context;Ljava/lang/String;ZLjava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vid"    # Ljava/lang/String;
    .param p3, "complete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p4, "adUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public adPlayStart(Landroid/content/Context;Ljava/lang/String;ZLjava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vid"    # Ljava/lang/String;
    .param p3, "complete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p4, "adUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public endSession(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 33
    return-void
.end method

.method public getLastpageSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public onKillProcess(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    const-string/jumbo v0, "userNumberId"

    invoke-static {v0}, Lc8/Iin;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lc8/LHg;->onKillProcess(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public pageOnclickTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "page"    # Ljava/lang/String;
    .param p4, "refercodeStr"    # Ljava/lang/String;
    .param p5, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p6, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "userNumberId"

    invoke-static {v0}, Lc8/Iin;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p5

    move-object v4, p4

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lc8/LHg;->pageClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 39
    return-void
.end method

.method public pageOnclickWithSessionTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "page"    # Ljava/lang/String;
    .param p4, "refercodeStr"    # Ljava/lang/String;
    .param p5, "target"    # Ljava/lang/String;
    .param p6, "session"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p7, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "userNumberId"

    invoke-static {v0}, Lc8/Iin;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p5

    move-object v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lc8/LHg;->pageClickWithSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 44
    return-void
.end method

.method public playContinue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vid"    # Ljava/lang/String;
    .param p3, "playcode"    # Ljava/lang/String;

    .prologue
    .line 75
    return-void
.end method

.method public playEnd(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vid"    # Ljava/lang/String;
    .param p3, "complete"    # Z

    .prologue
    .line 79
    return-void
.end method

.method public playHeart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vid"    # Ljava/lang/String;

    .prologue
    .line 91
    return-void
.end method

.method public playPause(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vid"    # Ljava/lang/String;

    .prologue
    .line 71
    return-void
.end method

.method public playRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vid"    # Ljava/lang/String;
    .param p3, "playType"    # Ljava/lang/String;

    .prologue
    .line 63
    return-void
.end method

.method public playStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vid"    # Ljava/lang/String;
    .param p3, "playcode"    # Ljava/lang/String;

    .prologue
    .line 67
    return-void
.end method

.method public setCachePersentage(F)V
    .locals 0
    .param p1, "persentage"    # F

    .prologue
    .line 115
    return-void
.end method

.method public setCacheSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 107
    return-void
.end method

.method public setContinueSessionMillis(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 99
    return-void
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .prologue
    .line 95
    return-void
.end method

.method public setEventSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 111
    return-void
.end method

.method public setTest(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .prologue
    .line 132
    return-void
.end method

.method public setTestHost(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .prologue
    .line 128
    return-void
.end method

.method public setTrackLocation(Z)V
    .locals 0
    .param p1, "isTrack"    # Z

    .prologue
    .line 103
    return-void
.end method

.method public setUserAgent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 119
    return-void
.end method

.method public startSession(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "pageName"    # Ljava/lang/String;

    .prologue
    .line 29
    return-void
.end method

.method public trackCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "page"    # Ljava/lang/String;
    .param p4, "target"    # Ljava/lang/String;

    .prologue
    .line 48
    return-void
.end method

.method public trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "page"    # Ljava/lang/String;
    .param p4, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p5, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public trackExtendCustomEventWithSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "page"    # Ljava/lang/String;
    .param p4, "target"    # Ljava/lang/String;
    .param p6, "session"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p5, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public trackExtendCustomEventWithUidImpl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "page"    # Ljava/lang/String;
    .param p4, "target"    # Ljava/lang/String;
    .param p6, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p5, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method
