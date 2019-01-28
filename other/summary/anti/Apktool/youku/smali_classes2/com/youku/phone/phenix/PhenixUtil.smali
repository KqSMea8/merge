.class public final enum Lcom/youku/phone/phenix/PhenixUtil;
.super Ljava/lang/Enum;
.source "PhenixUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/phone/phenix/PhenixUtil$MyLinkedHashMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/phone/phenix/PhenixUtil;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/phone/phenix/PhenixUtil;

.field public static final TAG:Ljava/lang/String;

.field public static final TRUE:Ljava/lang/String; = "1"

.field public static final enum getInstance:Lcom/youku/phone/phenix/PhenixUtil;


# instance fields
.field private cacheKeyCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private domainPattern:Ljava/util/regex/Pattern;

.field private finalUrlCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private freeDataUrlStrategy:Lc8/ozk;

.field private isWifi:Z

.field private webpUrlStrategy:Lc8/rzk;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/youku/phone/phenix/PhenixUtil;

    const-string/jumbo v1, "getInstance"

    invoke-direct {v0, v1, v2}, Lcom/youku/phone/phenix/PhenixUtil;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/phenix/PhenixUtil;->getInstance:Lcom/youku/phone/phenix/PhenixUtil;

    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/youku/phone/phenix/PhenixUtil;

    sget-object v1, Lcom/youku/phone/phenix/PhenixUtil;->getInstance:Lcom/youku/phone/phenix/PhenixUtil;

    aput-object v1, v0, v2

    sput-object v0, Lcom/youku/phone/phenix/PhenixUtil;->$VALUES:[Lcom/youku/phone/phenix/PhenixUtil;

    .line 22
    const-class v0, Lcom/youku/phone/phenix/PhenixUtil;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/phenix/PhenixUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    const-string/jumbo v0, "[^//]*?\\.(com|cn|net|org|biz|info|cc|tv)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/phenix/PhenixUtil;->domainPattern:Ljava/util/regex/Pattern;

    .line 30
    new-instance v0, Lc8/ozk;

    invoke-direct {v0}, Lc8/ozk;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/phenix/PhenixUtil;->freeDataUrlStrategy:Lc8/ozk;

    .line 32
    new-instance v0, Lc8/rzk;

    invoke-direct {v0}, Lc8/rzk;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/phenix/PhenixUtil;->webpUrlStrategy:Lc8/rzk;

    .line 36
    new-instance v0, Lcom/youku/phone/phenix/PhenixUtil$MyLinkedHashMap;

    invoke-direct {v0}, Lcom/youku/phone/phenix/PhenixUtil$MyLinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/phenix/PhenixUtil;->finalUrlCache:Ljava/util/LinkedHashMap;

    .line 37
    new-instance v0, Lcom/youku/phone/phenix/PhenixUtil$MyLinkedHashMap;

    invoke-direct {v0}, Lcom/youku/phone/phenix/PhenixUtil$MyLinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/phenix/PhenixUtil;->cacheKeyCache:Ljava/util/LinkedHashMap;

    .line 39
    return-void
.end method

.method public static synthetic access$000(Lcom/youku/phone/phenix/PhenixUtil;)Lc8/rzk;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/phenix/PhenixUtil;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/youku/phone/phenix/PhenixUtil;->webpUrlStrategy:Lc8/rzk;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/youku/phone/phenix/PhenixUtil;)Lc8/ozk;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/phenix/PhenixUtil;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/youku/phone/phenix/PhenixUtil;->freeDataUrlStrategy:Lc8/ozk;

    return-object v0
.end method

