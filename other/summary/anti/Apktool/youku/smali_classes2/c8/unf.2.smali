.class public Lc8/unf;
.super Ljava/lang/Object;
.source "AlibcFlowCustomsSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/tnf;,
        Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;
    }
.end annotation


# static fields
.field public static final AFC_FAIL_MODE_BROWSER:I = 0x3

.field public static final AFC_FAIL_MODE_DOWNLOAD:I = 0x2

.field public static final AFC_FAIL_MODE_H5:I = 0x1

.field public static final AFC_FAIL_MODE_NONE:I = 0x0

.field private static final ARG1_SDK_INIT:Ljava/lang/String; = "alibc_flowCustoms_init"

.field public static final LINK_MANAGER_SDK:Ljava/lang/String; = "lmSDK"

.field public static final LINK_MANAGER_SDK_VERSION:Ljava/lang/String; = "lmSDKV"

.field private static final LOG_TAG:Ljava/lang/String; = "AlibcFlowCustomsSDK"

.field public static final SDK_VERSION:Ljava/lang/String; = "1.3.0"

.field public static final VISA:Ljava/lang/String; = "visa"

.field public static final VISA_CHECKED:Ljava/lang/String; = "alibcVisaChecked"

.field public static final VISA_CHECKED_VALUE:I = 0x1

.field public static final instance:Lc8/unf;


# instance fields
.field public appBlockedListener:Lc8/tnf;

.field public appKey:Ljava/lang/String;

.field public application:Landroid/app/Application;

.field public environment:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

.field public initialized:Z

.field public mtopId:Ljava/lang/String;

.field public outgoingAppProcessor:Lc8/xnf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lc8/unf;

    invoke-direct {v0}, Lc8/unf;-><init>()V

    sput-object v0, Lc8/unf;->instance:Lc8/unf;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lc8/xnf;

    invoke-direct {v0}, Lc8/xnf;-><init>()V

    iput-object v0, p0, Lc8/unf;->outgoingAppProcessor:Lc8/xnf;

    .line 85
    sget-object v0, Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;->ONLINE:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    iput-object v0, p0, Lc8/unf;->environment:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/unf;->initialized:Z

    .line 103
    return-void
.end method

.method private changeFailMode(Lc8/hob;)I
    .locals 2
    .param p1, "jumpFailParam"    # Lc8/hob;

    .prologue
    const/4 v1, 0x5

    .line 404
    if-nez p1, :cond_0

    .line 405
    const/4 v0, 0x0

    .line 432
    :goto_0
    return v0

    .line 408
    :cond_0
    iget v0, p1, Lc8/hob;->mode:I

    .line 409
    .local v0, "mode":I
    packed-switch v0, :pswitch_data_0

    .line 427
    iput v1, p1, Lc8/hob;->mode:I

    goto :goto_0

    .line 411
    :pswitch_0
    iput v1, p1, Lc8/hob;->mode:I

    goto :goto_0

    .line 415
    :pswitch_1
    const/4 v1, 0x4

    iput v1, p1, Lc8/hob;->mode:I

    goto :goto_0

    .line 419
    :pswitch_2
    const/4 v1, 0x3

    iput v1, p1, Lc8/hob;->mode:I

    goto :goto_0

    .line 423
    :pswitch_3
    const/4 v1, 0x6

    iput v1, p1, Lc8/hob;->mode:I

    goto :goto_0

    .line 409
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initLinkPartner(Landroid/app/Application;Ljava/lang/String;Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;)V
    .locals 2
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "environment"    # Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    .prologue
    const/4 v1, 0x1

    .line 152
    sget-object v0, Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;->ONLINE:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    if-ne p3, v0, :cond_0

    .line 153
    invoke-static {v1}, Lc8/anb;->setEnvironment(I)V

    .line 161
    :goto_0
    invoke-static {p1, p2}, Lc8/anb;->init(Landroid/app/Application;Ljava/lang/String;)I

    .line 162
    return-void

    .line 154
    :cond_0
    sget-object v0, Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;->PRE:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    if-ne p3, v0, :cond_1

    .line 155
    const/4 v0, 0x2

    invoke-static {v0}, Lc8/anb;->setEnvironment(I)V

    goto :goto_0

    .line 156
    :cond_1
    sget-object v0, Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;->TEST:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    if-ne p3, v0, :cond_2

    .line 157
    const/4 v0, 0x3

    invoke-static {v0}, Lc8/anb;->setEnvironment(I)V

    goto :goto_0

    .line 159
    :cond_2
    invoke-static {v1}, Lc8/anb;->setEnvironment(I)V

    goto :goto_0
