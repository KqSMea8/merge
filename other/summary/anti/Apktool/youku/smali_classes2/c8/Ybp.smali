.class public Lc8/Ybp;
.super Landroid/os/Handler;
.source "YoukuScrollerGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Zbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Zbp;


# direct methods
.method constructor <init>(Lc8/Zbp;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Zbp;

    .prologue
    .line 31
    iput-object p1, p0, Lc8/Ybp;->this$0:Lc8/Zbp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 44
    :goto_0
    return-void

    .line 38
    :pswitch_0
    iget-object v0, p0, Lc8/Ybp;->this$0:Lc8/Zbp;

    invoke-virtual {v0}, Lc8/Zbp;->scrollToRight()V

    .line 39
    const v0, 0x1872c

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lc8/Ybp;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1872c
        :pswitch_0
    .end packed-switch
.end method
