.class public Lcom/taobao/flowcustoms/data/OpenParams;
.super Ljava/lang/Object;
.source "OpenParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final ACTION_AUTH:Ljava/lang/String; = "ali.open.auth"

.field public static final ACTION_NAV:Ljava/lang/String; = "ali.open.nav"

.field public static final ACTION_SERVER:Ljava/lang/String; = "ali.open.server"

.field public static final APPKEY:Ljava/lang/String; = "appkey"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/taobao/flowcustoms/data/OpenParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final CURRENT_KEY:Ljava/lang/String; = "currentAppKey"

.field public static final CURRENT_PACKAGE_NAME:Ljava/lang/String; = "currentPN"

.field public static final H5_URL:Ljava/lang/String; = "h5Url"

.field public static final ITEM_ID:Ljava/lang/String; = "itemId"

.field public static final JUMP_URL:Ljava/lang/String; = "jumpUrl"

.field private static final LOG_TAG:Ljava/lang/String; = "OpenParams"

.field public static final MODULE:Ljava/lang/String; = "module"

.field public static final MODULE_H5:Ljava/lang/String; = "h5"

.field public static final PID:Ljava/lang/String; = "pid"

.field public static final SHOP_ID:Ljava/lang/String; = "shopId"

.field public static final SOURCE:Ljava/lang/String; = "source"

.field public static final SOURCE_KEY:Ljava/lang/String; = "sourceAppKey"

.field public static final SOURCE_PACKAGE_NAME:Ljava/lang/String; = "sourcePN"

.field public static final SOURCE_SDK_VERSION:Ljava/lang/String; = "sourceSDKV"

.field public static final SOURCE_VC:Ljava/lang/String; = "sourceVC"

.field public static final TARGET_URL:Ljava/lang/String; = "targetUrl"

.field public static final TRACK_TYPE:Ljava/lang/String; = "trackType"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field public action:Ljava/lang/String;

.field public appIcon:Ljava/lang/String;

.field public appKey:Ljava/lang/String;

.field public appName:Ljava/lang/String;

.field public backUrl:Ljava/lang/String;

.field public data:Landroid/net/Uri;

.field public e:Ljava/lang/String;

.field public expireTime:J

.field public h5Url:Ljava/lang/String;

.field public isAuthorize:Z

.field public jumpUrl:Ljava/lang/String;

.field public module:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public params:Ljava/util/Map;
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

.field public pluginRules:Ljava/lang/String;

.field public sdkName:Ljava/lang/String;

.field public sdkVersion:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public tipsIcon:Ljava/lang/String;

.field public tkFlag:I

