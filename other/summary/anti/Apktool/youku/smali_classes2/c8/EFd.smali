.class public final Lc8/EFd;
.super Ljava/lang/Object;
.source "LastLocationManager.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Lc8/REd;

.field c:Lc8/REd;

.field d:Lc8/REd;

.field e:Lc8/eDd;

.field f:J

.field g:Z

.field private h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc8/EFd;->a:Ljava/lang/String;

    iput-object v0, p0, Lc8/EFd;->b:Lc8/REd;

    iput-object v0, p0, Lc8/EFd;->c:Lc8/REd;

    iput-object v0, p0, Lc8/EFd;->d:Lc8/REd;

    iput-object v0, p0, Lc8/EFd;->e:Lc8/eDd;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/EFd;->f:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/EFd;->g:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/EFd;->h:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-boolean v0, p0, Lc8/EFd;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lc8/EFd;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, "MD5"

    iget-object v1, p0, Lc8/EFd;->h:Landroid/content/Context;

    invoke-static {v1}, Lc8/TFd;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/MEd;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/EFd;->a:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lc8/EFd;->e:Lc8/eDd;

    if-nez v0, :cond_2

    const-class v0, Lc8/SEd;

    invoke-static {v0}, Lc8/eDd;->a(Ljava/lang/Class;)Lc8/dDd;

    move-result-object v0

    new-instance v1, Lc8/eDd;

    iget-object v2, p0, Lc8/EFd;->h:Landroid/content/Context;

    invoke-static {}, Lc8/uFd;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lc8/eDd;-><init>(Landroid/content/Context;Lc8/dDd;Ljava/lang/String;)V

    iput-object v1, p0, Lc8/EFd;->e:Lc8/eDd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/EFd;->g:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LastLocationManager"

    const-string/jumbo v2, "<init>:DBOperation"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lc8/EFd;->h:Landroid/content/Context;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lc8/uFd;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->isMock()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->isFixLastLocation()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lc8/REd;

    invoke-direct {v2}, Lc8/REd;-><init>()V

    invoke-virtual {v2, p1}, Lc8/REd;->a(Lcom/amap/api/location/AMapLocation;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v3

    if-ne v3, v1, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lc8/REd;->a(Ljava/lang/String;)V

    :goto_1
    :try_start_0
    iput-object v2, p0, Lc8/EFd;->b:Lc8/REd;

    iput-object v2, p0, Lc8/EFd;->c:Lc8/REd;

    iget-object v3, p0, Lc8/EFd;->d:Lc8/REd;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lc8/EFd;->d:Lc8/REd;

    invoke-virtual {v3}, Lc8/REd;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v3

    invoke-virtual {v2}, Lc8/REd;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v2

    invoke-static {v3, v2}, Lc8/uFd;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v2

    const/high16 v3, 0x43fa0000    # 500.0f

    cmpg-float v2, v2, v3

    if-lez v2, :cond_0

    :cond_2
    invoke-static {}, Lc8/uFd;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lc8/EFd;->f:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v2, p2}, Lc8/REd;->a(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v2, "LastLocationManager"

    const-string/jumbo v3, "setLastFix"

    invoke-static {v1, v2, v3}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Lcom/amap/api/location/AMapLocation;
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v0

    if-eq v0, v4, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lc8/EFd;->b:Lc8/REd;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lc8/EFd;->d()Lc8/REd;

    move-result-object v0

    iput-object v0, p0, Lc8/EFd;->b:Lc8/REd;

    :cond_2
    iget-object v0, p0, Lc8/EFd;->b:Lc8/REd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/EFd;->b:Lc8/REd;

    invoke-virtual {v0}, Lc8/REd;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lc8/uFd;->b()J

    move-result-wide v0

    iget-object v2, p0, Lc8/EFd;->b:Lc8/REd;

    invoke-virtual {v2}, Lc8/REd;->d()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lc8/EFd;->b:Lc8/REd;

    invoke-virtual {v0}, Lc8/REd;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    invoke-virtual {p1, v4}, Lcom/amap/api/location/AMapLocation;->setFixLastLocation(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lc8/EFd;->b:Lc8/REd;

    invoke-virtual {v0}, Lc8/REd;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lc8/uFd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/EFd;->b:Lc8/REd;

    invoke-virtual {v0}, Lc8/REd;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    invoke-virtual {p1, v4}, Lcom/amap/api/location/AMapLocation;->setFixLastLocation(Z)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lc8/EFd;->c()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/EFd;->f:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/EFd;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lc8/EFd;->b:Lc8/REd;

    const/4 v0, 0x0

    iput-object v0, p0, Lc8/EFd;->c:Lc8/REd;

    const/4 v0, 0x0

    iput-object v0, p0, Lc8/EFd;->d:Lc8/REd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LastLocationManager"

    const-string/jumbo v2, "destroy"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lc8/EFd;->a()V

    iget-object v1, p0, Lc8/EFd;->c:Lc8/REd;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/EFd;->c:Lc8/REd;

    invoke-virtual {v1}, Lc8/REd;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    invoke-static {v1}, Lc8/uFd;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/EFd;->e:Lc8/eDd;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/EFd;->c:Lc8/REd;

    iget-object v2, p0, Lc8/EFd;->d:Lc8/REd;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lc8/EFd;->c:Lc8/REd;

    invoke-virtual {v1}, Lc8/REd;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lc8/EFd;->c:Lc8/REd;

    invoke-virtual {v1}, Lc8/REd;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->toStr()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/EFd;->c:Lc8/REd;

    invoke-virtual {v2}, Lc8/REd;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/EFd;->c:Lc8/REd;

    iput-object v3, p0, Lc8/EFd;->d:Lc8/REd;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v3, p0, Lc8/EFd;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lc8/MEd;->c([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lc8/UFd;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v0, "UTF-8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v2, p0, Lc8/EFd;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lc8/MEd;->c([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lc8/UFd;->a([B)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lc8/REd;

    invoke-direct {v2}, Lc8/REd;-><init>()V

    invoke-virtual {v2, v1}, Lc8/REd;->b(Ljava/lang/String;)V

    invoke-static {}, Lc8/uFd;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lc8/REd;->a(J)V

    invoke-virtual {v2, v0}, Lc8/REd;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lc8/EFd;->e:Lc8/eDd;

    const-string/jumbo v1, "_id=1"

    invoke-virtual {v0, v2, v1}, Lc8/eDd;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lc8/uFd;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/EFd;->f:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LastLocationManager"

    const-string/jumbo v2, "saveLastFix"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method final d()Lc8/REd;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lc8/EFd;->h:Landroid/content/Context;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lc8/EFd;->a()V

    :try_start_0
    iget-object v0, p0, Lc8/EFd;->e:Lc8/eDd;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lc8/EFd;->e:Lc8/eDd;

    const-string/jumbo v2, "_id=1"

    const-class v3, Lc8/REd;

    invoke-virtual {v0, v2, v3}, Lc8/eDd;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/REd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Lc8/REd;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/UFd;->b(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_4

    array-length v3, v2

    if-lez v3, :cond_4

    iget-object v3, p0, Lc8/EFd;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lc8/MEd;->d([BLjava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_4

    array-length v2, v3

    if-lez v2, :cond_4

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Lc8/REd;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/UFd;->b(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v4, v3

    if-lez v4, :cond_3

    iget-object v4, p0, Lc8/EFd;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lc8/MEd;->d([BLjava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v4, v3

    if-lez v4, :cond_3

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_3
    invoke-virtual {v0, v1}, Lc8/REd;->a(Ljava/lang/String;)V

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/amap/api/location/AMapLocation;

    const-string/jumbo v3, ""

    invoke-direct {v2, v3}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lc8/cFd;->a(Lcom/amap/api/location/AMapLocation;Lorg/json/JSONObject;)V

    invoke-static {v2}, Lc8/uFd;->b(Lcom/amap/api/location/AMapLocation;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lc8/REd;->a(Lcom/amap/api/location/AMapLocation;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :goto_3
    const-string/jumbo v2, "LastLocationManager"

    const-string/jumbo v3, "readLastFix"

    invoke-static {v1, v2, v3}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_3

    :cond_4
    move-object v2, v1

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method
