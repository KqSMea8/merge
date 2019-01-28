.class public final Lc8/tMc;
.super Ljava/lang/Object;


# static fields
.field private static a:Lc8/tMc;


# instance fields
.field private b:Ljava/lang/Thread;

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc8/tMc;

    invoke-direct {v0}, Lc8/tMc;-><init>()V

    sput-object v0, Lc8/tMc;->a:Lc8/tMc;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc8/tMc;->b:Ljava/lang/Thread;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc8/tMc;->c:Ljava/util/LinkedList;

    return-void
.end method

.method public static a()Lc8/tMc;
    .locals 1

    sget-object v0, Lc8/tMc;->a:Lc8/tMc;

    return-object v0
.end method

.method static synthetic a(Lc8/tMc;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lc8/tMc;->c:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic b(Lc8/tMc;)Ljava/lang/Thread;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lc8/tMc;->b:Ljava/lang/Thread;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/tMc;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lc8/tMc;->b:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc8/uMc;

    invoke-direct {v1, p0}, Lc8/uMc;-><init>(Lc8/tMc;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lc8/tMc;->b:Ljava/lang/Thread;

    iget-object v0, p0, Lc8/tMc;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
