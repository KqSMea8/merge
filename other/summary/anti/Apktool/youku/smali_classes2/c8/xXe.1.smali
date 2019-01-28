.class public Lc8/xXe;
.super Ljava/lang/Object;
.source "AVFSAdapterManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/yXe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/yXe;


# direct methods
.method constructor <init>(Lc8/yXe;)V
    .locals 0
    .param p1, "this$0"    # Lc8/yXe;

    .prologue
    .line 33
    iput-object p1, p0, Lc8/xXe;->this$0:Lc8/yXe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 36
    iget-object v0, p0, Lc8/xXe;->this$0:Lc8/yXe;

    invoke-static {v0}, Lc8/yXe;->access$000(Lc8/yXe;)Ljava/lang/Runnable;

    move-result-object v1

    monitor-enter v1

    .line 38
    :try_start_0
    iget-object v0, p0, Lc8/xXe;->this$0:Lc8/yXe;

    invoke-static {}, Lc8/SXe;->getApplication()Landroid/app/Application;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lc8/yXe;->ensureInitialized(Landroid/app/Application;Lc8/HXe;Lc8/AXe;)V

    .line 40
    iget-object v0, p0, Lc8/xXe;->this$0:Lc8/yXe;

    invoke-static {v0}, Lc8/yXe;->access$000(Lc8/yXe;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 41
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
