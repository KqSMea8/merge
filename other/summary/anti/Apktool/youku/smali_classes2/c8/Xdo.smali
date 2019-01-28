.class public Lc8/Xdo;
.super Landroid/os/Handler;
.source "LoadingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ydo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ydo;


# direct methods
.method constructor <init>(Lc8/Ydo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Ydo;

    .prologue
    .line 39
    iput-object p1, p0, Lc8/Xdo;->this$0:Lc8/Ydo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 42
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 53
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 54
    return-void

    .line 44
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 45
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lc8/Xdo;->this$0:Lc8/Ydo;

    invoke-static {v1}, Lc8/Ydo;->access$000(Lc8/Ydo;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lc8/Xdo;->this$0:Lc8/Ydo;

    invoke-static {v1}, Lc8/Ydo;->access$000(Lc8/Ydo;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x110
        :pswitch_0
    .end packed-switch
.end method
