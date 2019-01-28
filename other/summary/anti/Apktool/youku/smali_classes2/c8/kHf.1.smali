.class public Lc8/kHf;
.super Ljava/lang/Object;
.source "ImageInitBusinss.java"


# static fields
.field public static final ALI_CDN_DOMAIN:Ljava/lang/String; = "aliCdnDomain"

.field public static final APG_BUSINESS_WHITE_LIST:Ljava/lang/String; = "apgBizWhiteList"

.field public static final APG_IMAGE_DOMAIN:Ljava/lang/String; = "apgImageDomain"

.field public static final CDN_10000_HEIGHT:Ljava/lang/String; = "cdn10000Height"

.field public static final CDN_10000_WIDTH:Ljava/lang/String; = "cdn10000Width"

.field public static final CDN_IMAGE_SIZE:Ljava/lang/String; = "cdnImageSizes"

.field public static final CONVERT_EXCLUDE_PATH:Ljava/lang/String; = "domainConvertExcludePath"

.field public static final DOMAIN_DEST:Ljava/lang/String; = "domainDest"

.field public static final DOMAIN_SWITCH:Ljava/lang/String; = "domainSwitch"

.field public static final EXACT_EXCLUDE_DOMAIN:Ljava/lang/String; = "exactExcludeDomain"

.field public static final FUZZY_EXCLUDE_PATH:Ljava/lang/String; = "fuzzyExcludePath"

.field public static final GLOBAL_SWITCH:Ljava/lang/String; = "globalSwitch"

.field public static final IMAGE_CONFIG:Ljava/lang/String; = "android_image_strategy_config"

.field public static final IMAGE_STRATEGY:Ljava/lang/String; = "image_strategy"

.field public static final LEVEL_MODEL_SIZES:Ljava/lang/String; = "levelModelImageSizes"

.field public static final LEVEL_MODEL_XZSIZES:Ljava/lang/String; = "levelModelXZImageSizes"

.field public static final LEVEL_RATIO:Ljava/lang/String; = "levelRatio"

.field public static final MODULES:Ljava/lang/String; = "modules"

.field public static final OSS_CDN_DOMAIN:Ljava/lang/String; = "ossCdnDomain"

.field public static final OSS_FUZZY_EXCLUDE:Ljava/lang/String; = "ossFuzzyExclude"

.field public static final STRICT_ALI_CDN_DOMAIN:Ljava/lang/String; = "strictCDNDomainWL"

.field public static final STRICT_CONVERT_EXCLUDE_PATH:Ljava/lang/String; = "strictDomainConvertBL"

.field public static final STRICT_EXACT_EXCLUDE_DOMAIN:Ljava/lang/String; = "strictExactDomainBL"

.field public static final XZ_CDN_IMAGE_SIZE:Ljava/lang/String; = "xzcdnImageSizes"

.field private static defaultConfig:Ljava/util/HashMap;
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

.field private static sInstance:Lc8/kHf;


# instance fields
.field private mImageExtendedSupport:Lc8/iHf;

