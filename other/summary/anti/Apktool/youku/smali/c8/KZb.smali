.class public Lc8/KZb;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()V
    .locals 2

    const-class v1, Lc8/KZb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/NZb;->a:Lc8/NZb;

    invoke-static {v0}, Lc8/cac;->registComponent(Lc8/aac;)Z

    sget-object v0, Lc8/VZb;->a:Lc8/VZb;

    invoke-static {v0}, Lc8/cac;->registComponent(Lc8/aac;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static initPlugin()V
    .locals 3

    sget-object v0, Lc8/SZb;->a:Ljava/lang/String;

    const-class v1, Lc8/SZb;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc8/uFb;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    invoke-static {}, Lc8/hac;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-static {}, Lc8/KZb;->a()V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lc8/KZb;->updataPlugin()V

    goto :goto_0
.end method

.method public static declared-synchronized updataPlugin()V
    .locals 4

    const-class v1, Lc8/KZb;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lc8/hac;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lc8/cac;->removeAll()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lc8/NZb;->a:Lc8/NZb;

    invoke-virtual {v3}, Lc8/NZb;->getBizId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v0, Lc8/NZb;->a:Lc8/NZb;

    invoke-static {v0}, Lc8/cac;->registComponent(Lc8/aac;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    :try_start_2
    sget-object v3, Lc8/VZb;->a:Lc8/VZb;

    invoke-virtual {v3}, Lc8/VZb;->getBizId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lc8/VZb;->a:Lc8/VZb;

    invoke-static {v0}, Lc8/cac;->registComponent(Lc8/aac;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
