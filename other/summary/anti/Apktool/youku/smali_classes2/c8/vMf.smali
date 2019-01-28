.class public Lc8/vMf;
.super Ljava/lang/Object;
.source "InjectBinding.java"


# instance fields
.field public implementation:Ljava/lang/Class;

.field public name:Ljava/lang/String;

.field public singleton:Z

.field private volatile singletonInstance:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 14
    iget-boolean v0, p0, Lc8/vMf;->singleton:Z

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lc8/vMf;->singletonInstance:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 16
    monitor-enter p0

    .line 17
    :try_start_0
    iget-object v0, p0, Lc8/vMf;->singletonInstance:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 18
    iget-object v0, p0, Lc8/vMf;->implementation:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/vMf;->singletonInstance:Ljava/lang/Object;

    .line 20
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    iget-object v0, p0, Lc8/vMf;->singletonInstance:Ljava/lang/Object;

    .line 24
    :goto_0
    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 24
    :cond_2
    iget-object v0, p0, Lc8/vMf;->implementation:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
