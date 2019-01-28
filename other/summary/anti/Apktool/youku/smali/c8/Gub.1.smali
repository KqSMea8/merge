.class public final Lc8/Gub;
.super Ljava/lang/Object;
.source "DefaultWXConnection.java"

# interfaces
.implements Lc8/Iub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Fub;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "WXConnectionModule"


# instance fields
.field private hasRegisteredReceiver:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mConnectivityReceiver:Lc8/Fub;

.field private mContext:Landroid/content/Context;

.field private mCurConnectedType:Ljava/lang/String;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Hub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Gub;->hasRegisteredReceiver:Z

    .line 195
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/Gub;->mCurConnectedType:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/Gub;->mContext:Landroid/content/Context;

    .line 199
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lc8/Gub;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 200
    new-instance v0, Lc8/Fub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/Fub;-><init>(Lc8/Gub;Lc8/Eub;)V

    iput-object v0, p0, Lc8/Gub;->mConnectivityReceiver:Lc8/Fub;

    .line 201
    return-void
.end method

.method static synthetic access$100(Lc8/Gub;)V
    .locals 0
    .param p0, "x0"    # Lc8/Gub;

    .prologue
    .line 185
    invoke-direct {p0}, Lc8/Gub;->notifyOnNetworkChange()V

    return-void
.end method

.method private notifyOnNetworkChange()V
    .locals 5

    .prologue
    .line 349
    iget-object v2, p0, Lc8/Gub;->mListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/Gub;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 363
    :cond_0
    return-void

    .line 352
    :cond_1
    invoke-virtual {p0}, Lc8/Gub;->getType()Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "newType":Ljava/lang/String;
    const-string/jumbo v2, "cellular"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 354
    invoke-virtual {p0}, Lc8/Gub;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    .line 356
    :cond_2
    iget-object v2, p0, Lc8/Gub;->mCurConnectedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 357
    iput-object v1, p0, Lc8/Gub;->mCurConnectedType:Ljava/lang/String;

    .line 358
    const-string/jumbo v2, "WXConnectionModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "network type changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/Gub;->mCurConnectedType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v2, p0, Lc8/Gub;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Hub;

    .line 360
    .local v0, "listener":Lc8/Hub;
    invoke-interface {v0}, Lc8/Hub;->onNetworkChange()V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 366
    iget-object v1, p0, Lc8/Gub;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 367
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 368
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lc8/Gub;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lc8/Gub;->mConnectivityReceiver:Lc8/Fub;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 371
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 3

    .prologue
    .line 374
    iget-object v1, p0, Lc8/Gub;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 376
    :try_start_0
    iget-object v1, p0, Lc8/Gub;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lc8/Gub;->mConnectivityReceiver:Lc8/Fub;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WXConnectionModule"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addNetworkChangeListener(Lc8/Hub;)V
    .locals 2
    .param p1, "listener"    # Lc8/Hub;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 321
    if-nez p1, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-object v0, p0, Lc8/Gub;->mListeners:Ljava/util/List;

    if-nez v0, :cond_2

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc8/Gub;->mListeners:Ljava/util/List;

    .line 329
    :cond_2
    iget-object v0, p0, Lc8/Gub;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    iget-boolean v0, p0, Lc8/Gub;->hasRegisteredReceiver:Z

    if-nez v0, :cond_0

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Gub;->hasRegisteredReceiver:Z

    .line 332
    invoke-direct {p0}, Lc8/Gub;->registerReceiver()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lc8/Gub;->hasRegisteredReceiver:Z

    if-eqz v0, :cond_0

    .line 339
    invoke-direct {p0}, Lc8/Gub;->unregisterReceiver()V

    .line 341
    :cond_0
    iget-object v0, p0, Lc8/Gub;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lc8/Gub;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Gub;->mListeners:Ljava/util/List;

    .line 345
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Gub;->hasRegisteredReceiver:Z

    .line 346
    return-void
.end method

