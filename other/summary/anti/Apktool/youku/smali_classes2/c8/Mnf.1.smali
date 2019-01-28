.class public Lc8/Mnf;
.super Ljava/lang/Object;
.source "PolicyConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Lnf;
    }
.end annotation


# static fields
.field private static final APPLINK_CONFIG_NAME:Ljava/lang/String; = "androidAppLinkConfig"

.field public static final ARG1_REMOTE_CONFIG_ACTIVE:Ljava/lang/String; = "fc_remote_config_active"

.field public static final ARG1_REMOTE_CONFIG_UPDATE:Ljava/lang/String; = "fc_remote_config_update"

.field private static final AUTH_SIGN_CHECK:Ljava/lang/String; = "auth_sign_check"

.field private static final BLACK_LIST_NAME:Ljava/lang/String; = "blackList"

.field private static final CAN_DEEPLINK:Ljava/lang/String; = "canDeepLink"

.field private static final CHECK_APPS_NAME:Ljava/lang/String; = "checkApps"

.field public static final CONFIG_URL_ONLINE:Ljava/lang/String; = "https://nbsdk-baichuan.alicdn.com/%s/linkin.htm?plat=android&appKey=%s&appVersion=%s"

.field public static final CONFIG_URL_TEST:Ljava/lang/String; = "http://100.69.205.47/%s/linkin.htm?plat=android&appKey=%s&appVersion=%s"

.field private static final DEFAULT_EXPIRE_TIME_INTERVAL:I = 0x7530

.field private static final ENABLE_PROBE_MATCH:Ljava/lang/String; = "enableProbeMatch"

.field private static final ENABLE_PROBE_UMID:Ljava/lang/String; = "enableProbeUMID"

.field private static final ENABLE_WHITE_LIST:Ljava/lang/String; = "enableWhiteList"

.field public static final ETAG:Ljava/lang/String; = "ETag"

.field public static final EXPIRE_TIME_NAME:Ljava/lang/String; = "exp"

.field private static final FIRST_FETCH_STATUS_FAIL:I = 0x2

.field private static final FIRST_FETCH_STATUS_SUCCESS:I = 0x1

.field private static final FIRST_FETCH_STATUS_UNFETCHED:I = 0x0

.field private static final GROUP0_NAME:Ljava/lang/String; = "group0"

.field private static final LOG_TAG:Ljava/lang/String; = "PolicyConfig"

.field private static final OUT_BLACK_LIST_NAME:Ljava/lang/String; = "regularsForSmuggle"

.field private static final PLUGIN_BLACK_LIST:Ljava/lang/String; = "pluginBlackList"

.field private static final PREFERENCES_CONFIG_KEY:Ljava/lang/String; = "config"

.field public static final PREFERENCES_FILE_NAME:Ljava/lang/String; = "linkManagerPolicyConfig"

.field private static final PREFERENCES_KEY_CONFIG_EXPIRE_TIME:Ljava/lang/String; = "configExpireTime"

.field private static final PUSH_CONFIG_GROUP:Ljava/lang/String; = "flow_customs_config"

.field private static final PUSH_CONFIG_KEY:Ljava/lang/String; = "AFC_PolicyConfig"

.field private static final SYSTEM_SCHEME_NAME:Ljava/lang/String; = "systemScheme"

.field private static final VALID_DEEPLINK_INTERVAL:Ljava/lang/String; = "validDeepLinkInterval"

.field private static final VERSION_NAME:Ljava/lang/String; = "version"

.field private static final WHITE_LIST_DISABLED_VALUE:I = 0x0

.field private static final WHITE_LIST_ENABLED_VALUE:I = 0x1

.field private static final WHITE_LIST_NAME:Ljava/lang/String; = "whiteList"

.field public static volatile firstFetchConfigStatus:Ljava/lang/Integer;

.field public static instance:Lc8/Mnf;

.field private static volatile listner:Lc8/Lnf;


# instance fields
.field private application:Landroid/app/Application;

.field public authSignCheck:I

.field private canDeepLink:I

.field private configUrl:Ljava/lang/String;

.field private volatile enableOutgoingWhiteList:Z

.field public enableProbeMatch:I

.field public enableProbeUMID:I

.field private volatile expireTimeInterval:I

.field private fetchConfigTask:Ljava/lang/Runnable;

.field public incomingAppBlackList:Lc8/Enf;

