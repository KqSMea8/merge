.class public Lc8/ZVo;
.super Ljava/lang/Object;
.source "WXPageActivity.java"

# interfaces
.implements Lc8/NVf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/weex/WXPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NavigatorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/weex/WXPageActivity;


# direct methods
.method private constructor <init>(Lcom/youku/weex/WXPageActivity;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lc8/ZVo;->this$0:Lcom/youku/weex/WXPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/youku/weex/WXPageActivity;Lc8/XVo;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/weex/WXPageActivity;
    .param p2, "x1"    # Lc8/XVo;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lc8/ZVo;-><init>(Lcom/youku/weex/WXPageActivity;)V

    return-void
.end method


# virtual methods
.method public clearNavBarLeftItem(Ljava/lang/String;)Z
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public clearNavBarMoreItem(Ljava/lang/String;)Z
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method public clearNavBarRightItem(Ljava/lang/String;)Z
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method public pop(Ljava/lang/String;)Z
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public push(Ljava/lang/String;)Z
    .locals 8
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 336
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 337
    .local v1, "e":Lorg/json/JSONObject;
    const-string/jumbo v6, "url"

    const-string/jumbo v7, ""

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 338
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 339
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 340
    .local v3, "rawUri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, "scheme":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 342
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 343
    const-string/jumbo v6, "http"

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 344
    const-string/jumbo v4, "http"

    .line 346
    :cond_0
    const-string/jumbo v6, "http"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "https"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 347
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 348
    .local v2, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lc8/ZVo;->this$0:Lcom/youku/weex/WXPageActivity;

    invoke-virtual {v6}, Lcom/youku/weex/WXPageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/youku/weex/WXPageActivity;

    invoke-static {v7}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    iget-object v6, p0, Lc8/ZVo;->this$0:Lcom/youku/weex/WXPageActivity;

    invoke-virtual {v6}, Lcom/youku/weex/WXPageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    iget-object v6, p0, Lc8/ZVo;->this$0:Lcom/youku/weex/WXPageActivity;

    invoke-virtual {v6, v2}, Lcom/youku/weex/WXPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 358
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v1    # "e":Lorg/json/JSONObject;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "rawUri":Landroid/net/Uri;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v6, 0x1

    return v6

    .line 352
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    .restart local v1    # "e":Lorg/json/JSONObject;
    .restart local v3    # "rawUri":Landroid/net/Uri;
    .restart local v4    # "scheme":Ljava/lang/String;
    .restart local v5    # "url":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lc8/ZVo;->this$0:Lcom/youku/weex/WXPageActivity;

    invoke-static {v6}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Lc8/Ybf;->toUri(Landroid/net/Uri;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v1    # "e":Lorg/json/JSONObject;
    .end local v3    # "rawUri":Landroid/net/Uri;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public setNavBarLeftItem(Ljava/lang/String;)Z
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method public setNavBarMoreItem(Ljava/lang/String;)Z
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public setNavBarRightItem(Ljava/lang/String;)Z
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public setNavBarTitle(Ljava/lang/String;)Z
    .locals 5
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 399
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 400
    .local v1, "e":Lorg/json/JSONObject;
    const-string/jumbo v3, "title"

    const-string/jumbo v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, "title":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 402
    invoke-static {v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 403
    iget-object v3, p0, Lc8/ZVo;->this$0:Lcom/youku/weex/WXPageActivity;

    invoke-virtual {v3}, Lcom/youku/weex/WXPageActivity;->getSupportActionBar()Lc8/mn;

    move-result-object v0

    .line 404
    .local v0, "actionBar":Lc8/mn;
    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0, v2}, Lc8/mn;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    .end local v0    # "actionBar":Lc8/mn;
    .end local v1    # "e":Lorg/json/JSONObject;
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v3

    goto :goto_0
.end method
