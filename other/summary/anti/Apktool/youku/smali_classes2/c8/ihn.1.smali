.class public abstract Lc8/ihn;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lc8/fhn;


# static fields
.field private static instance:Lc8/mhn;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lc8/fhn;
    .locals 2

    .prologue
    .line 29
    const-class v1, Lc8/ihn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/ihn;->instance:Lc8/mhn;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lc8/mhn;

    invoke-direct {v0}, Lc8/mhn;-><init>()V

    sput-object v0, Lc8/ihn;->instance:Lc8/mhn;

    .line 31
    :cond_0
    sget-object v0, Lc8/ihn;->instance:Lc8/mhn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