.field public installInfo:Lc8/Anf;

.field public outgoingAppBlackList:Lc8/Gnf;

.field public outgoingAppWhiteList:Lc8/Hnf;

.field public pluginList:Lc8/Inf;

.field private sp:Landroid/content/SharedPreferences;

.field private systemSchemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private validDeepLinkInterval:I

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lc8/Mnf;->firstFetchConfigStatus:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lc8/Enf;

    invoke-direct {v0}, Lc8/Enf;-><init>()V

    iput-object v0, p0, Lc8/Mnf;->incomingAppBlackList:Lc8/Enf;

    .line 85
    new-instance v0, Lc8/Hnf;

    invoke-direct {v0}, Lc8/Hnf;-><init>()V

    iput-object v0, p0, Lc8/Mnf;->outgoingAppWhiteList:Lc8/Hnf;

    .line 88
    new-instance v0, Lc8/Gnf;

    invoke-direct {v0}, Lc8/Gnf;-><init>()V

    iput-object v0, p0, Lc8/Mnf;->outgoingAppBlackList:Lc8/Gnf;

    .line 91
    new-instance v0, Lc8/Inf;

    invoke-direct {v0}, Lc8/Inf;-><init>()V

    iput-object v0, p0, Lc8/Mnf;->pluginList:Lc8/Inf;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/Mnf;->systemSchemes:Ljava/util/List;

    .line 97
    new-instance v0, Lc8/Anf;

    invoke-direct {v0}, Lc8/Anf;-><init>()V

    iput-object v0, p0, Lc8/Mnf;->installInfo:Lc8/Anf;

    .line 101
    const/16 v0, 0x7530

    iput v0, p0, Lc8/Mnf;->expireTimeInterval:I

    .line 107
    iput v3, p0, Lc8/Mnf;->canDeepLink:I

    .line 108
    const/16 v0, 0x384

    iput v0, p0, Lc8/Mnf;->validDeepLinkInterval:I

    .line 111
    iput v3, p0, Lc8/Mnf;->enableProbeMatch:I

    .line 114
    iput v1, p0, Lc8/Mnf;->enableProbeUMID:I

    .line 117
    iput-boolean v3, p0, Lc8/Mnf;->enableOutgoingWhiteList:Z

    .line 135
    sget-object v0, Lc8/unf;->instance:Lc8/unf;

    iget-object v0, v0, Lc8/unf;->application:Landroid/app/Application;

    iput-object v0, p0, Lc8/Mnf;->application:Landroid/app/Application;

    .line 136
    invoke-virtual {p0}, Lc8/Mnf;->getConfigUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Mnf;->configUrl:Ljava/lang/String;

    .line 138
    invoke-direct {p0}, Lc8/Mnf;->initConfigForCache()Ljava/lang/String;

    .line 140
    invoke-static {}, Lc8/Rnf;->getInstance()Lc8/Rnf;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "flow_customs_config"

    aput-object v2, v1, v3

    new-instance v2, Lc8/Jnf;

    invoke-direct {v2, p0}, Lc8/Jnf;-><init>(Lc8/Mnf;)V

    invoke-virtual {v0, v1, v2}, Lc8/Rnf;->registerListener([Ljava/lang/String;Lc8/Qnf;)V

    .line 148
    return-void
.end method

.method static synthetic access$000(Lc8/Mnf;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/Mnf;

    .prologue
    .line 40
    invoke-direct {p0}, Lc8/Mnf;->initConfigForCache()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lc8/Mnf;)Landroid/app/Application;
    .locals 1
    .param p0, "x0"    # Lc8/Mnf;

    .prologue
    .line 40
    iget-object v0, p0, Lc8/Mnf;->application:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic access$200(Lc8/Mnf;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/Mnf;

    .prologue
    .line 40
    iget-object v0, p0, Lc8/Mnf;->configUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lc8/Mnf;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/Mnf;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lc8/Mnf;->getEtag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lc8/Mnf;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/Mnf;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lc8/Mnf;->setHasFetchConfig(Z)V

    return-void
.end method

.method static synthetic access$500()Lc8/Lnf;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lc8/Mnf;->listner:Lc8/Lnf;

    return-object v0
.end method

.method static synthetic access$502(Lc8/Lnf;)Lc8/Lnf;
    .locals 0
    .param p0, "x0"    # Lc8/Lnf;

    .prologue
    .line 40
    sput-object p0, Lc8/Mnf;->listner:Lc8/Lnf;

    return-object p0
.end method

.method private fetchConfigIfExpired()Z
    .locals 6

    .prologue
    .line 288
    iget-object v2, p0, Lc8/Mnf;->fetchConfigTask:Ljava/lang/Runnable;

    if-nez v2, :cond_0

    .line 289
    new-instance v2, Lc8/Knf;

    invoke-direct {v2, p0}, Lc8/Knf;-><init>(Lc8/Mnf;)V

    iput-object v2, p0, Lc8/Mnf;->fetchConfigTask:Ljava/lang/Runnable;

    .line 342
    :cond_0
    invoke-direct {p0}, Lc8/Mnf;->getExpireTime()J

    move-result-wide v0

    .line 344
    .local v0, "expireTimeMillis":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, p0, Lc8/Mnf;->expireTimeInterval:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lc8/Mnf;->saveExpireTime(J)V

    .line 347
    sget-object v2, Lc8/gpf;->instance:Lc8/gpf;

    iget-object v3, p0, Lc8/Mnf;->fetchConfigTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lc8/gpf;->postNonUIThread(Ljava/lang/Runnable;)V

    .line 349
    const/4 v2, 0x1

    .line 351
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getEtag(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 380
    const-string/jumbo v1, "linkManagerPolicyConfig"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 381
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "ETag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getExpireTime()J
    .locals 4

    .prologue
    .line 506
    iget-object v0, p0, Lc8/Mnf;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "configExpireTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized getInstance()Lc8/Mnf;
    .locals 2

    .prologue
    .line 151
    const-class v1, Lc8/Mnf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/Mnf;->instance:Lc8/Mnf;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lc8/Mnf;

    invoke-direct {v0}, Lc8/Mnf;-><init>()V

    sput-object v0, Lc8/Mnf;->instance:Lc8/Mnf;

    .line 156
    :cond_0
    sget-object v0, Lc8/Mnf;->instance:Lc8/Mnf;

    invoke-direct {v0}, Lc8/Mnf;->fetchConfigIfExpired()Z

    .line 159
    sget-object v0, Lc8/Mnf;->instance:Lc8/Mnf;

    iget-object v0, v0, Lc8/Mnf;->installInfo:Lc8/Anf;

    invoke-virtual {v0}, Lc8/Anf;->sendIfNecessary()V

    .line 161
    sget-object v0, Lc8/Mnf;->instance:Lc8/Mnf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized initConfigForCache()Ljava/lang/String;
    .locals 5

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lc8/Mnf;->application:Landroid/app/Application;

    const-string/jumbo v3, "linkManagerPolicyConfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lc8/Mnf;->sp:Landroid/content/SharedPreferences;

    .line 266
    iget-object v2, p0, Lc8/Mnf;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "config"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "configString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    const-string/jumbo v0, "{\n  \"group0\": {\n    \"dataId\": \"com.alibaba.baichuan.nbcp.meta.default\",\n    \"group\": \"0.0.0\",\n    \"version\": \"0\",\n    \"lastUpdate\": \"Jan 1, 1970 12:00:00 AM\",\n    \"sign\": \"421c4fa1232bdf5289ac96a4fd6e3e19\"\n  },\n  \"albbTradeConfig\": {},\n  \"androidAppLinkConfig\": {\n    \"exp\": 0,\n    \"blackList\": [],\n    \"auth_sign_check\": 0,\n    \"utSample\": 100,\n    \"enableWhiteList\": 0,\n    \"regularsForSmuggle\": [],\n    \"enableProbeMatch\": 0,\n    \"enableProbeUMID\": 1,\n    \"whiteList\": {\n      \"schemes\": [\"tbopen\", \"alisdk\", \"http\", \"https\"],\n      \"url\": \"\",\n      \"tip\": \"\",\n      \"pkgs\": [\n        \"com.immomo.momo\",\n        \"com.tencent.mobileqq\",\n        \"com.tencent.mm\",\n        \"com.sina.weibo\",\n        \"com.alibaba.android.babylon\",\n        \"com.eg.android.AlipayGphone\",\n        \"com.alibaba.mobileim\",\n        \"com.qzone\",\n        \"com.taobao.ishopping\",\n        \"com.taobao.idlefish\",\n        \"com.tencent.mm\",\n        \"com.icbc\",\n        \"com.sankuai.meituan\",\n        \"com.dianping.v1\",\n        \"com.sdu.didi.psnger\",\n        \"com.MobileTicket\",\n        \"com.mt.mtxx.mtxx\",\n        \"com.youku.phone\",\n        \"com.baidu.BaiduMap\",\n        \"com.alibaba.android.rimet\",\n        \"com.taobao.trip\",\n        \"com.sankuai.meituan.takeoutnew\",\n        \"me.ele\",\n        \"com.ali.money.shield\",\n        \"com.taobao.android.need\",\n        \"com.android.vending\",\n        \"com.UCMobile\",\n        \"com.fanli.android.apps\",\n        \"com.leixun.taofen8\",\n        \"com.smzdm.client.android\",\n        \"com.ss.android.article.news\",\n        \"com.tudou.android\",\n        \"com.yizhe_temai\",\n        \"com.lingan.seeyou\",\n        \"cn.wps.moffice_eng\",\n        \"com.xiaomi.o2o\",\n        \"com.hupu.shihuo\",\n        \"com.xiaoenai.app\",\n        \"com.meiyou.youzijie\",\n        \"com.nanyiku\",\n        \"com.shanjing.fanli\",\n        \"com.liwushuo.gifttalk\",\n        \"com.xg.nine\",\n        \"com.lingan.yunqi\",\n        \"com.autonavi.minimap\"\n\n      ]\n    },\n    \"systemScheme\": [\"tel\"],\n    \"checkApps\":{\n      \"targets\": [\n        \"com.youku.phone\",\n        \"com.immomo.momo\",\n        \"com.sina.weibo\",\n        \"com.UCMobile\",\n        \"com.autonavi.minimap\",\n        \"com.taobao.taobao\",\n        \"com.eg.android.AlipayGphone\",\n        \"com.tmall.wireless\"],\n      \"exp\":0}\n  },\n  \"group2\": {}\n}"

    .line 272
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 274
    :try_start_1
    iget-object v2, p0, Lc8/Mnf;->application:Landroid/app/Application;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lc8/Mnf;->update(Landroid/content/Context;Lorg/json/JSONObject;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 275
    :catch_0
    move-exception v1

    .line 276
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    const-string/jumbo v2, "PolicyConfig"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 265
    .end local v0    # "configString":Ljava/lang/String;
    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public static removeListener()V
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x0

    sput-object v0, Lc8/Mnf;->listner:Lc8/Lnf;

    .line 467
    return-void
.end method

.method private saveExpireTime(J)V
    .locals 3
    .param p1, "newValue"    # J

    .prologue
    .line 498
    iget-object v0, p0, Lc8/Mnf;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "configExpireTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 499
    return-void
.end method

.method private sendConfigResult(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fromServer"    # Z

    .prologue
    .line 357
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 358
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "appkey"

    sget-object v2, Lc8/unf;->instance:Lc8/unf;

    iget-object v2, v2, Lc8/unf;->appKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string/jumbo v1, "appVersion"

    sget-object v2, Lc8/unf;->instance:Lc8/unf;

    invoke-virtual {v2}, Lc8/unf;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string/jumbo v1, "sdkVersion"

    const-string/jumbo v2, "1.3.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string/jumbo v1, "plat"

    const-string/jumbo v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string/jumbo v1, "utdid"

    invoke-static {p1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string/jumbo v2, "version"

    iget-object v1, p0, Lc8/Mnf;->version:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string/jumbo v1, "0"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    if-eqz p2, :cond_2

    const-string/jumbo v1, "fc_remote_config_update"

    :goto_1
    invoke-static {v1, v0}, Lc8/npf;->sendCustomHit(Ljava/lang/String;Ljava/util/Map;)V

    .line 368
    if-eqz p2, :cond_0

    .line 369
    invoke-direct {p0}, Lc8/Mnf;->sendConfigUpdateRequest()V

    .line 371
    :cond_0
    return-void

    .line 364
    :cond_1
    iget-object v1, p0, Lc8/Mnf;->version:Ljava/lang/String;

    goto :goto_0

    .line 365
    :cond_2
    const-string/jumbo v1, "fc_remote_config_active"

    goto :goto_1
.end method

.method private sendConfigUpdateRequest()V
    .locals 6

    .prologue
    .line 424
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 425
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "appkey"

    sget-object v1, Lc8/unf;->instance:Lc8/unf;

    iget-object v1, v1, Lc8/unf;->appKey:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string/jumbo v0, "appVersion"

    sget-object v1, Lc8/unf;->instance:Lc8/unf;

    invoke-virtual {v1}, Lc8/unf;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const-string/jumbo v0, "sdkVersion"

    const-string/jumbo v1, "1.3.0"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    const-string/jumbo v0, "plat"

    const-string/jumbo v1, "android"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const-string/jumbo v0, "utdid"

    iget-object v1, p0, Lc8/Mnf;->application:Landroid/app/Application;

    invoke-static {v1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    const-string/jumbo v1, "version"

    iget-object v0, p0, Lc8/Mnf;->version:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "0"

    :goto_0
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    invoke-static {}, Lc8/wof;->getInstance()Lc8/wof;

    move-result-object v0

    const-string/jumbo v1, "mtop.taobao.bc.realtime.configupdate"

    const-string/jumbo v2, "1.0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lc8/wof;->sendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/xof;)V

    .line 433
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lc8/Mnf;->version:Ljava/lang/String;

    goto :goto_0
.end method

.method private setHasFetchConfig(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    .line 511
    sget-object v0, Lc8/Mnf;->firstFetchConfigStatus:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Mnf;->firstFetchConfigStatus:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    const-string/jumbo v0, "LinkManagerSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PolicyConfig:setHasFetchConfig hasFetchConfig success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    sget-object v1, Lc8/Mnf;->firstFetchConfigStatus:Ljava/lang/Integer;

    monitor-enter v1

    .line 518
    if-eqz p1, :cond_2

    .line 519
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lc8/Mnf;->firstFetchConfigStatus:Ljava/lang/Integer;

    .line 524
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 521
    :cond_2
    const/4 v0, 0x2

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lc8/Mnf;->firstFetchConfigStatus:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static setListner(Lc8/Lnf;)V
    .locals 0
    .param p0, "listner"    # Lc8/Lnf;

    .prologue
    .line 461
    sput-object p0, Lc8/Mnf;->listner:Lc8/Lnf;

    .line 462
    return-void
.end method


# virtual methods
.method public canDeepLink()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 436
    iget v1, p0, Lc8/Mnf;->canDeepLink:I

    if-ne v1, v0, :cond_0

    .line 440
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableProbeMatch()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 444
    iget v1, p0, Lc8/Mnf;->enableProbeMatch:I

    if-ne v1, v0, :cond_0

    .line 448
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableProbeUMID()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 452
    iget v1, p0, Lc8/Mnf;->enableProbeUMID:I

    if-ne v1, v0, :cond_0

    .line 456
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConfigUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 478
    sget-object v2, Lc8/unf;->instance:Lc8/unf;

    iget-object v1, v2, Lc8/unf;->environment:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    .line 481
    .local v1, "environment":Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;
    sget-object v2, Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;->TEST:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    if-ne v1, v2, :cond_0

    .line 482
    const-string/jumbo v0, "http://100.69.205.47/%s/linkin.htm?plat=android&appKey=%s&appVersion=%s"

    .line 489
    .local v0, "config":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "1.3.0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lc8/unf;->instance:Lc8/unf;

    iget-object v4, v4, Lc8/unf;->appKey:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lc8/unf;->instance:Lc8/unf;

    invoke-virtual {v4}, Lc8/unf;->getVersionName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    .line 483
    .end local v0    # "config":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;->ONLINE:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    if-ne v1, v2, :cond_1

    .line 484
    const-string/jumbo v0, "https://nbsdk-baichuan.alicdn.com/%s/linkin.htm?plat=android&appKey=%s&appVersion=%s"

    .restart local v0    # "config":Ljava/lang/String;
    goto :goto_0

    .line 486
    .end local v0    # "config":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "http://100.69.205.47/%s/linkin.htm?plat=android&appKey=%s&appVersion=%s"

    .restart local v0    # "config":Ljava/lang/String;
    goto :goto_0

    .line 489
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getFetchConfigCallback(Lc8/Lnf;)V
    .locals 4
    .param p1, "fetchListner"    # Lc8/Lnf;

    .prologue
    .line 530
    if-eqz p1, :cond_0

    sget-object v0, Lc8/Mnf;->firstFetchConfigStatus:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    sget-object v1, Lc8/Mnf;->firstFetchConfigStatus:Ljava/lang/Integer;

    monitor-enter v1

    .line 535
    :try_start_0
    const-string/jumbo v0, "LinkManagerSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PolicyConfig:getFetchConfigCallback \u5f53\u524d\u7684firstFetchConfigStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lc8/Mnf;->firstFetchConfigStatus:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    sget-object v0, Lc8/Mnf;->firstFetchConfigStatus:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 552
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 540
    :pswitch_0
    :try_start_1
    invoke-interface {p1}, Lc8/Lnf;->onFailure()V

    goto :goto_1

    .line 544
    :pswitch_1
    invoke-interface {p1}, Lc8/Lnf;->onSuccess()V

    goto :goto_1

    .line 548
    :pswitch_2
    invoke-static {p1}, Lc8/Mnf;->setListner(Lc8/Lnf;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 537
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getValidDeepLinkInterval()I
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lc8/Mnf;->validDeepLinkInterval:I

    return v0
.end method

.method public inExtraData(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 399
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 409
    :cond_0
    :goto_0
    return v2

    .line 403
    :cond_1
    iget-object v3, p0, Lc8/Mnf;->systemSchemes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 404
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 405
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public inSystemSchemes(Ljava/lang/String;)Z
    .locals 4
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 385
    if-nez p1, :cond_1

    .line 395
    :cond_0
    :goto_0
    return v2

    .line 389
    :cond_1
    iget-object v3, p0, Lc8/Mnf;->systemSchemes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 390
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 391
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public shouldEnableOutgoingWhiteList()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lc8/Mnf;->enableOutgoingWhiteList:Z

    return v0
.end method

.method public declared-synchronized update(Landroid/content/Context;Lorg/json/JSONObject;Z)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;
    .param p3, "fromServer"    # Z

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 171
    .local v14, "startTime":J
    const-string/jumbo v20, "AlibcBlackList"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "update start --> data = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v20, "androidAppLinkConfig"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 174
    .local v5, "applinkConfigJson":Lorg/json/JSONObject;
    if-nez v5, :cond_0

    .line 257
    :goto_0
    monitor-exit p0

    return-void

    .line 180
    :cond_0
    :try_start_1
    invoke-static {}, Lc8/Rnf;->getInstance()Lc8/Rnf;

    move-result-object v20

    const-string/jumbo v21, "flow_customs_config"

    const-string/jumbo v22, "AFC_PolicyConfig"

    const-string/jumbo v23, "{}"

    invoke-virtual/range {v20 .. v23}, Lc8/Rnf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 181
    .local v13, "sourceString":Ljava/lang/String;
    invoke-static {v13}, Lc8/ipf;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 182
    .local v12, "sourceJsonObject":Lorg/json/JSONObject;
    invoke-static {v12, v5}, Lc8/ipf;->deepMerge(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 187
    .end local v12    # "sourceJsonObject":Lorg/json/JSONObject;
    .end local v13    # "sourceString":Ljava/lang/String;
    :goto_1
    :try_start_2
    const-string/jumbo v20, "AlibcBlackList"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "update marge end "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v22

    sub-long v22, v22, v14

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string/jumbo v20, "whiteList"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 190
    .local v19, "whiteListJson":Lorg/json/JSONObject;
    if-eqz v19, :cond_1

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Mnf;->outgoingAppWhiteList:Lc8/Hnf;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lc8/Hnf;->update(Lorg/json/JSONObject;)V

    .line 194
    :cond_1
    const-string/jumbo v20, "blackList"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 195
    .local v6, "blackListJsonArray":Lorg/json/JSONArray;
    if-eqz v6, :cond_2

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Mnf;->incomingAppBlackList:Lc8/Enf;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lc8/Enf;->update(Lorg/json/JSONArray;)V

    .line 199
    :cond_2
    const-string/jumbo v20, "regularsForSmuggle"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 200
    .local v10, "outgoingBlackListJsonArray":Lorg/json/JSONArray;
    if-eqz v10, :cond_3

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Mnf;->outgoingAppBlackList:Lc8/Gnf;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lc8/Gnf;->update(Lorg/json/JSONArray;)V

    .line 204
    :cond_3
    const-string/jumbo v20, "pluginBlackList"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 205
    .local v11, "pluginBlackListJsonArray":Lorg/json/JSONArray;
    if-eqz v11, :cond_4

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Mnf;->pluginList:Lc8/Inf;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lc8/Inf;->update(Lorg/json/JSONArray;)V

    .line 210
    :cond_4
    const-string/jumbo v20, "visaConfig"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 211
    .local v18, "visaConfigInfo":Lorg/json/JSONObject;
    if-eqz v18, :cond_5

    .line 212
    invoke-static/range {v18 .. v18}, Lc8/wpf;->updateViseSwitch(Lorg/json/JSONObject;)V

    .line 216
    :cond_5
    const-string/jumbo v20, "canDeepLink"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Mnf;->canDeepLink:I

    .line 219
    const-string/jumbo v20, "validDeepLinkInterval"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Mnf;->validDeepLinkInterval:I

    .line 221
    const-string/jumbo v20, "exp"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Mnf;->expireTimeInterval:I

    .line 223
    const-string/jumbo v20, "group0"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 224
    .local v7, "group0Json":Lorg/json/JSONObject;
    if-eqz v7, :cond_6

    .line 225
    const-string/jumbo v20, "version"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/Mnf;->version:Ljava/lang/String;

    .line 228
    :cond_6
    const-string/jumbo v20, "auth_sign_check"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Mnf;->authSignCheck:I

    .line 231
    const-string/jumbo v20, "enableProbeMatch"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Mnf;->enableProbeMatch:I

    .line 234
    const-string/jumbo v20, "enableProbeUMID"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Mnf;->enableProbeUMID:I

    .line 236
    const-string/jumbo v20, "systemScheme"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 237
    .local v16, "systemSchemeArray":Lorg/json/JSONArray;
    if-eqz v16, :cond_8

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Mnf;->systemSchemes:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 239
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_8

    .line 240
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v9

    .line 241
    .local v9, "object":Ljava/lang/Object;
    if-eqz v9, :cond_7

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Mnf;->systemSchemes:Ljava/util/List;

    move-object/from16 v20, v0

    check-cast v9, Ljava/lang/String;

    .end local v9    # "object":Ljava/lang/Object;
    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 183
    .end local v6    # "blackListJsonArray":Lorg/json/JSONArray;
    .end local v7    # "group0Json":Lorg/json/JSONObject;
    .end local v8    # "i":I
    .end local v10    # "outgoingBlackListJsonArray":Lorg/json/JSONArray;
    .end local v11    # "pluginBlackListJsonArray":Lorg/json/JSONArray;
    .end local v16    # "systemSchemeArray":Lorg/json/JSONArray;
    .end local v18    # "visaConfigInfo":Lorg/json/JSONObject;
    .end local v19    # "whiteListJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v17

    .line 184
    .local v17, "throwable":Ljava/lang/Throwable;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 170
    .end local v5    # "applinkConfigJson":Lorg/json/JSONObject;
    .end local v14    # "startTime":J
    .end local v17    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v20

    monitor-exit p0

    throw v20

    .line 247
    .restart local v5    # "applinkConfigJson":Lorg/json/JSONObject;
    .restart local v6    # "blackListJsonArray":Lorg/json/JSONArray;
    .restart local v7    # "group0Json":Lorg/json/JSONObject;
    .restart local v10    # "outgoingBlackListJsonArray":Lorg/json/JSONArray;
    .restart local v11    # "pluginBlackListJsonArray":Lorg/json/JSONArray;
    .restart local v14    # "startTime":J
    .restart local v16    # "systemSchemeArray":Lorg/json/JSONArray;
    .restart local v18    # "visaConfigInfo":Lorg/json/JSONObject;
    .restart local v19    # "whiteListJson":Lorg/json/JSONObject;
    :cond_8
    :try_start_3
    const-string/jumbo v20, "checkApps"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 248
    .local v4, "appInstallInfoJson":Lorg/json/JSONObject;
    if-eqz v4, :cond_9

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Mnf;->installInfo:Lc8/Anf;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lc8/Anf;->update(Lorg/json/JSONObject;)V

    .line 252
    :cond_9
    const-string/jumbo v20, "enableWhiteList"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lc8/Mnf;->updateEnableOutgoingWhiteList(I)V

    .line 254
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lc8/Mnf;->sendConfigResult(Landroid/content/Context;Z)V

    .line 256
    const-string/jumbo v20, "AlibcBlackList"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "update end "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v22

    sub-long v22, v22, v14

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public updateEnableOutgoingWhiteList(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 413
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lc8/Mnf;->enableOutgoingWhiteList:Z

    .line 414
    return-void

    .line 413
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
