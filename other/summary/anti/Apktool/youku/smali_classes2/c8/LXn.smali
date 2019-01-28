.class public Lc8/LXn;
.super Ljava/lang/Object;
.source "GetUps.java"


# static fields
.field public static final API_NAME_DEFAULT:Ljava/lang/String; = "mtop.youku.play.ups.appinfo.get"

.field public static final API_VERSION_DEFAULT:Ljava/lang/String; = "1.1"

.field public static final DEFAULT:I = 0x1

.field public static final HOST_DEFAULT:Ljava/lang/String; = "http://ups.youku.com"

.field public static final HTTP:I = 0x2

.field public static final MTOP:I = 0x3

.field public static final NEED_ECODE_DEFAULT:Z = true

.field public static final TAG:Ljava/lang/String;

.field public static final UPS_PATH:Ljava/lang/String; = "/ups/get.json?"

.field private static adEncodeParam:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mWorker:Ljava/util/concurrent/ExecutorService;


# instance fields
.field protected final CONNECT_TIMEOUT:I

.field private GetInfoRunnable:Ljava/lang/Runnable;

.field protected final READ_TIMEOUT:I

.field private chainParam:Lc8/rPg;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private host:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private mAdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mApiName:Ljava/lang/String;

.field private mApiVersion:Ljava/lang/String;

.field private mCallBack:Lc8/MXn;

.field public mHost:Ljava/lang/String;

.field private mNeedEcode:Z

.field private mNetwork:Lc8/LYn;

.field private mPlayVideoInfo:Lc8/MYn;

.field protected networkTask:Lc8/KYn;

.field private request:Lc8/TXn;

.field private upsType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lc8/LXn;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/LXn;->TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/youku/upsplayer/GetUps$1;

    invoke-direct {v0}, Lcom/youku/upsplayer/GetUps$1;-><init>()V

    sput-object v0, Lc8/LXn;->adEncodeParam:Ljava/util/Set;

    .line 96
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lc8/LXn;->mWorker:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc8/KYn;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkTask"    # Lc8/KYn;

    .prologue
    const/16 v3, 0x3a98

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string/jumbo v0, "mtop.youku.play.ups.appinfo.get"

    iput-object v0, p0, Lc8/LXn;->mApiName:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "1.1"

    iput-object v0, p0, Lc8/LXn;->mApiVersion:Ljava/lang/String;

    .line 69
    iput-boolean v2, p0, Lc8/LXn;->mNeedEcode:Z

    .line 70
    const-string/jumbo v0, "http://ups.youku.com"

    iput-object v0, p0, Lc8/LXn;->mHost:Ljava/lang/String;

    .line 72
    iput v3, p0, Lc8/LXn;->CONNECT_TIMEOUT:I

    .line 73
    iput v3, p0, Lc8/LXn;->READ_TIMEOUT:I

    .line 79
    iput-object v1, p0, Lc8/LXn;->networkTask:Lc8/KYn;

    .line 89
    iput v2, p0, Lc8/LXn;->upsType:I

    .line 91
    iput-object v1, p0, Lc8/LXn;->context:Landroid/content/Context;

    .line 92
    iput-object v1, p0, Lc8/LXn;->request:Lc8/TXn;

    .line 384
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/LXn;->handler:Landroid/os/Handler;

    .line 437
    new-instance v0, Lc8/KXn;

    invoke-direct {v0, p0}, Lc8/KXn;-><init>(Lc8/LXn;)V

    iput-object v0, p0, Lc8/LXn;->GetInfoRunnable:Ljava/lang/Runnable;

    .line 104
    iput-object p2, p0, Lc8/LXn;->networkTask:Lc8/KYn;

    .line 105
    iput-object p1, p0, Lc8/LXn;->context:Landroid/content/Context;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lc8/LXn;)Lc8/TXn;
    .locals 1
    .param p0, "x0"    # Lc8/LXn;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/LXn;->request:Lc8/TXn;

    return-object v0
.end method

