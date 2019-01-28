.class public Lc8/rko;
.super Ljava/lang/Object;
.source "Passport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tko;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/tko;

.field final synthetic val$aService:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lc8/tko;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$0"    # Lc8/tko;

    .prologue
    .line 1123
    iput-object p1, p0, Lc8/rko;->this$0:Lc8/tko;

    iput-object p2, p0, Lc8/rko;->val$aService:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1126
    invoke-static {}, Lc8/Gko;->access$600()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1127
    :try_start_0
    iget-object v0, p0, Lc8/rko;->val$aService:Landroid/os/IBinder;

    invoke-static {v0}, Lc8/Hpo;->asInterface(Landroid/os/IBinder;)Lc8/Ipo;

    move-result-object v0

    invoke-static {v0}, Lc8/Gko;->access$002(Lc8/Ipo;)Lc8/Ipo;

    .line 1128
    invoke-static {}, Lc8/Gko;->access$600()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1129
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
