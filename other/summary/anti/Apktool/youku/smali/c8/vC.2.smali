.class public Lc8/vC;
.super Ljava/lang/Object;
.source "TBUploadService.java"

# interfaces
.implements Lc8/hsg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/xC;->doMtopUpload(Lc8/GE;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/xC;

.field final synthetic val$params:Lc8/GE;

.field final synthetic val$result:Lc8/kE;


# direct methods
.method constructor <init>(Lc8/xC;Lc8/kE;Lc8/GE;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lc8/vC;->this$0:Lc8/xC;

    iput-object p2, p0, Lc8/vC;->val$result:Lc8/kE;

    iput-object p3, p0, Lc8/vC;->val$params:Lc8/GE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lc8/qsg;)V
    .locals 0
    .param p1, "task"    # Lc8/qsg;

    .prologue
    .line 255
    return-void
.end method

.method public onFailure(Lc8/qsg;Lc8/rsg;)V
    .locals 3
    .param p1, "task"    # Lc8/qsg;
    .param p2, "code"    # Lc8/rsg;

    .prologue
    .line 245
    iget-object v0, p0, Lc8/vC;->val$result:Lc8/kE;

    const-string/jumbo v1, "subCode"

    iget-object v2, p2, Lc8/rsg;->subcode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lc8/vC;->val$result:Lc8/kE;

    const-string/jumbo v1, "errorCode"

    iget-object v2, p2, Lc8/rsg;->code:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lc8/vC;->val$result:Lc8/kE;

    const-string/jumbo v1, "errorMsg"

    iget-object v2, p2, Lc8/rsg;->info:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lc8/vC;->val$result:Lc8/kE;

    const-string/jumbo v1, "localPath"

    iget-object v2, p0, Lc8/vC;->val$params:Lc8/GE;

    iget-object v2, v2, Lc8/GE;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lc8/vC;->this$0:Lc8/xC;

    invoke-static {v0}, Lc8/xC;->access$100(Lc8/xC;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d3

    iget-object v2, p0, Lc8/vC;->val$result:Lc8/kE;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 250
    return-void
.end method

.method public onPause(Lc8/qsg;)V
    .locals 0
    .param p1, "task"    # Lc8/qsg;

    .prologue
    .line 219
    return-void
.end method

.method public onProgress(Lc8/qsg;I)V
    .locals 4
    .param p1, "task"    # Lc8/qsg;
    .param p2, "progress"    # I

    .prologue
    .line 259
    const-string/jumbo v1, "uploadFile onProgress "

    .line 260
    .local v1, "type":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "percent":Ljava/lang/String;
    const-string/jumbo v2, "TBUploadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public onResume(Lc8/qsg;)V
    .locals 0
    .param p1, "task"    # Lc8/qsg;

    .prologue
    .line 215
    return-void
.end method

.method public onStart(Lc8/qsg;)V
    .locals 0
    .param p1, "task"    # Lc8/qsg;

    .prologue
    .line 211
    return-void
.end method

.method public onSuccess(Lc8/qsg;Lc8/isg;)V
    .locals 6
    .param p1, "task"    # Lc8/qsg;
    .param p2, "taskResult"    # Lc8/isg;

    .prologue
    .line 223
    iget-object v3, p0, Lc8/vC;->val$result:Lc8/kE;

    invoke-virtual {v3}, Lc8/kE;->setSuccess()V

    .line 224
    iget-object v3, p0, Lc8/vC;->val$result:Lc8/kE;

    const-string/jumbo v4, "url"

    iget-object v5, p0, Lc8/vC;->val$params:Lc8/GE;

    iget-object v5, v5, Lc8/GE;->localUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v3, p0, Lc8/vC;->val$result:Lc8/kE;

    const-string/jumbo v4, "localPath"

    iget-object v5, p0, Lc8/vC;->val$params:Lc8/GE;

    iget-object v5, v5, Lc8/GE;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-interface {p2}, Lc8/isg;->getFileUrl()Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "urlLocation":Ljava/lang/String;
    iget-object v3, p0, Lc8/vC;->val$result:Lc8/kE;

    const-string/jumbo v4, "resourceURL"

    invoke-virtual {v3, v4, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v3, p0, Lc8/vC;->val$params:Lc8/GE;

    iget-boolean v3, v3, Lc8/GE;->needBase64:Z

    if-eqz v3, :cond_0

    .line 229
    iget-object v3, p0, Lc8/vC;->val$params:Lc8/GE;

    iget-object v3, v3, Lc8/GE;->filePath:Ljava/lang/String;

    const/16 v4, 0x400

    invoke-static {v3, v4}, Lc8/SH;->readZoomImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 230
    .local v1, "pic":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 231
    iget-object v3, p0, Lc8/vC;->val$result:Lc8/kE;

    const-string/jumbo v4, "base64Data"

    invoke-static {v1}, Lc8/zF;->bitmapToBase64(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .end local v1    # "pic":Landroid/graphics/Bitmap;
    :cond_0
    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 235
    .local v0, "index":I
    if-eqz v0, :cond_1

    .line 236
    iget-object v3, p0, Lc8/vC;->val$result:Lc8/kE;

    const-string/jumbo v4, "tfsKey"

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_1
    iget-object v3, p0, Lc8/vC;->val$params:Lc8/GE;

    iget-boolean v3, v3, Lc8/GE;->isLastPic:Z

    if-eqz v3, :cond_2

    .line 238
    iget-object v3, p0, Lc8/vC;->val$result:Lc8/kE;

    const-string/jumbo v4, "images"

    iget-object v5, p0, Lc8/vC;->val$params:Lc8/GE;

    iget-object v5, v5, Lc8/GE;->images:Lorg/json/JSONArray;

    invoke-virtual {v3, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 240
    :cond_2
    iget-object v3, p0, Lc8/vC;->this$0:Lc8/xC;

    invoke-static {v3}, Lc8/xC;->access$100(Lc8/xC;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x7d2

    iget-object v5, p0, Lc8/vC;->val$result:Lc8/kE;

    invoke-static {v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 241
    return-void
.end method

.method public onWait(Lc8/qsg;)V
    .locals 0
    .param p1, "task"    # Lc8/qsg;

    .prologue
    .line 207
    return-void
.end method
