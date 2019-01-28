.class public final Lc8/JEd;
.super Ljava/lang/Object;
.source "CollectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/IEd;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field private b:Ljava/lang/Object;

.field private c:Z

.field private d:Ljava/util/Timer;

.field private e:Ljava/util/TimerTask;

.field private f:I

.field private g:Z

.field private h:Lc8/WEd;

.field private i:Lc8/LEd;

.field private j:Landroid/net/ConnectivityManager;

.field private k:J

.field private l:Landroid/content/Context;

.field private m:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lc8/JEd;->b:Ljava/lang/Object;

    iput-boolean v1, p0, Lc8/JEd;->c:Z

    const-string/jumbo v0, "com.data.carrier_v4.CollectorManager"

    iput-object v0, p0, Lc8/JEd;->a:Ljava/lang/String;

    iput-object v2, p0, Lc8/JEd;->d:Ljava/util/Timer;

    iput-object v2, p0, Lc8/JEd;->e:Ljava/util/TimerTask;

    iput v1, p0, Lc8/JEd;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/JEd;->g:Z

    iput-object v2, p0, Lc8/JEd;->h:Lc8/WEd;

    iput-object v2, p0, Lc8/JEd;->i:Lc8/LEd;

    iput-object v2, p0, Lc8/JEd;->j:Landroid/net/ConnectivityManager;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/JEd;->k:J

    iput-object v2, p0, Lc8/JEd;->l:Landroid/content/Context;

    iput-object v2, p0, Lc8/JEd;->m:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic a(Lc8/JEd;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lc8/JEd;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lc8/JEd;I)V
    .locals 9

    const v1, 0x282fffff

    const v0, 0x42fffff

    const/4 v8, 0x3

    invoke-direct {p0}, Lc8/JEd;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lc8/bFd;->v()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    move v1, v0

    :cond_2
    :goto_1
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lc8/JEd;->b:Ljava/lang/Object;

    const-string/jumbo v2, "callBackWrapData"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v6, "e"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v6, "d"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v6, "u"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lc8/fFd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    :try_start_1
    iget-object v0, p0, Lc8/JEd;->b:Ljava/lang/Object;

    const-string/jumbo v2, "getReportDate"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lc8/fFd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_3

    :try_start_2
    check-cast v0, [B

    iget-object v2, p0, Lc8/JEd;->h:Lc8/WEd;

    iget-object v3, p0, Lc8/JEd;->l:Landroid/content/Context;

    const-string/jumbo v4, "http://cgicol.amap.com/collection/writedata?ver=v1.0_ali&"

    invoke-virtual {v2, v0, v3, v4}, Lc8/WEd;->b([BLandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lc8/JEd;->j()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    :try_start_3
    iget-object v2, p0, Lc8/JEd;->b:Ljava/lang/Object;

    const-string/jumbo v3, "setUploadResult"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lc8/fFd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lc8/JEd;->f:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_4
    :try_start_4
    invoke-virtual {p0}, Lc8/JEd;->e()V

    invoke-direct {p0}, Lc8/JEd;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lc8/JEd;->k()I

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lc8/JEd;->i()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CollectionManager"

    const-string/jumbo v2, "up"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    move v1, v0

    goto/16 :goto_1

    :pswitch_2
    :try_start_5
    iget-object v0, p0, Lc8/JEd;->i:Lc8/LEd;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc8/JEd;->i:Lc8/LEd;

    iget-object v2, p0, Lc8/JEd;->j:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Lc8/LEd;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_4
    const v0, 0x7c2fffff

    move v1, v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    const/4 v0, 0x0

    goto :goto_3

    :catch_3
    move-exception v0

    const/4 v0, 0x3

    iput v0, p0, Lc8/JEd;->f:I

    goto :goto_4

    :cond_5
    iget v0, p0, Lc8/JEd;->f:I

    if-lt v0, v8, :cond_0

    invoke-direct {p0}, Lc8/JEd;->i()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lc8/JEd;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lc8/JEd;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lc8/JEd;)J
    .locals 2

    iget-wide v0, p0, Lc8/JEd;->k:J

    return-wide v0
.end method

.method static synthetic d(Lc8/JEd;)Z
    .locals 1

    invoke-direct {p0}, Lc8/JEd;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lc8/JEd;)I
    .locals 1

    invoke-direct {p0}, Lc8/JEd;->k()I

    move-result v0

    return v0
.end method

.method static synthetic f(Lc8/JEd;)V
    .locals 0

    invoke-direct {p0}, Lc8/JEd;->i()V

    return-void
.end method

.method static synthetic g(Lc8/JEd;)Lc8/LEd;
    .locals 1

    iget-object v0, p0, Lc8/JEd;->i:Lc8/LEd;

    return-object v0
.end method

.method private g()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lc8/JEd;->j()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lc8/JEd;->h()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "CollectionManager"

    const-string/jumbo v3, "collStarted"

    invoke-static {v1, v2, v3}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic h(Lc8/JEd;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lc8/JEd;->j:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private h()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lc8/JEd;->b:Ljava/lang/Object;

    const-string/jumbo v2, "isStarted"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lc8/fFd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private i()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lc8/JEd;->e:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/JEd;->e:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lc8/JEd;->e:Ljava/util/TimerTask;

    :cond_0
    iget-object v0, p0, Lc8/JEd;->d:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/JEd;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lc8/JEd;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iput-object v1, p0, Lc8/JEd;->d:Ljava/util/Timer;

    :cond_1
    return-void
.end method

.method private j()Z
    .locals 1

    iget-object v0, p0, Lc8/JEd;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()I
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lc8/JEd;->b:Ljava/lang/Object;

    const-string/jumbo v2, "getLeftUploadNum"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lc8/fFd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-direct {p0}, Lc8/JEd;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lc8/JEd;->b:Ljava/lang/Object;

    const-string/jumbo v1, "getColUpHist"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/fFd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lc8/WEd;Lc8/LEd;Lcom/amap/api/location/AMapLocationClientOption;Landroid/net/ConnectivityManager;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lc8/bFd;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p4}, Lc8/cFd;->a(Lcom/amap/api/location/AMapLocationClientOption;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lc8/JEd;->b:Ljava/lang/Object;

    if-nez v1, :cond_0

    iput-object p1, p0, Lc8/JEd;->l:Landroid/content/Context;

    iput-object p2, p0, Lc8/JEd;->h:Lc8/WEd;

    iput-object p3, p0, Lc8/JEd;->i:Lc8/LEd;

    iput-object v0, p0, Lc8/JEd;->m:Lorg/json/JSONObject;

    iput-object p5, p0, Lc8/JEd;->j:Landroid/net/ConnectivityManager;

    iget-boolean v0, p0, Lc8/JEd;->c:Z

    if-nez v0, :cond_0

    invoke-static {}, Lc8/uFd;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/JEd;->k:J

    const-string/jumbo v0, "Collection"

    const-string/jumbo v1, "1.0.0"

    invoke-static {v0, v1}, Lc8/cFd;->a(Ljava/lang/String;Ljava/lang/String;)Lc8/aGd;

    move-result-object v1

    invoke-static {p1, v1}, Lc8/qFd;->a(Landroid/content/Context;Lc8/aGd;)Z

    move-result v0

    iput-boolean v0, p0, Lc8/JEd;->c:Z

    iget-boolean v0, p0, Lc8/JEd;->c:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v2, p0, Lc8/JEd;->a:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lc8/vDd;->a(Landroid/content/Context;Lc8/aGd;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/JEd;->b:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lc8/JEd;->g:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lc8/JEd;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lc8/JEd;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lc8/bFd;->v()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lc8/JEd;->b()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lc8/JEd;->c:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CollectionManager"

    const-string/jumbo v2, "initCollection"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lc8/JEd;->m:Lorg/json/JSONObject;

    const-string/jumbo v1, "coll"

    invoke-static {v0, v1}, Lc8/uFd;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_3
    iget-object v0, p0, Lc8/JEd;->m:Lorg/json/JSONObject;

    const-string/jumbo v1, "coll"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-eqz v0, :cond_6

    move v0, v6

    :goto_2
    move v7, v0

    :cond_4
    :goto_3
    if-nez v7, :cond_5

    invoke-virtual {p0}, Lc8/JEd;->b()V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v1, "CollectionManager"

    const-string/jumbo v2, "start3rdCM"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lc8/JEd;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_4
    invoke-virtual {p0}, Lc8/JEd;->e()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    iget-object v0, p0, Lc8/JEd;->b:Ljava/lang/Object;

    const-string/jumbo v1, "start"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/fFd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :goto_4
    :try_start_6
    iget-object v0, p0, Lc8/JEd;->l:Landroid/content/Context;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    if-nez v0, :cond_1

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v1, "CollectionManager"

    const-string/jumbo v2, "start3rdCM"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto/16 :goto_0

    :cond_6
    move v0, v7

    goto :goto_2
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lc8/JEd;->g:Z

    return-void
.end method

.method public final b()V
    .locals 3

    invoke-direct {p0}, Lc8/JEd;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc8/JEd;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lc8/JEd;->b:Ljava/lang/Object;

    const-string/jumbo v1, "destroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/fFd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/JEd;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lc8/JEd;->i()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CollectionManager"

    const-string/jumbo v2, "stop3rdCM"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final c()V
    .locals 2

    invoke-direct {p0}, Lc8/JEd;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc8/JEd;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lc8/nGd;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lc8/IEd;

    invoke-direct {v1, p0}, Lc8/IEd;-><init>(Lc8/JEd;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    invoke-direct {p0}, Lc8/JEd;->i()V

    goto :goto_0
.end method

.method public final d()V
    .locals 6

    const-wide/16 v2, 0x7d0

    iget-boolean v0, p0, Lc8/JEd;->g:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lc8/JEd;->i:Lc8/LEd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/JEd;->i:Lc8/LEd;

    iget-object v1, p0, Lc8/JEd;->j:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Lc8/LEd;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc8/JEd;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lc8/bFd;->v()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lc8/JEd;->i()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lc8/JEd;->e:Ljava/util/TimerTask;

    if-nez v0, :cond_3

    new-instance v0, Lc8/HEd;

    invoke-direct {v0, p0}, Lc8/HEd;-><init>(Lc8/JEd;)V

    iput-object v0, p0, Lc8/JEd;->e:Ljava/util/TimerTask;

    :cond_3
    iget-object v0, p0, Lc8/JEd;->d:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "T-U"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lc8/JEd;->d:Ljava/util/Timer;

    iget-object v0, p0, Lc8/JEd;->d:Ljava/util/Timer;

    iget-object v1, p0, Lc8/JEd;->e:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    invoke-direct {p0}, Lc8/JEd;->j()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lc8/JEd;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc8/JEd;->k()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lc8/JEd;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/JEd;->b:Ljava/lang/Object;

    const-string/jumbo v2, "getInnerString"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "version"

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lc8/fFd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "CollectionManager"

    const-string/jumbo v3, "getCollVer"

    invoke-static {v0, v2, v3}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
