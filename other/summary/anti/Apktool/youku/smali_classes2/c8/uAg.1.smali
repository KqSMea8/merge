.class public Lc8/uAg;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x1

    sput v0, Lc8/uAg;->a:I

    sput v0, Lc8/uAg;->b:I

    const/4 v0, 0x2

    sput v0, Lc8/uAg;->c:I

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lc8/uAg;->d:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lc8/uAg;->a:I

    sget v3, Lc8/uAg;->b:I

    sget v0, Lc8/uAg;->c:I

    int-to-long v4, v0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lc8/uAg;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lc8/uAg;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lc8/lAg;->a(Landroid/content/Context;)Lc8/lAg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/lAg;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cAg;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cAg;->n()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.xiaomi.push.service.XMPushService"

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.push.network_status_changed"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {p1}, Lc8/Nzg;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lc8/lAg;->a(Landroid/content/Context;)Lc8/lAg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/lAg;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lc8/lAg;->a(Landroid/content/Context;)Lc8/lAg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/lAg;->c()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lc8/Hzg;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lc8/uAg;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lc8/uAg;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lc8/uAg;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lc8/vAg;

    invoke-direct {v1, p0, p1}, Lc8/vAg;-><init>(Lc8/uAg;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
