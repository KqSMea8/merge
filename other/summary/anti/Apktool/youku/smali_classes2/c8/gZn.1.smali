.class public Lc8/gZn;
.super Landroid/os/Handler;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/hZn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/hZn;


# direct methods
.method constructor <init>(Lc8/hZn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/hZn;

    .prologue
    .line 48
    iput-object p1, p0, Lc8/gZn;->this$0:Lc8/hZn;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 51
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;

    .line 52
    .local v0, "entry":Lcom/youku/us/baseframework/download/entity/DownloadEntry;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 64
    :goto_0
    :pswitch_0
    iget-object v1, v0, Lcom/youku/us/baseframework/download/entity/DownloadEntry;->status:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    sget-object v2, Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;->cancel:Lcom/youku/us/baseframework/download/entity/DownloadEntry$DownloadStatus;

    if-eq v1, v2, :cond_0

    .line 65
    iget-object v1, p0, Lc8/gZn;->this$0:Lc8/hZn;

    invoke-virtual {v1}, Lc8/hZn;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lc8/oZn;->getInstance(Landroid/content/Context;)Lc8/oZn;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/oZn;->updateStatus(Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V

    .line 67
    :cond_0
    return-void

    .line 56
    :pswitch_1
    iget-object v1, p0, Lc8/gZn;->this$0:Lc8/hZn;

    invoke-static {v1, v0}, Lc8/hZn;->access$000(Lc8/hZn;Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V

    goto :goto_0

    .line 60
    :pswitch_2
    iget-object v1, p0, Lc8/gZn;->this$0:Lc8/hZn;

    invoke-virtual {v1}, Lc8/hZn;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "\u5b58\u50a8\u5361\u7a7a\u95f4\u4e0d\u8db3\uff0c\u8bf7\u6e05\u7406\uff01"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 61
    iget-object v1, p0, Lc8/gZn;->this$0:Lc8/hZn;

    invoke-static {v1, v0}, Lc8/hZn;->access$000(Lc8/hZn;Lcom/youku/us/baseframework/download/entity/DownloadEntry;)V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
