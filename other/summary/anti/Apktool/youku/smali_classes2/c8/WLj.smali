.class public Lc8/WLj;
.super Ljava/lang/Object;
.source "YoukuUncaughtAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static upload(Landroid/content/Context;Ljava/util/Map;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 17
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 20
    :cond_1
    new-instance v0, Lc8/dSb;

    invoke-direct {v0}, Lc8/dSb;-><init>()V

    .line 26
    .local v0, "exceptionModule":Lc8/dSb;
    const-string/jumbo v2, "YOUKU_UNCAUGHT_CRASH"

    iput-object v2, v0, Lc8/dSb;->customizeBusinessType:Ljava/lang/String;

    .line 33
    sget-object v2, Lcom/alibaba/motu/crashreportadapter/module/AggregationType;->CONTENT:Lcom/alibaba/motu/crashreportadapter/module/AggregationType;

    iput-object v2, v0, Lc8/dSb;->aggregationType:Lcom/alibaba/motu/crashreportadapter/module/AggregationType;

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "current_activity"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "last_activity"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lc8/dSb;->exceptionCode:Ljava/lang/String;

    .line 43
    iput-object v4, v0, Lc8/dSb;->exceptionId:Ljava/lang/String;

    .line 48
    iput-object v4, v0, Lc8/dSb;->exceptionDetail:Ljava/lang/String;

    .line 53
    iput-object v4, v0, Lc8/dSb;->throwable:Ljava/lang/Throwable;

    .line 58
    iput-object v4, v0, Lc8/dSb;->thread:Ljava/lang/Thread;

    .line 63
    iput-object v4, v0, Lc8/dSb;->exceptionVersion:Ljava/lang/String;

    .line 68
    iput-object v4, v0, Lc8/dSb;->exceptionArg1:Ljava/lang/String;

    .line 73
    iput-object v4, v0, Lc8/dSb;->exceptionArg2:Ljava/lang/String;

    .line 78
    iput-object v4, v0, Lc8/dSb;->exceptionArg3:Ljava/lang/String;

    .line 83
    iput-object p1, v0, Lc8/dSb;->exceptionArgs:Ljava/util/Map;

    .line 86
    new-instance v1, Lc8/kSb;

    invoke-direct {v1}, Lc8/kSb;-><init>()V

    .line 87
    .local v1, "reportAdapteHandler":Lc8/kSb;
    invoke-virtual {v1, p0, v0}, Lc8/kSb;->adapter(Landroid/content/Context;Lc8/pSb;)V

    goto :goto_0
.end method
