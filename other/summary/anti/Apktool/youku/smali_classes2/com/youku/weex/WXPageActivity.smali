.class public Lcom/youku/weex/WXPageActivity;
.super Lc8/IEn;
.source "WXPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ZVo;
    }
.end annotation


# static fields
.field public static final ITEM_START_ID:I = 0x3e9

.field public static final KEY_PLAYER:Ljava/lang/String; = "translucent"

.field public static final KEY_SOFT_INPUT_MODE:Ljava/lang/String; = "softInputMode"

.field public static final KEY_SOFT_INPUT_MODE_PAN:Ljava/lang/String; = "pan"

.field public static final KEY_SOFT_INPUT_MODE_RESIZE:Ljava/lang/String; = "resize"

.field private static final MAX_COUNT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "WXPageActivity"

.field private static final WXPAGE:Ljava/lang/String; = "WXPage"

.field private static final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private bundleUrl:Ljava/lang/String;

.field private mWeexPageFragment:Lc8/jwb;

.field private mWxAnalyzerDelegate:Lc8/jWo;

.field private originUrl:Ljava/lang/String;

.field private reloadFilter:Landroid/content/IntentFilter;

.field private reloadHandler:Landroid/content/BroadcastReceiver;

.field private renderUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/youku/weex/WXPageActivity;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lc8/IEn;-><init>()V

    .line 212
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "DEBUG_INSTANCE_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/youku/weex/WXPageActivity;->reloadFilter:Landroid/content/IntentFilter;

    .line 213
    new-instance v0, Lc8/YVo;

    invoke-direct {v0, p0}, Lc8/YVo;-><init>(Lcom/youku/weex/WXPageActivity;)V

    iput-object v0, p0, Lcom/youku/weex/WXPageActivity;->reloadHandler:Landroid/content/BroadcastReceiver;

    .line 331
    return-void
.end method

.method public static synthetic access$100(Lcom/youku/weex/WXPageActivity;)Lc8/jWo;
    .locals 1
    .param p0, "x0"    # Lcom/youku/weex/WXPageActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/youku/weex/WXPageActivity;->mWxAnalyzerDelegate:Lc8/jWo;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/youku/weex/WXPageActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/weex/WXPageActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/youku/weex/WXPageActivity;->originUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/youku/weex/WXPageActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/weex/WXPageActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/youku/weex/WXPageActivity;->bundleUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$400(Lcom/youku/weex/WXPageActivity;)Lc8/jwb;
    .locals 1
    .param p0, "x0"    # Lcom/youku/weex/WXPageActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/youku/weex/WXPageActivity;->mWeexPageFragment:Lc8/jwb;

    return-object v0
.end method

.method private addToList()V
    .locals 2

    .prologue
    .line 416
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/youku/weex/WXPageActivity;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 417
    sget-object v0, Lcom/youku/weex/WXPageActivity;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/youku/weex/WXPageActivity;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    return-void
.end method

