.class public Lc8/OMn;
.super Landroid/os/Handler;
.source "NetCacheSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/PMn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/PMn;


# direct methods
.method public constructor <init>(Lc8/PMn;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 65
    iput-object p1, p0, Lc8/OMn;->this$0:Lc8/PMn;

    .line 66
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 67
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 83
    invoke-static {}, Lc8/PMn;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, Lc8/OMn;->this$0:Lc8/PMn;

    invoke-static {v0}, Lc8/PMn;->access$000(Lc8/PMn;)Lc8/kNn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lc8/OMn;->this$0:Lc8/PMn;

    invoke-static {v0}, Lc8/PMn;->access$000(Lc8/PMn;)Lc8/kNn;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lc8/kNn;->onPreloadSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :pswitch_1
    iget-object v0, p0, Lc8/OMn;->this$0:Lc8/PMn;

    invoke-static {v0}, Lc8/PMn;->access$000(Lc8/PMn;)Lc8/kNn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lc8/OMn;->this$0:Lc8/PMn;

    invoke-static {v0}, Lc8/PMn;->access$000(Lc8/PMn;)Lc8/kNn;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lc8/kNn;->onPreloadFail(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
