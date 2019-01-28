.class public abstract Lc8/iob;
.super Ljava/lang/Object;
.source "ALPJumpParam.java"


# instance fields
.field public backUrl:Ljava/lang/String;

.field protected h5DegradeParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h5Url:Ljava/lang/String;

.field public intentProcessor:Lc8/Zmb;

.field public linkKey:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field protected params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pluginRules:Ljava/lang/String;

.field private sdkName:Ljava/lang/String;

.field protected unUrlEnCodeParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public visa:Ljava/lang/String;

.field public visaChecked:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string/jumbo v0, "taobao"

    iput-object v0, p0, Lc8/iob;->linkKey:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "linkPartner"

    iput-object v0, p0, Lc8/iob;->sdkName:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/iob;->visaChecked:Z

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/iob;->params:Ljava/util/HashMap;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/iob;->unUrlEnCodeParams:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/iob;->h5DegradeParams:Ljava/util/HashMap;

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "linkKey"    # Ljava/lang/String;
    .param p2, "backUrl"    # Ljava/lang/String;
    .param p3, "h5Url"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string/jumbo v0, "taobao"

    iput-object v0, p0, Lc8/iob;->linkKey:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "linkPartner"

    iput-object v0, p0, Lc8/iob;->sdkName:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/iob;->visaChecked:Z

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/iob;->params:Ljava/util/HashMap;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/iob;->unUrlEnCodeParams:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/iob;->h5DegradeParams:Ljava/util/HashMap;

    .line 83
    iput-object p1, p0, Lc8/iob;->linkKey:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lc8/iob;->backUrl:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lc8/iob;->h5Url:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method protected addH5DegradeParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 104
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 105
    iget-object v0, p0, Lc8/iob;->h5DegradeParams:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_0
    return-void
.end method

.method protected addParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 98
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 99
    iget-object v0, p0, Lc8/iob;->params:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_0
    return-void
.end method

.method protected addUnUrlEnCodeParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 110
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 111
    iget-object v0, p0, Lc8/iob;->unUrlEnCodeParams:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_0
    return-void
.end method

.method public canDegrade()Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public checkParam()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lc8/iob;->linkKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x1

    .line 196
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAPIType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    const-string/jumbo v0, "normal"

    return-object v0
.end method

.method public getBackUpH5Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lc8/iob;->h5Url:Ljava/lang/String;

    return-object v0
.end method

.method public getH5DegradeParams()Ljava/util/HashMap;
    .locals 1
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
    .line 150
    iget-object v0, p0, Lc8/iob;->h5DegradeParams:Ljava/util/HashMap;

    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lc8/iob;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lc8/iob;->packageName:Ljava/lang/String;

    .line 273
    :goto_0
    return-object v0

    .line 268
    :cond_0
    iget-object v0, p0, Lc8/iob;->linkKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    sget-object v0, Lc8/Ymb;->configManager:Lc8/Anb;

    invoke-virtual {v0}, Lc8/Anb;->getMemConfigInfo()Lc8/Fnb;

    move-result-object v0

    iget-object v1, p0, Lc8/iob;->linkKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/Fnb;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/iob;->packageName:Ljava/lang/String;

    .line 273
    :cond_1
    iget-object v0, p0, Lc8/iob;->packageName:Ljava/lang/String;

    goto :goto_0
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
    .line 123
    iget-object v0, p0, Lc8/iob;->backUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 124
    const-string/jumbo v0, "backURL"

    iget-object v1, p0, Lc8/iob;->backUrl:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lc8/iob;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    iget-object v0, p0, Lc8/iob;->sdkName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 129
    const-string/jumbo v0, "sdkName"

    iget-object v1, p0, Lc8/iob;->sdkName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lc8/iob;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_1
    iget-object v0, p0, Lc8/iob;->pluginRules:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 134
    const-string/jumbo v0, "pluginRules"

    iget-object v1, p0, Lc8/iob;->pluginRules:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lc8/iob;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_2
    const-string/jumbo v0, "appName"

    invoke-static {}, Lc8/Ymb;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lc8/wob;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lc8/iob;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string/jumbo v0, "packageName"

    invoke-static {}, Lc8/Ymb;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lc8/wob;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lc8/iob;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string/jumbo v0, "v"

    invoke-static {}, Lc8/Ymb;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lc8/iob;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lc8/iob;->visa:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 143
    const-string/jumbo v0, "visa"

    iget-object v1, p0, Lc8/iob;->visa:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lc8/iob;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_3
    iget-object v0, p0, Lc8/iob;->params:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPostfix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getUnUrlEnCodeParams()Ljava/util/HashMap;
    .locals 1
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
    .line 154
    iget-object v0, p0, Lc8/iob;->unUrlEnCodeParams:Ljava/util/HashMap;

    return-object v0
.end method

.method public isCallbackMode()Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public isTaobaoOrTmall()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 249
    iget-object v7, p0, Lc8/iob;->linkKey:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v5

    .line 253
    :cond_1
    const/4 v7, 0x4

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v7, "taobao_scheme"

    aput-object v7, v3, v5

    const-string/jumbo v7, "taobao"

    aput-object v7, v3, v6

    const/4 v7, 0x2

    const-string/jumbo v8, "tmall_scheme"

    aput-object v8, v3, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "tmall"

    aput-object v8, v3, v7

    .line 254
    .local v3, "keys":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    .line 255
    .local v2, "key":Ljava/lang/String;
    iget-object v7, p0, Lc8/iob;->linkKey:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    .line 256
    goto :goto_0

    .line 254
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public putParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 179
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-virtual {p0, p1, p2}, Lc8/iob;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public putParams(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 170
    :cond_0
    return-void

    .line 163
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 164
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 166
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lc8/iob;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
