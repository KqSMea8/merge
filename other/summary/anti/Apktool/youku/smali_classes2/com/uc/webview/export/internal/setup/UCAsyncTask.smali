.class public Lcom/uc/webview/export/internal/setup/UCAsyncTask;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/setup/UCAsyncTask$a;,
        Lcom/uc/webview/export/internal/setup/UCAsyncTask$c;,
        Lcom/uc/webview/export/internal/setup/UCAsyncTask$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RETURN_TYPE:",
        "Lcom/uc/webview/export/internal/setup/UCAsyncTask;",
        "CA",
        "LLBACK_TYPE:Lcom/uc/webview/export/internal/setup/UCAsyncTask;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field protected static final EVENT_COST:Ljava/lang/String; = "cost"

.field protected static final EVENT_DIE:Ljava/lang/String; = "die"

.field protected static final EVENT_EXCEPTION:Ljava/lang/String; = "exception"

.field protected static final EVENT_GONE:Ljava/lang/String; = "gone"

.field protected static final EVENT_PAUSE:Ljava/lang/String; = "pause"

.field protected static final EVENT_PROGRESS:Ljava/lang/String; = "progress"

.field protected static final EVENT_RESUME:Ljava/lang/String; = "resume"

.field protected static final EVENT_START:Ljava/lang/String; = "start"

.field protected static final EVENT_STOP:Ljava/lang/String; = "stop"

.field protected static final EVENT_SUCCESS:Ljava/lang/String; = "success"

.field public static final cleanThread:I = 0x2718

.field public static final clearSubTasks:I = 0x271c

.field public static final getBlankString:I = 0x271b

.field public static final getCallback:I = 0x2717

.field public static final getCosts:I = 0x2716

.field public static final getEvent:I = 0x2719

.field public static final getParent:I = 0x2715

.field public static final getParentCnt:I = 0x271a

.field public static final getPercent:I = 0x2721

.field public static final getPriority:I = 0x271d

.field public static final getRootTask:I = 0x271f

.field public static final getTaskCount:I = 0x271e

.field public static final inThread:I = 0x2720

.field public static final isPaused:I = 0x2722

.field private static final n:Ljava/lang/Boolean;

.field public static final post:I = 0x2714

.field public static final setCallbacks:I = 0x2712

.field public static final setParent:I = 0x2711

.field public static final setPriority:I = 0x2713


# instance fields
.field private a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

.field private b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/uc/webview/export/internal/setup/UCAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Integer;

.field private f:Z

.field private g:Z

.field private final h:Lcom/uc/webview/export/internal/setup/ap;

.field private i:Landroid/os/HandlerThread;

.field private j:Landroid/os/Handler;

.field private k:Ljava/lang/String;

.field private l:J

.field private m:Ljava/lang/Runnable;

.field protected mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<TCA",
            "LLBACK_TYPE;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mException:Lcom/uc/webview/export/internal/setup/UCSetupException;

.field protected mExtraException:Lcom/uc/webview/export/internal/setup/UCSetupException;

.field protected mHasStarted:Z

.field protected mPercent:I

.field private o:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->n:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;-><init>(Ljava/lang/Runnable;)V

    .line 82
    const/16 v0, 0x2711

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v2, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->c:I

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->d:Ljava/lang/Object;

    .line 38
    iput-boolean v2, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->f:Z

    .line 39
    iput-boolean v2, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->g:Z

    .line 40
    new-instance v0, Lcom/uc/webview/export/internal/setup/ap;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/ap;-><init>()V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->h:Lcom/uc/webview/export/internal/setup/ap;

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->l:J

    .line 50
    iput-boolean v2, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mHasStarted:Z

    .line 54
    sget-object v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->o:Ljava/util/Vector;

    .line 70
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->e:Ljava/lang/Integer;

    .line 71
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;-><init>(Ljava/lang/Integer;)V

    .line 76
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->m:Ljava/lang/Runnable;

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/UCAsyncTask;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->j:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/ap;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->h:Lcom/uc/webview/export/internal/setup/ap;

    return-object v0
.end method

