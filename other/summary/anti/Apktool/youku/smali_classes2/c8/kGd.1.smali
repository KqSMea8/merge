.class public final Lc8/kGd;
.super Ljava/lang/Object;
.source "SDKLogHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nGd;->a(Landroid/content/Context;Lc8/aGd;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lc8/aGd;

.field final synthetic c:Z

.field final synthetic d:Lc8/nGd;


# direct methods
.method constructor <init>(Lc8/nGd;Landroid/content/Context;Lc8/aGd;Z)V
    .locals 0

    iput-object p1, p0, Lc8/kGd;->d:Lc8/nGd;

    iput-object p2, p0, Lc8/kGd;->a:Landroid/content/Context;

    iput-object p3, p0, Lc8/kGd;->b:Lc8/aGd;

    iput-boolean p4, p0, Lc8/kGd;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Lc8/pDd;

    iget-object v2, p0, Lc8/kGd;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lc8/pDd;-><init>(Landroid/content/Context;Z)V

    iget-object v2, p0, Lc8/kGd;->b:Lc8/aGd;

    invoke-virtual {v0, v2}, Lc8/pDd;->a(Lc8/aGd;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v0, p0, Lc8/kGd;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    new-instance v0, Lc8/qDd;

    iget-object v2, p0, Lc8/kGd;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lc8/qDd;-><init>(Landroid/content/Context;)V

    new-instance v2, Lc8/rDd;

    invoke-direct {v2}, Lc8/rDd;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lc8/rDd;->c(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lc8/rDd;->a(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lc8/rDd;->b(Z)V

    invoke-virtual {v0, v2}, Lc8/qDd;->a(Lc8/rDd;)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lc8/kGd;->d:Lc8/nGd;

    invoke-static {v0}, Lc8/nGd;->a(Lc8/nGd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc8/iGd;->a(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
.end method
