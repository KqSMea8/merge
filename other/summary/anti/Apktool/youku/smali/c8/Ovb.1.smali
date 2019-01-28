.class public Lc8/Ovb;
.super Landroid/os/Handler;
.source "Marquee.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Pvb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Pvb;


# direct methods
.method public constructor <init>(Lc8/Pvb;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Pvb;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 185
    iput-object p1, p0, Lc8/Ovb;->this$0:Lc8/Pvb;

    .line 186
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 187
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 191
    iget v0, p1, Landroid/os/Message;->what:I

    .line 192
    .local v0, "what":I
    packed-switch v0, :pswitch_data_0

    .line 200
    :goto_0
    return-void

    .line 194
    :pswitch_0
    iget-object v1, p0, Lc8/Ovb;->this$0:Lc8/Pvb;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lc8/Pvb;->access$302(Lc8/Pvb;Z)Z

    goto :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
