.class public Lc8/cBq;
.super Ljava/lang/Object;
.source "RxJavaSchedulersHook.java"


# static fields
.field private static final DEFAULT_INSTANCE:Lc8/cBq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lc8/cBq;

    invoke-direct {v0}, Lc8/cBq;-><init>()V

    sput-object v0, Lc8/cBq;->DEFAULT_INSTANCE:Lc8/cBq;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createComputationScheduler()Lc8/amq;
    .locals 2
    .annotation build Lc8/bnq;
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string/jumbo v1, "RxComputationScheduler-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lc8/cBq;->createComputationScheduler(Ljava/util/concurrent/ThreadFactory;)Lc8/amq;

    move-result-object v0

    return-object v0
.end method

.method public static createComputationScheduler(Ljava/util/concurrent/ThreadFactory;)Lc8/amq;
    .locals 2
    .param p0, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation build Lc8/bnq;
    .end annotation

    .prologue
    .line 64
    if-nez p0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "threadFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    new-instance v0, Lc8/Ywq;

    invoke-direct {v0, p0}, Lc8/Ywq;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static createIoScheduler()Lc8/amq;
    .locals 2
    .annotation build Lc8/bnq;
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string/jumbo v1, "RxIoScheduler-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lc8/cBq;->createIoScheduler(Ljava/util/concurrent/ThreadFactory;)Lc8/amq;

    move-result-object v0

    return-object v0
.end method

.method public static createIoScheduler(Ljava/util/concurrent/ThreadFactory;)Lc8/amq;
    .locals 2
    .param p0, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation build Lc8/bnq;
    .end annotation

    .prologue
    .line 87
    if-nez p0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "threadFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    new-instance v0, Lc8/Swq;

    invoke-direct {v0, p0}, Lc8/Swq;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static createNewThreadScheduler()Lc8/amq;
    .locals 2
    .annotation build Lc8/bnq;
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string/jumbo v1, "RxNewThreadScheduler-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lc8/cBq;->createNewThreadScheduler(Ljava/util/concurrent/ThreadFactory;)Lc8/amq;

    move-result-object v0

    return-object v0
.end method

.method public static createNewThreadScheduler(Ljava/util/concurrent/ThreadFactory;)Lc8/amq;
    .locals 2
    .param p0, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation build Lc8/bnq;
    .end annotation

    .prologue
    .line 110
    if-nez p0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "threadFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    new-instance v0, Lc8/hxq;

    invoke-direct {v0, p0}, Lc8/hxq;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static getDefaultInstance()Lc8/cBq;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lc8/cBq;->DEFAULT_INSTANCE:Lc8/cBq;

    return-object v0
.end method


# virtual methods
.method public getComputationScheduler()Lc8/amq;
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIOScheduler()Lc8/amq;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNewThreadScheduler()Lc8/amq;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSchedule(Lc8/hnq;)Lc8/hnq;
    .locals 0
    .param p1, "action"    # Lc8/hnq;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    return-object p1
.end method
