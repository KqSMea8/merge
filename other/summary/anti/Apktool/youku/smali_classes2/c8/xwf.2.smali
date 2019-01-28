.class public final Lc8/xwf;
.super Ljava/lang/Object;
.source "StatMonitor4Phenix.java"

# interfaces
.implements Lc8/SSb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/zwf;->setupFlowMonitor(Landroid/content/Context;Lc8/Pwf;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCrashCaught(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/util/Map;
    .locals 6
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 95
    invoke-static {}, Lc8/zwf;->access$100()Lc8/ywf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/ywf;->getLatestDecodingUrlText()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "latestUrls":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 97
    const-string/jumbo v2, "StatMonitor4Phenix"

    const-string/jumbo v3, "crash happened, collect latest decoding failed"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lc8/qwf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    const/4 v1, 0x0

    .line 103
    :goto_0
    return-object v1

    .line 100
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v1, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "PHENIX_LATEST_DECODING"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string/jumbo v2, "StatMonitor4Phenix"

    const-string/jumbo v3, "crash happened, collect latest decoding urls=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lc8/qwf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
