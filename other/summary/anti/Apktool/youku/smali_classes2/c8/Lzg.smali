.class public Lc8/Lzg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Jzg;,
        Lc8/Kzg;
    }
.end annotation


# instance fields
.field private a:Lc8/Jzg;

.field private b:Landroid/os/Handler;

.field private volatile c:Z

.field private final d:Z

.field private e:I

.field private volatile f:Lc8/Kzg;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/Lzg;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/Lzg;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Lzg;->b:Landroid/os/Handler;

    iput-boolean v1, p0, Lc8/Lzg;->c:Z

    iput v1, p0, Lc8/Lzg;->e:I

    new-instance v0, Lc8/Mzg;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lc8/Mzg;-><init>(Lc8/Lzg;Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/Lzg;->b:Landroid/os/Handler;

    iput-boolean p1, p0, Lc8/Lzg;->d:Z

    iput p2, p0, Lc8/Lzg;->e:I

    return-void
.end method

.method static synthetic a(Lc8/Lzg;)I
    .locals 1

    iget v0, p0, Lc8/Lzg;->e:I

    return v0
.end method

.method static synthetic a(Lc8/Lzg;Lc8/Kzg;)Lc8/Kzg;
    .locals 0

    iput-object p1, p0, Lc8/Lzg;->f:Lc8/Kzg;

    return-object p1
.end method

.method private declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lc8/Lzg;->a:Lc8/Jzg;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Lzg;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lc8/Lzg;)Z
    .locals 1

    iget-boolean v0, p0, Lc8/Lzg;->c:Z

    return v0
.end method

.method static synthetic c(Lc8/Lzg;)Lc8/Kzg;
    .locals 1

    iget-object v0, p0, Lc8/Lzg;->f:Lc8/Kzg;

    return-object v0
.end method

.method static synthetic d(Lc8/Lzg;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lc8/Lzg;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lc8/Lzg;)V
    .locals 0

    invoke-direct {p0}, Lc8/Lzg;->a()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lc8/Kzg;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Lzg;->a:Lc8/Jzg;

    if-nez v0, :cond_0

    new-instance v0, Lc8/Jzg;

    invoke-direct {v0, p0}, Lc8/Jzg;-><init>(Lc8/Lzg;)V

    iput-object v0, p0, Lc8/Lzg;->a:Lc8/Jzg;

    iget-object v0, p0, Lc8/Lzg;->a:Lc8/Jzg;

    iget-boolean v1, p0, Lc8/Lzg;->d:Z

    invoke-virtual {v0, v1}, Lc8/Jzg;->setDaemon(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Lzg;->c:Z

    iget-object v0, p0, Lc8/Lzg;->a:Lc8/Jzg;

    invoke-virtual {v0}, Lc8/Jzg;->start()V

    :cond_0
    iget-object v0, p0, Lc8/Lzg;->a:Lc8/Jzg;

    invoke-virtual {v0, p1}, Lc8/Jzg;->a(Lc8/Kzg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
