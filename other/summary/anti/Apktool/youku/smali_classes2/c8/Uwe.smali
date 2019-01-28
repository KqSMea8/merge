.class public Lc8/Uwe;
.super Landroid/os/Handler;
.source "AppInstallCmdExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Wwe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InstallHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Wwe;


# direct methods
.method public constructor <init>(Lc8/Wwe;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 71
    iput-object p1, p0, Lc8/Uwe;->this$0:Lc8/Wwe;

    .line 72
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 73
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    .line 78
    .local v0, "msgWhat":I
    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 80
    :pswitch_0
    iget-object v2, p0, Lc8/Uwe;->this$0:Lc8/Wwe;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lc8/Twe;

    invoke-static {v2, v1}, Lc8/Wwe;->access$000(Lc8/Wwe;Lc8/Twe;)V

    goto :goto_0

    .line 83
    :pswitch_1
    iget-object v1, p0, Lc8/Uwe;->this$0:Lc8/Wwe;

    invoke-static {v1}, Lc8/Wwe;->access$100(Lc8/Wwe;)Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 84
    iget-object v1, p0, Lc8/Uwe;->this$0:Lc8/Wwe;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lc8/Wwe;->access$202(Lc8/Wwe;Z)Z

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
