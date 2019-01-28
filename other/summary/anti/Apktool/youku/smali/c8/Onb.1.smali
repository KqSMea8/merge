.class public Lc8/Onb;
.super Lc8/Mnb;
.source "ALPConfigPoint.java"


# instance fields
.field public TTID:Ljava/lang/String;

.field public appkeyExist:Z

.field public configExist:Z

.field public exp:I

.field public isSuccess:Z


# direct methods
.method public constructor <init>(ZZZI)V
    .locals 1
    .param p1, "isSuccess"    # Z
    .param p2, "appkeyExist"    # Z
    .param p3, "configExist"    # Z
    .param p4, "exp"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Lc8/Mnb;-><init>()V

    .line 24
    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v0

    iget-object v0, v0, Lc8/job;->TTID:Ljava/lang/String;

    iput-object v0, p0, Lc8/Onb;->TTID:Ljava/lang/String;

    .line 27
    iput-boolean p1, p0, Lc8/Onb;->isSuccess:Z

    .line 28
    iput-boolean p2, p0, Lc8/Onb;->appkeyExist:Z

    .line 29
    iput-boolean p3, p0, Lc8/Onb;->configExist:Z

    .line 30
    iput p4, p0, Lc8/Onb;->exp:I

    .line 31
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
    .line 40
    invoke-super {p0}, Lc8/Mnb;->getProperty()Ljava/util/Map;

    move-result-object v0

    .line 41
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "isSuccess"

    iget-boolean v1, p0, Lc8/Onb;->isSuccess:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string/jumbo v2, "appkeyExist"

    iget-boolean v1, p0, Lc8/Onb;->appkeyExist:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "1"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string/jumbo v2, "configExist"

    iget-boolean v1, p0, Lc8/Onb;->configExist:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "1"

    :goto_2
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string/jumbo v1, "exp"

    iget v2, p0, Lc8/Onb;->exp:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string/jumbo v2, "TTID"

    iget-object v1, p0, Lc8/Onb;->TTID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "unknown"

    :goto_3
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-object v0

    .line 41
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0

    .line 42
    :cond_1
    const-string/jumbo v1, "0"

    goto :goto_1

    .line 43
    :cond_2
    const-string/jumbo v1, "0"

    goto :goto_2

    .line 45
    :cond_3
    iget-object v1, p0, Lc8/Onb;->TTID:Ljava/lang/String;

    goto :goto_3
.end method

.method public getSpm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "cf.linkpartner.2.1"

    return-object v0
.end method
