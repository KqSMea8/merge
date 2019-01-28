.class public Lc8/eId;
.super Ljava/lang/Object;
.source "Core.java"


# static fields
.field private static sInstance:Lc8/eId;


# instance fields
.field private final mExecutorSupplier:Lc8/gId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lc8/eId;->sInstance:Lc8/eId;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lc8/fId;

    invoke-direct {v0}, Lc8/fId;-><init>()V

    iput-object v0, p0, Lc8/eId;->mExecutorSupplier:Lc8/gId;

    .line 30
    return-void
.end method

.method public static getInstance()Lc8/eId;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lc8/eId;->sInstance:Lc8/eId;

    if-nez v0, :cond_1

    .line 34
    const-class v1, Lc8/eId;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lc8/eId;->sInstance:Lc8/eId;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lc8/eId;

    invoke-direct {v0}, Lc8/eId;-><init>()V

    sput-object v0, Lc8/eId;->sInstance:Lc8/eId;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Lc8/eId;->sInstance:Lc8/eId;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getExecutorSupplier()Lc8/gId;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lc8/eId;->mExecutorSupplier:Lc8/gId;

    return-object v0
.end method
