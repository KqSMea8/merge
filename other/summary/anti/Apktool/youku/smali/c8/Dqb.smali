.class public Lc8/Dqb;
.super Lc8/MXf;
.source "WXCookieModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 4
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    .line 21
    iget-object v1, p0, Lc8/Dqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getBundleUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/jB;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "cookies":Ljava/lang/String;
    const-string/jumbo v1, "WXCookieModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get cookie :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xgg;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-object v0
.end method

.method public getAllObjects()Ljava/util/ArrayList;
    .locals 13
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 36
    iget-object v10, p0, Lc8/Dqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v10}, Lc8/nVf;->getBundleUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lc8/jB;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "cookies":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 38
    const-string/jumbo v10, "\""

    const-string/jumbo v11, "\\\\\""

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "cookieData":Ljava/lang/String;
    const-string/jumbo v10, ";"

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "cookiesArray":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v9, "resultValues":Ljava/util/ArrayList;
    array-length v7, v3

    .line 43
    .local v7, "length":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_1

    .line 44
    aget-object v0, v3, v6

    .line 45
    .local v0, "cookie":Ljava/lang/String;
    const-string/jumbo v10, "="

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "datas":[Ljava/lang/String;
    array-length v10, v4

    if-le v10, v12, :cond_0

    .line 48
    :try_start_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v8, "resultData":Ljava/util/Map;
    const-string/jumbo v10, "name"

    const/4 v11, 0x0

    aget-object v11, v4, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string/jumbo v10, "value"

    const/4 v11, 0x1

    aget-object v11, v4, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v8    # "resultData":Ljava/util/Map;
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 52
    :catch_0
    move-exception v5

    .line 53
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 57
    .end local v0    # "cookie":Ljava/lang/String;
    .end local v4    # "datas":[Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v10, "WXCookieModule"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "get cookies :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/xgg;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .end local v1    # "cookieData":Ljava/lang/String;
    .end local v3    # "cookiesArray":[Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "length":I
    .end local v9    # "resultValues":Ljava/util/ArrayList;
    :goto_2
    return-object v9

    :cond_2
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0
    .param p1, "cookie"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    .line 71
    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 3
    .param p1, "param"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lc8/Dqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getBundleUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/jB;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_0
    const-string/jumbo v0, "WXCookieModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set cookie :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public setObject(Ljava/lang/String;)V
    .locals 0
    .param p1, "cookie"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    .line 66
    return-void
.end method
