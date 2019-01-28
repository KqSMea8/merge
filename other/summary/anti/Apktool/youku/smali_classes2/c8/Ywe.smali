.class public Lc8/Ywe;
.super Landroid/os/Handler;
.source "AppInvokeCmdExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Zwe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Zwe;


# direct methods
.method public constructor <init>(Lc8/Zwe;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 34
    iput-object p1, p0, Lc8/Ywe;->this$0:Lc8/Zwe;

    .line 35
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 36
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 48
    :goto_0
    return-void

    .line 43
    :pswitch_0
    iget-object v0, p0, Lc8/Ywe;->this$0:Lc8/Zwe;

    invoke-static {v0}, Lc8/Zwe;->access$000(Lc8/Zwe;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lc8/Xwe;

    invoke-static {v1, v0}, Lc8/Zwe;->access$100(Landroid/content/Context;Lc8/Xwe;)V

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
