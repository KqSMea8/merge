.class public Lc8/CMc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/BMc;
    }
.end annotation


# static fields
.field private static a:Lc8/CMc;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lc8/CMc;->a:Lc8/CMc;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc8/CMc;->b:Landroid/content/Context;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "TMNTokenClient initialization error: context is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lc8/CMc;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lc8/CMc;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lc8/CMc;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lc8/CMc;
    .locals 2

    sget-object v0, Lc8/CMc;->a:Lc8/CMc;

    if-nez v0, :cond_1

    const-class v1, Lc8/CMc;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/CMc;->a:Lc8/CMc;

    if-nez v0, :cond_0

    new-instance v0, Lc8/CMc;

    invoke-direct {v0, p0}, Lc8/CMc;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/CMc;->a:Lc8/CMc;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lc8/CMc;->a:Lc8/CMc;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public intiToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/BMc;)V
    .locals 3

    invoke-static {p1}, Lc8/IMc;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    const-string/jumbo v0, ""

    const/4 v1, 0x2

    invoke-interface {p4, v0, v1}, Lc8/BMc;->onResult(Ljava/lang/String;I)V

    :cond_0
    invoke-static {p2}, Lc8/IMc;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    const-string/jumbo v0, ""

    const/4 v1, 0x3

    invoke-interface {p4, v0, v1}, Lc8/BMc;->onResult(Ljava/lang/String;I)V

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "utdid"

    iget-object v2, p0, Lc8/CMc;->b:Landroid/content/Context;

    invoke-static {v2}, Lc8/EMc;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "tid"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "userId"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "appName"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "appKeyClient"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "appchannel"

    const-string/jumbo v2, "openapi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "sessionId"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "rpcVersion"

    const-string/jumbo v2, "8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lc8/tMc;->a()Lc8/tMc;

    move-result-object v1

    new-instance v2, Lc8/AMc;

    invoke-direct {v2, p0, v0, p4, p1}, Lc8/AMc;-><init>(Lc8/CMc;Ljava/util/Map;Lc8/BMc;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc8/tMc;->a(Ljava/lang/Runnable;)V

    return-void
.end method