.method static synthetic b(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->f:Z

    return v0
.end method

.method static synthetic c()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->n:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic c(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->c:I

    return v0
.end method

.method static synthetic f(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->l:J

    return-wide v0
.end method

.method static synthetic g(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)J
    .locals 2

    .prologue
    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->l:J

    return-wide v0
.end method

.method static synthetic h(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->g:Z

    return v0
.end method

.method static synthetic i(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic j(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    return-object v0
.end method

.method static synthetic k(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->o:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method protected callback(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 298
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->k:Ljava/lang/String;

    .line 302
    :try_start_0
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v3

    .line 303
    const-string/jumbo v0, "stat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    const-string/jumbo v0, "d"

    const-string/jumbo v1, "UCAsyncTask"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v2

    .line 305
    if-eqz v2, :cond_0

    .line 306
    const-string/jumbo v0, "cost"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 307
    sget-object v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->o:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "callback: "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x271b

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v1, 0x271a

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v8}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    aput-object v1, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " cost:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "%5s"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v1, v6, v7

    .line 310
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " cost_cpu:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "%5s"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v1, v6, v7

    .line 311
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " task:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 318
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    .line 316
    invoke-virtual {v2, v0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 324
    :cond_0
    const-string/jumbo v0, "exception"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 325
    const-string/jumbo v0, "w"

    const-string/jumbo v1, "UCAsyncTask"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_1

    .line 327
    const-string/jumbo v1, "callback: exception: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 328
    invoke-virtual {v3}, Lcom/uc/webview/export/internal/setup/UCSetupException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eq v3, v1, :cond_1

    .line 329
    const-string/jumbo v1, "callback: rootCause: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/uc/webview/export/internal/setup/UCSetupException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 333
    :cond_1
    :goto_1
    const/16 v0, 0x2717

    new-array v1, v10, [Ljava/lang/Object;

    aput-object p1, v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 338
    instance-of v1, v0, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    .line 339
    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 341
    :cond_2
    instance-of v1, v0, Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_3

    .line 342
    check-cast v0, Landroid/webkit/ValueCallback;

    .line 343
    :try_start_1
    invoke-interface {v0, p0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 345
    :cond_3
    :goto_2
    return-void

    .line 316
    :cond_4
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "callback: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x271b

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v0, 0x271a

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v7}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    aput-object v0, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v0, "progress"

    .line 317
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x2721

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v4}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v0, "exception"

    .line 318
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/uc/webview/export/internal/setup/UCSetupException;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 317
    :cond_5
    const-string/jumbo v0, ""

    goto :goto_3

    .line 318
    :cond_6
    const-string/jumbo v0, ""
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method public getException()Lcom/uc/webview/export/internal/setup/UCSetupException;
    .locals 1
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .prologue
    .line 642
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mException:Lcom/uc/webview/export/internal/setup/UCSetupException;

    return-object v0
.end method

.method public getExtraException()Lcom/uc/webview/export/internal/setup/UCSetupException;
    .locals 1
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .prologue
    .line 651
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mExtraException:Lcom/uc/webview/export/internal/setup/UCSetupException;

    return-object v0
.end method

.method public final varargs invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Object;",
            ")TRETURN_TYPE;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-object p0
.end method

.method public final varargs invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/16 v4, 0x2715

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 127
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    move-object v0, v2

    .line 243
    :goto_1
    return-object v0

    .line 129
    :pswitch_0
    aget-object v0, p2, v1

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 130
    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    goto :goto_0

    .line 134
    :pswitch_1
    aget-object v0, p2, v1

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 135
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 136
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ValueCallback;

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    goto :goto_2

    .line 142
    :pswitch_2
    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 143
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 147
    :pswitch_3
    aget-object v0, p2, v1

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 148
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    if-eq v1, p0, :cond_1

    .line 149
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Please use \"new UCAsyncTask(parentTask).start()\" instead of \"post(new UCAsyncTask())\" to add sub task."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :try_start_0
    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v3, :cond_2

    .line 154
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v3, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 156
    :cond_2
    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 157
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 158
    :pswitch_4
    iput-object v2, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 162
    iput-object v2, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->j:Landroid/os/Handler;

    .line 163
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 164
    iput-object v2, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->i:Landroid/os/HandlerThread;

    goto :goto_0

    .line 168
    :pswitch_5
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    goto/16 :goto_0

    .line 174
    :pswitch_6
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    goto/16 :goto_1

    .line 178
    :pswitch_7
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->o:Ljava/util/Vector;

    goto/16 :goto_1

    .line 182
    :pswitch_8
    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/String;

    .line 183
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_3

    move-object v0, v2

    goto/16 :goto_1

    :cond_3
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ValueCallback;

    goto/16 :goto_1

    .line 187
    :pswitch_9
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->k:Ljava/lang/String;

    goto/16 :goto_1

    .line 191
    :pswitch_a
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-object v3, v0

    move v0, v1

    .line 193
    :goto_3
    if-eqz v3, :cond_4

    .line 194
    add-int/lit8 v2, v0, 0x1

    .line 195
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-object v3, v0

    move v0, v2

    goto :goto_3

    .line 197
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    .line 201
    :pswitch_b
    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    :goto_4
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_5

    .line 205
    const-string/jumbo v0, "    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_4

    .line 207
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 211
    :pswitch_c
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->e:Ljava/lang/Integer;

    goto/16 :goto_1

    .line 215
    :pswitch_d
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v1, :cond_6

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->c:I

    add-int/2addr v0, v1

    goto :goto_5

    .line 220
    :goto_6
    :pswitch_e
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 221
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-object p0, v0

    goto :goto_6

    :cond_7
    move-object v0, p0

    .line 223
    goto/16 :goto_1

    .line 227
    :pswitch_f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->i:Landroid/os/HandlerThread;

    if-ne v2, v3, :cond_8

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    move v0, v1

    goto :goto_7

    .line 231
    :pswitch_10
    iget v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mPercent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    .line 235
    :pswitch_11
    const/16 v0, 0x271f

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 236
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->h:Lcom/uc/webview/export/internal/setup/ap;

    monitor-enter v1

    .line 237
    :try_start_1
    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->h:Lcom/uc/webview/export/internal/setup/ap;

    iget-boolean v0, v0, Lcom/uc/webview/export/internal/setup/ap;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    goto/16 :goto_1

    .line 238
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_5
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<TCA",
            "LLBACK_TYPE;",
            ">;)TRETURN_TYPE;"
        }
    .end annotation

    .prologue
    .line 623
    if-eqz p1, :cond_2

    .line 624
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    .line 625
    monitor-enter p0

    .line 626
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 627
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 629
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    :cond_1
    if-nez p2, :cond_3

    .line 632
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    :cond_2
    :goto_0
    return-object p0

    .line 629
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 634
    :cond_3
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public pause()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRETURN_TYPE;"
        }
    .end annotation

    .prologue
    .line 580
    const/16 v0, 0x271f

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 581
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->h:Lcom/uc/webview/export/internal/setup/ap;

    monitor-enter v1

    .line 582
    :try_start_0
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->h:Lcom/uc/webview/export/internal/setup/ap;

    iget-boolean v2, v2, Lcom/uc/webview/export/internal/setup/ap;->a:Z

    if-nez v2, :cond_0

    .line 583
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->f:Z

    .line 584
    :cond_0
    monitor-exit v1

    .line 585
    return-object p0

    .line 584
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRETURN_TYPE;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 604
    const/16 v0, 0x271f

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 605
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->h:Lcom/uc/webview/export/internal/setup/ap;

    monitor-enter v1

    .line 606
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->f:Z

    .line 608
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->h:Lcom/uc/webview/export/internal/setup/ap;

    iget-boolean v2, v2, Lcom/uc/webview/export/internal/setup/ap;->a:Z

    if-eqz v2, :cond_0

    .line 609
    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->h:Lcom/uc/webview/export/internal/setup/ap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/ap;->a(ILjava/lang/Object;)V

    .line 611
    :cond_0
    monitor-exit v1

    .line 613
    return-object p0

    .line 611
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->m:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->m:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 620
    :cond_0
    return-void
.end method

.method public setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V
    .locals 0

    .prologue
    .line 646
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mException:Lcom/uc/webview/export/internal/setup/UCSetupException;

    .line 647
    return-void
.end method

.method public setExtraException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V
    .locals 0

    .prologue
    .line 655
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mExtraException:Lcom/uc/webview/export/internal/setup/UCSetupException;

    .line 656
    return-void
.end method

.method public start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRETURN_TYPE;"
        }
    .end annotation

    .prologue
    .line 549
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 550
    :try_start_0
    iget-boolean v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mHasStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->i:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 551
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mHasStarted:Z

    .line 553
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    if-eqz v0, :cond_2

    .line 554
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    const/16 v2, 0x2714

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 559
    :cond_1
    :goto_0
    monitor-exit v1

    .line 561
    return-object p0

    .line 556
    :cond_2
    new-instance v0, Lcom/uc/webview/export/internal/setup/aq;

    const-class v2, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->e:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v0, p0, v2, v3}, Lcom/uc/webview/export/internal/setup/aq;-><init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    goto :goto_0

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final start(J)Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TRETURN_TYPE;"
        }
    .end annotation

    .prologue
    .line 565
    iput-wide p1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->l:J

    .line 566
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public stop()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRETURN_TYPE;"
        }
    .end annotation

    .prologue
    .line 571
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->h:Lcom/uc/webview/export/internal/setup/ap;

    monitor-enter v1

    .line 572
    :try_start_0
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->resume()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->g:Z

    .line 574
    monitor-exit v1

    .line 575
    return-object p0

    .line 574
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
