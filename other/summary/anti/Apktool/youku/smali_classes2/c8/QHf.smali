.class public Lc8/QHf;
.super Landroid/os/Handler;
.source "LogFileUploadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/SHf;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/SHf;


# direct methods
.method constructor <init>(Lc8/SHf;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 72
    iput-object p1, p0, Lc8/QHf;->this$0:Lc8/SHf;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const v0, 0xfffe

    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 75
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v1, p0, Lc8/QHf;->this$0:Lc8/SHf;

    invoke-static {v1}, Lc8/SHf;->access$000(Lc8/SHf;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 79
    iget-object v1, p0, Lc8/QHf;->this$0:Lc8/SHf;

    invoke-static {v1}, Lc8/SHf;->access$100(Lc8/SHf;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 80
    const/4 v13, 0x0

    .line 81
    .local v13, "fileName":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lc8/QHf;->this$0:Lc8/SHf;

    invoke-static {v1}, Lc8/SHf;->access$100(Lc8/SHf;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 82
    iget-object v1, p0, Lc8/QHf;->this$0:Lc8/SHf;

    invoke-static {v1}, Lc8/SHf;->access$100(Lc8/SHf;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "fileName":Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 83
    .restart local v13    # "fileName":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    .line 86
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the size of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is 0 or the file isn\'t exists!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "4"

    iget-object v3, p0, Lc8/QHf;->this$0:Lc8/SHf;

    invoke-static {v3}, Lc8/SHf;->access$200(Lc8/SHf;)Ljava/util/Map;

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lc8/GHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/AIb;)V

    .line 87
    iget-object v1, p0, Lc8/QHf;->this$0:Lc8/SHf;

    invoke-static {v1}, Lc8/SHf;->access$100(Lc8/SHf;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 88
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 94
    .end local v12    # "file":Ljava/io/File;
    :cond_2
    iget-object v1, p0, Lc8/QHf;->this$0:Lc8/SHf;

    invoke-static {v1}, Lc8/SHf;->access$100(Lc8/SHf;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v6, p0, Lc8/QHf;->this$0:Lc8/SHf;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5f00\u59cb\u4e0a\u4f20Log\u6587\u4ef6 \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lc8/QHf;->this$0:Lc8/SHf;

    invoke-static {v1}, Lc8/SHf;->access$200(Lc8/SHf;)Ljava/util/Map;

    move-result-object v10

    move v7, v0

    move-object v9, v5

    invoke-virtual/range {v6 .. v11}, Lc8/SHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Lcom/alibaba/fastjson/JSONObject;

    .line 99
    iget-object v0, p0, Lc8/QHf;->this$0:Lc8/SHf;

    invoke-static {v0}, Lc8/SHf;->access$300(Lc8/SHf;)Lc8/THf;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Lc8/QHf;->this$0:Lc8/SHf;

    invoke-static {v0}, Lc8/SHf;->access$300(Lc8/SHf;)Lc8/THf;

    move-result-object v0

    new-instance v1, Lc8/RHf;

    iget-object v2, p0, Lc8/QHf;->this$0:Lc8/SHf;

    invoke-direct {v1, v2, v13}, Lc8/RHf;-><init>(Lc8/SHf;Ljava/lang/String;)V

    invoke-virtual {v0, v13, v1}, Lc8/THf;->startUpload(Ljava/lang/String;Lc8/PHf;)V

    .line 107
    :goto_2
    iget-object v0, p0, Lc8/QHf;->this$0:Lc8/SHf;

    invoke-static {v0}, Lc8/SHf;->access$100(Lc8/SHf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 108
    invoke-static {}, Lc8/SHf;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current upload task has finished and to upload next -->  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/wHf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 102
    :cond_3
    invoke-static {}, Lc8/XHf;->getInstance()Lc8/XHf;

    move-result-object v0

    iget-object v1, p0, Lc8/QHf;->this$0:Lc8/SHf;

    invoke-static {v1}, Lc8/SHf;->access$200(Lc8/SHf;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/XHf;->setParams(Ljava/util/Map;)Lc8/XHf;

    move-result-object v0

    new-instance v1, Lc8/RHf;

    iget-object v2, p0, Lc8/QHf;->this$0:Lc8/SHf;

    invoke-direct {v1, v2, v13}, Lc8/RHf;-><init>(Lc8/SHf;Ljava/lang/String;)V

    invoke-virtual {v0, v13, v1}, Lc8/XHf;->startUpload(Ljava/lang/String;Lc8/PHf;)V

    goto :goto_2

    .line 110
    .end local v13    # "fileName":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lc8/QHf;->this$0:Lc8/SHf;

    const-string/jumbo v1, "\u65e5\u5fd7\u6587\u4ef6\u4e0a\u4f20\u5b8c\u6bd5\uff01"

    const-string/jumbo v2, "0"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v11, v2, v3}, Lc8/SHf;->access$500(Lc8/SHf;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lc8/QHf;->this$0:Lc8/SHf;

    invoke-static {v0}, Lc8/SHf;->access$600(Lc8/SHf;)V

    goto/16 :goto_0

    .line 114
    :cond_5
    iget-object v0, p0, Lc8/QHf;->this$0:Lc8/SHf;

    invoke-static {v0}, Lc8/SHf;->access$700(Lc8/SHf;)V

    .line 115
    iget-object v0, p0, Lc8/QHf;->this$0:Lc8/SHf;

    const-string/jumbo v1, "\u7f51\u8def\u72b6\u6001\u4e0d\u7b26\u5408\u4e0a\u4f20\u6761\u4ef6\uff01"

    const-string/jumbo v2, "5"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v4, v2, v3}, Lc8/SHf;->access$500(Lc8/SHf;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :pswitch_1
    iget-object v0, p0, Lc8/QHf;->this$0:Lc8/SHf;

    invoke-static {v0}, Lc8/SHf;->access$300(Lc8/SHf;)Lc8/THf;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 121
    iget-object v0, p0, Lc8/QHf;->this$0:Lc8/SHf;

    invoke-static {v0}, Lc8/SHf;->access$300(Lc8/SHf;)Lc8/THf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/THf;->cancel()V

    .line 126
    :goto_3
    iget-object v0, p0, Lc8/QHf;->this$0:Lc8/SHf;

    invoke-static {v0}, Lc8/SHf;->access$700(Lc8/SHf;)V

    .line 127
    iget-object v0, p0, Lc8/QHf;->this$0:Lc8/SHf;

    const-string/jumbo v1, "\u7f51\u7edc\u72b6\u6001\u53d8\u66f4\uff0c\u4e0d\u7b26\u5408\u4e0a\u4f20\u65e5\u5fd7\u6761\u4ef6\u505c\u6b62\u4e0a\u4f20\uff01"

    const-string/jumbo v2, "5"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v4, v2, v3}, Lc8/SHf;->access$500(Lc8/SHf;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :cond_6
    invoke-static {}, Lc8/XHf;->getInstance()Lc8/XHf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/XHf;->cancel()V

    .line 124
    invoke-static {}, Lc8/SHf;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Cancel : the mCurrentUploadFileInfo is null !"

    invoke-static {v0, v1}, Lc8/wHf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 130
    :pswitch_2
    iget-object v13, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .line 131
    .restart local v13    # "fileName":Ljava/lang/String;
    iget-object v0, p0, Lc8/QHf;->this$0:Lc8/SHf;

    invoke-static {v0}, Lc8/SHf;->access$100(Lc8/SHf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lc8/QHf;->this$0:Lc8/SHf;

    invoke-static {v0}, Lc8/SHf;->access$800(Lc8/SHf;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
