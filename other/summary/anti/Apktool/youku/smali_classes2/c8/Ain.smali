.class public Lc8/Ain;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Din;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Din;


# direct methods
.method constructor <init>(Lc8/Din;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Din;

    .prologue
    .line 193
    iput-object p1, p0, Lc8/Ain;->this$0:Lc8/Din;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 205
    invoke-static {}, Lc8/Din;->access$100()Ljava/lang/String;

    .line 207
    :try_start_0
    iget-object v2, p0, Lc8/Ain;->this$0:Lc8/Din;

    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v2, v3}, Lc8/Din;->access$002(Lc8/Din;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 208
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 209
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Landroid/os/Messenger;

    new-instance v3, Lc8/Bin;

    iget-object v4, p0, Lc8/Ain;->this$0:Lc8/Din;

    invoke-static {}, Lc8/Din;->access$500()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lc8/Bin;-><init>(Lc8/Din;Landroid/os/Looper;)V

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 210
    iget-object v2, p0, Lc8/Ain;->this$0:Lc8/Din;

    invoke-static {v2}, Lc8/Din;->access$000(Lc8/Din;)Landroid/os/Messenger;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 211
    iget-object v2, p0, Lc8/Ain;->this$0:Lc8/Din;

    invoke-static {v2}, Lc8/Din;->access$000(Lc8/Din;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 214
    invoke-static {}, Lc8/Din;->access$100()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "manager onServiceConnected exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 196
    iget-object v0, p0, Lc8/Ain;->this$0:Lc8/Din;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/Din;->access$002(Lc8/Din;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 197
    iget-object v0, p0, Lc8/Ain;->this$0:Lc8/Din;

    invoke-static {v0, v2}, Lc8/Din;->access$202(Lc8/Din;Z)Z

    .line 198
    iget-object v0, p0, Lc8/Ain;->this$0:Lc8/Din;

    invoke-static {v0, v2}, Lc8/Din;->access$302(Lc8/Din;Z)Z

    .line 199
    iget-object v0, p0, Lc8/Ain;->this$0:Lc8/Din;

    invoke-static {v0, v2}, Lc8/Din;->access$702(Lc8/Din;Z)Z

    .line 200
    invoke-static {}, Lc8/Din;->access$100()Ljava/lang/String;

    .line 201
    return-void
.end method