.method static synthetic access$100(Lc8/LXn;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/LXn;

    .prologue
    .line 41
    invoke-direct {p0}, Lc8/LXn;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lc8/LXn;)Lc8/SXn;
    .locals 1
    .param p0, "x0"    # Lc8/LXn;

    .prologue
    .line 41
    invoke-direct {p0}, Lc8/LXn;->getMTopUpsResquest()Lc8/SXn;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lc8/LXn;)I
    .locals 1
    .param p0, "x0"    # Lc8/LXn;

    .prologue
    .line 41
    iget v0, p0, Lc8/LXn;->upsType:I

    return v0
.end method

.method static synthetic access$400(Lc8/LXn;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/LXn;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/LXn;->host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lc8/LXn;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/LXn;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/LXn;->ip:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lc8/LXn;)Lc8/LYn;
    .locals 1
    .param p0, "x0"    # Lc8/LXn;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/LXn;->mNetwork:Lc8/LYn;

    return-object v0
.end method

.method static synthetic access$700(Lc8/LXn;)Lc8/MXn;
    .locals 1
    .param p0, "x0"    # Lc8/LXn;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/LXn;->mCallBack:Lc8/MXn;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lc8/LXn;->mWorker:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private addParam(Ljava/lang/StringBuilder;Lc8/MYn;Lc8/rPg;)V
    .locals 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "playInfo"    # Lc8/MYn;
    .param p3, "chain"    # Lc8/rPg;

    .prologue
    .line 234
    invoke-direct {p0, p3}, Lc8/LXn;->getCkey(Lc8/rPg;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "loocalkey":Ljava/lang/String;
    iget-object v0, p2, Lc8/MYn;->ckey:Ljava/lang/String;

    .line 237
    .local v0, "ckey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 238
    move-object v0, v1

    .line 240
    :cond_0
    const-string/jumbo v2, "ckey"

    invoke-direct {p0, p1, v2, v0}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v2, p0, Lc8/LXn;->request:Lc8/TXn;

    iput-object v0, v2, Lc8/TXn;->ckey:Ljava/lang/String;

    .line 243
    const-string/jumbo v2, "client_ip"

    iget-object v3, p2, Lc8/MYn;->client_ip:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string/jumbo v2, "client_ts"

    iget-object v3, p2, Lc8/MYn;->client_ts:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string/jumbo v2, "utid"

    iget-object v3, p2, Lc8/MYn;->utid:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lc8/LXn;->request:Lc8/TXn;

    iget-object v3, p2, Lc8/MYn;->utid:Ljava/lang/String;

    iput-object v3, v2, Lc8/TXn;->utid:Ljava/lang/String;

    .line 247
    const-string/jumbo v2, "vid"

    iget-object v3, p2, Lc8/MYn;->vid:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v2, p0, Lc8/LXn;->request:Lc8/TXn;

    iget-object v3, p2, Lc8/MYn;->vid:Ljava/lang/String;

    iput-object v3, v2, Lc8/TXn;->vid:Ljava/lang/String;

    .line 249
    const-string/jumbo v2, "ccode"

    iget-object v3, p2, Lc8/MYn;->ccode:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v2, p0, Lc8/LXn;->request:Lc8/TXn;

    iget-object v3, p2, Lc8/MYn;->ccode:Ljava/lang/String;

    iput-object v3, v2, Lc8/TXn;->ccode:Ljava/lang/String;

    .line 253
    const-string/jumbo v2, "showid"

    iget-object v3, p2, Lc8/MYn;->showid:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string/jumbo v2, "show_videoseq"

    iget-object v3, p2, Lc8/MYn;->show_videoseq:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string/jumbo v2, "playlist_id"

    iget-object v3, p2, Lc8/MYn;->playlist_id:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string/jumbo v2, "playlist_videoseq"

    iget-object v3, p2, Lc8/MYn;->playlist_videoseq:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string/jumbo v2, "h265"

    iget-object v3, p2, Lc8/MYn;->h265:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string/jumbo v2, "point"

    iget-object v3, p2, Lc8/MYn;->point:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string/jumbo v2, "language"

    iget-object v3, p2, Lc8/MYn;->language:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string/jumbo v2, "audiolang"

    iget-object v3, p2, Lc8/MYn;->audiolang:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string/jumbo v2, "media_type"

    iget-object v3, p2, Lc8/MYn;->media_type:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string/jumbo v2, "password"

    iget-object v3, p2, Lc8/MYn;->password:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string/jumbo v2, "client_id"

    iget-object v3, p2, Lc8/MYn;->client_id:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v2, p0, Lc8/LXn;->request:Lc8/TXn;

    iget-object v3, p2, Lc8/MYn;->client_id:Ljava/lang/String;

    iput-object v3, v2, Lc8/TXn;->clientid:Ljava/lang/String;

    .line 265
    iget-object v2, p2, Lc8/MYn;->local_vid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 266
    const-string/jumbo v2, "local_vid"

    iget-object v3, p2, Lc8/MYn;->local_vid:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_1
    iget-object v2, p2, Lc8/MYn;->local_time:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 268
    const-string/jumbo v2, "local_time"

    iget-object v3, p2, Lc8/MYn;->local_time:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_2
    iget-object v2, p2, Lc8/MYn;->local_point:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 270
    const-string/jumbo v2, "local_point"

    iget-object v3, p2, Lc8/MYn;->local_point:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_3
    iget-object v2, p2, Lc8/MYn;->yktk:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 273
    const-string/jumbo v2, "yktk"

    iget-object v3, p2, Lc8/MYn;->yktk:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_4
    iget-object v2, p2, Lc8/MYn;->stoken:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 276
    const-string/jumbo v2, "stoken"

    iget-object v3, p2, Lc8/MYn;->stoken:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_5
    iget-object v2, p2, Lc8/MYn;->ptoken:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 279
    const-string/jumbo v2, "ptoken"

    iget-object v3, p2, Lc8/MYn;->ptoken:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_6
    iget-object v2, p2, Lc8/MYn;->src:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 282
    const-string/jumbo v2, "src"

    iget-object v3, p2, Lc8/MYn;->src:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_7
    iget-object v2, p2, Lc8/MYn;->tq:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 285
    const-string/jumbo v2, "tq"

    iget-object v3, p2, Lc8/MYn;->tq:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_8
    const-string/jumbo v2, "mac"

    iget-object v3, p2, Lc8/MYn;->mac:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string/jumbo v2, "network"

    iget-object v3, p2, Lc8/MYn;->network:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string/jumbo v2, "brand"

    iget-object v3, p2, Lc8/MYn;->brand:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string/jumbo v2, "os_ver"

    iget-object v3, p2, Lc8/MYn;->os_ver:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string/jumbo v2, "app_ver"

    iget-object v3, p2, Lc8/MYn;->app_ver:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method private addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 390
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 392
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    :cond_0
    const-string/jumbo v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    :cond_1
    return-void
.end method

.method private constructParams(Lc8/SXn;Lc8/MYn;)V
    .locals 5
    .param p1, "mTopUpsRequest"    # Lc8/SXn;
    .param p2, "playInfo"    # Lc8/MYn;

    .prologue
    .line 308
    iget-object v1, p1, Lc8/SXn;->stealParamsMap:Ljava/util/Map;

    const-string/jumbo v2, "ckey"

    iget-object v3, p0, Lc8/LXn;->request:Lc8/TXn;

    iget-object v3, v3, Lc8/TXn;->ckey:Ljava/lang/String;

    invoke-static {v3}, Lc8/PYn;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v1, p1, Lc8/SXn;->stealParamsMap:Ljava/util/Map;

    const-string/jumbo v2, "client_ip"

    iget-object v3, p2, Lc8/MYn;->client_ip:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v1, p1, Lc8/SXn;->stealParamsMap:Ljava/util/Map;

    const-string/jumbo v2, "client_ts"

    iget-object v3, p2, Lc8/MYn;->client_ts:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v1, p1, Lc8/SXn;->stealParamsMap:Ljava/util/Map;

    const-string/jumbo v2, "utid"

    iget-object v3, p2, Lc8/MYn;->utid:Ljava/lang/String;

    invoke-static {v3}, Lc8/PYn;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v1, p1, Lc8/SXn;->stealParamsMap:Ljava/util/Map;

    const-string/jumbo v2, "vid"

    iget-object v3, p2, Lc8/MYn;->vid:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v1, p1, Lc8/SXn;->stealParamsMap:Ljava/util/Map;

    const-string/jumbo v2, "ccode"

    iget-object v3, p2, Lc8/MYn;->ccode:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v1, p1, Lc8/SXn;->bizParamsMap:Ljava/util/Map;

    const-string/jumbo v2, "showid"

    iget-object v3, p2, Lc8/MYn;->showid:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v1, p1, Lc8/SXn;->bizParamsMap:Ljava/util/Map;

    const-string/jumbo v2, "show_videoseq"

    iget-object v3, p2, Lc8/MYn;->show_videoseq:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v1, p1, Lc8/SXn;->bizParamsMap:Ljava/util/Map;

    const-string/jumbo v2, "playlist_id"

    iget-object v3, p2, Lc8/MYn;->playlist_id:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v1, p1, Lc8/SXn;->bizParamsMap:Ljava/util/Map;

    const-string/jumbo v2, "playlist_videoseq"

    iget-object v3, p2, Lc8/MYn;->playlist_videoseq:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v1, p1, Lc8/SXn;->bizParamsMap:Ljava/util/Map;

    const-string/jumbo v2, "h265"

    iget-object v3, p2, Lc8/MYn;->h265:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v1, p1, Lc8/SXn;->bizParamsMap:Ljava/util/Map;

    const-string/jumbo v2, "point"

    iget-object v3, p2, Lc8/MYn;->point:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v1, p1, Lc8/SXn;->bizParamsMap:Ljava/util/Map;

    const-string/jumbo v2, "language"

    iget-object v3, p2, Lc8/MYn;->language:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v1, p2, Lc8/MYn;->local_vid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    iget-object v1, p1, Lc8/SXn;->bizParamsMap:Ljava/util/Map;

    const-string/jumbo v2, "local_vid"

    iget-object v3, p2, Lc8/MYn;->local_vid:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_0
    iget-object v1, p2, Lc8/MYn;->local_time:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 325
    iget-object v1, p1, Lc8/SXn;->bizParamsMap:Ljava/util/Map;

    const-string/jumbo v2, "local_time"

    iget-object v3, p2, Lc8/MYn;->local_time:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :cond_1
    iget-object v1, p2, Lc8/MYn;->local_point:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 327
    iget-object v1, p1, Lc8/SXn;->bizParamsMap:Ljava/util/Map;

    const-string/jumbo v2, "local_point"

    iget-object v3, p2, Lc8/MYn;->local_point:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :cond_2
    iget-object v1, p1, Lc8/SXn;->bizParamsMap:Ljava/util/Map;

    const-string/jumbo v2, "audiolang"

    iget-object v3, p2, Lc8/MYn;->audiolang:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v1, p1, Lc8/SXn;->bizParamsMap:Ljava/util/Map;

    const-string/jumbo v2, "media_type"

    iget-object v3, p2, Lc8/MYn;->media_type:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v1, p1, Lc8/SXn;->bizParamsMap:Ljava/util/Map;

    const-string/jumbo v2, "password"

    iget-object v3, p2, Lc8/MYn;->password:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v1, p1, Lc8/SXn;->bizParamsMap:Ljava/util/Map;

    const-string/jumbo v2, "client_id"

    iget-object v3, p2, Lc8/MYn;->client_id:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v1, p1, Lc8/SXn;->bizParamsMap:Ljava/util/Map;

    const-string/jumbo v2, "mac"

    iget-object v3, p2, Lc8/MYn;->mac:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v1, p1, Lc8/SXn;->bizParamsMap:Ljava/util/Map;

    const-string/jumbo v2, "network"

    iget-object v3, p2, Lc8/MYn;->network:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v1, p1, Lc8/SXn;->bizParamsMap:Ljava/util/Map;

    const-string/jumbo v2, "brand"

    iget-object v3, p2, Lc8/MYn;->brand:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget-object v1, p1, Lc8/SXn;->bizParamsMap:Ljava/util/Map;

    const-string/jumbo v2, "os_ver"

    iget-object v3, p2, Lc8/MYn;->os_ver:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v1, p1, Lc8/SXn;->bizParamsMap:Ljava/util/Map;

    const-string/jumbo v2, "app_ver"

    iget-object v3, p2, Lc8/MYn;->app_ver:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v1, p1, Lc8/SXn;->bizParamsMap:Ljava/util/Map;

    const-string/jumbo v2, "src"

    iget-object v3, p2, Lc8/MYn;->src:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v1, p0, Lc8/LXn;->mAdMap:Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 342
    iget-object v1, p1, Lc8/SXn;->adParamsMap:Ljava/util/Map;

    iget-object v2, p0, Lc8/LXn;->mAdMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 343
    iget-object v1, p1, Lc8/SXn;->adParamsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 344
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lc8/LXn;->adEncodeParam:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 345
    iget-object v3, p1, Lc8/SXn;->adParamsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lc8/PYn;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 349
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method private getCkey(Lc8/rPg;)Ljava/lang/String;
    .locals 7
    .param p1, "param"    # Lc8/rPg;

    .prologue
    const/4 v0, 0x0

    .line 405
    if-nez p1, :cond_0

    .line 432
    :goto_0
    return-object v0

    .line 409
    :cond_0
    :try_start_0
    invoke-static {}, Lc8/TYn;->upsRequest()Lc8/RYn;

    move-result-object v3

    .line 410
    .local v3, "stage":Lc8/RYn;
    const-string/jumbo v4, "createCkey"

    invoke-virtual {v3, v4}, Lc8/RYn;->beginSection(Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lc8/qPg;->create()Lc8/pPg;

    move-result-object v4

    invoke-interface {v4, p1}, Lc8/pPg;->getCkey(Lc8/rPg;)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "ckey":Ljava/lang/String;
    invoke-virtual {v3}, Lc8/RYn;->endSection()V

    .line 413
    sget-object v4, Lc8/LXn;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ckey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/QYn;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v4, p0, Lc8/LXn;->request:Lc8/TXn;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lc8/TXn;->isCkeyError:Z

    .line 415
    iget-object v4, p0, Lc8/LXn;->request:Lc8/TXn;

    const/4 v5, 0x0

    iput-object v5, v4, Lc8/TXn;->ckeyErrorMsg:Ljava/lang/String;
    :try_end_0
    .catch Lcom/youku/antitheftchain/exception/AntiTheftChainException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 421
    .end local v0    # "ckey":Ljava/lang/String;
    .end local v3    # "stage":Lc8/RYn;
    :catch_0
    move-exception v1

    .line 423
    .local v1, "ex":Lcom/youku/antitheftchain/exception/AntiTheftChainException;
    iget-object v4, p0, Lc8/LXn;->request:Lc8/TXn;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lc8/TXn;->isCkeyError:Z

    .line 424
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "errorcode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/youku/antitheftchain/exception/AntiTheftChainException;->getErrorCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " errormsg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/youku/antitheftchain/exception/AntiTheftChainException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, "msg":Ljava/lang/String;
    iget-object v4, p0, Lc8/LXn;->request:Lc8/TXn;

    iput-object v2, v4, Lc8/TXn;->ckeyErrorMsg:Ljava/lang/String;

    .line 426
    sget-object v4, Lc8/LXn;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/youku/antitheftchain/exception/AntiTheftChainException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/QYn;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string/jumbo v0, "7B19C0AB12633B22E7FE81271162026020570708D6CC189E4924503C49D243A0DE6CD84A766832C2C99898FC5ED31F3709BB3CDD82C96492E721BDD381735026"

    .line 429
    .restart local v0    # "ckey":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/youku/antitheftchain/exception/AntiTheftChainException;->printStackTrace()V

    goto :goto_0
.end method

.method private getMTopUpsResquest()Lc8/SXn;
    .locals 2

    .prologue
    .line 297
    new-instance v0, Lc8/SXn;

    invoke-direct {v0}, Lc8/SXn;-><init>()V

    .line 298
    .local v0, "mTopUpsRequest":Lc8/SXn;
    iget-object v1, p0, Lc8/LXn;->mApiName:Ljava/lang/String;

    iput-object v1, v0, Lc8/SXn;->API_NAME:Ljava/lang/String;

    .line 299
    iget-object v1, p0, Lc8/LXn;->mApiVersion:Ljava/lang/String;

    iput-object v1, v0, Lc8/SXn;->VERSION:Ljava/lang/String;

    .line 300
    iget-boolean v1, p0, Lc8/LXn;->mNeedEcode:Z

    iput-boolean v1, v0, Lc8/SXn;->NEED_ECODE:Z

    .line 301
    iget-object v1, p0, Lc8/LXn;->mPlayVideoInfo:Lc8/MYn;

    invoke-direct {p0, v0, v1}, Lc8/LXn;->constructParams(Lc8/SXn;Lc8/MYn;)V

    .line 302
    return-object v0
.end method

.method private getUrl()Ljava/lang/String;
    .locals 7

    .prologue
    .line 215
    iget-object v2, p0, Lc8/LXn;->mPlayVideoInfo:Lc8/MYn;

    .line 216
    .local v2, "playInfo":Lc8/MYn;
    iget-object v0, p0, Lc8/LXn;->mAdMap:Ljava/util/Map;

    .line 218
    .local v0, "adMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 219
    const/4 v4, 0x0

    .line 230
    :goto_0
    return-object v4

    .line 220
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lc8/LXn;->mHost:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .local v3, "url":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "/ups/get.json?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v4, p0, Lc8/LXn;->chainParam:Lc8/rPg;

    invoke-direct {p0, v3, v2, v4}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Lc8/MYn;Lc8/rPg;)V

    .line 224
    if-eqz v0, :cond_1

    .line 226
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 227
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lc8/LXn;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 230
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public getUrlInfo(Lc8/MYn;Ljava/util/Map;Lc8/LYn;Lc8/MXn;)Z
    .locals 2
    .param p1, "playInfo"    # Lc8/MYn;
    .param p3, "network"    # Lc8/LYn;
    .param p4, "callBack"    # Lc8/MXn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/MYn;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc8/LYn;",
            "Lc8/MXn;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 165
    .local p2, "adMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lc8/LXn;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getUrlInfo"

    invoke-static {v0, v1}, Lc8/QYn;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v0, Lc8/TXn;

    invoke-direct {v0}, Lc8/TXn;-><init>()V

    iput-object v0, p0, Lc8/LXn;->request:Lc8/TXn;

    .line 167
    iget-object v0, p0, Lc8/LXn;->networkTask:Lc8/KYn;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 168
    :cond_0
    sget-object v0, Lc8/LXn;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "invalid parameter"

    invoke-static {v0, v1}, Lc8/QYn;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x0

    .line 210
    :goto_0
    return v0

    .line 172
    :cond_1
    iput-object p1, p0, Lc8/LXn;->mPlayVideoInfo:Lc8/MYn;

    .line 173
    iput-object p2, p0, Lc8/LXn;->mAdMap:Ljava/util/Map;

    .line 174
    iput-object p3, p0, Lc8/LXn;->mNetwork:Lc8/LYn;

    .line 175
    iput-object p4, p0, Lc8/LXn;->mCallBack:Lc8/MXn;

    .line 205
    sget-object v0, Lc8/LXn;->mWorker:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lc8/LXn;->GetInfoRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 210
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAntiTheftChainParam(Lc8/rPg;)V
    .locals 0
    .param p1, "chainParam"    # Lc8/rPg;

    .prologue
    .line 150
    iput-object p1, p0, Lc8/LXn;->chainParam:Lc8/rPg;

    .line 151
    return-void
.end method

.method public setHost(Ljava/lang/String;)Z
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    :goto_0
    return v0

    .line 115
    :cond_0
    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 117
    :cond_1
    iput-object p1, p0, Lc8/LXn;->mHost:Ljava/lang/String;

    .line 118
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setReqHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lc8/LXn;->host:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setReqIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lc8/LXn;->ip:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setUpsType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 142
    iput p1, p0, Lc8/LXn;->upsType:I

    .line 143
    return-void
.end method
