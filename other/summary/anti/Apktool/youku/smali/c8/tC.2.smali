.class public Lc8/tC;
.super Lc8/WB;
.source "TBUploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/xC;->doNormalUpload(Lc8/GE;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/WB",
        "<",
        "Lc8/ID;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/xC;

.field final synthetic val$params:Lc8/GE;


# direct methods
.method constructor <init>(Lc8/xC;Lc8/GE;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lc8/tC;->this$0:Lc8/xC;

    iput-object p2, p0, Lc8/tC;->val$params:Lc8/GE;

    invoke-direct {p0}, Lc8/WB;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    const-string/jumbo v2, "TBUploadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "upload file error. code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    new-instance v1, Lc8/kE;

    invoke-direct {v1}, Lc8/kE;-><init>()V

    .line 146
    .local v1, "result":Lc8/kE;
    const-string/jumbo v2, "errorCode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    const-string/jumbo v2, "errorMsg"

    invoke-virtual {v1, v2, p2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string/jumbo v2, "localPath"

    iget-object v3, p0, Lc8/tC;->val$params:Lc8/GE;

    iget-object v3, v3, Lc8/GE;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string/jumbo v2, "isLastPic"

    iget-object v3, p0, Lc8/tC;->val$params:Lc8/GE;

    iget-boolean v3, v3, Lc8/GE;->isLastPic:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v2, "mutipleSelection"

    iget-object v3, p0, Lc8/tC;->val$params:Lc8/GE;

    iget-object v3, v3, Lc8/GE;->mutipleSelection:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 152
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x7d3

    iput v2, v0, Landroid/os/Message;->what:I

    .line 153
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 154
    iget-object v2, p0, Lc8/tC;->this$0:Lc8/xC;

    invoke-static {v2}, Lc8/xC;->access$100(Lc8/xC;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 155
    return-void
.end method

.method public onFinish(Lc8/ID;I)V
    .locals 5
    .param p1, "data"    # Lc8/ID;
    .param p2, "token"    # I

    .prologue
    .line 114
    if-nez p1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 118
    .local v0, "msg":Landroid/os/Message;
    const/16 v3, 0x7d2

    iput v3, v0, Landroid/os/Message;->what:I

    .line 120
    new-instance v2, Lc8/kE;

    invoke-direct {v2}, Lc8/kE;-><init>()V

    .line 121
    .local v2, "result":Lc8/kE;
    invoke-virtual {v2}, Lc8/kE;->setSuccess()V

    .line 122
    iget-object v3, p0, Lc8/tC;->val$params:Lc8/GE;

    iget-boolean v3, v3, Lc8/GE;->needBase64:Z

    if-eqz v3, :cond_1

    .line 123
    iget-object v3, p0, Lc8/tC;->val$params:Lc8/GE;

    iget-object v3, v3, Lc8/GE;->filePath:Ljava/lang/String;

    const/16 v4, 0x400

    invoke-static {v3, v4}, Lc8/SH;->readZoomImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 124
    .local v1, "pic":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 125
    const-string/jumbo v3, "base64Data"

    invoke-static {v1}, Lc8/zF;->bitmapToBase64(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .end local v1    # "pic":Landroid/graphics/Bitmap;
    :cond_1
    const-string/jumbo v3, "url"

    iget-object v4, p0, Lc8/tC;->val$params:Lc8/GE;

    iget-object v4, v4, Lc8/GE;->localUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string/jumbo v3, "localPath"

    iget-object v4, p0, Lc8/tC;->val$params:Lc8/GE;

    iget-object v4, v4, Lc8/GE;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string/jumbo v3, "resourceURL"

    iget-object v4, p1, Lc8/ID;->resourceUri:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string/jumbo v3, "isLastPic"

    iget-object v4, p0, Lc8/tC;->val$params:Lc8/GE;

    iget-boolean v4, v4, Lc8/GE;->isLastPic:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v3, "mutipleSelection"

    iget-object v4, p0, Lc8/tC;->val$params:Lc8/GE;

    iget-object v4, v4, Lc8/GE;->mutipleSelection:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string/jumbo v3, "tfsKey"

    iget-object v4, p1, Lc8/ID;->tfsKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v3, p0, Lc8/tC;->val$params:Lc8/GE;

    iget-boolean v3, v3, Lc8/GE;->isLastPic:Z

    if-eqz v3, :cond_2

    .line 135
    const-string/jumbo v3, "images"

    iget-object v4, p0, Lc8/tC;->val$params:Lc8/GE;

    iget-object v4, v4, Lc8/GE;->images:Lorg/json/JSONArray;

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 136
    :cond_2
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 137
    iget-object v3, p0, Lc8/tC;->this$0:Lc8/xC;

    invoke-static {v3}, Lc8/xC;->access$100(Lc8/xC;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public bridge synthetic onFinish(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I

    .prologue
    .line 106
    check-cast p1, Lc8/ID;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/tC;->onFinish(Lc8/ID;I)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lc8/tC;->this$0:Lc8/xC;

    invoke-static {v0}, Lc8/xC;->access$100(Lc8/xC;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    return-void
.end method
