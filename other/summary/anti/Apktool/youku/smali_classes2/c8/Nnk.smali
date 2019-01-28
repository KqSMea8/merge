.class public Lc8/Nnk;
.super Ljava/lang/Object;
.source "FavoriteManager.java"


# static fields
.field public static final ABLUMNLIST＿FLAG:Ljava/lang/String; = "ablumnlist_flag"

.field public static final SHOWLIST＿FLAG:Ljava/lang/String; = "showlist_flag"

.field public static final VIDEOLIST＿FLAG:Ljava/lang/String; = "videolist_flag"

.field private static sInstance:Lc8/Nnk;


# instance fields
.field private context:Landroid/content/Context;

.field private favVids:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final favorateRunnable:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private listenerRefs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lc8/Ogn;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWeakhandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc8/Nnk;->favorateRunnable:Ljava/util/LinkedList;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Nnk;->favVids:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc8/Nnk;->listenerRefs:Ljava/util/Set;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc8/Nnk;->favorateRunnable:Ljava/util/LinkedList;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/Nnk;->context:Landroid/content/Context;

    .line 55
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/Nnk;->mWeakhandler:Ljava/lang/ref/WeakReference;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lc8/Nnk;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lc8/Nnk;

    .prologue
    .line 35
    iget-object v0, p0, Lc8/Nnk;->mWeakhandler:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private add(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "shouldNotify"    # Z

    .prologue
    .line 247
    iget-object v2, p0, Lc8/Nnk;->favVids:Ljava/util/Map;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 248
    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v2

    iget-object v0, v2, Lcom/youku/usercenter/passport/remote/UserInfo;->mYoukuUid:Ljava/lang/String;

    .line 249
    .local v0, "uid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    .end local v0    # "uid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 252
    .restart local v0    # "uid":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lc8/Nnk;->favVids:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 253
    .local v1, "vids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_2

    .line 254
    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "vids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 255
    .restart local v1    # "vids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lc8/Nnk;->favVids:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_2
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    if-eqz p2, :cond_0

    .line 259
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lc8/Nnk;->notifyListeners(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static getInstance()Lc8/Nnk;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lc8/Nnk;->sInstance:Lc8/Nnk;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lc8/Nnk;

    invoke-direct {v0}, Lc8/Nnk;-><init>()V

    sput-object v0, Lc8/Nnk;->sInstance:Lc8/Nnk;

    .line 62
    :cond_0
    sget-object v0, Lc8/Nnk;->sInstance:Lc8/Nnk;

    return-object v0
.end method

.method private notifyListeners(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "vid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "isAddToFavorite"    # Z

    .prologue
    .line 304
    iget-object v2, p0, Lc8/Nnk;->listenerRefs:Ljava/util/Set;

    if-eqz v2, :cond_1

    .line 305
    iget-object v2, p0, Lc8/Nnk;->listenerRefs:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 306
    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/youku/service/favorite/IFavorite$FavoriteListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Ogn;

    .line 307
    .local v0, "favoriteListener":Lc8/Ogn;
    if-eqz v0, :cond_0

    .line 308
    invoke-interface {v0, p1, p2}, Lc8/Ogn;->onFavoriteChanged(Ljava/lang/String;Z)V

    goto :goto_0

    .line 312
    .end local v0    # "favoriteListener":Lc8/Ogn;
    .end local v1    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/youku/service/favorite/IFavorite$FavoriteListener;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 243
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lc8/Nnk;->add(Ljava/lang/String;Z)V

    .line 244
    return-void
.end method

.method public addListener(Lc8/Ogn;)V
    .locals 2
    .param p1, "listener"    # Lc8/Ogn;

    .prologue
    .line 315
    iget-object v0, p0, Lc8/Nnk;->listenerRefs:Ljava/util/Set;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 316
    iget-object v0, p0, Lc8/Nnk;->listenerRefs:Ljava/util/Set;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_0
    return-void
.end method

.method public favorite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "showid"    # Ljava/lang/String;
    .param p3, "plid"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "handler":Landroid/os/Handler;
    iget-object v6, p0, Lc8/Nnk;->mWeakhandler:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_0

    .line 100
    iget-object v6, p0, Lc8/Nnk;->mWeakhandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "handler":Landroid/os/Handler;
    check-cast v0, Landroid/os/Handler;

    .line 102
    .restart local v0    # "handler":Landroid/os/Handler;
    :cond_0
    if-nez v0, :cond_2

    .line 240
    :cond_1
    :goto_0
    return-void

    .line 105
    :cond_2
    if-eqz v0, :cond_3

    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 106
    const/16 v6, 0x7dd

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 109
    :cond_3
    const/4 p3, 0x0

    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u5f00\u59cb\u6536\u85cf videoId\uff1a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v6

    if-nez v6, :cond_4

    .line 114
    const-string/jumbo v6, "login_youku"

    sput-object v6, Lc8/tin;->WIRELESS_LOGIN_FROM_VALUE:Ljava/lang/String;

    .line 115
    const-string/jumbo v6, "fav"

    sput-object v6, Lc8/tin;->WIRELESS_USER_OPERATE_VALUE:Ljava/lang/String;

    .line 116
    move-object v4, p3

    .line 117
    .local v4, "plid2":Ljava/lang/Object;
    const-string/jumbo v6, "9"

    sput-object v6, Lc8/tin;->loginSource:Ljava/lang/String;

    .line 118
    const-class v6, Lc8/fhn;

    invoke-static {v6}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/fhn;

    .line 119
    .local v3, "iLogin":Lc8/fhn;
    iget-object v6, p0, Lc8/Nnk;->context:Landroid/content/Context;

    iget-object v7, p0, Lc8/Nnk;->context:Landroid/content/Context;

    sget v8, Lcom/youku/phone/R$string;->user_login_tip_default:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lc8/fhn;->goLogin(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    iget-object v6, p0, Lc8/Nnk;->favorateRunnable:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->clear()V

    .line 121
    iget-object v6, p0, Lc8/Nnk;->favorateRunnable:Ljava/util/LinkedList;

    new-instance v7, Lc8/Lnk;

    invoke-direct {v7, p0, p1, p2, v4}, Lc8/Lnk;-><init>(Lc8/Nnk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    .end local v3    # "iLogin":Lc8/fhn;
    .end local v4    # "plid2":Ljava/lang/Object;
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 131
    invoke-static {}, Lc8/Iin;->hasInternet()Z

    move-result v6

    if-nez v6, :cond_5

    .line 132
    sget v6, Lcom/youku/phone/R$string;->tips_no_network:I

    invoke-static {v6}, Lc8/Iin;->showTips(I)V

    goto :goto_0

    .line 135
    :cond_5
    invoke-static {p1, p2, p3}, Lc8/lSh;->getAddFavURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, "urlString":Ljava/lang/String;
    new-instance v2, Lc8/RIj;

    invoke-direct {v2}, Lc8/RIj;-><init>()V

    .line 138
    .local v2, "httpRequest":Lc8/RIj;
    new-instance v1, Lcom/youku/network/HttpIntent;

    const-string/jumbo v6, "POST"

    invoke-direct {v1, v5, v6, v8}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 139
    .local v1, "httpIntent":Lcom/youku/network/HttpIntent;
    const-string/jumbo v6, "is_cache_data"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/youku/network/HttpIntent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    invoke-virtual {v2, v8}, Lc8/RIj;->setParseErrorCode(Z)V

    .line 141
    new-instance v6, Lc8/Mnk;

    invoke-direct {v6, p0}, Lc8/Mnk;-><init>(Lc8/Nnk;)V

    invoke-virtual {v2, v1, v6}, Lc8/RIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    goto/16 :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/Nnk;->context:Landroid/content/Context;

    .line 67
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/Nnk;->mWeakhandler:Ljava/lang/ref/WeakReference;

    .line 68
    return-void
.end method

.method public isFavorite(Ljava/lang/String;)Z
    .locals 3
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 294
    iget-object v1, p0, Lc8/Nnk;->favVids:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lc8/Nnk;->favVids:Ljava/util/Map;

    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/usercenter/passport/remote/UserInfo;->mYoukuUid:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 296
    .local v0, "vids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 297
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 300
    .end local v0    # "vids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 274
    iget-object v1, p0, Lc8/Nnk;->favVids:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lc8/Nnk;->favVids:Ljava/util/Map;

    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/usercenter/passport/remote/UserInfo;->mYoukuUid:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 276
    .local v0, "vids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 278
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lc8/Nnk;->notifyListeners(Ljava/lang/String;Z)V

    .line 281
    .end local v0    # "vids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
