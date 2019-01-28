.class public Lc8/wC;
.super Ljava/lang/Object;
.source "TBUploadService.java"

# interfaces
.implements Lmtopsdk/mtop/upload/FileUploadBaseListener;


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
    .line 280
    iput-object p1, p0, Lc8/wC;->this$0:Lc8/xC;

    iput-object p2, p0, Lc8/wC;->val$result:Lc8/kE;

    iput-object p3, p0, Lc8/wC;->val$params:Lc8/GE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    const-string/jumbo v0, "TBUploadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mtop upload file error. code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_0
    iget-object v0, p0, Lc8/wC;->val$result:Lc8/kE;

    const-string/jumbo v1, "errorCode"

    invoke-virtual {v0, v1, p1}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lc8/wC;->val$result:Lc8/kE;

    const-string/jumbo v1, "errorMsg"

    invoke-virtual {v0, v1, p2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lc8/wC;->val$result:Lc8/kE;

    const-string/jumbo v1, "localPath"

    iget-object v2, p0, Lc8/wC;->val$params:Lc8/GE;

    iget-object v2, v2, Lc8/GE;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lc8/wC;->this$0:Lc8/xC;

    invoke-static {v0}, Lc8/xC;->access$100(Lc8/xC;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d3

    iget-object v2, p0, Lc8/wC;->val$result:Lc8/kE;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 296
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errType"    # Ljava/lang/String;
    .param p2, "errCode"    # Ljava/lang/String;
    .param p3, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 334
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    const-string/jumbo v0, "TBUploadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mtop upload file error. code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_0
    iget-object v0, p0, Lc8/wC;->val$result:Lc8/kE;

    const-string/jumbo v1, "errorType"

    invoke-virtual {v0, v1, p1}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lc8/wC;->val$result:Lc8/kE;

    const-string/jumbo v1, "errorCode"

    invoke-virtual {v0, v1, p2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lc8/wC;->val$result:Lc8/kE;

    const-string/jumbo v1, "errorMsg"

    invoke-virtual {v0, v1, p3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lc8/wC;->val$result:Lc8/kE;

    const-string/jumbo v1, "localPath"

    iget-object v2, p0, Lc8/wC;->val$params:Lc8/GE;

    iget-object v2, v2, Lc8/GE;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lc8/wC;->this$0:Lc8/xC;

    invoke-static {v0}, Lc8/xC;->access$100(Lc8/xC;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d3

    iget-object v2, p0, Lc8/wC;->val$result:Lc8/kE;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 342
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 4
    .param p1, "urlLocation"    # Ljava/lang/String;

    .prologue
    .line 320
    iget-object v1, p0, Lc8/wC;->val$result:Lc8/kE;

    invoke-virtual {v1}, Lc8/kE;->setSuccess()V

    .line 321
    iget-object v1, p0, Lc8/wC;->val$result:Lc8/kE;

    const-string/jumbo v2, "url"

    iget-object v3, p0, Lc8/wC;->val$params:Lc8/GE;

    iget-object v3, v3, Lc8/GE;->localUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lc8/wC;->val$result:Lc8/kE;

    const-string/jumbo v2, "localPath"

    iget-object v3, p0, Lc8/wC;->val$params:Lc8/GE;

    iget-object v3, v3, Lc8/GE;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lc8/wC;->val$result:Lc8/kE;

    const-string/jumbo v2, "resourceURL"

    invoke-virtual {v1, v2, p1}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 325
    .local v0, "index":I
    if-eqz v0, :cond_0

    .line 326
    iget-object v1, p0, Lc8/wC;->val$result:Lc8/kE;

    const-string/jumbo v2, "tfsKey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_0
    iget-object v1, p0, Lc8/wC;->val$params:Lc8/GE;

    iget-boolean v1, v1, Lc8/GE;->isLastPic:Z

    if-eqz v1, :cond_1

    .line 328
    iget-object v1, p0, Lc8/wC;->val$result:Lc8/kE;

    const-string/jumbo v2, "images"

    iget-object v3, p0, Lc8/wC;->val$params:Lc8/GE;

    iget-object v3, v3, Lc8/GE;->images:Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 329
    :cond_1
    iget-object v1, p0, Lc8/wC;->this$0:Lc8/xC;

    invoke-static {v1}, Lc8/xC;->access$100(Lc8/xC;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7d2

    iget-object v3, p0, Lc8/wC;->val$result:Lc8/kE;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 330
    return-void
.end method

.method public onFinish(Lmtopsdk/mtop/upload/domain/UploadFileInfo;Ljava/lang/String;)V
    .locals 5
    .param p1, "fileInfo"    # Lmtopsdk/mtop/upload/domain/UploadFileInfo;
    .param p2, "urlLocation"    # Ljava/lang/String;

    .prologue
    .line 300
    iget-object v2, p0, Lc8/wC;->val$result:Lc8/kE;

    invoke-virtual {v2}, Lc8/kE;->setSuccess()V

    .line 301
    iget-object v2, p0, Lc8/wC;->val$result:Lc8/kE;

    const-string/jumbo v3, "url"

    iget-object v4, p0, Lc8/wC;->val$params:Lc8/GE;

    iget-object v4, v4, Lc8/GE;->localUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v2, p0, Lc8/wC;->val$result:Lc8/kE;

    const-string/jumbo v3, "localPath"

    iget-object v4, p0, Lc8/wC;->val$params:Lc8/GE;

    iget-object v4, v4, Lc8/GE;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v2, p0, Lc8/wC;->val$result:Lc8/kE;

    const-string/jumbo v3, "resourceURL"

    invoke-virtual {v2, v3, p2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Lc8/wC;->val$params:Lc8/GE;

    iget-boolean v2, v2, Lc8/GE;->needBase64:Z

    if-eqz v2, :cond_0

    .line 305
    iget-object v2, p0, Lc8/wC;->val$params:Lc8/GE;

    iget-object v2, v2, Lc8/GE;->filePath:Ljava/lang/String;

    const/16 v3, 0x400

    invoke-static {v2, v3}, Lc8/SH;->readZoomImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 306
    .local v1, "pic":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 307
    iget-object v2, p0, Lc8/wC;->val$result:Lc8/kE;

    const-string/jumbo v3, "base64Data"

    invoke-static {v1}, Lc8/zF;->bitmapToBase64(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .end local v1    # "pic":Landroid/graphics/Bitmap;
    :cond_0
    const-string/jumbo v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 311
    .local v0, "index":I
    if-eqz v0, :cond_1

    .line 312
    iget-object v2, p0, Lc8/wC;->val$result:Lc8/kE;

    const-string/jumbo v3, "tfsKey"

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_1
    iget-object v2, p0, Lc8/wC;->val$params:Lc8/GE;

    iget-boolean v2, v2, Lc8/GE;->isLastPic:Z

    if-eqz v2, :cond_2

    .line 314
    iget-object v2, p0, Lc8/wC;->val$result:Lc8/kE;

    const-string/jumbo v3, "images"

    iget-object v4, p0, Lc8/wC;->val$params:Lc8/GE;

    iget-object v4, v4, Lc8/GE;->images:Lorg/json/JSONArray;

    invoke-virtual {v2, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 315
    :cond_2
    iget-object v2, p0, Lc8/wC;->this$0:Lc8/xC;

    invoke-static {v2}, Lc8/xC;->access$100(Lc8/xC;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x7d2

    iget-object v4, p0, Lc8/wC;->val$result:Lc8/kE;

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 316
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 347
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lc8/wC;->val$result:Lc8/kE;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lc8/kE;->setResult(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lc8/wC;->this$0:Lc8/xC;

    invoke-static {v0}, Lc8/xC;->access$100(Lc8/xC;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d1

    iget-object v2, p0, Lc8/wC;->val$result:Lc8/kE;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 285
    return-void
.end method
