.class public Lc8/meg;
.super Landroid/os/Handler;
.source "WXCircleViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oeg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/oeg;


# direct methods
.method constructor <init>(Lc8/oeg;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 52
    iput-object p1, p0, Lc8/meg;->this$0:Lc8/oeg;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    .line 56
    const-string/jumbo v0, "[CircleViewPager] trigger auto play action"

    invoke-static {v0}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lc8/meg;->this$0:Lc8/oeg;

    invoke-static {v0}, Lc8/oeg;->access$000(Lc8/oeg;)V

    .line 58
    iget-object v0, p0, Lc8/meg;->this$0:Lc8/oeg;

    invoke-static {v0}, Lc8/oeg;->access$100(Lc8/oeg;)J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Lc8/meg;->sendEmptyMessageDelayed(IJ)Z

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
