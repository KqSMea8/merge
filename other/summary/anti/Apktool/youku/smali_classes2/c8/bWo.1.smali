.class public Lc8/bWo;
.super Ljava/lang/Object;
.source "YKWXSDKEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Intent;

    .prologue
    .line 51
    invoke-static {p0}, Lc8/bWo;->handleDebugConfigUpdate(Landroid/content/Intent;)V

    return-void
.end method

.method private static handleDebugConfigUpdate(Landroid/content/Intent;)V
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 151
    const-string/jumbo v1, "debug_server_host"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "host":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 153
    :cond_0
    const-string/jumbo v1, "debug_server_connectable"

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lc8/UUf;->sDebugServerConnectable:Z

    .line 154
    const-string/jumbo v1, "debug_mode"

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lc8/UUf;->sRemoteDebugMode:Z

    .line 155
    sput-object v0, Lc8/UUf;->sRemoteDebugProxyUrl:Ljava/lang/String;

    .line 156
    invoke-static {}, Lc8/bVf;->reload()V

    goto :goto_0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 4
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 55
    :try_start_0
    const-string/jumbo v1, "appName"

    const-string/jumbo v2, "YK"

    invoke-static {v1, v2}, Lc8/UUf;->addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v1

    new-instance v2, Lc8/Dob;

    invoke-direct {v2}, Lc8/Dob;-><init>()V

    new-instance v3, Lc8/dWo;

    invoke-direct {v3}, Lc8/dWo;-><init>()V

    .line 61
    invoke-virtual {v2, v3}, Lc8/Dob;->setEventModuleAdapter(Lc8/Lob;)Lc8/Dob;

    move-result-object v2

    new-instance v3, Lc8/fWo;

    invoke-direct {v3}, Lc8/fWo;-><init>()V

    .line 62
    invoke-virtual {v2, v3}, Lc8/Dob;->setPageInfoModuleAdapter(Lc8/Pob;)Lc8/Dob;

    move-result-object v2

    new-instance v3, Lc8/gWo;

    invoke-direct {v3}, Lc8/gWo;-><init>()V

    .line 63
    invoke-virtual {v2, v3}, Lc8/Dob;->setConfigAdapter(Lc8/Hob;)Lc8/Dob;

    move-result-object v2

    new-instance v3, Lc8/eWo;

    invoke-direct {v3}, Lc8/eWo;-><init>()V

    .line 64
    invoke-virtual {v2, v3}, Lc8/Dob;->setNavigationBarModuleAdapter(Lc8/Oob;)Lc8/Dob;

    move-result-object v2

    new-instance v3, Lc8/iWo;

    invoke-direct {v3}, Lc8/iWo;-><init>()V

    .line 66
    invoke-virtual {v2, v3}, Lc8/Dob;->setImgLoaderAdapter(Lc8/EVf;)Lc8/Dob;

    move-result-object v2

    new-instance v3, Lc8/epb;

    invoke-direct {v3}, Lc8/epb;-><init>()V

    .line 68
    invoke-virtual {v2, v3}, Lc8/Dob;->setHttpAdapter(Lc8/DVf;)Lc8/Dob;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Lc8/Dob;->build()Lc8/Eob;

    move-result-object v2

    .line 56
    invoke-virtual {v1, p0, v2}, Lc8/Fob;->initWithConfig(Landroid/app/Application;Lc8/Eob;)V

    .line 70
    invoke-static {}, Lc8/Bob;->initSDKEngine()V

    .line 71
    invoke-static {}, Lc8/bWo;->registerModulesAndComponents()V

    .line 73
    invoke-static {}, Lc8/xSb;->getInstance()Lc8/xSb;

    move-result-object v0

    .line 74
    .local v0, "loader":Lc8/xSb;
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/xSb;->loaderStart(Landroid/content/Context;)V

    .line 76
    invoke-static {p0}, Lc8/bWo;->setupDevtools(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v0    # "loader":Lc8/xSb;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static registerModulesAndComponents()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 83
    const-string/jumbo v0, "nativePageJump"

    const-class v1, Lc8/FXo;

    invoke-static {v0, v1}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 84
    const-string/jumbo v0, "YoukuUser"

    const-class v1, Lc8/GXo;

    invoke-static {v0, v1}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 85
    const-string/jumbo v0, "YoukuConfig"

    const-class v1, Lc8/DXo;

    invoke-static {v0, v1}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 87
    const-string/jumbo v0, "YoukuTracker"

    const-class v1, Lc8/QXo;

    invoke-static {v0, v1}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 90
    const-string/jumbo v0, "YoukuLogin"

    const-class v1, Lc8/IXo;

    invoke-static {v0, v1}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 93
    const-string/jumbo v0, "YoukuSecurity"

    const-class v1, Lc8/OXo;

    invoke-static {v0, v1}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 99
    const-class v0, Lc8/oWo;

    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "image"

    aput-object v2, v1, v6

    const-string/jumbo v2, "img"

    aput-object v2, v1, v7

    invoke-static {v0, v6, v1}, Lc8/bVf;->registerComponent(Ljava/lang/Class;Z[Ljava/lang/String;)Z

    .line 100
    const-class v0, Lc8/lWo;

    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "list"

    aput-object v2, v1, v6

    const-string/jumbo v2, "vlist"

    aput-object v2, v1, v7

    invoke-static {v0, v6, v1}, Lc8/bVf;->registerComponent(Ljava/lang/Class;Z[Ljava/lang/String;)Z

    .line 104
    const-string/jumbo v0, "yk-viewpager"

    const-class v1, Lc8/xXo;

    invoke-static {v0, v1, v6}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 105
    const-string/jumbo v0, "yk-pager-item"

    const-class v1, Lc8/uXo;

    invoke-static {v0, v1, v6}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 106
    const-string/jumbo v0, "yk-pager-item"

    const-class v1, Lc8/wXo;

    invoke-static {v0, v1}, Lc8/bVf;->registerDomObject(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 109
    const-string/jumbo v0, "yk-rich-text"

    const-class v1, Lc8/YWo;

    invoke-static {v0, v1, v6}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 110
    const-string/jumbo v0, "yk-rich-text"

    const-class v1, Lc8/eXo;

    invoke-static {v0, v1}, Lc8/bVf;->registerDomObject(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 113
    const-string/jumbo v0, "web"

    const-class v1, Lc8/CXo;

    invoke-static {v0, v1}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 116
    const-string/jumbo v0, "pw-navigator"

    const-class v1, Lc8/HXo;

    invoke-static {v0, v1}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 117
    const-string/jumbo v0, "YKNotification"

    const-class v1, Lc8/LXo;

    invoke-static {v0, v1}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 118
    const-string/jumbo v0, "pw-userSystem"

    const-class v1, Lc8/TXo;

    invoke-static {v0, v1}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 120
    const-string/jumbo v0, "pw-parallax"

    const-class v1, Lc8/wWo;

    invoke-static {v0, v1}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 121
    const-class v0, Lc8/sWo;

    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "pw-list"

    aput-object v2, v1, v6

    const-string/jumbo v2, "pw-vlist"

    aput-object v2, v1, v7

    invoke-static {v0, v6, v1}, Lc8/bVf;->registerComponent(Ljava/lang/Class;Z[Ljava/lang/String;)Z

    .line 122
    const-string/jumbo v0, "pw-list"

    const-class v1, Lc8/MYf;

    invoke-static {v0, v1}, Lc8/bVf;->registerDomObject(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 123
    const-string/jumbo v0, "pw-vlist"

    const-class v1, Lc8/MYf;

    invoke-static {v0, v1}, Lc8/bVf;->registerDomObject(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 125
    new-instance v0, Lc8/oag;

    const-string/jumbo v1, "pw.audio"

    new-instance v2, Lc8/ypb;

    invoke-direct {v2}, Lc8/ypb;-><init>()V

    invoke-direct {v0, v1, v2}, Lc8/oag;-><init>(Ljava/lang/String;Lc8/pag;)V

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "pw-audio"

    aput-object v2, v1, v6

    invoke-static {v0, v6, v1}, Lc8/bVf;->registerComponent(Lc8/rag;Z[Ljava/lang/String;)Z

    .line 127
    new-instance v0, Lc8/oag;

    const-string/jumbo v1, "pw.video"

    new-instance v2, Lc8/ypb;

    invoke-direct {v2}, Lc8/ypb;-><init>()V

    invoke-direct {v0, v1, v2}, Lc8/oag;-><init>(Ljava/lang/String;Lc8/pag;)V

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "pw-video"

    aput-object v2, v1, v6

    invoke-static {v0, v6, v1}, Lc8/bVf;->registerComponent(Lc8/rag;Z[Ljava/lang/String;)Z

    .line 130
    const-string/jumbo v0, "pw-upload"

    new-instance v1, Lc8/WVo;

    const-string/jumbo v2, "pw.upload"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "uploadImage"

    aput-object v4, v3, v6

    const-string/jumbo v4, "uploadImageList"

    aput-object v4, v3, v7

    const-string/jumbo v4, "uploadAudio"

    aput-object v4, v3, v8

    const/4 v4, 0x3

    const-string/jumbo v5, "uploadVideo"

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lc8/WVo;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v0, v1, v6}, Lc8/bVf;->registerModuleWithFactory(Ljava/lang/String;Lc8/aVf;Z)Z

    .line 133
    const-string/jumbo v0, "pw-player"

    new-instance v1, Lc8/WVo;

    const-string/jumbo v2, "pw.player"

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "initPlayer"

    aput-object v4, v3, v6

    const-string/jumbo v4, "destoryPlayer"

    aput-object v4, v3, v7

    invoke-direct {v1, v2, v3}, Lc8/WVo;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v0, v1, v6}, Lc8/bVf;->registerModuleWithFactory(Ljava/lang/String;Lc8/aVf;Z)Z

    .line 137
    return-void
.end method

.method private static setupDevtools(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.youku.weex.intent.devtools"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    new-instance v1, Lc8/aWo;

    invoke-direct {v1}, Lc8/aWo;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    return-void
.end method
