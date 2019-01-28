.class public final Lc8/ZLc;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lc8/aMc;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lc8/aMc;->a()Lc8/aMc;

    move-result-object v0

    iput-object v0, p0, Lc8/ZLc;->b:Lc8/aMc;

    const/4 v0, 0x4

    iput v0, p0, Lc8/ZLc;->c:I

    iput-object p1, p0, Lc8/ZLc;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lc8/ZLc;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/IMc;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lc8/qMc;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p1}, Lc8/rMc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/IMc;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lc8/pMc;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lc8/rMc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lc8/IMc;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    const-string/jumbo v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static a()Z
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x2

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-array v4, v13, [Ljava/lang/String;

    const-string/jumbo v2, "2017-01-27 2017-01-28"

    aput-object v2, v4, v1

    const-string/jumbo v2, "2017-11-10 2017-11-11"

    aput-object v2, v4, v0

    const-string/jumbo v2, "2017-12-11 2017-12-12"

    aput-object v2, v4, v12

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    mul-double/2addr v6, v8

    mul-double/2addr v6, v10

    mul-double/2addr v6, v10

    double-to-int v5, v6

    move v2, v1

    :goto_0
    if-ge v2, v13, :cond_1

    :try_start_0
    aget-object v6, v4, v2

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v7, v6

    if-ne v7, v12, :cond_0

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " 00:00:00"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x1

    aget-object v6, v6, v10

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " 23:59:59"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v6, 0xd

    invoke-virtual {v9, v6, v5}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v7, v8}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7, v6}, Ljava/util/Date;->before(Ljava/util/Date;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private b(Ljava/util/Map;)Lc8/QMc;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc8/QMc;"
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v4, p0, Lc8/ZLc;->a:Landroid/content/Context;

    new-instance v5, Lc8/RMc;

    invoke-direct {v5}, Lc8/RMc;-><init>()V

    const-string/jumbo v0, "appName"

    const-string/jumbo v1, ""

    invoke-static {p1, v0, v1}, Lc8/IMc;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sessionId"

    const-string/jumbo v2, ""

    invoke-static {p1, v1, v2}, Lc8/IMc;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rpcVersion"

    const-string/jumbo v3, ""

    invoke-static {p1, v2, v3}, Lc8/IMc;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v0}, Lc8/ZLc;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lc8/DMc;->getSecurityToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Lc8/qMc;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lc8/IMc;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2000
    iput-object v1, v5, Lc8/RMc;->c:Ljava/lang/String;

    .line 4000
    :goto_0
    iput-object v2, v5, Lc8/RMc;->d:Ljava/lang/String;

    .line 5000
    iput-object v3, v5, Lc8/RMc;->e:Ljava/lang/String;

    const-string/jumbo v0, "android"

    .line 6000
    iput-object v0, v5, Lc8/RMc;->a:Ljava/lang/String;

    const-string/jumbo v1, ""

    const-string/jumbo v3, ""

    const-string/jumbo v2, ""

    const-string/jumbo v0, ""

    invoke-static {v4}, Lc8/mMc;->c(Landroid/content/Context;)Lc8/lMc;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lc8/lMc;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lc8/lMc;->c()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {v3}, Lc8/IMc;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v4}, Lc8/jMc;->c(Landroid/content/Context;)Lc8/kMc;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lc8/kMc;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lc8/kMc;->c()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {}, Lc8/mMc;->b()Lc8/lMc;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lc8/lMc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lc8/lMc;->c()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v1}, Lc8/IMc;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lc8/jMc;->b()Lc8/kMc;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lc8/kMc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lc8/kMc;->c()Ljava/lang/String;

    move-result-object v0

    .line 7000
    :cond_3
    iput-object v3, v5, Lc8/RMc;->h:Ljava/lang/String;

    .line 8000
    iput-object v1, v5, Lc8/RMc;->g:Ljava/lang/String;

    .line 9000
    iput-object v6, v5, Lc8/RMc;->j:Ljava/lang/String;

    invoke-static {v3}, Lc8/IMc;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 10000
    iput-object v1, v5, Lc8/RMc;->b:Ljava/lang/String;

    .line 11000
    iput-object v0, v5, Lc8/RMc;->i:Ljava/lang/String;

    .line 13000
    :goto_1
    invoke-static {v4, p1}, Lc8/iMc;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 14000
    iput-object v0, v5, Lc8/RMc;->f:Ljava/util/Map;

    iget-object v0, p0, Lc8/ZLc;->a:Landroid/content/Context;

    iget-object v1, p0, Lc8/ZLc;->b:Lc8/aMc;

    invoke-virtual {v1}, Lc8/aMc;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/XMc;->a(Landroid/content/Context;Ljava/lang/String;)Lc8/TMc;

    move-result-object v0

    invoke-interface {v0, v5}, Lc8/TMc;->a(Lc8/RMc;)Lc8/QMc;

    move-result-object v0

    :goto_2
    return-object v0

    .line 3000
    :cond_4
    iput-object v0, v5, Lc8/RMc;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 14000
    :catch_0
    move-exception v0

    invoke-static {v0}, Lc8/bMc;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_2

    .line 12000
    :cond_5
    :try_start_1
    iput-object v3, v5, Lc8/RMc;->b:Ljava/lang/String;

    .line 13000
    iput-object v2, v5, Lc8/RMc;->i:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lc8/rMc;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/IMc;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lc8/mMc;->b(Landroid/content/Context;)Lc8/lMc;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lc8/rMc;->a(Lc8/lMc;)V

    invoke-virtual {v0}, Lc8/lMc;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/IMc;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-static {p0}, Lc8/jMc;->b(Landroid/content/Context;)Lc8/kMc;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lc8/rMc;->a(Lc8/kMc;)V

    invoke-virtual {v0}, Lc8/kMc;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/IMc;->b(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    :goto_1
    const-string/jumbo v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/util/Map;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v3, p0, Lc8/ZLc;->a:Landroid/content/Context;

    const-string/jumbo v4, "tid"

    const-string/jumbo v5, ""

    invoke-static {p1, v4, v5}, Lc8/IMc;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "utdid"

    const-string/jumbo v6, ""

    invoke-static {p1, v5, v6}, Lc8/IMc;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lc8/ZLc;->a:Landroid/content/Context;

    invoke-static {v6}, Lc8/ZLc;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lc8/bMc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "appName"

    const-string/jumbo v4, ""

    invoke-static {p1, v3, v4}, Lc8/IMc;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lc8/ZLc;->a:Landroid/content/Context;

    invoke-static {v3}, Lc8/ZLc;->b(Landroid/content/Context;)Ljava/lang/String;

    iget-object v3, p0, Lc8/ZLc;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lc8/ZLc;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lc8/rMc;->a()V

    invoke-static {}, Lc8/ZLc;->a()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lc8/ZLc;->a:Landroid/content/Context;

    invoke-static {v3}, Lc8/dMc;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    iget-object v3, p0, Lc8/ZLc;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lc8/ZLc;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/IMc;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    :goto_0
    iget-object v5, p0, Lc8/ZLc;->a:Landroid/content/Context;

    invoke-static {}, Lc8/LMc;->a()Lc8/LMc;

    invoke-static {}, Lc8/LMc;->o()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/qMc;->b(Landroid/content/Context;Ljava/lang/String;)V

    if-nez v3, :cond_c

    move v0, v2

    :goto_1
    iput v0, p0, Lc8/ZLc;->c:I

    iget-object v0, p0, Lc8/ZLc;->a:Landroid/content/Context;

    iget-object v3, p0, Lc8/ZLc;->b:Lc8/aMc;

    invoke-virtual {v3}, Lc8/aMc;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lc8/XMc;->a(Landroid/content/Context;Ljava/lang/String;)Lc8/TMc;

    move-result-object v4

    iget-object v5, p0, Lc8/ZLc;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const-string/jumbo v0, "connectivity"

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_14

    :goto_3
    if-eqz v1, :cond_1

    invoke-static {v5}, Lc8/qMc;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/log/ap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lc8/eNc;

    invoke-direct {v1, v0, v4}, Lc8/eNc;-><init>(Ljava/lang/String;Lc8/TMc;)V

    .line 1000
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lc8/fNc;

    invoke-direct {v2, v1}, Lc8/fNc;-><init>(Lc8/eNc;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_4
    iget v0, p0, Lc8/ZLc;->c:I

    return v0

    .line 4294967295
    :cond_2
    :try_start_1
    iget-object v3, p0, Lc8/ZLc;->a:Landroid/content/Context;

    invoke-static {v3}, Lc8/ZLc;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/IMc;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto/16 :goto_0

    :cond_3
    move v3, v2

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lc8/iMc;->a()V

    iget-object v3, p0, Lc8/ZLc;->a:Landroid/content/Context;

    invoke-static {v3, p1}, Lc8/iMc;->b(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lc8/rMc;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lc8/IMc;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v1

    :goto_5
    if-eqz v3, :cond_6

    move v3, v1

    goto/16 :goto_0

    :cond_5
    move v3, v2

    goto :goto_5

    :cond_6
    const-string/jumbo v3, "tid"

    const-string/jumbo v5, ""

    invoke-static {p1, v3, v5}, Lc8/IMc;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "utdid"

    const-string/jumbo v6, ""

    invoke-static {p1, v5, v6}, Lc8/IMc;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lc8/IMc;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Lc8/rMc;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lc8/IMc;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v1

    goto/16 :goto_0

    :cond_7
    invoke-static {v5}, Lc8/IMc;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lc8/rMc;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lc8/IMc;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    move v3, v1

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lc8/ZLc;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lc8/rMc;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    move v3, v1

    goto/16 :goto_0

    :cond_9
    iget-object v3, p0, Lc8/ZLc;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lc8/ZLc;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/IMc;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v1

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lc8/ZLc;->a:Landroid/content/Context;

    invoke-static {v3}, Lc8/ZLc;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/IMc;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v1

    goto/16 :goto_0

    :cond_b
    move v3, v2

    goto/16 :goto_0

    :cond_c
    new-instance v3, Lc8/cMc;

    invoke-direct {v3}, Lc8/cMc;-><init>()V

    iget-object v3, p0, Lc8/ZLc;->a:Landroid/content/Context;

    invoke-static {}, Lc8/aMc;->a()Lc8/aMc;

    move-result-object v5

    invoke-virtual {v5}, Lc8/aMc;->b()I

    move-result v5

    invoke-static {v3, v5}, Lc8/DMc;->startUmidTaskSync(Landroid/content/Context;I)Ljava/lang/String;

    invoke-direct {p0, p1}, Lc8/ZLc;->b(Ljava/util/Map;)Lc8/QMc;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-boolean v5, v3, Lc8/QMc;->a:Z

    if-eqz v5, :cond_e

    iget-object v5, v3, Lc8/QMc;->c:Ljava/lang/String;

    invoke-static {v5}, Lc8/IMc;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    move v0, v1

    :cond_d
    :goto_6
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    if-eqz v3, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Server error, result:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lc8/OMc;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/bMc;->a(Ljava/lang/String;)V

    :goto_7
    iget-object v0, p0, Lc8/ZLc;->a:Landroid/content/Context;

    invoke-static {v0, v4}, Lc8/ZLc;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/IMc;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x4

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v5, "APPKEY_ERROR"

    iget-object v6, v3, Lc8/QMc;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v0, 0x3

    goto :goto_6

    :pswitch_1
    iget-object v0, p0, Lc8/ZLc;->a:Landroid/content/Context;

    const-string/jumbo v5, "1"

    iget-object v6, v3, Lc8/QMc;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v0, v5}, Lc8/qMc;->a(Landroid/content/Context;Z)V

    iget-object v5, p0, Lc8/ZLc;->a:Landroid/content/Context;

    iget-object v0, v3, Lc8/QMc;->f:Ljava/lang/String;

    if-nez v0, :cond_10

    const-string/jumbo v0, "0"

    :goto_8
    invoke-static {v5, v0}, Lc8/qMc;->d(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/ZLc;->a:Landroid/content/Context;

    iget-object v5, v3, Lc8/QMc;->g:Ljava/lang/String;

    invoke-static {v0, v5}, Lc8/qMc;->e(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/ZLc;->a:Landroid/content/Context;

    iget-object v5, v3, Lc8/QMc;->h:Ljava/lang/String;

    invoke-static {v0, v5}, Lc8/qMc;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/ZLc;->a:Landroid/content/Context;

    iget-object v5, v3, Lc8/QMc;->i:Ljava/lang/String;

    invoke-static {v0, v5}, Lc8/qMc;->f(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/ZLc;->a:Landroid/content/Context;

    iget-object v5, v3, Lc8/QMc;->k:Ljava/lang/String;

    invoke-static {v0, v5}, Lc8/qMc;->g(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/ZLc;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lc8/iMc;->b(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/rMc;->c(Ljava/lang/String;)V

    iget-object v0, v3, Lc8/QMc;->d:Ljava/lang/String;

    invoke-static {v4, v0}, Lc8/rMc;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v3, Lc8/QMc;->c:Ljava/lang/String;

    invoke-static {v0}, Lc8/rMc;->b(Ljava/lang/String;)V

    iget-object v0, v3, Lc8/QMc;->j:Ljava/lang/String;

    invoke-static {v0}, Lc8/rMc;->d(Ljava/lang/String;)V

    const-string/jumbo v0, "tid"

    const-string/jumbo v3, ""

    invoke-static {p1, v0, v3}, Lc8/IMc;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/IMc;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static {}, Lc8/rMc;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lc8/IMc;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-static {v0}, Lc8/rMc;->e(Ljava/lang/String;)V

    :goto_9
    invoke-static {v0}, Lc8/rMc;->e(Ljava/lang/String;)V

    const-string/jumbo v0, "utdid"

    const-string/jumbo v3, ""

    invoke-static {p1, v0, v3}, Lc8/IMc;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/IMc;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {}, Lc8/rMc;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lc8/IMc;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-static {v0}, Lc8/rMc;->f(Ljava/lang/String;)V

    :goto_a
    invoke-static {v0}, Lc8/rMc;->f(Ljava/lang/String;)V

    invoke-static {}, Lc8/rMc;->a()V

    invoke-static {}, Lc8/rMc;->g()Lc8/lMc;

    move-result-object v0

    iget-object v3, p0, Lc8/ZLc;->a:Landroid/content/Context;

    invoke-static {v3, v0}, Lc8/mMc;->a(Landroid/content/Context;Lc8/lMc;)V

    invoke-static {}, Lc8/mMc;->a()V

    iget-object v0, p0, Lc8/ZLc;->a:Landroid/content/Context;

    new-instance v3, Lc8/kMc;

    invoke-static {}, Lc8/rMc;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lc8/rMc;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lc8/rMc;->f()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v5, v6, v7}, Lc8/kMc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lc8/jMc;->a(Landroid/content/Context;Lc8/kMc;)V

    invoke-static {}, Lc8/jMc;->a()V

    invoke-static {v4}, Lc8/rMc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lc8/ZLc;->a:Landroid/content/Context;

    invoke-static {v3, v4, v0}, Lc8/pMc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc8/pMc;->a()V

    iget-object v0, p0, Lc8/ZLc;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v0, v4, v6, v7}, Lc8/qMc;->a(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_f
    move v0, v2

    goto/16 :goto_1

    :cond_10
    iget-object v0, v3, Lc8/QMc;->f:Ljava/lang/String;

    goto/16 :goto_8

    :cond_11
    invoke-static {}, Lc8/rMc;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_12
    invoke-static {}, Lc8/rMc;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :pswitch_2
    move v0, v1

    goto/16 :goto_1

    :cond_13
    const-string/jumbo v0, "Server error, returned null"

    invoke-static {v0}, Lc8/bMc;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    .line 1000
    :catch_0
    move-exception v0

    invoke-static {v0}, Lc8/bMc;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_14
    move v1, v2

    .line 4294967295
    goto/16 :goto_3

    :cond_15
    move-object v0, v3

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
