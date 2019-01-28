.class public final Lc8/vPc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lc8/uPc;


# direct methods
.method constructor <init>(Lc8/uPc;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lc8/vPc;->a:Lc8/uPc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lc8/vPc;->a:Lc8/uPc;

    invoke-static {v0}, Lc8/uPc;->a(Lc8/uPc;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Lc8/vPc;->a:Lc8/uPc;

    invoke-static {p2}, Lc8/JKc;->asInterface(Landroid/os/IBinder;)Lc8/KKc;

    move-result-object v2

    invoke-static {v0, v2}, Lc8/uPc;->a(Lc8/uPc;Lc8/KKc;)Lc8/KKc;

    .line 55
    iget-object v0, p0, Lc8/vPc;->a:Lc8/uPc;

    invoke-static {v0}, Lc8/uPc;->a(Lc8/uPc;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 56
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lc8/vPc;->a:Lc8/uPc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/uPc;->a(Lc8/uPc;Lc8/KKc;)Lc8/KKc;

    .line 49
    return-void
.end method
