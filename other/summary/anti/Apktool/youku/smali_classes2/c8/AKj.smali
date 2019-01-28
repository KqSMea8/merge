.class public Lc8/AKj;
.super Ljava/lang/Object;
.source "MobileSecurePayer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/DKj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/DKj;


# direct methods
.method constructor <init>(Lc8/DKj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/DKj;

    .prologue
    .line 43
    iput-object p1, p0, Lc8/AKj;->this$0:Lc8/DKj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 46
    const-string/jumbo v0, "MobileSecurePayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected:ComponentName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",isCancel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/AKj;->this$0:Lc8/DKj;

    invoke-static {v2}, Lc8/DKj;->access$000(Lc8/DKj;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lc8/AKj;->this$0:Lc8/DKj;

    iget-object v1, v0, Lc8/DKj;->lock:Ljava/lang/Integer;

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v0, p0, Lc8/AKj;->this$0:Lc8/DKj;

    invoke-static {p2}, Lc8/JKc;->asInterface(Landroid/os/IBinder;)Lc8/KKc;

    move-result-object v2

    iput-object v2, v0, Lc8/DKj;->mAlixPay:Lc8/KKc;

    .line 52
    iget-object v0, p0, Lc8/AKj;->this$0:Lc8/DKj;

    iget-object v0, v0, Lc8/DKj;->lock:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 53
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 57
    const-string/jumbo v0, "MobileSecurePayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected:ComponentName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lc8/AKj;->this$0:Lc8/DKj;

    const/4 v1, 0x0

    iput-object v1, v0, Lc8/DKj;->mAlixPay:Lc8/KKc;

    .line 59
    return-void
.end method