.field private mStrategySupport:Lc8/jHf;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    sput-object v0, Lc8/kHf;->defaultConfig:Ljava/util/HashMap;

    const-string/jumbo v1, "globalSwitch"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lc8/kHf;->defaultConfig:Ljava/util/HashMap;

    const-string/jumbo v1, "domainSwitch"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lc8/kHf;->defaultConfig:Ljava/util/HashMap;

    const-string/jumbo v1, "modules"

    const-string/jumbo v2, "default,search,detail,shop,weitao,weapp,weappsharpen,bala,home,tbchannel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lc8/kHf;->defaultConfig:Ljava/util/HashMap;

    const-string/jumbo v1, "default"

    const-string/jumbo v2, "{ \"highNetQ\": \"q90\", \"lowNetQ\": \"q75\", \"highNetSharpen\": \"\", \"lowNetSharpen\": \"\", \"highNetScale\": \"1\", \"lowNetScale\": \"1\", \"useWebP\": 1 }"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lc8/kHf;->defaultConfig:Ljava/util/HashMap;

    const-string/jumbo v1, "search"

    const-string/jumbo v2, "{ \"highNetQ\": \"q90\", \"lowNetQ\": \"q50\", \"highNetSharpen\": \"\", \"lowNetSharpen\": \"s150\", \"highNetScale\": \"1\", \"lowNetScale\": \"1\", \"useWebP\": 1 }"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lc8/kHf;->defaultConfig:Ljava/util/HashMap;

    const-string/jumbo v1, "detail"

    const-string/jumbo v2, "{ \"highNetQ\": \"q90\", \"lowNetQ\": \"q50\", \"highNetSharpen\": \"\", \"lowNetSharpen\": \"s150\", \"highNetScale\": \"1\", \"lowNetScale\": \"1\", \"useWebP\": 1 }"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lc8/kHf;->defaultConfig:Ljava/util/HashMap;

    const-string/jumbo v1, "shop"

    const-string/jumbo v2, "{ \"highNetQ\": \"q75\", \"lowNetQ\": \"q50\", \"highNetSharpen\": \"s150\", \"lowNetSharpen\": \"s150\", \"highNetScale\": \"1\", \"lowNetScale\": \"1\", \"useWebP\": 1 }"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lc8/kHf;->defaultConfig:Ljava/util/HashMap;

    const-string/jumbo v1, "weitao"

    const-string/jumbo v2, "{ \"highNetQ\": \"q90\", \"lowNetQ\": \"q75\", \"highNetSharpen\": \"s110\", \"lowNetSharpen\": \"s110\", \"highNetScale\": \"1\", \"lowNetScale\": \"1\", \"useWebP\": 1 }"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lc8/kHf;->defaultConfig:Ljava/util/HashMap;

    const-string/jumbo v1, "weapp"

    const-string/jumbo v2, "{ \"highNetQ\": \"q90\", \"lowNetQ\": \"q50\", \"highNetSharpen\": \"\", \"lowNetSharpen\": \"\", \"highNetScale\": \"1\", \"lowNetScale\": \"1\", \"useWebP\": 1 }"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lc8/kHf;->defaultConfig:Ljava/util/HashMap;

    const-string/jumbo v1, "weappsharpen"

    const-string/jumbo v2, "{ \"highNetQ\": \"q75\", \"lowNetQ\": \"q50\", \"highNetSharpen\": \"s150\", \"lowNetSharpen\": \"s150\", \"highNetScale\": \"1\", \"lowNetScale\": \"1\", \"useWebP\": 1 }"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lc8/kHf;->defaultConfig:Ljava/util/HashMap;

    const-string/jumbo v1, "bala"

    const-string/jumbo v2, "{ \"highNetQ\": \"q90\", \"lowNetQ\": \"q50\", \"highNetSharpen\": \"\", \"lowNetSharpen\": \"s150\", \"highNetScale\": \"1\", \"lowNetScale\": \"1\", \"useWebP\": 1 }"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lc8/kHf;->defaultConfig:Ljava/util/HashMap;

    const-string/jumbo v1, "home"

    const-string/jumbo v2, "{ \"highNetQ\": \"q90\", \"lowNetQ\": \"q50\", \"highNetSharpen\": \"\", \"lowNetSharpen\": \"\", \"highNetScale\": \"1\", \"lowNetScale\": \"1\", \"useWebP\": 1 }"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lc8/kHf;->defaultConfig:Ljava/util/HashMap;

    const-string/jumbo v1, "tbchannel"

    const-string/jumbo v2, "{ \"highNetQ\": \"q50\", \"lowNetQ\": \"q30\", \"highNetSharpen\": \"s150\", \"lowNetSharpen\": \"s150\", \"highNetScale\": \"1\", \"lowNetScale\": \"1\", \"useWebP\": 1 }"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const/4 v0, 0x0

    sput-object v0, Lc8/kHf;->sInstance:Lc8/kHf;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lc8/jHf;)V
    .locals 5
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "strategySupport"    # Lc8/jHf;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p2, p0, Lc8/kHf;->mStrategySupport:Lc8/jHf;

    .line 109
    invoke-static {}, Lc8/HNf;->getInstance()Lc8/HNf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/HNf;->initDip(Landroid/content/Context;)V

    .line 110
    const-string/jumbo v0, "STRATEGY.ALL"

    const-string/jumbo v1, "construct ImageInitBusinss with IImageStrategySupport(webp support:%b)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lc8/kHf;->mStrategySupport:Lc8/jHf;

    invoke-interface {v4}, Lc8/jHf;->isSupportWebP()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/oHf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method private ary2ServiceImageSwitchArr([Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10
    .param p1, "modules"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/ENf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 209
    .local v6, "serviceImageSwitchList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, p1

    if-ge v1, v7, :cond_1

    .line 210
    aget-object v5, p1, v1

    .line 211
    .local v5, "moduleName":Ljava/lang/String;
    iget-object v8, p0, Lc8/kHf;->mStrategySupport:Lc8/jHf;

    const-string/jumbo v9, "android_image_strategy_config"

    sget-object v7, Lc8/kHf;->defaultConfig:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v8, v9, v5, v7}, Lc8/jHf;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "moduleInfo":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 215
    const/4 v3, 0x0

    .line 217
    .local v3, "jo":Lcom/alibaba/fastjson/JSONObject;
    :try_start_0
    invoke-static {v4}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 221
    :goto_1
    if-eqz v3, :cond_0

    .line 225
    new-instance v2, Lc8/ENf;

    invoke-direct {v2}, Lc8/ENf;-><init>()V

    .line 226
    .local v2, "item":Lc8/ENf;
    invoke-virtual {v2, v5}, Lc8/ENf;->setAreaName(Ljava/lang/String;)V

    .line 227
    const-string/jumbo v7, "useWebP"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lc8/kHf;->str2Boolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v2, v7}, Lc8/ENf;->setUseWebp(Z)V

    .line 229
    const-string/jumbo v7, "highNetQ"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lc8/ENf;->setHighNetQ(Ljava/lang/String;)V

    .line 230
    const-string/jumbo v7, "lowNetQ"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lc8/ENf;->setLowNetQ(Ljava/lang/String;)V

    .line 232
    const-string/jumbo v7, "highNetSharpen"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lc8/ENf;->setHighNetSharpen(Ljava/lang/String;)V

    .line 233
    const-string/jumbo v7, "lowNetSharpen"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lc8/ENf;->setLowNetSharpen(Ljava/lang/String;)V

    .line 235
    const-string/jumbo v7, "highNetScale"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lc8/kHf;->str2Double(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lc8/ENf;->setHighNetScale(D)V

    .line 236
    const-string/jumbo v7, "lowNetScale"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lc8/kHf;->str2Double(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lc8/ENf;->setLowNetScale(D)V

    .line 238
    const-string/jumbo v7, "useCdnSizes"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lc8/kHf;->str2Boolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v2, v7}, Lc8/ENf;->useCdnSizes(Z)V

    .line 240
    invoke-virtual {v6, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .end local v2    # "item":Lc8/ENf;
    .end local v3    # "jo":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 218
    .restart local v3    # "jo":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "jo":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "moduleInfo":Ljava/lang/String;
    .end local v5    # "moduleName":Ljava/lang/String;
    :cond_1
    return-object v6
.end method

.method public static getInstance()Lc8/kHf;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lc8/kHf;->sInstance:Lc8/kHf;

    return-object v0
.end method

.method public static newInstance(Landroid/app/Application;Lc8/jHf;)Lc8/kHf;
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "strategySupport"    # Lc8/jHf;

    .prologue
    .line 97
    sget-object v0, Lc8/kHf;->sInstance:Lc8/kHf;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lc8/kHf;

    invoke-direct {v0, p0, p1}, Lc8/kHf;-><init>(Landroid/app/Application;Lc8/jHf;)V

    sput-object v0, Lc8/kHf;->sInstance:Lc8/kHf;

    .line 100
    :cond_0
    sget-object v0, Lc8/kHf;->sInstance:Lc8/kHf;

    return-object v0
.end method

.method public static setMinLogLevel(I)V
    .locals 0
    .param p0, "level"    # I

    .prologue
    .line 104
    invoke-static {p0}, Lc8/oHf;->setMinLogLevel(I)V

    .line 105
    return-void
.end method

.method private str2Boolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 266
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    :cond_0
    const/4 v0, 0x1

    .line 269
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private str2Double(Ljava/lang/String;)D
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 283
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 285
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0
.end method

.method private str2Number(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 275
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 277
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private string2IntArray(Ljava/lang/String;)[I
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 246
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 247
    const/4 v1, 0x0

    .line 255
    :cond_0
    return-object v1

    .line 249
    :cond_1
    const-string/jumbo v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "strArr":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [I

    .line 251
    .local v1, "intArr":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 252
    aget-object v3, v2, v0

    invoke-direct {p0, v3}, Lc8/kHf;->str2Number(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v0

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private string2StrArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 259
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const/4 v0, 0x0

    .line 262
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getImageExtendedSupport()Lc8/iHf;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lc8/kHf;->mImageExtendedSupport:Lc8/iHf;

    return-object v0
.end method

.method public getStrategySupport()Lc8/jHf;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lc8/kHf;->mStrategySupport:Lc8/jHf;

    return-object v0
.end method

.method public declared-synchronized notifyConfigsChange()V
    .locals 41
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/kHf;->mStrategySupport:Lc8/jHf;

    const-string/jumbo v3, "android_image_strategy_config"

    const-string/jumbo v4, "cdnImageSizes"

    const-string/jumbo v5, ""

    invoke-interface {v2, v3, v4, v5}, Lc8/jHf;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 131
    .local v25, "cdnImageSize":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/kHf;->mStrategySupport:Lc8/jHf;

    const-string/jumbo v3, "android_image_strategy_config"

    const-string/jumbo v4, "cdn10000Width"

    const-string/jumbo v5, ""

    invoke-interface {v2, v3, v4, v5}, Lc8/jHf;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 132
    .local v24, "cdn10000Width":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/kHf;->mStrategySupport:Lc8/jHf;

    const-string/jumbo v3, "android_image_strategy_config"

    const-string/jumbo v4, "cdn10000Height"

    const-string/jumbo v5, ""

    invoke-interface {v2, v3, v4, v5}, Lc8/jHf;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 133
    .local v23, "cdn10000Height":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/kHf;->mStrategySupport:Lc8/jHf;

    const-string/jumbo v3, "android_image_strategy_config"

    const-string/jumbo v4, "xzcdnImageSizes"

    const-string/jumbo v5, ""

    invoke-interface {v2, v3, v4, v5}, Lc8/jHf;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 134
    .local v40, "xzCdnSize":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/kHf;->mStrategySupport:Lc8/jHf;

    const-string/jumbo v3, "android_image_strategy_config"

    const-string/jumbo v4, "levelModelImageSizes"

    const-string/jumbo v5, ""

    invoke-interface {v2, v3, v4, v5}, Lc8/jHf;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 135
    .local v31, "levelModelSizes":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/kHf;->mStrategySupport:Lc8/jHf;

    const-string/jumbo v3, "android_image_strategy_config"

    const-string/jumbo v4, "levelModelXZImageSizes"

    const-string/jumbo v5, ""

    invoke-interface {v2, v3, v4, v5}, Lc8/jHf;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 136
    .local v32, "levelModelXzSizes":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/kHf;->mStrategySupport:Lc8/jHf;

    const-string/jumbo v3, "android_image_strategy_config"

    const-string/jumbo v4, "domainDest"

    const-string/jumbo v5, ""

    invoke-interface {v2, v3, v4, v5}, Lc8/jHf;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 137
    .local v10, "domainDest":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/kHf;->mStrategySupport:Lc8/jHf;

    const-string/jumbo v3, "android_image_strategy_config"

    const-string/jumbo v4, "aliCdnDomain"

    const-string/jumbo v5, ""

    invoke-interface {v2, v3, v4, v5}, Lc8/jHf;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 138
    .local v21, "aliCdnDomain":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/kHf;->mStrategySupport:Lc8/jHf;

    const-string/jumbo v3, "android_image_strategy_config"

    const-string/jumbo v4, "ossCdnDomain"

    const-string/jumbo v5, ""

    invoke-interface {v2, v3, v4, v5}, Lc8/jHf;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 139
    .local v35, "ossCdnDomain":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/kHf;->mStrategySupport:Lc8/jHf;

    const-string/jumbo v3, "android_image_strategy_config"

    const-string/jumbo v4, "exactExcludeDomain"

    const-string/jumbo v5, ""

    invoke-interface {v2, v3, v4, v5}, Lc8/jHf;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 140
    .local v28, "exactExcludePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/kHf;->mStrategySupport:Lc8/jHf;

    const-string/jumbo v3, "android_image_strategy_config"

    const-string/jumbo v4, "fuzzyExcludePath"

    const-string/jumbo v5, ""

    invoke-interface {v2, v3, v4, v5}, Lc8/jHf;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 141
    .local v29, "fuzzyExcludePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/kHf;->mStrategySupport:Lc8/jHf;

    const-string/jumbo v3, "android_image_strategy_config"

    const-string/jumbo v4, "ossFuzzyExclude"

    const-string/jumbo v5, ""

    invoke-interface {v2, v3, v4, v5}, Lc8/jHf;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 142
    .local v36, "ossFuzzyExcludes":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/kHf;->mStrategySupport:Lc8/jHf;

    const-string/jumbo v3, "android_image_strategy_config"

    const-string/jumbo v4, "domainConvertExcludePath"

    const-string/jumbo v5, ""

    invoke-interface {v2, v3, v4, v5}, Lc8/jHf;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 143
    .local v26, "convertExcludePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/kHf;->mStrategySupport:Lc8/jHf;

    const-string/jumbo v3, "android_image_strategy_config"

    const-string/jumbo v4, "levelRatio"

    const-string/jumbo v5, ""

    invoke-interface {v2, v3, v4, v5}, Lc8/jHf;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 144
    .local v19, "levelRatio":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/kHf;->mStrategySupport:Lc8/jHf;

    const-string/jumbo v4, "android_image_strategy_config"

    const-string/jumbo v5, "domainSwitch"

    sget-object v2, Lc8/kHf;->defaultConfig:Ljava/util/HashMap;

    const-string/jumbo v6, "domainSwitch"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v4, v5, v2}, Lc8/jHf;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 145
    .local v27, "domainSwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/kHf;->mStrategySupport:Lc8/jHf;

    const-string/jumbo v4, "android_image_strategy_config"

    const-string/jumbo v5, "globalSwitch"

    sget-object v2, Lc8/kHf;->defaultConfig:Ljava/util/HashMap;

    const-string/jumbo v6, "globalSwitch"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v4, v5, v2}, Lc8/jHf;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 146
    .local v30, "globalSwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/kHf;->mStrategySupport:Lc8/jHf;

    const-string/jumbo v3, "android_image_strategy_config"

    const-string/jumbo v4, "apgImageDomain"

    const-string/jumbo v5, ""

    invoke-interface {v2, v3, v4, v5}, Lc8/jHf;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 147
    .local v11, "apgDomainDest":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/kHf;->mStrategySupport:Lc8/jHf;

    const-string/jumbo v3, "android_image_strategy_config"

    const-string/jumbo v4, "apgBizWhiteList"

    const-string/jumbo v5, ""

    invoke-interface {v2, v3, v4, v5}, Lc8/jHf;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 148
    .local v22, "apgBizWhiteList":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/kHf;->mStrategySupport:Lc8/jHf;

    const-string/jumbo v4, "android_image_strategy_config"

    const-string/jumbo v5, "modules"

    sget-object v2, Lc8/kHf;->defaultConfig:Ljava/util/HashMap;

    const-string/jumbo v6, "modules"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v4, v5, v2}, Lc8/jHf;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 150
    .local v34, "modules":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/kHf;->mStrategySupport:Lc8/jHf;

    const-string/jumbo v3, "android_image_strategy_config"

    const-string/jumbo v4, "strictCDNDomainWL"

    const-string/jumbo v5, ""

    invoke-interface {v2, v3, v4, v5}, Lc8/jHf;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 151
    .local v37, "strictCDNDomainWhiteList":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/kHf;->mStrategySupport:Lc8/jHf;

    const-string/jumbo v3, "android_image_strategy_config"

    const-string/jumbo v4, "strictExactDomainBL"

    const-string/jumbo v5, ""

    invoke-interface {v2, v3, v4, v5}, Lc8/jHf;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 152
    .local v39, "strictExactDomainBlackList":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/kHf;->mStrategySupport:Lc8/jHf;

    const-string/jumbo v3, "android_image_strategy_config"

    const-string/jumbo v4, "strictDomainConvertBL"

    const-string/jumbo v5, ""

    invoke-interface {v2, v3, v4, v5}, Lc8/jHf;->getConfigString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 153
    .local v38, "strictDomainConvertBlackList":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lc8/kHf;->string2StrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    .line 155
    .local v33, "moduleAry":[Ljava/lang/String;
    invoke-static {}, Lc8/HNf;->getInstance()Lc8/HNf;

    move-result-object v2

    .line 156
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lc8/kHf;->string2IntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 157
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lc8/kHf;->string2IntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 158
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lc8/kHf;->string2IntArray(Ljava/lang/String;)[I

    move-result-object v5

    .line 159
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lc8/kHf;->string2IntArray(Ljava/lang/String;)[I

    move-result-object v6

    .line 160
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lc8/kHf;->string2IntArray(Ljava/lang/String;)[I

    move-result-object v7

    .line 161
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lc8/kHf;->string2IntArray(Ljava/lang/String;)[I

    move-result-object v8

    .line 162
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lc8/kHf;->ary2ServiceImageSwitchArr([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v9

    .line 165
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lc8/kHf;->string2IntArray(Ljava/lang/String;)[I

    move-result-object v12

    .line 166
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lc8/kHf;->string2StrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 167
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lc8/kHf;->string2StrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 168
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lc8/kHf;->string2StrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 169
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lc8/kHf;->string2StrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 170
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lc8/kHf;->str2Boolean(Ljava/lang/String;)Z

    move-result v17

    .line 171
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lc8/kHf;->str2Boolean(Ljava/lang/String;)Z

    move-result v18

    const/16 v20, 0x1

    .line 155
    invoke-virtual/range {v2 .. v20}, Lc8/HNf;->initImageUrlStrategy([I[I[I[I[I[ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;[I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZLjava/lang/String;Z)V

    .line 174
    invoke-static {}, Lc8/yNf;->getInstance()Lc8/yNf;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lc8/kHf;->string2StrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lc8/kHf;->string2StrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lc8/yNf;->setupConfigs([Ljava/lang/String;[Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lc8/HNf;->getInstance()Lc8/HNf;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lc8/kHf;->string2StrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/HNf;->updateStrictCDNDomainWhiteList([Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lc8/HNf;->getInstance()Lc8/HNf;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lc8/kHf;->string2StrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/HNf;->updateStrictCDNDomainBlackList([Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lc8/HNf;->getInstance()Lc8/HNf;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lc8/kHf;->string2StrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/HNf;->updateStrictConvergenceBlackList([Ljava/lang/String;)V

    .line 178
    const-string/jumbo v2, "STRATEGY.ALL"

    const-string/jumbo v3, "orange notify(%s) update\ncdnImageSize:%s\ncdn10000Width:%s\ncdn10000Height:%s\nxzCdnSize:%s\nlevelModelSizes:%s\nlevelModelXzSizes:%s\ndomainDest:%s\napgDomain:%s\napgBizWL:%s\ndomainSwitch:%s\nglobalSwitch:%s\naliCdnDomain:%s\nexactExcludePath:%s\nfuzzyExcludePath:%s\nconvertExcludePath:%s\nmodules:%s\nlevelRatio:%s\nossCdnDomains:%s\nossFuzzyExcludes:%s\nstrictCDNDomainWL:%s\nstrictExactDomainBL:%s\nstrictDomainConvertBL:%s"

    const/16 v4, 0x17

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "android_image_strategy_config"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v25, v4, v5

    const/4 v5, 0x2

    aput-object v24, v4, v5

    const/4 v5, 0x3

    aput-object v23, v4, v5

    const/4 v5, 0x4

    aput-object v40, v4, v5

    const/4 v5, 0x5

    aput-object v31, v4, v5

    const/4 v5, 0x6

    aput-object v32, v4, v5

    const/4 v5, 0x7

    aput-object v10, v4, v5

    const/16 v5, 0x8

    aput-object v11, v4, v5

    const/16 v5, 0x9

    aput-object v22, v4, v5

    const/16 v5, 0xa

    aput-object v27, v4, v5

    const/16 v5, 0xb

    aput-object v30, v4, v5

    const/16 v5, 0xc

    aput-object v21, v4, v5

    const/16 v5, 0xd

    aput-object v28, v4, v5

    const/16 v5, 0xe

    aput-object v29, v4, v5

    const/16 v5, 0xf

    aput-object v26, v4, v5

    const/16 v5, 0x10

    aput-object v34, v4, v5

    const/16 v5, 0x11

    aput-object v19, v4, v5

    const/16 v5, 0x12

    aput-object v35, v4, v5

    const/16 v5, 0x13

    aput-object v36, v4, v5

    const/16 v5, 0x14

    aput-object v37, v4, v5

    const/16 v5, 0x15

    aput-object v39, v4, v5

    const/16 v5, 0x16

    aput-object v38, v4, v5

    invoke-static {v2, v3, v4}, Lc8/oHf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    .line 130
    .end local v10    # "domainDest":Ljava/lang/String;
    .end local v11    # "apgDomainDest":Ljava/lang/String;
    .end local v19    # "levelRatio":Ljava/lang/String;
    .end local v21    # "aliCdnDomain":Ljava/lang/String;
    .end local v22    # "apgBizWhiteList":Ljava/lang/String;
    .end local v23    # "cdn10000Height":Ljava/lang/String;
    .end local v24    # "cdn10000Width":Ljava/lang/String;
    .end local v25    # "cdnImageSize":Ljava/lang/String;
    .end local v26    # "convertExcludePath":Ljava/lang/String;
    .end local v27    # "domainSwitch":Ljava/lang/String;
    .end local v28    # "exactExcludePath":Ljava/lang/String;
    .end local v29    # "fuzzyExcludePath":Ljava/lang/String;
    .end local v30    # "globalSwitch":Ljava/lang/String;
    .end local v31    # "levelModelSizes":Ljava/lang/String;
    .end local v32    # "levelModelXzSizes":Ljava/lang/String;
    .end local v33    # "moduleAry":[Ljava/lang/String;
    .end local v34    # "modules":Ljava/lang/String;
    .end local v35    # "ossCdnDomain":Ljava/lang/String;
    .end local v36    # "ossFuzzyExcludes":Ljava/lang/String;
    .end local v37    # "strictCDNDomainWhiteList":Ljava/lang/String;
    .end local v38    # "strictDomainConvertBlackList":Ljava/lang/String;
    .end local v39    # "strictExactDomainBlackList":Ljava/lang/String;
    .end local v40    # "xzCdnSize":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setImageExtendedSupport(Lc8/iHf;)V
    .locals 0
    .param p1, "extendedSupport"    # Lc8/iHf;

    .prologue
    .line 114
    iput-object p1, p0, Lc8/kHf;->mImageExtendedSupport:Lc8/iHf;

    .line 115
    return-void
.end method
