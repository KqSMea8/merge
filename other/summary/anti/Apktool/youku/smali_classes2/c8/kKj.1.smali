.class public Lc8/kKj;
.super Landroid/os/Handler;
.source "ZpdPayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oKj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/oKj;


# direct methods
.method constructor <init>(Lc8/oKj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/oKj;

    .prologue
    .line 45
    iput-object p1, p0, Lc8/kKj;->this$0:Lc8/oKj;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 49
    iget-object v2, p0, Lc8/kKj;->this$0:Lc8/oKj;

    invoke-static {v2}, Lc8/oKj;->access$000(Lc8/oKj;)Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 74
    :goto_0
    return-void

    .line 52
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 64
    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lc8/kKj;->this$0:Lc8/oKj;

    invoke-static {v2, v1}, Lc8/oKj;->access$200(Lc8/oKj;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    .end local v1    # "result":Ljava/lang/String;
    :sswitch_1
    iget-object v2, p0, Lc8/kKj;->this$0:Lc8/oKj;

    invoke-static {v2}, Lc8/oKj;->access$100(Lc8/oKj;)V

    goto :goto_0

    .line 57
    :sswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 58
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_1
    sget v2, Lcom/youku/phone/R$string;->alipay_request_error:I

    invoke-static {v2}, Lc8/Iin;->showTips(I)V

    goto :goto_0

    .line 68
    :sswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "errCode":Ljava/lang/String;
    iget-object v2, p0, Lc8/kKj;->this$0:Lc8/oKj;

    invoke-static {v2, v0}, Lc8/oKj;->access$300(Lc8/oKj;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_3
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
    .end sparse-switch
.end method