.end method

.method private processTaobaoOrTmall(Landroid/content/Context;Lc8/nob;Lc8/hob;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uriParam"    # Lc8/nob;
    .param p3, "jumpFailParam"    # Lc8/hob;
    .param p4, "visa"    # Ljava/lang/String;
    .param p5, "mode"    # I

    .prologue
    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, "packageName":Ljava/lang/String;
    const-string/jumbo v1, "taobao"

    iget-object v2, p2, Lc8/nob;->linkKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "taobao_scheme"

    iget-object v2, p2, Lc8/nob;->linkKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    :cond_0
    const-string/jumbo v0, "com.taobao.taobao"

    .line 452
    :cond_1
    const-string/jumbo v1, "tmall"

    iget-object v2, p2, Lc8/nob;->linkKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "tmall_scheme"

    iget-object v2, p2, Lc8/nob;->linkKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 454
    :cond_2
    const-string/jumbo v0, "com.tmall.wireless"

    .line 457
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1, v0}, Lc8/wob;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 458
    iget-object v1, p2, Lc8/nob;->url:Ljava/lang/String;

    invoke-direct {p0, p5, v1, p4}, Lc8/unf;->sendAppUninstall(ILjava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_4
    new-instance v1, Lc8/snf;

    invoke-direct {v1, p0}, Lc8/snf;-><init>(Lc8/unf;)V

    iput-object v1, p2, Lc8/nob;->intentProcessor:Lc8/Zmb;

    .line 473
    invoke-static {p1, p2, p3}, Lc8/anb;->jumpURI(Landroid/content/Context;Lc8/nob;Lc8/hob;)I

    move-result v1

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendAppUninstall(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "failMode"    # I
    .param p2, "targetUrl"    # Ljava/lang/String;
    .param p3, "visa"    # Ljava/lang/String;

    .prologue
    .line 436
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 437
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "lmSDKV"

    const-string/jumbo v2, "1.3.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string/jumbo v1, "targetUrl"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .end local p2    # "targetUrl":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const-string/jumbo v1, "failMode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string/jumbo v1, "visa"

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .end local p3    # "visa":Ljava/lang/String;
    :goto_1
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string/jumbo v1, "mgr_open_url_uninstalled"

    invoke-static {v1, v0}, Lc8/npf;->sendCustomHit(Ljava/lang/String;Ljava/util/Map;)V

    .line 443
    return-void

    .line 438
    .restart local p2    # "targetUrl":Ljava/lang/String;
    .restart local p3    # "visa":Ljava/lang/String;
    :cond_0
    const-string/jumbo p2, "unknown"

    goto :goto_0

    .line 440
    .end local p2    # "targetUrl":Ljava/lang/String;
    :cond_1
    const-string/jumbo p3, "unknown"

    goto :goto_1
.end method

.method private sendInitResult()V
    .locals 3

    .prologue
    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 193
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "appkey"

    iget-object v2, p0, Lc8/unf;->appKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string/jumbo v1, "fcSDKVersion"

    const-string/jumbo v2, "1.3.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string/jumbo v1, "appVersion"

    invoke-virtual {p0}, Lc8/unf;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string/jumbo v1, "currentPN"

    invoke-virtual {p0}, Lc8/unf;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string/jumbo v1, "dataFrom"

    const-string/jumbo v2, "lmSDK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string/jumbo v1, "alibc_flowCustoms_init"

    invoke-static {v1, v0}, Lc8/npf;->sendCustomHit(Ljava/lang/String;Ljava/util/Map;)V

    .line 200
    return-void
.end method


# virtual methods
.method public addPlugin(Lc8/yof;)V
    .locals 1
    .param p1, "plugin"    # Lc8/yof;

    .prologue
    .line 219
    iget-boolean v0, p0, Lc8/unf;->initialized:Z

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-static {p1}, Lc8/Aof;->addPlugin(Lc8/yof;)Z

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lc8/unf;->application:Landroid/app/Application;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/unf;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 177
    iget-object v1, p0, Lc8/unf;->application:Landroid/app/Application;

    if-nez v1, :cond_0

    .line 184
    :goto_0
    return-object v0

    .line 182
    :cond_0
    :try_start_0
    iget-object v1, p0, Lc8/unf;->application:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lc8/unf;->application:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public init(Landroid/app/Application;Ljava/lang/String;Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "environment"    # Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    .prologue
    .line 111
    iget-boolean v0, p0, Lc8/unf;->initialized:Z

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/unf;->initialized:Z

    .line 117
    iput-object p1, p0, Lc8/unf;->application:Landroid/app/Application;

    .line 118
    iput-object p2, p0, Lc8/unf;->appKey:Ljava/lang/String;

    .line 120
    sget-object v0, Lc8/unf;->instance:Lc8/unf;

    invoke-virtual {v0, p3}, Lc8/unf;->setEnvironment(Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;)V

    .line 123
    invoke-static {}, Lc8/bpf;->getInstance()Lc8/bpf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/bpf;->init(Landroid/app/Application;)V

    .line 126
    invoke-direct {p0}, Lc8/unf;->sendInitResult()V

    .line 129
    invoke-static {}, Lc8/Mnf;->getInstance()Lc8/Mnf;

    .line 132
    invoke-static {}, Lc8/wpf;->init()V

    .line 135
    invoke-static {p1}, Lc8/Wnf;->init(Landroid/content/Context;)V

    .line 138
    invoke-static {}, Lc8/Tof;->getInstance()Lc8/Tof;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Tof;->init()V

    .line 141
    invoke-direct {p0, p1, p2, p3}, Lc8/unf;->initLinkPartner(Landroid/app/Application;Ljava/lang/String;Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;)V

    .line 142
    :cond_0
    return-void
.end method

.method public setEnvironment(Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;)V
    .locals 0
    .param p1, "environment"    # Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    .prologue
    .line 207
    iput-object p1, p0, Lc8/unf;->environment:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    .line 208
    return-void
.end method

.method public setInterceptOutgoingEnabled(ZLc8/tnf;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "listener"    # Lc8/tnf;

    .prologue
    .line 231
    iget-boolean v1, p0, Lc8/unf;->initialized:Z

    if-nez v1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iput-object p2, p0, Lc8/unf;->appBlockedListener:Lc8/tnf;

    .line 237
    if-eqz p1, :cond_0

    .line 239
    :try_start_0
    const-string/jumbo v1, "android.taobao.atlas.framework.Atlas"

    invoke-static {v1}, Lc8/iof;->into(Ljava/lang/String;)Lc8/eof;

    .line 240
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v1

    new-instance v2, Lc8/pnf;

    invoke-direct {v2, p0, p2}, Lc8/pnf;-><init>(Lc8/unf;Lc8/tnf;)V

    invoke-virtual {v1, v2}, Lc8/dy;->setIntentRedirectListener(Landroid/taobao/atlas/runtime/InstrumentationHook$OnIntentRedirectListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "AlibcFlowCustomsSDK"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lc8/unf;->application:Landroid/app/Application;

    invoke-static {v1}, Lc8/cof;->attachBaseContext(Landroid/app/Application;)V

    .line 251
    new-instance v1, Lc8/qnf;

    invoke-direct {v1, p0, p2}, Lc8/qnf;-><init>(Lc8/unf;Lc8/tnf;)V

    sput-object v1, Lc8/qof;->intentRedirectListener:Lc8/pof;

    goto :goto_0
.end method

.method public setMtopId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 266
    iput-object p1, p0, Lc8/unf;->mtopId:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "visa"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 361
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v9

    .line 399
    :goto_0
    return v0

    .line 365
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 367
    .local v3, "componentName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 368
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 371
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 384
    :cond_3
    :goto_1
    :try_start_0
    const-string/jumbo v0, "visa"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    iget-object v0, p0, Lc8/unf;->outgoingAppProcessor:Lc8/xnf;

    iget-object v5, p0, Lc8/unf;->appBlockedListener:Lc8/tnf;

    move-object v1, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lc8/xnf;->process(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lc8/tnf;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 387
    const-string/jumbo v0, "alibcVisaChecked"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_4

    .line 390
    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 392
    :cond_4
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v8

    .line 393
    goto :goto_0

    .line 373
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 374
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_3

    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_3

    .line 375
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 376
    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 378
    :cond_6
    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_1

    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_7
    move v0, v9

    .line 395
    goto :goto_0

    .line 397
    :catch_0
    move-exception v7

    .line 398
    .local v7, "t":Ljava/lang/Throwable;
    const-string/jumbo v0, "AlibcFlowCustomsSDK"

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 399
    goto :goto_0
.end method

.method public startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/hob;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "visa"    # Ljava/lang/String;
    .param p4, "linkKey"    # Ljava/lang/String;
    .param p5, "backUrl"    # Ljava/lang/String;
    .param p6, "jumpFailParam"    # Lc8/hob;

    .prologue
    const/16 v4, 0xcd

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 271
    iget-boolean v3, p0, Lc8/unf;->initialized:Z

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v0, v1

    .line 349
    :cond_1
    :goto_0
    return v0

    .line 275
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 277
    .local v8, "uri":Landroid/net/Uri;
    if-nez v8, :cond_3

    .line 278
    invoke-virtual {p0, p1, p2, p3}, Lc8/unf;->startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 282
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 283
    invoke-virtual {p0, p1, p2, p3}, Lc8/unf;->startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 286
    :cond_4
    new-instance v2, Lc8/nob;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lc8/nob;-><init>(Ljava/lang/String;)V

    .line 287
    .local v2, "uriParam":Lc8/nob;
    iput-object p3, v2, Lc8/nob;->visa:Ljava/lang/String;

    .line 288
    iput-object p4, v2, Lc8/nob;->linkKey:Ljava/lang/String;

    .line 289
    iput-object p5, v2, Lc8/nob;->backUrl:Ljava/lang/String;

    .line 292
    const/4 v5, 0x0

    .line 293
    .local v5, "mode":I
    if-nez p6, :cond_5

    .line 294
    new-instance p6, Lc8/hob;

    .end local p6    # "jumpFailParam":Lc8/hob;
    invoke-direct {p6}, Lc8/hob;-><init>()V

    .line 295
    .restart local p6    # "jumpFailParam":Lc8/hob;
    const/4 v3, 0x5

    iput v3, p6, Lc8/hob;->mode:I

    .line 301
    :goto_1
    invoke-virtual {v2}, Lc8/nob;->isTaobaoOrTmall()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p6

    move-object v4, p3

    .line 302
    invoke-direct/range {v0 .. v5}, Lc8/unf;->processTaobaoOrTmall(Landroid/content/Context;Lc8/nob;Lc8/hob;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 297
    :cond_5
    invoke-direct {p0, p6}, Lc8/unf;->changeFailMode(Lc8/hob;)I

    move-result v5

    goto :goto_1

    .line 305
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    .line 307
    .local v7, "packageName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 308
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 311
    :cond_7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 312
    sget-object v3, Lc8/Ymb;->configManager:Lc8/Anb;

    invoke-virtual {v3}, Lc8/Anb;->getMemConfigInfo()Lc8/Fnb;

    move-result-object v3

    invoke-virtual {v3, p4}, Lc8/Fnb;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 315
    :cond_8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 316
    invoke-virtual {p0, p1, p2, p3}, Lc8/unf;->startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 319
    :cond_9
    iput-object v7, v2, Lc8/nob;->packageName:Ljava/lang/String;

    .line 321
    new-instance v3, Lc8/rnf;

    invoke-direct {v3, p0}, Lc8/rnf;-><init>(Lc8/unf;)V

    iput-object v3, v2, Lc8/nob;->intentProcessor:Lc8/Zmb;

    .line 333
    invoke-static {p1, v7}, Lc8/wob;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 335
    invoke-static {v7}, Lc8/Enb;->newDefaultSchemeInfo(Ljava/lang/String;)Lc8/Enb;

    move-result-object v6

    .line 337
    .local v6, "afcSchemeInfo":Lc8/Enb;
    iget-object v3, p0, Lc8/unf;->application:Landroid/app/Application;

    invoke-static {v3, v6}, Lc8/wob;->isSupportApp(Landroid/content/Context;Lc8/Enb;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 339
    invoke-static {p1, v2, p6}, Lc8/anb;->jumpURI(Landroid/content/Context;Lc8/nob;Lc8/hob;)I

    move-result v3

    if-eq v3, v4, :cond_1

    move v0, v1

    goto/16 :goto_0

    .line 342
    :cond_a
    invoke-virtual {p0, p1, p2, p3}, Lc8/unf;->startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 346
    .end local v6    # "afcSchemeInfo":Lc8/Enb;
    :cond_b
    iget-object v3, v2, Lc8/nob;->url:Ljava/lang/String;

    invoke-direct {p0, v5, v3, p3}, Lc8/unf;->sendAppUninstall(ILjava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-static {p1, v2, p6}, Lc8/anb;->jumpURI(Landroid/content/Context;Lc8/nob;Lc8/hob;)I

    move-result v3

    if-eq v3, v4, :cond_1

    move v0, v1

    goto/16 :goto_0
.end method
