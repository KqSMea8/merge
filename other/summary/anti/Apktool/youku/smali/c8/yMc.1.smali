.class public Lc8/yMc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/xMc;,
        Lc8/wMc;
    }
.end annotation


# static fields
.field private static a:Lc8/yMc;

.field private static c:Ljava/lang/Object;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/yMc;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8/yMc;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lc8/yMc;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lc8/yMc;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lc8/yMc;
    .locals 2

    sget-object v0, Lc8/yMc;->a:Lc8/yMc;

    if-nez v0, :cond_1

    sget-object v1, Lc8/yMc;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/yMc;->a:Lc8/yMc;

    if-nez v0, :cond_0

    new-instance v0, Lc8/yMc;

    invoke-direct {v0, p0}, Lc8/yMc;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/yMc;->a:Lc8/yMc;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lc8/yMc;->a:Lc8/yMc;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getUtdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lc8/EMc;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApdidToken()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lc8/yMc;->b:Landroid/content/Context;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lc8/ZLc;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/IMc;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lc8/yMc;->initToken(ILjava/util/Map;Lc8/wMc;)V

    :cond_0
    return-object v0
.end method

.method public getSdkName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "APPSecuritySDK-alipaysdk"

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "3.2.2-20170922"

    return-object v0
.end method

.method public declared-synchronized getTokenResult()Lc8/xMc;
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v1, Lc8/xMc;

    invoke-direct {v1, p0}, Lc8/xMc;-><init>(Lc8/yMc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lc8/yMc;->b:Landroid/content/Context;

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Lc8/ZLc;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/xMc;->apdidToken:Ljava/lang/String;

    iget-object v2, p0, Lc8/yMc;->b:Landroid/content/Context;

    invoke-static {v2}, Lc8/qMc;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/xMc;->clientKey:Ljava/lang/String;

    iget-object v2, p0, Lc8/yMc;->b:Landroid/content/Context;

    invoke-static {v2}, Lc8/ZLc;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/xMc;->apdid:Ljava/lang/String;

    iget-object v2, p0, Lc8/yMc;->b:Landroid/content/Context;

    invoke-static {v2}, Lc8/DMc;->getSecurityToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/xMc;->umidToken:Ljava/lang/String;

    iget-object v2, v1, Lc8/xMc;->apdid:Ljava/lang/String;

    invoke-static {v2}, Lc8/IMc;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, v1, Lc8/xMc;->apdidToken:Ljava/lang/String;

    invoke-static {v0}, Lc8/IMc;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lc8/xMc;->clientKey:Ljava/lang/String;

    invoke-static {v0}, Lc8/IMc;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lc8/yMc;->initToken(ILjava/util/Map;Lc8/wMc;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public initToken(ILjava/util/Map;Lc8/wMc;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc8/wMc;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lc8/aMc;->a()Lc8/aMc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/aMc;->a(I)V

    iget-object v0, p0, Lc8/yMc;->b:Landroid/content/Context;

    invoke-static {v0}, Lc8/qMc;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc8/aMc;->a()Lc8/aMc;

    move-result-object v1

    invoke-virtual {v1}, Lc8/aMc;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lc8/IMc;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lc8/IMc;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lc8/yMc;->b:Landroid/content/Context;

    invoke-static {v2}, Lc8/jMc;->a(Landroid/content/Context;)V

    iget-object v2, p0, Lc8/yMc;->b:Landroid/content/Context;

    invoke-static {v2}, Lc8/mMc;->a(Landroid/content/Context;)V

    iget-object v2, p0, Lc8/yMc;->b:Landroid/content/Context;

    invoke-static {v2}, Lc8/pMc;->a(Landroid/content/Context;)V

    invoke-static {}, Lc8/rMc;->h()V

    :cond_0
    invoke-static {v0, v1}, Lc8/IMc;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc8/yMc;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lc8/qMc;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v0, "utdid"

    const-string/jumbo v1, ""

    invoke-static {p2, v0, v1}, Lc8/IMc;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tid"

    const-string/jumbo v2, ""

    invoke-static {p2, v1, v2}, Lc8/IMc;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userId"

    const-string/jumbo v3, ""

    invoke-static {p2, v2, v3}, Lc8/IMc;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lc8/IMc;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lc8/yMc;->b:Landroid/content/Context;

    invoke-static {v0}, Lc8/EMc;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "utdid"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "tid"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "userId"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "appName"

    const-string/jumbo v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "appKeyClient"

    const-string/jumbo v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "appchannel"

    const-string/jumbo v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "rpcVersion"

    const-string/jumbo v1, "8"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lc8/tMc;->a()Lc8/tMc;

    move-result-object v0

    new-instance v1, Lc8/vMc;

    invoke-direct {v1, p0, v3, p3}, Lc8/vMc;-><init>(Lc8/yMc;Ljava/util/Map;Lc8/wMc;)V

    invoke-virtual {v0, v1}, Lc8/tMc;->a(Ljava/lang/Runnable;)V

    return-void
.end method