.method private buildBundleUrlWithParams(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 265
    iget-object v4, p0, Lcom/youku/weex/WXPageActivity;->bundleUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 266
    .local v3, "uriBuilder":Landroid/net/Uri$Builder;
    if-eqz p1, :cond_1

    .line 267
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 268
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v5, "url"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 271
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 274
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/youku/weex/WXPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 275
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 276
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 277
    .restart local v1    # "key":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 281
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 282
    .local v2, "newBundleUri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/weex/WXPageActivity;->bundleUrl:Ljava/lang/String;

    .line 283
    const-string/jumbo v4, "_wx_tpl"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/weex/WXPageActivity;->renderUrl:Ljava/lang/String;

    .line 284
    iget-object v4, p0, Lcom/youku/weex/WXPageActivity;->renderUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 285
    iget-object v4, p0, Lcom/youku/weex/WXPageActivity;->bundleUrl:Ljava/lang/String;

    iput-object v4, p0, Lcom/youku/weex/WXPageActivity;->renderUrl:Ljava/lang/String;

    .line 287
    :cond_3
    return-void
.end method

.method private changeWindowFormat()V
    .locals 4

    .prologue
    .line 478
    :try_start_0
    iget-object v2, p0, Lcom/youku/weex/WXPageActivity;->bundleUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 479
    .local v1, "uri":Landroid/net/Uri;
    const-string/jumbo v2, "1"

    const-string/jumbo v3, "translucent"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/youku/weex/WXPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setFormat(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private finishOverflow()V
    .locals 5

    .prologue
    .line 429
    sget-object v4, Lcom/youku/weex/WXPageActivity;->list:Ljava/util/ArrayList;

    monitor-enter v4

    .line 430
    :try_start_0
    sget-object v3, Lcom/youku/weex/WXPageActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    add-int/lit8 v2, v3, -0x6

    .line 431
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 433
    :try_start_1
    sget-object v3, Lcom/youku/weex/WXPageActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 434
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 431
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    :cond_0
    sget-object v3, Lcom/youku/weex/WXPageActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    add-int/lit8 v2, v2, -0x1

    .line 439
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 442
    .end local v0    # "activity":Landroid/app/Activity;
    :catch_0
    move-exception v3

    .line 445
    :cond_1
    :try_start_2
    monitor-exit v4

    return-void

    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private static getActivityName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 500
    const-string/jumbo v1, ""

    .line 501
    .local v1, "newUrl":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 502
    const-string/jumbo v2, "?"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 503
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 504
    move-object v1, p0

    .line 509
    .end local v0    # "index":I
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 510
    const-string/jumbo v2, ""

    .line 512
    :goto_1
    return-object v2

    .line 506
    .restart local v0    # "index":I
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 512
    .end local v0    # "index":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WXPageActivity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private initUIAndData()V
    .locals 6

    .prologue
    .line 179
    sget v4, Lcom/youku/phone/R$layout;->com_youku_weex_activity:I

    invoke-virtual {p0, v4}, Lcom/youku/weex/WXPageActivity;->setContentView(I)V

    .line 181
    iget-object v4, p0, Lcom/youku/weex/WXPageActivity;->bundleUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 182
    .local v1, "bundleUri":Landroid/net/Uri;
    sget v4, Lcom/youku/phone/R$id;->weex_toolbar:I

    invoke-virtual {p0, v4}, Lcom/youku/weex/WXPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lc8/kx;

    .line 183
    .local v3, "toolbar":Lc8/kx;
    const-string/jumbo v4, "true"

    const-string/jumbo v5, "hideTitleBar"

    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "true"

    const-string/jumbo v5, "hideTitleBar"

    .line 184
    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "YES"

    const-string/jumbo v5, "hideNavigatorBar"

    .line 185
    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 186
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lc8/kx;->setVisibility(I)V

    .line 210
    :cond_1
    :goto_0
    return-void

    .line 190
    :cond_2
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/youku/weex/WXPageActivity;->setSupportActionBar(Lc8/kx;)V

    .line 191
    invoke-virtual {p0}, Lcom/youku/weex/WXPageActivity;->getSupportActionBar()Lc8/mn;

    move-result-object v0

    .line 192
    .local v0, "actionBar":Lc8/mn;
    if-eqz v0, :cond_1

    .line 193
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lc8/mn;->setDisplayHomeAsUpEnabled(Z)V

    .line 194
    sget v4, Lcom/youku/phone/R$drawable;->toolbar_back_selector:I

    invoke-virtual {v0, v4}, Lc8/mn;->setHomeAsUpIndicator(I)V

    .line 196
    const/4 v2, 0x0

    .line 197
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/youku/weex/WXPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 198
    invoke-virtual {p0}, Lcom/youku/weex/WXPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 201
    const-string/jumbo v4, "title"

    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 204
    invoke-virtual {v0, v2}, Lc8/mn;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    .end local v0    # "actionBar":Lc8/mn;
    .end local v2    # "title":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private parseIntent()V
    .locals 5

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/youku/weex/WXPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 146
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/youku/weex/WXPageActivity;->finish()V

    .line 176
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 152
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 153
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_3

    .line 155
    const-string/jumbo v3, "youku"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "weex"

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 156
    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/weex/WXPageActivity;->bundleUrl:Ljava/lang/String;

    .line 157
    if-eqz v0, :cond_1

    .line 158
    const-string/jumbo v3, "com.youku.phone.re_write_origin_url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/weex/WXPageActivity;->originUrl:Ljava/lang/String;

    .line 168
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/youku/weex/WXPageActivity;->bundleUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/youku/weex/WXPageActivity;->updateActivityName(Landroid/content/Intent;Ljava/lang/String;)V

    .line 169
    iget-object v3, p0, Lcom/youku/weex/WXPageActivity;->bundleUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 171
    invoke-virtual {p0}, Lcom/youku/weex/WXPageActivity;->finish()V

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/weex/WXPageActivity;->bundleUrl:Ljava/lang/String;

    goto :goto_1

    .line 164
    :cond_3
    if-eqz v0, :cond_1

    .line 165
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/weex/WXPageActivity;->bundleUrl:Ljava/lang/String;

    goto :goto_1

    .line 174
    :cond_4
    invoke-direct {p0, v2}, Lcom/youku/weex/WXPageActivity;->buildBundleUrlWithParams(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private removeFormList()V
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/youku/weex/WXPageActivity;->activityWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 422
    sget-object v1, Lcom/youku/weex/WXPageActivity;->list:Ljava/util/ArrayList;

    monitor-enter v1

    .line 423
    :try_start_0
    sget-object v0, Lcom/youku/weex/WXPageActivity;->list:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/weex/WXPageActivity;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 424
    monitor-exit v1

    .line 426
    :cond_0
    return-void

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private resetSoftInputMode()V
    .locals 5

    .prologue
    .line 452
    iget-object v3, p0, Lcom/youku/weex/WXPageActivity;->bundleUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/youku/weex/WXPageActivity;->bundleUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 457
    .local v2, "uri":Landroid/net/Uri;
    const-string/jumbo v3, "softInputMode"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, "inputMode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 460
    const-string/jumbo v3, "pan"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 461
    invoke-virtual {p0}, Lcom/youku/weex/WXPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 465
    .end local v1    # "inputMode":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 462
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "inputMode":Ljava/lang/String;
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_2
    :try_start_1
    const-string/jumbo v3, "resize"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/youku/weex/WXPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static updateActivityName(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 491
    const-string/jumbo v0, "ActivityName"

    invoke-static {p1}, Lcom/youku/weex/WXPageActivity;->getActivityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    const-string/jumbo v0, "WXPage"

    return-object v0
.end method

.method protected hasActionBar()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 517
    invoke-super {p0, p1, p2, p3}, Lc8/IEn;->onActivityResult(IILandroid/content/Intent;)V

    .line 518
    iget-object v0, p0, Lcom/youku/weex/WXPageActivity;->mWeexPageFragment:Lc8/jwb;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/youku/weex/WXPageActivity;->mWeexPageFragment:Lc8/jwb;

    invoke-virtual {v0, p1, p2, p3}, Lc8/jwb;->onActivityResult(IILandroid/content/Intent;)V

    .line 521
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/youku/weex/WXPageActivity;->mWeexPageFragment:Lc8/jwb;

    invoke-virtual {v0}, Lc8/jwb;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-super {p0}, Lc8/IEn;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/youku/weex/WXPageActivity;->parseIntent()V

    .line 91
    invoke-direct {p0}, Lcom/youku/weex/WXPageActivity;->resetSoftInputMode()V

    .line 92
    invoke-super {p0, p1}, Lc8/IEn;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-direct {p0}, Lcom/youku/weex/WXPageActivity;->addToList()V

    .line 94
    invoke-direct {p0}, Lcom/youku/weex/WXPageActivity;->finishOverflow()V

    .line 95
    invoke-direct {p0}, Lcom/youku/weex/WXPageActivity;->initUIAndData()V

    .line 96
    new-instance v0, Lc8/ZVo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/ZVo;-><init>(Lcom/youku/weex/WXPageActivity;Lc8/XVo;)V

    invoke-static {v0}, Lc8/bVf;->setActivityNavBarSetter(Lc8/NVf;)V

    .line 98
    const-class v0, Lc8/jwb;

    iget-object v1, p0, Lcom/youku/weex/WXPageActivity;->bundleUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/weex/WXPageActivity;->renderUrl:Ljava/lang/String;

    sget v3, Lcom/youku/phone/R$id;->weex_container:I

    invoke-static {p0, v0, v1, v2, v3}, Lc8/jwb;->newInstanceWithUrl(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lc8/jwb;

    iput-object v0, p0, Lcom/youku/weex/WXPageActivity;->mWeexPageFragment:Lc8/jwb;

    .line 101
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Lc8/jWo;

    invoke-direct {v0, p0}, Lc8/jWo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/youku/weex/WXPageActivity;->mWxAnalyzerDelegate:Lc8/jWo;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/youku/weex/WXPageActivity;->mWeexPageFragment:Lc8/jwb;

    new-instance v1, Lc8/XVo;

    invoke-direct {v1, p0}, Lc8/XVo;-><init>(Lcom/youku/weex/WXPageActivity;)V

    invoke-virtual {v0, v1}, Lc8/jwb;->setRenderListener(Lc8/hwb;)V

    .line 139
    iget-object v0, p0, Lcom/youku/weex/WXPageActivity;->mWxAnalyzerDelegate:Lc8/jWo;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/youku/weex/WXPageActivity;->mWxAnalyzerDelegate:Lc8/jWo;

    invoke-virtual {v0}, Lc8/jWo;->onCreate()V

    .line 142
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 311
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    const/16 v0, 0x3e9

    const-string/jumbo v1, "Refresh"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 314
    :cond_0
    invoke-super {p0, p1}, Lc8/IEn;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 258
    invoke-super {p0}, Lc8/IEn;->onDestroy()V

    .line 259
    iget-object v0, p0, Lcom/youku/weex/WXPageActivity;->mWxAnalyzerDelegate:Lc8/jWo;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/youku/weex/WXPageActivity;->mWxAnalyzerDelegate:Lc8/jWo;

    invoke-virtual {v0}, Lc8/jWo;->onDestroy()V

    .line 262
    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/youku/weex/WXPageActivity;->mWxAnalyzerDelegate:Lc8/jWo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/weex/WXPageActivity;->mWxAnalyzerDelegate:Lc8/jWo;

    invoke-virtual {v0, p1, p2}, Lc8/jWo;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Lc8/IEn;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 319
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 327
    invoke-super {p0, p1}, Lc8/IEn;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 321
    :sswitch_0
    invoke-virtual {p0}, Lcom/youku/weex/WXPageActivity;->onBackPressed()V

    goto :goto_0

    .line 324
    :sswitch_1
    iget-object v1, p0, Lcom/youku/weex/WXPageActivity;->mWeexPageFragment:Lc8/jwb;

    invoke-virtual {v1}, Lc8/jwb;->reload()V

    goto :goto_0

    .line 319
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Lc8/IEn;->onPause()V

    .line 242
    iget-object v0, p0, Lcom/youku/weex/WXPageActivity;->mWxAnalyzerDelegate:Lc8/jWo;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/youku/weex/WXPageActivity;->mWxAnalyzerDelegate:Lc8/jWo;

    invoke-virtual {v0}, Lc8/jWo;->onPause()V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/youku/weex/WXPageActivity;->reloadHandler:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/youku/weex/WXPageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 246
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 472
    invoke-super {p0, p1}, Lc8/IEn;->onPostCreate(Landroid/os/Bundle;)V

    .line 473
    invoke-direct {p0}, Lcom/youku/weex/WXPageActivity;->changeWindowFormat()V

    .line 474
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 526
    invoke-super {p0, p1, p2, p3}, Lc8/IEn;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 527
    iget-object v0, p0, Lcom/youku/weex/WXPageActivity;->mWeexPageFragment:Lc8/jwb;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/youku/weex/WXPageActivity;->mWeexPageFragment:Lc8/jwb;

    invoke-virtual {v0, p1, p2, p3}, Lc8/jwb;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 530
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0}, Lc8/IEn;->onResume()V

    .line 233
    iget-object v0, p0, Lcom/youku/weex/WXPageActivity;->mWxAnalyzerDelegate:Lc8/jWo;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/youku/weex/WXPageActivity;->mWxAnalyzerDelegate:Lc8/jWo;

    invoke-virtual {v0}, Lc8/jWo;->onResume()V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/youku/weex/WXPageActivity;->reloadHandler:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/youku/weex/WXPageActivity;->reloadFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/youku/weex/WXPageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 237
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Lc8/IEn;->onStart()V

    .line 225
    iget-object v0, p0, Lcom/youku/weex/WXPageActivity;->mWxAnalyzerDelegate:Lc8/jWo;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/youku/weex/WXPageActivity;->mWxAnalyzerDelegate:Lc8/jWo;

    invoke-virtual {v0}, Lc8/jWo;->onStart()V

    .line 228
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0}, Lc8/IEn;->onStop()V

    .line 251
    iget-object v0, p0, Lcom/youku/weex/WXPageActivity;->mWxAnalyzerDelegate:Lc8/jWo;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/youku/weex/WXPageActivity;->mWxAnalyzerDelegate:Lc8/jWo;

    invoke-virtual {v0}, Lc8/jWo;->onStop()V

    .line 254
    :cond_0
    return-void
.end method
