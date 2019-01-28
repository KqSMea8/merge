.class public Lc8/WFo;
.super Landroid/os/Handler;
.source "VipLocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ZFo;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ZFo;


# direct methods
.method constructor <init>(Lc8/ZFo;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lc8/ZFo;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 77
    iput-object p1, p0, Lc8/WFo;->this$0:Lc8/ZFo;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 86
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 88
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v0, p0, Lc8/WFo;->this$0:Lc8/ZFo;

    invoke-static {v0}, Lc8/ZFo;->access$000(Lc8/ZFo;)V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