.method public static synthetic access$202(Lcom/youku/phone/phenix/PhenixUtil;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/phenix/PhenixUtil;
    .param p1, "x1"    # Z
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/youku/phone/phenix/PhenixUtil;->isWifi:Z

    return p1
.end method

.method private registerOrangeListener()V
    .locals 4

    .prologue
    .line 59
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "free_image"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "webp_image"

    aput-object v3, v1, v2

    new-instance v2, Lc8/pzk;

    invoke-direct {v2, p0}, Lc8/pzk;-><init>(Lcom/youku/phone/phenix/PhenixUtil;)V

    invoke-virtual {v0, v1, v2}, Lc8/ctf;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 69
    return-void
.end method

.method private registerWIFIListener(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    new-instance v1, Lc8/qzk;

    invoke-direct {v1, p0}, Lc8/qzk;-><init>(Lcom/youku/phone/phenix/PhenixUtil;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/phone/phenix/PhenixUtil;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/youku/phone/phenix/PhenixUtil;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/phone/phenix/PhenixUtil;

    return-object v0
.end method

.method public static values()[Lcom/youku/phone/phenix/PhenixUtil;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/youku/phone/phenix/PhenixUtil;->$VALUES:[Lcom/youku/phone/phenix/PhenixUtil;

    invoke-virtual {v0}, [Lcom/youku/phone/phenix/PhenixUtil;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/phone/phenix/PhenixUtil;

    return-object v0
.end method


# virtual methods
.method public getCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "suggestKey"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/youku/phone/phenix/PhenixUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-ck"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "> \u5f00\u59cb\u83b7\u53d6\u7f13\u5b58key\uff0c\u539f\u59cbPhenix\u7684key\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iget-object v1, p0, Lcom/youku/phone/phenix/PhenixUtil;->cacheKeyCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    .local v0, "cacheKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/youku/phone/phenix/PhenixUtil;->freeDataUrlStrategy:Lc8/ozk;

    invoke-virtual {v1, p1}, Lc8/ozk;->modifyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/youku/phone/phenix/PhenixUtil;->cacheKeyCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/youku/phone/phenix/PhenixUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-ck"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "> CacheKey\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/youku/phone/phenix/PhenixUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-ck"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " "

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    return-object v0
.end method

.method public getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 116
    sget-object v2, Lcom/youku/phone/phenix/PhenixUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u622a\u53d6\u57df\u540d\u90e8\u5206\uff0c\u539f\u59cburl\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/youku/phone/phenix/PhenixUtil;->domainPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 123
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 130
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :goto_0
    return-object v2

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public getFinalImageUrl(Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p1, "initialUrl"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 138
    sget-object v1, Lcom/youku/phone/phenix/PhenixUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "====== \u5f00\u59cb\u83b7\u53d6\u6700\u7ec8\u7684\u56fe\u7247url\uff0c\u539f\u59cb\u56fe\u7247url\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object v1, p0, Lcom/youku/phone/phenix/PhenixUtil;->finalUrlCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    .local v0, "finalUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/youku/phone/phenix/PhenixUtil;->webpUrlStrategy:Lc8/rzk;

    invoke-virtual {v1, p1, p2, p3}, Lc8/rzk;->modifyUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-boolean v1, p0, Lcom/youku/phone/phenix/PhenixUtil;->isWifi:Z

    if-eqz v1, :cond_1

    .line 145
    sget-object v1, Lcom/youku/phone/phenix/PhenixUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "\u5f53\u524d\u4e3awifi\u72b6\u6001\uff0c\u4e0d\u6267\u884c\u514d\u6d41url\u7b56\u7565"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/youku/phone/phenix/PhenixUtil;->finalUrlCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_0
    sget-object v1, Lcom/youku/phone/phenix/PhenixUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "====== \u6700\u7ec8\u4f7f\u7528url\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    sget-object v1, Lcom/youku/phone/phenix/PhenixUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v2, " "

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    return-object v0

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/youku/phone/phenix/PhenixUtil;->freeDataUrlStrategy:Lc8/ozk;

    invoke-virtual {v1, v0}, Lc8/ozk;->modifyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 47
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 48
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 49
    .local v1, "networkINfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_1

    :goto_0
    iput-boolean v2, p0, Lcom/youku/phone/phenix/PhenixUtil;->isWifi:Z

    .line 53
    :cond_0
    invoke-direct {p0, p1}, Lcom/youku/phone/phenix/PhenixUtil;->registerWIFIListener(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0}, Lcom/youku/phone/phenix/PhenixUtil;->registerOrangeListener()V

    .line 56
    return-void

    .line 50
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isCustomCacheKey()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/youku/phone/phenix/PhenixUtil;->freeDataUrlStrategy:Lc8/ozk;

    invoke-virtual {v0}, Lc8/ozk;->isCustomCacheKey()Z

    move-result v0

    return v0
.end method
