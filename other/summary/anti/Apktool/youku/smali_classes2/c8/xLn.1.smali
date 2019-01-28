.class public Lc8/xLn;
.super Landroid/os/Handler;
.source "UPasswordClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/zLn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/zLn;


# direct methods
.method constructor <init>(Lc8/zLn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/zLn;

    .prologue
    .line 96
    iput-object p1, p0, Lc8/xLn;->this$0:Lc8/zLn;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 100
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 102
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 103
    .local v1, "message":Ljava/lang/String;
    iget-object v3, p0, Lc8/xLn;->this$0:Lc8/zLn;

    invoke-static {v3, v1}, Lc8/zLn;->access$000(Lc8/zLn;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    .end local v1    # "message":Ljava/lang/String;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 107
    .local v0, "jsonObject":Lorg/json/JSONObject;
    iget-object v3, p0, Lc8/xLn;->this$0:Lc8/zLn;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc8/zLn;->parseUPasswordResult(Ljava/lang/String;)Lcom/youku/upassword/bean/UPasswordBean;

    move-result-object v2

    .line 108
    .local v2, "uPasswordBean":Lcom/youku/upassword/bean/UPasswordBean;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " UPasswordClipboardManager parseUPasswordResult() uPasswordBean : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    iget-object v3, p0, Lc8/xLn;->this$0:Lc8/zLn;

    invoke-virtual {v3, v2}, Lc8/zLn;->showDiffDialog(Lcom/youku/upassword/bean/UPasswordBean;)V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x4bc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
