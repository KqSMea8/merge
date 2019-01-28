.class public Lc8/EAb;
.super Ljava/lang/Object;
.source "CrashDispatcher.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static instance:Lc8/EAb;


# instance fields
.field private handler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mlisteners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/FAb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lc8/EAb;

    invoke-direct {v0}, Lc8/EAb;-><init>()V

    sput-object v0, Lc8/EAb;->instance:Lc8/EAb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/EAb;->mlisteners:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lc8/EAb;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lc8/EAb;->instance:Lc8/EAb;

    return-object v0
.end method


# virtual methods
.method public addCrashListener(Lc8/FAb;)V
    .locals 1
    .param p1, "listener"    # Lc8/FAb;

    .prologue
    .line 42
    iget-object v0, p0, Lc8/EAb;->mlisteners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lc8/EAb;->handler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 23
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 24
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 29
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lc8/EAb;->mlisteners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 30
    iget-object v1, p0, Lc8/EAb;->mlisteners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/FAb;

    invoke-interface {v1, p1, p2}, Lc8/FAb;->onCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    iget-object v1, p0, Lc8/EAb;->handler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_1

    .line 36
    iget-object v1, p0, Lc8/EAb;->handler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 39
    :cond_1
    :goto_1
    return-void

    .line 35
    :catch_0
    move-exception v1

    iget-object v1, p0, Lc8/EAb;->handler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_1

    .line 36
    iget-object v1, p0, Lc8/EAb;->handler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 35
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lc8/EAb;->handler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v2, :cond_2

    .line 36
    iget-object v2, p0, Lc8/EAb;->handler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v2, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_2
    throw v1
.end method
