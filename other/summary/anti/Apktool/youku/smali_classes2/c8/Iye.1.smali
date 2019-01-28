.class public Lc8/Iye;
.super Ljava/lang/Object;
.source "WeiboPageUtils.java"


# static fields
.field private static final USER_INFO_H5:Ljava/lang/String; = "http://m.weibo.cn/u/"

.field private static final USER_INFO_SCHEME:Ljava/lang/String; = "sinaweibo://userinfo?"

.field private static final WEIBO_ARTICLE_H5:Ljava/lang/String; = "http://media.weibo.cn/article?"

.field private static final WEIBO_ARTICLE_SCHEME:Ljava/lang/String; = "sinaweibo://article?"

.field private static final WEIBO_COMMENT_H5:Ljava/lang/String; = "http://m.weibo.cn/comment?"

.field private static final WEIBO_COMMENT_SCHEME:Ljava/lang/String; = "sinaweibo://comment?"

.field private static final WEIBO_DETAIL_H5:Ljava/lang/String; = "http://m.weibo.cn/"

.field private static final WEIBO_DETAIL_SCHEME:Ljava/lang/String; = "sinaweibo://detail?"

.field private static final WEIBO_GOTO_HOME_H5:Ljava/lang/String; = "http://m.weibo.cn/index/router?"

.field private static final WEIBO_GOTO_HOME_SCHEME:Ljava/lang/String; = "sinaweibo://gotohome?"

.field private static final WEIBO_GOTO_MYPROFILE_H5:Ljava/lang/String; = "http://m.weibo.cn/index/router?"

.field private static final WEIBO_GOTO_MYPROFILE_SCHEME:Ljava/lang/String; = "sinaweibo://myprofile?"

.field private static final WEIBO_SEARCH_URL_CHEME:Ljava/lang/String; = "sinaweibo://searchall?"

.field private static final WEIBO_SEARCH_URL_H5:Ljava/lang/String; = "http://m.weibo.cn/main/pages/index?"

.field private static final WEIBO_SEND_CONTENT_H5:Ljava/lang/String; = "http://m.weibo.cn/mblog?"

.field private static final WEIBO_SEND_CONTENT_SCHEME:Ljava/lang/String; = "sinaweibo://sendweibo?"

.field private static weiboSdkUtils:Lc8/Iye;


# instance fields
.field private authInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

.field private context:Landroid/content/Context;

.field private mWeiboInfo:Lc8/Pwe;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/AuthInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authInfo"    # Lcom/sina/weibo/sdk/auth/AuthInfo;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Iye;->mWeiboInfo:Lc8/Pwe;

    .line 61
    invoke-static {p1}, Lc8/Cwe;->getInstance(Landroid/content/Context;)Lc8/Cwe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Cwe;->getWbAppInfo()Lc8/Pwe;

    move-result-object v0

    iput-object v0, p0, Lc8/Iye;->mWeiboInfo:Lc8/Pwe;

    .line 62
    iput-object p2, p0, Lc8/Iye;->authInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    .line 63
    iput-object p1, p0, Lc8/Iye;->context:Landroid/content/Context;

    .line 64
    return-void
.end method

