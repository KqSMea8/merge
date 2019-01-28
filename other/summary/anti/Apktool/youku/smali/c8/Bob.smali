.class public Lc8/Bob;
.super Ljava/lang/Object;
.source "AliWXSDKEngine.java"


# static fields
.field public static FRAMEWORK_JS_URL:Ljava/lang/String; = null

.field public static RAX_FRAMEWORK_JS_URL:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "weex.TBWXSDKEngine"

.field private static mWXCrashReportListener:Lc8/Tob;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://h5.m.taobao.com/app/weex/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/UUf;->WXSDK_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/weex.js"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Bob;->FRAMEWORK_JS_URL:Ljava/lang/String;

    .line 83
    const-string/jumbo v0, "http://h5.m.taobao.com/app/rax/rax.js"

    sput-object v0, Lc8/Bob;->RAX_FRAMEWORK_JS_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lc8/Tob;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lc8/Bob;->mWXCrashReportListener:Lc8/Tob;

    return-object v0
.end method

.method private static initFramework()V
    .locals 7

    .prologue
    .line 174
    const/4 v2, 0x0

    .line 176
    .local v2, "framework":Ljava/lang/String;
    :try_start_0
    sget-object v4, Lc8/xB;->context:Landroid/app/Application;

    if-nez v4, :cond_0

    .line 177
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v4

    invoke-virtual {v4}, Lc8/Fob;->getApplication()Landroid/app/Application;

    move-result-object v4

    sput-object v4, Lc8/xB;->context:Landroid/app/Application;

    .line 179
    :cond_0
    const-string/jumbo v4, "weex"

    sget-object v5, Lc8/Bob;->FRAMEWORK_JS_URL:Ljava/lang/String;

    invoke-static {v4, v5}, Lc8/fH;->getStreamByUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 181
    const-string/jumbo v4, "TBWXSDKEngine"

    const-string/jumbo v5, "TBWXSDKEngine: WV obtain  FRAMEWORK_JS failed"

    invoke-static {v4, v5}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_1
    :goto_0
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v0

    .line 188
    .local v0, "aliweex":Lc8/Fob;
    invoke-virtual {v0}, Lc8/Fob;->getApplication()Landroid/app/Application;

    move-result-object v5

    .line 189
    invoke-virtual {v0}, Lc8/Fob;->getInitConfig()Lc8/RUf;

    move-result-object v4

    if-nez v4, :cond_4

    new-instance v6, Lc8/QUf;

    invoke-direct {v6}, Lc8/QUf;-><init>()V

    .line 191
    invoke-virtual {v0}, Lc8/Fob;->getImgLoaderAdapter()Lc8/EVf;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v4, Lc8/kpb;

    invoke-direct {v4}, Lc8/kpb;-><init>()V

    :goto_1
    invoke-virtual {v6, v4}, Lc8/QUf;->setImgAdapter(Lc8/EVf;)Lc8/QUf;

    move-result-object v6

    .line 192
    invoke-virtual {v0}, Lc8/Fob;->getHttpAdapter()Lc8/DVf;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v4, Lc8/epb;

    invoke-direct {v4}, Lc8/epb;-><init>()V

    :goto_2
    invoke-virtual {v6, v4}, Lc8/QUf;->setHttpAdapter(Lc8/DVf;)Lc8/QUf;

    move-result-object v4

    new-instance v6, Lc8/lpb;

    invoke-direct {v6}, Lc8/lpb;-><init>()V

    .line 193
    invoke-virtual {v4, v6}, Lc8/QUf;->setUtAdapter(Lc8/HVf;)Lc8/QUf;

    move-result-object v4

    .line 194
    invoke-virtual {v4, v2}, Lc8/QUf;->setFramework(Ljava/lang/String;)Lc8/QUf;

    move-result-object v4

    new-instance v6, Lc8/Wob;

    invoke-direct {v6}, Lc8/Wob;-><init>()V

    .line 195
    invoke-virtual {v4, v6}, Lc8/QUf;->setDrawableLoader(Lc8/AVf;)Lc8/QUf;

    move-result-object v4

    .line 196
    invoke-virtual {v4}, Lc8/QUf;->build()Lc8/RUf;

    move-result-object v4

    .line 188
    :goto_3
    invoke-static {v5, v4}, Lc8/bVf;->initialize(Landroid/app/Application;Lc8/RUf;)V

    .line 199
    :try_start_1
    invoke-static {}, Lc8/Nub;->registerSelf()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 205
    :goto_4
    :try_start_2
    new-instance v4, Lc8/Tob;

    invoke-direct {v4}, Lc8/Tob;-><init>()V

    sput-object v4, Lc8/Bob;->mWXCrashReportListener:Lc8/Tob;

    .line 206
    invoke-static {}, Lc8/XSb;->getInstance()Lc8/XSb;

    move-result-object v4

    sget-object v5, Lc8/Bob;->mWXCrashReportListener:Lc8/Tob;

    invoke-virtual {v4, v5}, Lc8/XSb;->setCrashCaughtListener(Lc8/SSb;)V

    .line 207
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v4

    new-instance v5, Lc8/Aob;

    invoke-direct {v5}, Lc8/Aob;-><init>()V

    invoke-virtual {v4, v5}, Lc8/pVf;->setCrashInfoReporter(Lc8/wVf;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 226
    :goto_5
    :try_start_3
    invoke-static {}, Lc8/xSb;->getInstance()Lc8/xSb;

    move-result-object v3

    .line 227
    .local v3, "loader":Lc8/xSb;
    invoke-virtual {v0}, Lc8/Fob;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc8/xSb;->loaderStart(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 231
    .end local v3    # "loader":Lc8/xSb;
    :goto_6
    return-void

    .line 183
    .end local v0    # "aliweex":Lc8/Fob;
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "TBWXSDKEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TBWXSDKEngine:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 191
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "aliweex":Lc8/Fob;
    :cond_2
    invoke-virtual {v0}, Lc8/Fob;->getImgLoaderAdapter()Lc8/EVf;

    move-result-object v4

    goto/16 :goto_1

    .line 192
    :cond_3
    invoke-virtual {v0}, Lc8/Fob;->getHttpAdapter()Lc8/DVf;

    move-result-object v4

    goto :goto_2

    .line 196
    :cond_4
    invoke-virtual {v0}, Lc8/Fob;->getInitConfig()Lc8/RUf;

    move-result-object v4

    goto :goto_3

    .line 200
    :catch_1
    move-exception v1

    .line 201
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 228
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v1

    .line 229
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v4

    goto :goto_5
.end method

.method public static initSDKEngine()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 89
    const-string/jumbo v1, "[AliWXSDKEngine] initSDKEngine"

    invoke-static {v1}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 90
    const-string/jumbo v1, "appGroup"

    const-string/jumbo v2, "AliApp"

    invoke-static {v1, v2}, Lc8/bVf;->addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v1, "AliWeexVersion"

    const-string/jumbo v2, "0.0.9.0"

    invoke-static {v1, v2}, Lc8/bVf;->addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string/jumbo v1, "infoCollect"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Lc8/bVf;->addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v1, "env_exclude_x86"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/bVf;->addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sput-boolean v3, Lc8/UUf;->SETTING_FORCE_VERTICAL_SCREEN:Z

    .line 95
    invoke-static {}, Lc8/Bob;->initFramework()V

    .line 96
    invoke-static {}, Lc8/Bob;->registerModulesAndComponents()V

    .line 99
    :try_start_0
    invoke-static {}, Lc8/fE;->getInstance()Lc8/fE;

    move-result-object v1

    invoke-virtual {v1}, Lc8/fE;->init()V

    .line 100
    invoke-static {}, Lc8/qrf;->register()V

    .line 101
    const-string/jumbo v1, "WXAudioPlayer"

    const-class v2, Lc8/Exb;

    invoke-static {v1, v2}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 107
    :goto_0
    :try_start_1
    invoke-static {}, Lc8/Bob;->loadRaxFramework()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    :goto_1
    :try_start_2
    invoke-static {}, Lc8/Awb;->getInstance()Lc8/Awb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Awb;->init()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 117
    .local v0, "e":Ljava/lang/Throwable;
    :goto_2
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Fob;->getApplication()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Lc8/syb;

    invoke-direct {v2}, Lc8/syb;-><init>()V

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 119
    return-void

    .line 113
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 114
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private static loadRaxFramework()V
    .locals 7

    .prologue
    .line 235
    const-string/jumbo v5, "rax"

    sget-object v6, Lc8/Bob;->RAX_FRAMEWORK_JS_URL:Ljava/lang/String;

    invoke-static {v5, v6}, Lc8/fH;->getStreamByUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "raxFramework":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 237
    const-string/jumbo v5, "rax.js"

    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/qgg;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 240
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 241
    .local v2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "rax"

    .line 242
    .local v1, "SERVICE_NAME":Ljava/lang/String;
    move-object v0, v3

    .line 243
    .local v0, "SERVICE_JS_CODE":Ljava/lang/String;
    invoke-static {v1, v0, v2}, Lc8/bVf;->registerService(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v4

    .line 244
    .local v4, "result":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rax framework init "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method private static registerModulesAndComponents()V
    .locals 6

    .prologue
    .line 123
    :try_start_0
    const-string/jumbo v1, "windvane"

    const-class v2, Lc8/Vqb;

    invoke-static {v1, v2}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 124
    const-string/jumbo v1, "mtop"

    const-class v2, Lc8/wub;

    invoke-static {v1, v2}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 125
    const-string/jumbo v1, "userTrack"

    const-class v2, Lc8/Rqb;

    invoke-static {v1, v2}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 126
    const-string/jumbo v1, "share"

    const-class v2, Lc8/Pqb;

    invoke-static {v1, v2}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 127
    const-string/jumbo v1, "user"

    const-class v2, Lc8/Qqb;

    invoke-static {v1, v2}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 128
    const-string/jumbo v1, "geolocation"

    const-class v2, Lc8/tqb;

    invoke-static {v1, v2}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 129
    const-string/jumbo v1, "event"

    const-class v2, Lc8/Gqb;

    invoke-static {v1, v2}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 130
    const-string/jumbo v1, "pageInfo"

    const-class v2, Lc8/Nqb;

    invoke-static {v1, v2}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 131
    const-string/jumbo v1, "location"

    const-class v2, Lc8/Iqb;

    invoke-static {v1, v2}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 132
    const-string/jumbo v1, "alipay"

    const-class v2, Lc8/wqb;

    invoke-static {v1, v2}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 133
    const-string/jumbo v1, "navigationBar"

    const-class v2, Lc8/Mqb;

    invoke-static {v1, v2}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 134
    const-string/jumbo v1, "audio"

    const-class v2, Lc8/prb;

    invoke-static {v1, v2}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 135
    const-string/jumbo v1, "expressionBinding"

    const-class v2, Lc8/hub;

    invoke-static {v1, v2}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 136
    const-string/jumbo v1, "binding"

    const-class v2, Lc8/lub;

    invoke-static {v1, v2}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 137
    const-string/jumbo v1, "connection"

    const-class v2, Lc8/Lub;

    invoke-static {v1, v2}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 138
    const-string/jumbo v1, "prerender"

    const-class v2, Lc8/svb;

    invoke-static {v1, v2}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 139
    const-string/jumbo v1, "festival"

    const-class v2, Lc8/Hqb;

    invoke-static {v1, v2}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 140
    const-string/jumbo v1, "cookie"

    const-class v2, Lc8/Dqb;

    invoke-static {v1, v2}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 141
    const-string/jumbo v1, "prefetch"

    const-class v2, Lc8/jvb;

    invoke-static {v1, v2}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 142
    const-string/jumbo v1, "blurEx"

    const-class v2, Lc8/wrb;

    invoke-static {v1, v2}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 143
    const-string/jumbo v1, "screen"

    const-class v2, Lc8/Oqb;

    invoke-static {v1, v2}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 144
    const-string/jumbo v1, "calendar"

    const-class v2, Lc8/Cqb;

    invoke-static {v1, v2}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 146
    const-string/jumbo v1, "web"

    const-class v2, Lc8/Rpb;

    invoke-static {v1, v2}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 147
    const-string/jumbo v1, "latestVisitView"

    const-class v2, Lc8/Bpb;

    invoke-static {v1, v2}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 148
    const-string/jumbo v1, "titlebar"

    const-class v2, Lc8/Ppb;

    invoke-static {v1, v2}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 149
    const-string/jumbo v1, "marquee"

    const-class v2, Lc8/Cpb;

    invoke-static {v1, v2}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 150
    const-string/jumbo v1, "countdown"

    const-class v2, Lc8/vpb;

    invoke-static {v1, v2}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 151
    const-string/jumbo v1, "tabheader"

    const-class v2, Lc8/Lpb;

    invoke-static {v1, v2}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 152
    const-string/jumbo v1, "mask"

    const-class v2, Lc8/Epb;

    invoke-static {v1, v2}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 153
    const-string/jumbo v1, "mask"

    const-class v2, Lc8/Vpb;

    invoke-static {v1, v2}, Lc8/bVf;->registerDomObject(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 154
    const-string/jumbo v1, "tabbar"

    const-class v2, Lc8/Opb;

    invoke-static {v1, v2}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 155
    new-instance v1, Lc8/vag;

    const-class v2, Lc8/npb;

    new-instance v3, Lc8/mpb;

    invoke-direct {v3}, Lc8/mpb;-><init>()V

    invoke-direct {v1, v2, v3}, Lc8/vag;-><init>(Ljava/lang/Class;Lc8/nag;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "image"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "img"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lc8/bVf;->registerComponent(Lc8/rag;Z[Ljava/lang/String;)Z

    .line 160
    const-string/jumbo v1, "richtext"

    const-class v2, Lc8/Xpb;

    invoke-static {v1, v2}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 161
    const-string/jumbo v1, "richtext"

    const-class v2, Lc8/Ypb;

    invoke-static {v1, v2}, Lc8/bVf;->registerDomObject(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 162
    const-string/jumbo v1, "actionSheet"

    const-class v2, Lc8/hrb;

    invoke-static {v1, v2}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 163
    const-string/jumbo v1, "a"

    const-class v2, Lc8/xpb;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 164
    const-string/jumbo v1, "device"

    const-class v2, Lc8/Fqb;

    invoke-static {v1, v2}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 166
    const-string/jumbo v1, "parallax"

    const-class v2, Lc8/Ipb;

    invoke-static {v1, v2}, Lc8/bVf;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z
    :try_end_0
    .catch Lcom/taobao/weex/common/WXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .local v0, "e":Lcom/taobao/weex/common/WXException;
    :goto_0
    return-void

    .line 167
    .end local v0    # "e":Lcom/taobao/weex/common/WXException;
    :catch_0
    move-exception v0

    .line 168
    .restart local v0    # "e":Lcom/taobao/weex/common/WXException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[TBWXSDKEngine] registerModulesAndComponents:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized setCurCrashUrl(Ljava/lang/String;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 248
    const-class v1, Lc8/Bob;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/Bob;->mWXCrashReportListener:Lc8/Tob;

    if-eqz v0, :cond_0

    .line 249
    sget-object v0, Lc8/Bob;->mWXCrashReportListener:Lc8/Tob;

    invoke-virtual {v0, p0}, Lc8/Tob;->setCurCrashUrl(Ljava/lang/String;)V

    .line 251
    :cond_0
    invoke-static {}, Lc8/XSb;->getInstance()Lc8/XSb;

    move-result-object v0

    const-string/jumbo v2, "wx_current_url"

    invoke-virtual {v0, v2, p0}, Lc8/XSb;->addNativeHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    monitor-exit v1

    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
