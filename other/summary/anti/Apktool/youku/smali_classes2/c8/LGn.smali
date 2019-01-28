.class public Lc8/LGn;
.super Landroid/os/Handler;
.source "UpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/ui/activity/UpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/ui/activity/UpdateActivity;


# direct methods
.method public constructor <init>(Lcom/youku/ui/activity/UpdateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/ui/activity/UpdateActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 406
    iput-object p1, p0, Lc8/LGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v2, 0x1388

    .line 409
    iget-object v0, p0, Lc8/LGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-static {v0}, Lcom/youku/ui/activity/UpdateActivity;->access$700(Lcom/youku/ui/activity/UpdateActivity;)Lc8/Din;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Din;->isStateReturned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lc8/LGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-static {v0}, Lcom/youku/ui/activity/UpdateActivity;->access$800(Lcom/youku/ui/activity/UpdateActivity;)V

    .line 411
    invoke-virtual {p0, v2}, Lc8/LGn;->removeMessages(I)V

    .line 419
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lc8/LGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-static {v0}, Lcom/youku/ui/activity/UpdateActivity;->access$900(Lcom/youku/ui/activity/UpdateActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 413
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v2, v0, v1}, Lc8/LGn;->sendEmptyMessageDelayed(IJ)Z

    .line 414
    iget-object v0, p0, Lc8/LGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-static {v0}, Lcom/youku/ui/activity/UpdateActivity;->access$908(Lcom/youku/ui/activity/UpdateActivity;)I

    goto :goto_0

    .line 416
    :cond_1
    invoke-virtual {p0, v2}, Lc8/LGn;->removeMessages(I)V

    .line 417
    iget-object v0, p0, Lc8/LGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-virtual {v0}, Lcom/youku/ui/activity/UpdateActivity;->finish()V

    goto :goto_0
.end method
