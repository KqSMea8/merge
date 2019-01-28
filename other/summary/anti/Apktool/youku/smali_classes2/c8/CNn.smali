.class public Lc8/CNn;
.super Landroid/os/Handler;
.source "PreLoadJNI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/DNn;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/DNn;


# direct methods
.method constructor <init>(Lc8/DNn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/DNn;

    .prologue
    .line 35
    iput-object p1, p0, Lc8/CNn;->this$0:Lc8/DNn;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 39
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 51
    invoke-static {}, Lc8/DNn;->access$100()Ljava/lang/String;

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

    invoke-static {v0, v1}, Lc8/HOm;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 41
    :pswitch_0
    iget-object v0, p0, Lc8/CNn;->this$0:Lc8/DNn;

    invoke-static {v0}, Lc8/DNn;->access$000(Lc8/DNn;)Lc8/kNn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lc8/CNn;->this$0:Lc8/DNn;

    invoke-static {v0}, Lc8/DNn;->access$000(Lc8/DNn;)Lc8/kNn;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lc8/kNn;->onPreloadSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :pswitch_1
    iget-object v0, p0, Lc8/CNn;->this$0:Lc8/DNn;

    invoke-static {v0}, Lc8/DNn;->access$000(Lc8/DNn;)Lc8/kNn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lc8/CNn;->this$0:Lc8/DNn;

    invoke-static {v0}, Lc8/DNn;->access$000(Lc8/DNn;)Lc8/kNn;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lc8/kNn;->onPreloadFail(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
