.class public abstract Lc8/Mnb;
.super Ljava/lang/Object;
.source "ALPBaseUserTracePoint.java"


# instance fields
.field private TTID:Ljava/lang/String;

.field private appkey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lc8/Mnb;->appkey:Ljava/lang/String;

    .line 18
    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    iput-object v1, p0, Lc8/Mnb;->TTID:Ljava/lang/String;

    return-void

    .line 16
    :cond_0
    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v0

    iget-object v0, v0, Lc8/job;->appkey:Ljava/lang/String;

    goto :goto_0

    .line 18
    :cond_1
    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v0

    iget-object v1, v0, Lc8/job;->TTID:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getProperty()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "appkey"

    iget-object v1, p0, Lc8/Mnb;->appkey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "unknown"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string/jumbo v2, "TTID"

    iget-object v1, p0, Lc8/Mnb;->TTID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "unknown"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-object v0

    .line 25
    :cond_0
    iget-object v1, p0, Lc8/Mnb;->appkey:Ljava/lang/String;

    goto :goto_0

    .line 26
    :cond_1
    iget-object v1, p0, Lc8/Mnb;->TTID:Ljava/lang/String;

    goto :goto_1
.end method

.method public abstract getSpm()Ljava/lang/String;
.end method
