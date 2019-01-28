.class public Lc8/Tnb;
.super Lc8/Mnb;
.source "ALPNoAppkeyPoint.java"


# instance fields
.field public TTID:Ljava/lang/String;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Lc8/Mnb;-><init>()V

    .line 18
    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v0

    iget-object v0, v0, Lc8/job;->TTID:Ljava/lang/String;

    iput-object v0, p0, Lc8/Tnb;->TTID:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lc8/Tnb;->packageName:Ljava/lang/String;

    .line 22
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
    .line 31
    invoke-super {p0}, Lc8/Mnb;->getProperty()Ljava/util/Map;

    move-result-object v0

    .line 32
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "packageName"

    iget-object v1, p0, Lc8/Tnb;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "unknown"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string/jumbo v2, "TTID"

    iget-object v1, p0, Lc8/Tnb;->TTID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "unknown"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-object v0

    .line 32
    :cond_0
    iget-object v1, p0, Lc8/Tnb;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 33
    :cond_1
    iget-object v1, p0, Lc8/Tnb;->TTID:Ljava/lang/String;

    goto :goto_1
.end method

.method public getSpm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "cf.linkpartner.400.1"

    return-object v0
.end method