.method private createScheme(Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 336
    .local p2, "property":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lc8/Iye;->schemeAddProperty(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 338
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/AuthInfo;)Lc8/Iye;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authInfo"    # Lcom/sina/weibo/sdk/auth/AuthInfo;

    .prologue
    .line 67
    sget-object v0, Lc8/Iye;->weiboSdkUtils:Lc8/Iye;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lc8/Iye;

    invoke-direct {v0, p0, p1}, Lc8/Iye;-><init>(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/AuthInfo;)V

    sput-object v0, Lc8/Iye;->weiboSdkUtils:Lc8/Iye;

    .line 70
    :cond_0
    sget-object v0, Lc8/Iye;->weiboSdkUtils:Lc8/Iye;

    return-object v0
.end method

.method private gotoWebActivity(Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 360
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 361
    .local v8, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lc8/Iye;->context:Landroid/content/Context;

    const-class v2, Lcom/sina/weibo/sdk/web/WeiboSdkWebActivity;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 362
    new-instance v0, Lc8/Vye;

    iget-object v1, p0, Lc8/Iye;->authInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    sget-object v2, Lcom/sina/weibo/sdk/web/WebRequestType;->DEFAULT:Lcom/sina/weibo/sdk/web/WebRequestType;

    iget-object v6, p0, Lc8/Iye;->context:Landroid/content/Context;

    move-object v4, v3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lc8/Vye;-><init>(Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/web/WebRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 363
    .local v0, "param":Lc8/Vye;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 364
    .local v7, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, v7}, Lc8/Vye;->fillBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 365
    invoke-virtual {v8, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 366
    iget-object v1, p0, Lc8/Iye;->context:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 367
    return-void
.end method

.method private schemeAddProperty(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 348
    .local p2, "property":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "luicode=10000360&&lfid=OP_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/Iye;->authInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-virtual {v3}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 349
    if-eqz p2, :cond_0

    .line 350
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 351
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 353
    .local v0, "entry":Ljava/util/Map$Entry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 354
    goto :goto_0

    .line 356
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "iterator":Ljava/util/Iterator;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public commentWeibo(Ljava/lang/String;)V
    .locals 1
    .param p1, "srcid"    # Ljava/lang/String;

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/Iye;->commentWeibo(Ljava/lang/String;Z)V

    .line 206
    return-void
.end method

.method public commentWeibo(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "srcid"    # Ljava/lang/String;
    .param p2, "webOnly"    # Z

    .prologue
    .line 210
    if-nez p2, :cond_0

    iget-object v3, p0, Lc8/Iye;->mWeiboInfo:Lc8/Pwe;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/Iye;->mWeiboInfo:Lc8/Pwe;

    invoke-virtual {v3}, Lc8/Pwe;->isLegal()Z

    move-result v3

    if-nez v3, :cond_1

    .line 211
    :cond_0
    const-string/jumbo v2, "http://m.weibo.cn/comment?"

    .line 212
    .local v2, "url":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 213
    .local v1, "property":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "id"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lc8/Iye;->schemeAddProperty(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-direct {p0, v2}, Lc8/Iye;->gotoWebActivity(Ljava/lang/String;)V

    .line 228
    :goto_0
    return-void

    .line 218
    .end local v1    # "property":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "url":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "sinaweibo://comment?"

    .line 219
    .restart local v2    # "url":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 220
    .restart local v1    # "property":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "srcid"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-direct {p0, v2, v1}, Lc8/Iye;->createScheme(Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;

    move-result-object v0

    .line 223
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v3, p0, Lc8/Iye;->context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public gotoMyHomePage()V
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Iye;->gotoMyHomePage(Z)V

    .line 266
    return-void
.end method

.method public gotoMyHomePage(Z)V
    .locals 6
    .param p1, "webOnly"    # Z

    .prologue
    const/4 v5, 0x0

    .line 270
    if-nez p1, :cond_0

    iget-object v3, p0, Lc8/Iye;->mWeiboInfo:Lc8/Pwe;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/Iye;->mWeiboInfo:Lc8/Pwe;

    invoke-virtual {v3}, Lc8/Pwe;->isLegal()Z

    move-result v3

    if-nez v3, :cond_1

    .line 271
    :cond_0
    const-string/jumbo v2, "http://m.weibo.cn/index/router?"

    .line 272
    .local v2, "url":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 273
    .local v1, "property":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "cookie"

    const-string/jumbo v4, "0_all"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-direct {p0, v2, v5}, Lc8/Iye;->schemeAddProperty(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-direct {p0, v2}, Lc8/Iye;->gotoWebActivity(Ljava/lang/String;)V

    .line 286
    .end local v1    # "property":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 278
    .end local v2    # "url":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "sinaweibo://gotohome?"

    .line 279
    .restart local v2    # "url":Ljava/lang/String;
    invoke-direct {p0, v2, v5}, Lc8/Iye;->createScheme(Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;

    move-result-object v0

    .line 281
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v3, p0, Lc8/Iye;->context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public gotoMyProfile()V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Iye;->gotoMyProfile(Z)V

    .line 293
    return-void
.end method

.method public gotoMyProfile(Z)V
    .locals 6
    .param p1, "webOnly"    # Z

    .prologue
    const/4 v5, 0x0

    .line 297
    if-nez p1, :cond_0

    iget-object v3, p0, Lc8/Iye;->mWeiboInfo:Lc8/Pwe;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/Iye;->mWeiboInfo:Lc8/Pwe;

    invoke-virtual {v3}, Lc8/Pwe;->isLegal()Z

    move-result v3

    if-nez v3, :cond_1

    .line 298
    :cond_0
    const-string/jumbo v2, "http://m.weibo.cn/index/router?"

    .line 299
    .local v2, "url":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 300
    .local v1, "property":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "cookie"

    const-string/jumbo v4, "3"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-direct {p0, v2, v5}, Lc8/Iye;->schemeAddProperty(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-direct {p0, v2}, Lc8/Iye;->gotoWebActivity(Ljava/lang/String;)V

    .line 312
    .end local v1    # "property":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 304
    .end local v2    # "url":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "sinaweibo://myprofile?"

    .line 305
    .restart local v2    # "url":Ljava/lang/String;
    invoke-direct {p0, v2, v5}, Lc8/Iye;->createScheme(Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;

    move-result-object v0

    .line 307
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v3, p0, Lc8/Iye;->context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public openWeiboSearchPage(Ljava/lang/String;)V
    .locals 1
    .param p1, "searchKey"    # Ljava/lang/String;

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/Iye;->openWeiboSearchPage(Ljava/lang/String;Z)V

    .line 236
    return-void
.end method

.method public openWeiboSearchPage(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "searchKey"    # Ljava/lang/String;
    .param p2, "webOnly"    # Z

    .prologue
    .line 239
    if-nez p2, :cond_0

    iget-object v3, p0, Lc8/Iye;->mWeiboInfo:Lc8/Pwe;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/Iye;->mWeiboInfo:Lc8/Pwe;

    invoke-virtual {v3}, Lc8/Pwe;->isLegal()Z

    move-result v3

    if-nez v3, :cond_1

    .line 240
    :cond_0
    const-string/jumbo v2, "http://m.weibo.cn/main/pages/index?"

    .line 241
    .local v2, "url":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 242
    .local v1, "property":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "q"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "all"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string/jumbo v3, "containerid"

    const-string/jumbo v4, "100103"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lc8/Iye;->schemeAddProperty(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    .line 246
    invoke-direct {p0, v2}, Lc8/Iye;->gotoWebActivity(Ljava/lang/String;)V

    .line 259
    :goto_0
    return-void

    .line 249
    .end local v1    # "property":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "url":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "sinaweibo://searchall?"

    .line 250
    .restart local v2    # "url":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 251
    .restart local v1    # "property":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "q"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-direct {p0, v2, v1}, Lc8/Iye;->createScheme(Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;

    move-result-object v0

    .line 254
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v3, p0, Lc8/Iye;->context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public shareToWeibo(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/Iye;->shareToWeibo(Ljava/lang/String;Z)V

    .line 176
    return-void
.end method

.method public shareToWeibo(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "webOnly"    # Z

    .prologue
    .line 180
    if-nez p2, :cond_0

    iget-object v3, p0, Lc8/Iye;->mWeiboInfo:Lc8/Pwe;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/Iye;->mWeiboInfo:Lc8/Pwe;

    invoke-virtual {v3}, Lc8/Pwe;->isLegal()Z

    move-result v3

    if-nez v3, :cond_1

    .line 181
    :cond_0
    const-string/jumbo v2, "http://m.weibo.cn/mblog?"

    .line 182
    .local v2, "url":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 183
    .local v1, "property":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "content"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lc8/Iye;->schemeAddProperty(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-direct {p0, v2}, Lc8/Iye;->gotoWebActivity(Ljava/lang/String;)V

    .line 198
    :goto_0
    return-void

    .line 188
    .end local v1    # "property":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "url":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "sinaweibo://sendweibo?"

    .line 189
    .restart local v2    # "url":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 190
    .restart local v1    # "property":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "content"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-direct {p0, v2, v1}, Lc8/Iye;->createScheme(Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;

    move-result-object v0

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v3, p0, Lc8/Iye;->context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public startOtherPage(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/Iye;->startOtherPage(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 320
    return-void
.end method

.method public startOtherPage(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    .local p2, "property":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-direct {p0, p1, p2}, Lc8/Iye;->schemeAddProperty(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 326
    invoke-direct {p0, p1}, Lc8/Iye;->gotoWebActivity(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startUserMainPage(Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/Iye;->startUserMainPage(Ljava/lang/String;Z)V

    .line 79
    return-void
.end method

.method public startUserMainPage(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "webOnly"    # Z

    .prologue
    .line 88
    if-nez p2, :cond_0

    iget-object v3, p0, Lc8/Iye;->mWeiboInfo:Lc8/Pwe;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/Iye;->mWeiboInfo:Lc8/Pwe;

    invoke-virtual {v3}, Lc8/Pwe;->isLegal()Z

    move-result v3

    if-nez v3, :cond_1

    .line 89
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "http://m.weibo.cn/u/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "url":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lc8/Iye;->schemeAddProperty(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-direct {p0, v2}, Lc8/Iye;->gotoWebActivity(Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 93
    .end local v2    # "url":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "sinaweibo://userinfo?"

    .line 94
    .restart local v2    # "url":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v1, "property":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "uid"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-direct {p0, v2, v1}, Lc8/Iye;->createScheme(Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;

    move-result-object v0

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v3, p0, Lc8/Iye;->context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public startWeiboDetailPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lc8/Iye;->startWeiboDetailPage(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    return-void
.end method

.method public startWeiboDetailPage(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "webOnly"    # Z

    .prologue
    .line 122
    if-nez p3, :cond_0

    iget-object v3, p0, Lc8/Iye;->mWeiboInfo:Lc8/Pwe;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/Iye;->mWeiboInfo:Lc8/Pwe;

    invoke-virtual {v3}, Lc8/Pwe;->isLegal()Z

    move-result v3

    if-nez v3, :cond_1

    .line 123
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "http://m.weibo.cn/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "url":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lc8/Iye;->schemeAddProperty(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-direct {p0, v2}, Lc8/Iye;->gotoWebActivity(Ljava/lang/String;)V

    .line 138
    :goto_0
    return-void

    .line 127
    .end local v2    # "url":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "sinaweibo://detail?"

    .line 128
    .restart local v2    # "url":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 129
    .local v1, "property":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "mblogid"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-direct {p0, v2, v1}, Lc8/Iye;->createScheme(Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;

    move-result-object v0

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v3, p0, Lc8/Iye;->context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public startWeiboTopPage(Ljava/lang/String;)V
    .locals 1
    .param p1, "object_id"    # Ljava/lang/String;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/Iye;->startWeiboTopPage(Ljava/lang/String;Z)V

    .line 146
    return-void
.end method

.method public startWeiboTopPage(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "webOnly"    # Z

    .prologue
    .line 150
    if-nez p2, :cond_0

    iget-object v3, p0, Lc8/Iye;->mWeiboInfo:Lc8/Pwe;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/Iye;->mWeiboInfo:Lc8/Pwe;

    invoke-virtual {v3}, Lc8/Pwe;->isLegal()Z

    move-result v3

    if-nez v3, :cond_1

    .line 151
    :cond_0
    const-string/jumbo v2, "http://media.weibo.cn/article?"

    .line 152
    .local v2, "url":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 153
    .local v1, "property":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "id"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lc8/Iye;->schemeAddProperty(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-direct {p0, v2}, Lc8/Iye;->gotoWebActivity(Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void

    .line 158
    .end local v1    # "property":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "url":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "sinaweibo://article?"

    .line 159
    .restart local v2    # "url":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 160
    .restart local v1    # "property":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "object_id"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "1022:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-direct {p0, v2, v1}, Lc8/Iye;->createScheme(Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;

    move-result-object v0

    .line 163
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v3, p0, Lc8/Iye;->context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v3

    goto :goto_0
.end method
