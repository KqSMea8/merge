.class public Lc8/Aac;
.super Ljava/lang/Object;


# static fields
.field private static a:Lc8/dac;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized destroy()V
    .locals 3

    const-class v1, Lc8/Aac;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "AlibcWantEnv"

    const-string/jumbo v2, "destroy"

    invoke-static {v0, v2}, Lc8/vac;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc8/cac;->destroy()V

    sget-object v0, Lc8/Aac;->a:Lc8/dac;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Aac;->a:Lc8/dac;

    invoke-static {v0}, Lc8/eac;->unregistListener(Lc8/dac;)V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lc8/Aac;->a:Lc8/dac;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized prepare(Landroid/content/Context;)V
    .locals 3

    const-class v1, Lc8/Aac;

    monitor-enter v1

    if-nez p0, :cond_1

    :try_start_0
    const-string/jumbo v0, "init_error"

    const-string/jumbo v2, "context is null"

    invoke-static {v0, v2}, Lc8/Bac;->onEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lc8/Aac;->a:Lc8/dac;

    if-nez v0, :cond_0

    new-instance v0, Lc8/Oac;

    invoke-direct {v0}, Lc8/Oac;-><init>()V

    sput-object v0, Lc8/Aac;->a:Lc8/dac;

    invoke-static {v0}, Lc8/eac;->registListener(Lc8/dac;)V

    invoke-static {p0}, Lc8/cac;->init(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
