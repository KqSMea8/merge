.class public Lc8/qff;
.super Ljava/lang/Object;


# static fields
.field private static a:Lc8/uff;


# direct methods
.method public static declared-synchronized a()Lc8/uff;
    .locals 2

    const-class v0, Lc8/qff;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc8/qff;->a:Lc8/uff;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Lc8/uff;)V
    .locals 2

    const-class v0, Lc8/qff;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lc8/qff;->a:Lc8/uff;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
