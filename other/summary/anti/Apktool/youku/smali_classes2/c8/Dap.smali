.class public Lc8/Dap;
.super Landroid/os/Handler;
.source "StackGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Eap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Eap;


# direct methods
.method constructor <init>(Lc8/Eap;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Eap;

    .prologue
    .line 162
    iput-object p1, p0, Lc8/Dap;->this$0:Lc8/Eap;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 166
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 173
    :goto_0
    return-void

    .line 168
    :pswitch_0
    iget-object v0, p0, Lc8/Dap;->this$0:Lc8/Eap;

    invoke-virtual {v0}, Lc8/Eap;->scrollToRight()V

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
