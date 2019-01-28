.class public Lc8/Bin;
.super Landroid/os/Handler;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Din;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Din;


# direct methods
.method public constructor <init>(Lc8/Din;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Din;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 128
    iput-object p1, p0, Lc8/Bin;->this$0:Lc8/Din;

    .line 129
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 130
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 134
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 135
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 182
    :goto_0
    return-void

    .line 137
    :pswitch_0
    iget-object v0, p0, Lc8/Bin;->this$0:Lc8/Din;

    invoke-static {v0, v1}, Lc8/Din;->access$202(Lc8/Din;Z)Z

    .line 138
    iget-object v0, p0, Lc8/Bin;->this$0:Lc8/Din;

    iget-object v0, v0, Lc8/Din;->onProgressListener:Lc8/Cin;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lc8/Bin;->this$0:Lc8/Din;

    iget-object v0, v0, Lc8/Din;->onProgressListener:Lc8/Cin;

    invoke-interface {v0}, Lc8/Cin;->onStart()V

    .line 141
    :cond_0
    invoke-static {}, Lc8/Din;->access$100()Ljava/lang/String;

    goto :goto_0

    .line 144
    :pswitch_1
    iget-object v0, p0, Lc8/Bin;->this$0:Lc8/Din;

    invoke-static {v0, v1}, Lc8/Din;->access$202(Lc8/Din;Z)Z

    .line 145
    iget-object v0, p0, Lc8/Bin;->this$0:Lc8/Din;

    iget-object v0, v0, Lc8/Din;->onProgressListener:Lc8/Cin;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lc8/Bin;->this$0:Lc8/Din;

    iget-object v0, v0, Lc8/Din;->onProgressListener:Lc8/Cin;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lc8/Cin;->onProgress(I)V

    .line 148
    :cond_1
    invoke-static {}, Lc8/Din;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "manager down update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 151
    :pswitch_2
    iget-object v1, p0, Lc8/Bin;->this$0:Lc8/Din;

    invoke-static {v1, v0}, Lc8/Din;->access$202(Lc8/Din;Z)Z

    .line 152
    iget-object v1, p0, Lc8/Bin;->this$0:Lc8/Din;

    iget-object v1, v1, Lc8/Din;->onProgressListener:Lc8/Cin;

    if-eqz v1, :cond_2

    .line 153
    iget-object v1, p0, Lc8/Bin;->this$0:Lc8/Din;

    iget-object v1, v1, Lc8/Din;->onProgressListener:Lc8/Cin;

    invoke-interface {v1}, Lc8/Cin;->onOver()V

    .line 155
    :cond_2
    iget-object v1, p0, Lc8/Bin;->this$0:Lc8/Din;

    invoke-static {v1}, Lc8/Din;->access$300(Lc8/Din;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 156
    invoke-static {}, Lc8/Din;->access$500()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lc8/Bin;->this$0:Lc8/Din;

    invoke-static {v2}, Lc8/Din;->access$400(Lc8/Din;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 157
    iget-object v1, p0, Lc8/Bin;->this$0:Lc8/Din;

    invoke-static {v1, v0}, Lc8/Din;->access$302(Lc8/Din;Z)Z

    .line 159
    :cond_3
    iget-object v0, p0, Lc8/Bin;->this$0:Lc8/Din;

    invoke-static {v0}, Lc8/Din;->access$600(Lc8/Din;)I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 160
    iget-object v0, p0, Lc8/Bin;->this$0:Lc8/Din;

    invoke-virtual {v0}, Lc8/Din;->exitApp()V

    .line 162
    :cond_4
    invoke-static {}, Lc8/Din;->access$100()Ljava/lang/String;

    goto/16 :goto_0

    .line 165
    :pswitch_3
    iget-object v1, p0, Lc8/Bin;->this$0:Lc8/Din;

    invoke-static {v1, v0}, Lc8/Din;->access$202(Lc8/Din;Z)Z

    .line 166
    iget-object v0, p0, Lc8/Bin;->this$0:Lc8/Din;

    iget-object v0, v0, Lc8/Din;->onProgressListener:Lc8/Cin;

    if-eqz v0, :cond_5

    .line 167
    iget-object v0, p0, Lc8/Bin;->this$0:Lc8/Din;

    iget-object v0, v0, Lc8/Din;->onProgressListener:Lc8/Cin;

    invoke-interface {v0}, Lc8/Cin;->onFail()V

    .line 169
    :cond_5
    iget-object v0, p0, Lc8/Bin;->this$0:Lc8/Din;

    invoke-static {v0}, Lc8/Din;->access$600(Lc8/Din;)I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 170
    iget-object v0, p0, Lc8/Bin;->this$0:Lc8/Din;

    invoke-virtual {v0}, Lc8/Din;->exitApp()V

    .line 172
    :cond_6
    invoke-static {}, Lc8/Din;->access$100()Ljava/lang/String;

    goto/16 :goto_0

    .line 175
    :pswitch_4
    iget-object v2, p0, Lc8/Bin;->this$0:Lc8/Din;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_7

    :goto_1
    invoke-static {v2, v0}, Lc8/Din;->access$202(Lc8/Din;Z)Z

    .line 176
    iget-object v0, p0, Lc8/Bin;->this$0:Lc8/Din;

    invoke-static {v0, v1}, Lc8/Din;->access$702(Lc8/Din;Z)Z

    .line 177
    invoke-static {}, Lc8/Din;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "manager recieve init "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Bin;->this$0:Lc8/Din;

    invoke-static {v1}, Lc8/Din;->access$200(Lc8/Din;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 175
    goto :goto_1

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