.method public getDownlinkMax()D
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 286
    invoke-virtual {p0}, Lc8/Gub;->getType()Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "type":Ljava/lang/String;
    const/4 v6, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 315
    :goto_1
    :pswitch_0
    return-wide v2

    .line 287
    :sswitch_0
    const-string/jumbo v7, "wifi"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v7, "bluetooth"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v7, "wimax"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v7, "ethernet"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v7, "none"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v7, "other"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v7, "unknown"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v7, "cellular"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x7

    goto :goto_0

    .line 289
    :pswitch_1
    const-wide v2, 0x40bb580000000000L    # 7000.0

    goto :goto_1

    .line 291
    :pswitch_2
    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    goto :goto_1

    .line 293
    :pswitch_3
    const-wide v2, 0x4076d00000000000L    # 365.0

    goto :goto_1

    .line 295
    :pswitch_4
    const-wide v2, 0x40c3880000000000L    # 10000.0

    goto/16 :goto_1

    :pswitch_5
    move-wide v2, v4

    .line 299
    goto/16 :goto_1

    :pswitch_6
    move-wide v2, v4

    .line 302
    goto/16 :goto_1

    .line 304
    :pswitch_7
    invoke-virtual {p0}, Lc8/Gub;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "networkType":Ljava/lang/String;
    const-string/jumbo v2, "2g"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    const-wide v2, 0x3fd89374bc6a7efaL    # 0.384

    goto/16 :goto_1

    .line 307
    :cond_1
    const-string/jumbo v2, "3g"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 308
    const-wide/high16 v2, 0x4045000000000000L    # 42.0

    goto/16 :goto_1

    .line 309
    :cond_2
    const-string/jumbo v2, "4g"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 310
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    goto/16 :goto_1

    :cond_3
    move-wide v2, v4

    .line 312
    goto/16 :goto_1

    .line 287
    :sswitch_data_0
    .sparse-switch
        -0x5499b029 -> :sswitch_3
        -0x36a22696 -> :sswitch_7
        -0x10fa53b6 -> :sswitch_6
        0x33af38 -> :sswitch_4
        0x37af15 -> :sswitch_0
        0x6527f10 -> :sswitch_5
        0x6be4d52 -> :sswitch_2
        0x755ac2ae -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 240
    :try_start_0
    iget-object v3, p0, Lc8/Gub;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 241
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 242
    :cond_0
    const-string/jumbo v3, "none"

    .line 281
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return-object v3

    .line 245
    .restart local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 246
    .local v2, "type":I
    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 247
    const-string/jumbo v3, "unknown"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 251
    const-string/jumbo v3, "wifi"

    goto :goto_0

    .line 255
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 275
    const-string/jumbo v3, "other"

    goto :goto_0

    .line 261
    :pswitch_0
    :try_start_2
    const-string/jumbo v3, "2g"
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 271
    :pswitch_1
    const-string/jumbo v3, "3g"

    goto :goto_0

    .line 273
    :pswitch_2
    const-string/jumbo v3, "4g"

    goto :goto_0

    .line 278
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v2    # "type":I
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "WXConnectionModule"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string/jumbo v3, "unknown"

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getType()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 208
    :try_start_0
    iget-object v3, p0, Lc8/Gub;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 209
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 210
    :cond_0
    const-string/jumbo v3, "none"

    .line 232
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return-object v3

    .line 212
    .restart local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 213
    .local v2, "type":I
    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 214
    const-string/jumbo v3, "unknown"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 217
    const-string/jumbo v3, "wifi"

    goto :goto_0

    .line 218
    :cond_3
    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    .line 219
    const-string/jumbo v3, "bluetooth"

    goto :goto_0

    .line 220
    :cond_4
    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 221
    const-string/jumbo v3, "wimax"

    goto :goto_0

    .line 222
    :cond_5
    const/16 v3, 0x9

    if-ne v2, v3, :cond_6

    .line 223
    const-string/jumbo v3, "ethernet"

    goto :goto_0

    .line 224
    :cond_6
    if-nez v2, :cond_7

    .line 225
    const-string/jumbo v3, "cellular"

    goto :goto_0

    .line 227
    :cond_7
    const-string/jumbo v3, "other"

    goto :goto_0

    .line 229
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v2    # "type":I
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "WXConnectionModule"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string/jumbo v3, "unknown"

    goto :goto_0
.end method
