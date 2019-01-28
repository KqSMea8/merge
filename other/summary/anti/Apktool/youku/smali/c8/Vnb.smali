.class public Lc8/Vnb;
.super Lc8/Mnb;
.source "ALPWriteDeepLinkPoint.java"


# instance fields
.field public targetAppInfo:Ljava/lang/String;

.field public targetUrl:Ljava/lang/String;

.field public time:Ljava/lang/String;

.field public utdid:Ljava/lang/String;

.field public visa:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lc8/Mnb;-><init>()V

    return-void
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
    .line 32
    invoke-super {p0}, Lc8/Mnb;->getProperty()Ljava/util/Map;

    move-result-object v0

    .line 33
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "time"

    iget-object v1, p0, Lc8/Vnb;->time:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "unknown"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string/jumbo v2, "targetAppInfo"

    iget-object v1, p0, Lc8/Vnb;->targetAppInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "unknown"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string/jumbo v2, "targetUrl"

    iget-object v1, p0, Lc8/Vnb;->targetUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "unknown"

    :goto_2
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string/jumbo v2, "utdid"

    iget-object v1, p0, Lc8/Vnb;->utdid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "unknown"

    :goto_3
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string/jumbo v2, "visa"

    iget-object v1, p0, Lc8/Vnb;->visa:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "unknown"

    :goto_4
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-object v0

    .line 33
    :cond_0
    iget-object v1, p0, Lc8/Vnb;->time:Ljava/lang/String;

    goto :goto_0

    .line 34
    :cond_1
    iget-object v1, p0, Lc8/Vnb;->targetAppInfo:Ljava/lang/String;

    goto :goto_1

    .line 35
    :cond_2
    iget-object v1, p0, Lc8/Vnb;->targetUrl:Ljava/lang/String;

    goto :goto_2

    .line 36
    :cond_3
    iget-object v1, p0, Lc8/Vnb;->utdid:Ljava/lang/String;

    goto :goto_3

    .line 37
    :cond_4
    iget-object v1, p0, Lc8/Vnb;->visa:Ljava/lang/String;

    goto :goto_4
.end method

.method public getSpm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "cf.linkpartner.3.1"

    return-object v0
.end method
