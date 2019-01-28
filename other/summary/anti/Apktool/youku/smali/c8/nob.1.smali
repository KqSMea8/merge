.class public Lc8/nob;
.super Lc8/mob;
.source "ALPURIParam.java"


# instance fields
.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Lc8/mob;-><init>()V

    .line 28
    iput-object p1, p0, Lc8/nob;->url:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "ali.open.nav"

    iput-object v0, p0, Lc8/nob;->action:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "h5"

    iput-object v0, p0, Lc8/nob;->module:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public checkParam()Z
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lc8/nob;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string/jumbo v0, "ALPURIParam"

    const-string/jumbo v1, "checkParam"

    const-string/jumbo v2, "url is not right"

    invoke-static {v0, v1, v2}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAPIType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string/jumbo v0, "uri"

    return-object v0
.end method

.method public getBackUpH5Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lc8/nob;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/nob;->url:Ljava/lang/String;

    invoke-static {v0}, Lc8/vob;->isURL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 36
    :cond_0
    const-string/jumbo v0, ""

    .line 38
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lc8/nob;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lc8/nob;->module:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    const-string/jumbo v0, "h5Url"

    iget-object v1, p0, Lc8/nob;->url:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lc8/nob;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-super {p0}, Lc8/mob;->getParams()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
