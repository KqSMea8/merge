.class public Lc8/zin;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Din;->startUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Din;

.field final synthetic val$startMsg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lc8/Din;Landroid/os/Message;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Din;

    .prologue
    .line 103
    iput-object p1, p0, Lc8/zin;->this$0:Lc8/Din;

    iput-object p2, p0, Lc8/zin;->val$startMsg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 106
    iget-object v1, p0, Lc8/zin;->this$0:Lc8/Din;

    invoke-static {v1}, Lc8/Din;->access$000(Lc8/Din;)Landroid/os/Messenger;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    :try_start_0
    iget-object v1, p0, Lc8/zin;->this$0:Lc8/Din;

    invoke-static {v1}, Lc8/Din;->access$000(Lc8/Din;)Landroid/os/Messenger;

    move-result-object v1

    iget-object v2, p0, Lc8/zin;->val$startMsg:Landroid/os/Message;

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 109
    invoke-static {}, Lc8/Din;->access$100()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 114
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Lc8/Din;->access$100()Ljava/lang/String;

    goto :goto_0
.end method
