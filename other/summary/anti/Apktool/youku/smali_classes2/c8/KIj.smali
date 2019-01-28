.class public Lc8/KIj;
.super Ljava/lang/Object;
.source "YKPreprocessor.java"

# interfaces
.implements Lc8/Tbf;


# instance fields
.field private mAppVersion:Ljava/lang/String;

.field private mUrlRepository:Lc8/FIj;


# direct methods
.method public constructor <init>(Lc8/FIj;Ljava/lang/String;)V
    .locals 0
    .param p1, "urlRepository"    # Lc8/FIj;
    .param p2, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lc8/KIj;->mUrlRepository:Lc8/FIj;

    .line 25
    iput-object p2, p0, Lc8/KIj;->mAppVersion:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private static getNewUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "appVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lc8/EIj;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 79
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/youku/navigation/UrlItem;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/EIj;

    .line 80
    .local v0, "item":Lc8/EIj;
    iget-object v2, v0, Lc8/EIj;->mOriginUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    invoke-virtual {v0, p1}, Lc8/EIj;->isVersion(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, v0, Lc8/EIj;->mOriginUrl:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {v0}, Lc8/EIj;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 92
    .end local v0    # "item":Lc8/EIj;
    :goto_0
    return-object v1

    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0
.end method


# virtual methods
.method public beforeNavTo(Landroid/content/Intent;)Z
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    .line 30
    if-nez p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v9

    .line 34
    :cond_1
    const/4 v1, 0x1

    .line 35
    .local v1, "enableRewrite":Z
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    .line 36
    .local v6, "uriString":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 40
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 41
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 42
    const-string/jumbo v7, "com.youku.phone.navigation_re_write_by_orange_key"

    invoke-virtual {v0, v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 45
    :cond_2
    if-eqz v1, :cond_0

    .line 49
    iget-object v7, p0, Lc8/KIj;->mUrlRepository:Lc8/FIj;

    invoke-interface {v7}, Lc8/FIj;->getConfig()Ljava/util/List;

    move-result-object v2

    .line 50
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/youku/navigation/UrlItem;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 54
    const-string/jumbo v7, "[?]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "paths":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v4, v7

    iget-object v8, p0, Lc8/KIj;->mAppVersion:Ljava/lang/String;

    invoke-static {v7, v8, v2}, Lc8/KIj;->getNewUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "newUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    array-length v7, v4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_3

    .line 64
    const-string/jumbo v7, "?"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 65
    const-string/jumbo v7, "&"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :goto_1
    aget-object v7, v4, v9

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_3
    const-string/jumbo v7, "com.youku.phone.navigation_re_write_by_orange_key"

    invoke-virtual {p1, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    const-string/jumbo v7, "com.youku.phone.re_write_origin_url"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 67
    :cond_4
    const-string/jumbo v7, "?"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