.field public ttid:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public utdid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 469
    new-instance v0, Lc8/Snf;

    invoke-direct {v0}, Lc8/Snf;-><init>()V

    sput-object v0, Lcom/taobao/flowcustoms/data/OpenParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->params:Ljava/util/Map;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->tkFlag:I

    .line 123
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->tipsIcon:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/taobao/flowcustoms/data/OpenParams;->params:Ljava/util/Map;

    .line 120
    const/4 v2, 0x0

    iput v2, p0, Lcom/taobao/flowcustoms/data/OpenParams;->tkFlag:I

    .line 123
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/taobao/flowcustoms/data/OpenParams;->tipsIcon:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 131
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 136
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0, v0}, Lcom/taobao/flowcustoms/data/OpenParams;->getQueryParameter(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->params:Ljava/util/Map;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->tkFlag:I

    .line 123
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->tipsIcon:Ljava/lang/String;

    .line 126
    invoke-virtual {p0, p1}, Lcom/taobao/flowcustoms/data/OpenParams;->getQueryParameter(Landroid/net/Uri;)V

    .line 127
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->params:Ljava/util/Map;

    .line 120
    iput v1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->tkFlag:I

    .line 123
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->tipsIcon:Ljava/lang/String;

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->appKey:Ljava/lang/String;

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->packageName:Ljava/lang/String;

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->appName:Ljava/lang/String;

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->sdkVersion:Ljava/lang/String;

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->action:Ljava/lang/String;

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->module:Ljava/lang/String;

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->h5Url:Ljava/lang/String;

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->backUrl:Ljava/lang/String;

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->e:Ljava/lang/String;

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->source:Ljava/lang/String;

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->ttid:Ljava/lang/String;

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->tag:Ljava/lang/String;

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->utdid:Ljava/lang/String;

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->sdkName:Ljava/lang/String;

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->pluginRules:Ljava/lang/String;

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->params:Ljava/util/Map;

    .line 430
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->data:Landroid/net/Uri;

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->appIcon:Ljava/lang/String;

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->isAuthorize:Z

    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->jumpUrl:Ljava/lang/String;

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->expireTime:J

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->type:Ljava/lang/String;

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->tkFlag:I

    .line 437
    return-void

    :cond_0
    move v0, v1

    .line 432
    goto :goto_0
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lc8/Snf;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lc8/Snf;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/taobao/flowcustoms/data/OpenParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public check()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 190
    iget-object v1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->action:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v0

    .line 195
    :cond_1
    const-string/jumbo v1, "ali.open.nav"

    iget-object v2, p0, Lcom/taobao/flowcustoms/data/OpenParams;->action:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->module:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkBlackList(Landroid/app/Activity;)Z
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 287
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lc8/rpf;->getVisa(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "visa":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/taobao/flowcustoms/data/OpenParams;->getUserTrackProperties()Ljava/util/Map;

    move-result-object v0

    .line 289
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "visa"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .end local v2    # "visa":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-virtual {p0}, Lcom/taobao/flowcustoms/data/OpenParams;->isPackageNameInBlackList()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 293
    const-string/jumbo v4, "mgr_flow_get_handle"

    invoke-static {v4, v0}, Lc8/npf;->sendCustomHit(Ljava/lang/String;Ljava/util/Map;)V

    .line 296
    invoke-virtual {p0}, Lcom/taobao/flowcustoms/data/OpenParams;->getTip()Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "tip":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 298
    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 301
    :cond_0
    const/4 v3, 0x1

    .line 305
    .end local v1    # "tip":Ljava/lang/String;
    :goto_1
    return v3

    .line 289
    .restart local v2    # "visa":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "unknown"

    goto :goto_0

    .line 304
    .end local v2    # "visa":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "mgr_flow_get_pass"

    invoke-static {v4, v0}, Lc8/npf;->sendCustomHit(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    const-string/jumbo v0, "ali.open.nav"

    iget-object v1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->action:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->module:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    .line 210
    :cond_0
    const-string/jumbo v0, "ali.open.server"

    iget-object v1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->action:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    const-string/jumbo v0, "ali.open.nav.detail"

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->action:Ljava/lang/String;

    goto :goto_0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->params:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->params:Ljava/util/Map;

    const-string/jumbo v1, "itemId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->params:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->params:Ljava/util/Map;

    const-string/jumbo v1, "pid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPluginRules()Ljava/lang/String;
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->pluginRules:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->pluginRules:Ljava/lang/String;

    .line 361
    :goto_0
    return-object v0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->action:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->action:Ljava/lang/String;

    const-string/jumbo v1, "ali.open.auth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    const-string/jumbo v0, "auth"

    goto :goto_0

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->action:Ljava/lang/String;

    const-string/jumbo v1, "ali.open.nav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    const-string/jumbo v0, "nav"

    goto :goto_0

    .line 361
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getQueryParameter(Landroid/net/Uri;)V
    .locals 7
    .param p1, "data"    # Landroid/net/Uri;

    .prologue
    .line 144
    if-nez p1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iput-object p1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->data:Landroid/net/Uri;

    .line 151
    :try_start_0
    const-string/jumbo v5, "appkey"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/taobao/flowcustoms/data/OpenParams;->appKey:Ljava/lang/String;

    .line 152
    const-string/jumbo v5, "packageName"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/taobao/flowcustoms/data/OpenParams;->packageName:Ljava/lang/String;

    .line 153
    const-string/jumbo v5, "appName"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/taobao/flowcustoms/data/OpenParams;->appName:Ljava/lang/String;

    .line 154
    const-string/jumbo v5, "v"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/taobao/flowcustoms/data/OpenParams;->sdkVersion:Ljava/lang/String;

    .line 155
    const-string/jumbo v5, "action"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/taobao/flowcustoms/data/OpenParams;->action:Ljava/lang/String;

    .line 156
    const-string/jumbo v5, "module"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/taobao/flowcustoms/data/OpenParams;->module:Ljava/lang/String;

    .line 157
    const-string/jumbo v5, "h5Url"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/taobao/flowcustoms/data/OpenParams;->h5Url:Ljava/lang/String;

    .line 158
    const-string/jumbo v5, "backURL"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/taobao/flowcustoms/data/OpenParams;->backUrl:Ljava/lang/String;

    .line 159
    const-string/jumbo v5, "source"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/taobao/flowcustoms/data/OpenParams;->source:Ljava/lang/String;

    .line 160
    const-string/jumbo v5, "TTID"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/taobao/flowcustoms/data/OpenParams;->ttid:Ljava/lang/String;

    .line 161
    const-string/jumbo v5, "utdid"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/taobao/flowcustoms/data/OpenParams;->utdid:Ljava/lang/String;

    .line 162
    const-string/jumbo v5, "tag"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/taobao/flowcustoms/data/OpenParams;->tag:Ljava/lang/String;

    .line 163
    const-string/jumbo v5, "sdkName"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/taobao/flowcustoms/data/OpenParams;->sdkName:Ljava/lang/String;

    .line 164
    const-string/jumbo v5, "pluginRules"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/taobao/flowcustoms/data/OpenParams;->pluginRules:Ljava/lang/String;

    .line 166
    const-string/jumbo v5, "params"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, "paramsString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 168
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 169
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 170
    .local v1, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 171
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 172
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/taobao/flowcustoms/data/OpenParams;->params:Ljava/util/Map;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 175
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "paramsString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "OpenParams"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getShopId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->params:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->params:Ljava/util/Map;

    const-string/jumbo v1, "shopId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSourceVC()Ljava/lang/String;
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->params:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->params:Ljava/util/Map;

    const-string/jumbo v1, "sourceVC"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTip()Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    invoke-static {}, Lc8/Mnf;->getInstance()Lc8/Mnf;

    move-result-object v0

    iget-object v0, v0, Lc8/Mnf;->incomingAppBlackList:Lc8/Enf;

    iget-object v1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/Enf;->getTip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrackType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->module:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    const-string/jumbo v0, ""

    .line 375
    :goto_0
    return-object v0

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->module:Ljava/lang/String;

    const-string/jumbo v1, "h5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    const-string/jumbo v0, "other"

    goto :goto_0

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->module:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserTrackProperties()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 253
    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "sourcePN"

    iget-object v3, p0, Lcom/taobao/flowcustoms/data/OpenParams;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/taobao/flowcustoms/data/OpenParams;->packageName:Ljava/lang/String;

    :goto_0
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string/jumbo v3, "currentPN"

    sget-object v4, Lc8/unf;->instance:Lc8/unf;

    invoke-virtual {v4}, Lc8/unf;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string/jumbo v4, "targetUrl"

    iget-object v3, p0, Lcom/taobao/flowcustoms/data/OpenParams;->data:Landroid/net/Uri;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/taobao/flowcustoms/data/OpenParams;->data:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string/jumbo v4, "source"

    iget-object v3, p0, Lcom/taobao/flowcustoms/data/OpenParams;->source:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string/jumbo v3, "unknown"

    :goto_2
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string/jumbo v4, "sourceAppKey"

    iget-object v3, p0, Lcom/taobao/flowcustoms/data/OpenParams;->appKey:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/taobao/flowcustoms/data/OpenParams;->appKey:Ljava/lang/String;

    :goto_3
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v3, Lc8/unf;->instance:Lc8/unf;

    iget-object v0, v3, Lc8/unf;->appKey:Ljava/lang/String;

    .line 259
    .local v0, "currentAppkey":Ljava/lang/String;
    const-string/jumbo v3, "currentAppKey"

    if-eqz v0, :cond_4

    .end local v0    # "currentAppkey":Ljava/lang/String;
    :goto_4
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-virtual {p0}, Lcom/taobao/flowcustoms/data/OpenParams;->getSourceVC()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "sourceVC":Ljava/lang/String;
    const-string/jumbo v3, "sourceVC"

    if-eqz v2, :cond_5

    .end local v2    # "sourceVC":Ljava/lang/String;
    :goto_5
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string/jumbo v3, "lmSDKV"

    const-string/jumbo v4, "1.3.0"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string/jumbo v3, "sourceSDKV"

    iget-object v4, p0, Lcom/taobao/flowcustoms/data/OpenParams;->sdkVersion:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    return-object v1

    .line 253
    :cond_0
    const-string/jumbo v3, "unknown"

    goto :goto_0

    .line 255
    :cond_1
    const-string/jumbo v3, "unknown"

    goto :goto_1

    .line 256
    :cond_2
    iget-object v3, p0, Lcom/taobao/flowcustoms/data/OpenParams;->source:Ljava/lang/String;

    goto :goto_2

    .line 257
    :cond_3
    const-string/jumbo v3, "unknown"

    goto :goto_3

    .line 259
    .restart local v0    # "currentAppkey":Ljava/lang/String;
    :cond_4
    const-string/jumbo v0, "unknown"

    goto :goto_4

    .line 261
    .end local v0    # "currentAppkey":Ljava/lang/String;
    .restart local v2    # "sourceVC":Ljava/lang/String;
    :cond_5
    const-string/jumbo v2, "unknown"

    goto :goto_5
.end method

.method public isFromThirdApp()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 273
    iget-object v3, p0, Lcom/taobao/flowcustoms/data/OpenParams;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 274
    sget-object v3, Lc8/unf;->instance:Lc8/unf;

    invoke-virtual {v3}, Lc8/unf;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "hostPackageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/taobao/flowcustoms/data/OpenParams;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 278
    .end local v0    # "hostPackageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "hostPackageName":Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 275
    goto :goto_0

    .line 278
    .end local v0    # "hostPackageName":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/taobao/flowcustoms/data/OpenParams;->appKey:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/taobao/flowcustoms/data/OpenParams;->appKey:Ljava/lang/String;

    sget-object v4, Lc8/unf;->instance:Lc8/unf;

    iget-object v4, v4, Lc8/unf;->appKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public isPackageNameInBlackList()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 223
    invoke-virtual {p0}, Lcom/taobao/flowcustoms/data/OpenParams;->isFromThirdApp()Z

    move-result v2

    if-nez v2, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v1

    .line 227
    :cond_1
    invoke-static {}, Lc8/Mnf;->getInstance()Lc8/Mnf;

    move-result-object v2

    iget-object v0, v2, Lc8/Mnf;->incomingAppBlackList:Lc8/Enf;

    .line 228
    .local v0, "blackList":Lc8/Enf;
    iget-object v2, p0, Lcom/taobao/flowcustoms/data/OpenParams;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 229
    iget-object v2, p0, Lcom/taobao/flowcustoms/data/OpenParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lc8/Enf;->inBlackList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public trackSource()V
    .locals 4

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/taobao/flowcustoms/data/OpenParams;->isFromThirdApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/taobao/flowcustoms/data/OpenParams;->getUserTrackProperties()Ljava/util/Map;

    move-result-object v0

    .line 320
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "appkey"

    iget-object v1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->appKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "unknown"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string/jumbo v2, "action"

    iget-object v1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->action:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "unknown"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string/jumbo v2, "module"

    iget-object v1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->module:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "unknown"

    :goto_2
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string/jumbo v2, "h5Url"

    iget-object v1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->h5Url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "unknown"

    :goto_3
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string/jumbo v2, "jumpUrl"

    iget-object v1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->data:Landroid/net/Uri;

    if-nez v1, :cond_5

    const-string/jumbo v1, "unknown"

    :goto_4
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const/16 v1, 0x3f5

    const-string/jumbo v2, "applink_gateway"

    invoke-virtual {p0}, Lcom/taobao/flowcustoms/data/OpenParams;->getUserTrackProperties()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lc8/npf;->sendCustomHit(ILjava/lang/String;Ljava/util/Map;)V

    .line 328
    .end local v0    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 320
    .restart local v0    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->appKey:Ljava/lang/String;

    goto :goto_0

    .line 321
    :cond_2
    iget-object v1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->action:Ljava/lang/String;

    goto :goto_1

    .line 322
    :cond_3
    iget-object v1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->module:Ljava/lang/String;

    goto :goto_2

    .line 323
    :cond_4
    iget-object v1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->h5Url:Ljava/lang/String;

    goto :goto_3

    .line 324
    :cond_5
    iget-object v1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->data:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method

.method public trackTarget(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/taobao/flowcustoms/data/OpenParams;->getUserTrackProperties()Ljava/util/Map;

    move-result-object v0

    .line 386
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/taobao/flowcustoms/data/OpenParams;->getTrackType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "unknown"

    .line 387
    .local v1, "traceType":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "trackType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string/jumbo v2, "targetUrl"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string/jumbo v2, "mgr_flow_track"

    invoke-static {v2, v0}, Lc8/npf;->sendCustomHit(Ljava/lang/String;Ljava/util/Map;)V

    .line 391
    return-void

    .line 386
    .end local v1    # "traceType":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/flowcustoms/data/OpenParams;->getTrackType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public updateFromLinkInfoResponse(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 394
    const-string/jumbo v1, "appKey"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->appKey:Ljava/lang/String;

    .line 395
    const-string/jumbo v1, "appName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->appName:Ljava/lang/String;

    .line 396
    const-string/jumbo v1, "appIcon"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->appIcon:Ljava/lang/String;

    .line 397
    const-string/jumbo v1, "jumpUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->jumpUrl:Ljava/lang/String;

    .line 398
    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/taobao/flowcustoms/data/OpenParams;->expireTime:J

    .line 399
    const-string/jumbo v1, "isAuthorize"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->isAuthorize:Z

    .line 400
    const-string/jumbo v1, "e"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->e:Ljava/lang/String;

    .line 401
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->type:Ljava/lang/String;

    .line 402
    const-string/jumbo v1, "backUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->backUrl:Ljava/lang/String;

    .line 403
    const-string/jumbo v1, "tipsIcon"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->tipsIcon:Ljava/lang/String;

    .line 405
    const-string/jumbo v1, "tkFlag"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "tkFlagString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 408
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/taobao/flowcustoms/data/OpenParams;->tkFlag:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 444
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->appKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->sdkVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->action:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->module:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->h5Url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->backUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->ttid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->utdid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->sdkName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->pluginRules:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->params:Ljava/util/Map;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 460
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->data:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 461
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->appIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 462
    iget-boolean v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->isAuthorize:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 463
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->jumpUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 464
    iget-wide v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->expireTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 465
    iget-object v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    iget v0, p0, Lcom/taobao/flowcustoms/data/OpenParams;->tkFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    return-void

    .line 462
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
