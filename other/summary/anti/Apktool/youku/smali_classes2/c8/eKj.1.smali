.class public Lc8/eKj;
.super Landroid/os/Handler;
.source "PayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/jKj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jKj;


# direct methods
.method constructor <init>(Lc8/jKj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jKj;

    .prologue
    .line 132
    iput-object p1, p0, Lc8/eKj;->this$0:Lc8/jKj;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 136
    iget-object v3, p0, Lc8/eKj;->this$0:Lc8/jKj;

    invoke-static {v3}, Lc8/jKj;->access$000(Lc8/jKj;)Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 178
    :goto_0
    return-void

    .line 139
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 168
    :sswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "result":Ljava/lang/String;
    iget-object v3, p0, Lc8/eKj;->this$0:Lc8/jKj;

    invoke-static {v3, v2}, Lc8/jKj;->access$200(Lc8/jKj;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    .end local v2    # "result":Ljava/lang/String;
    :sswitch_1
    iget-object v3, p0, Lc8/eKj;->this$0:Lc8/jKj;

    invoke-virtual {v3}, Lc8/jKj;->performPay()V

    .line 143
    iget-object v3, p0, Lc8/eKj;->this$0:Lc8/jKj;

    invoke-static {v3}, Lc8/jKj;->access$100(Lc8/jKj;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x451

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 147
    :sswitch_2
    :try_start_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 148
    const-string/jumbo v3, "PayManager"

    const-string/jumbo v4, "msg.obj != null"

    invoke-static {v3, v4}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/Iin;->showTips(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_1
    :goto_1
    iget-object v3, p0, Lc8/eKj;->this$0:Lc8/jKj;

    invoke-static {v3}, Lc8/jKj;->access$100(Lc8/jKj;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x450

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 151
    :cond_2
    const/4 v1, 0x0

    .line 152
    .local v1, "isHandled":Z
    :try_start_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_3

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    .line 153
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 155
    :cond_3
    const-string/jumbo v3, "PayManager"

    const-string/jumbo v4, "YoukuUtil.showTips(R.string.alipay_request_error)"

    invoke-static {v3, v4}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    if-nez v1, :cond_1

    .line 157
    sget v3, Lcom/youku/phone/R$string;->alipay_request_error:I

    invoke-static {v3}, Lc8/Iin;->showTips(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 161
    .end local v1    # "isHandled":Z
    :catch_0
    move-exception v3

    const-string/jumbo v3, "PayManager"

    const-string/jumbo v4, "REQUEST_DOPAYURL_FAIL error "

    invoke-static {v3, v4}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 172
    :sswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "errCode":Ljava/lang/String;
    iget-object v3, p0, Lc8/eKj;->this$0:Lc8/jKj;

    invoke-static {v3, v0}, Lc8/jKj;->access$300(Lc8/jKj;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_3
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
    .end sparse-switch
.end method
