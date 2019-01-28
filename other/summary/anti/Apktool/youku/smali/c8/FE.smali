.class public Lc8/FE;
.super Ljava/lang/Object;
.source "WVCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/HE;->zoomPicAndCallback(Ljava/lang/String;Ljava/lang/String;Lc8/GE;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/HE;

.field final synthetic val$bm2:Landroid/graphics/Bitmap;

.field final synthetic val$fileInfo:Lc8/tB;

.field final synthetic val$params:Lc8/GE;

.field final synthetic val$targetPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/HE;Landroid/graphics/Bitmap;Lc8/tB;Ljava/lang/String;Lc8/GE;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lc8/FE;->this$0:Lc8/HE;

    iput-object p2, p0, Lc8/FE;->val$bm2:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lc8/FE;->val$fileInfo:Lc8/tB;

    iput-object p4, p0, Lc8/FE;->val$targetPath:Ljava/lang/String;

    iput-object p5, p0, Lc8/FE;->val$params:Lc8/GE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 393
    new-instance v3, Lc8/kE;

    invoke-direct {v3}, Lc8/kE;-><init>()V

    .line 394
    .local v3, "result":Lc8/kE;
    iget-object v4, p0, Lc8/FE;->val$bm2:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 396
    new-array v0, v6, [B

    aput-byte v5, v0, v5

    .line 398
    .local v0, "bytes":[B
    invoke-static {}, Lc8/qB;->getInstance()Lc8/qB;

    move-result-object v4

    iget-object v5, p0, Lc8/FE;->val$fileInfo:Lc8/tB;

    invoke-virtual {v4, v5, v0}, Lc8/qB;->writeToFile(Lc8/tB;[B)Z

    .line 400
    const/4 v1, 0x0

    .line 402
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-static {}, Lc8/qB;->getInstance()Lc8/qB;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lc8/qB;->getCacheDir(Z)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lc8/FE;->val$fileInfo:Lc8/tB;

    iget-object v6, v6, Lc8/tB;->fileName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    .end local v1    # "os":Ljava/io/OutputStream;
    .local v2, "os":Ljava/io/OutputStream;
    :try_start_1
    iget-object v4, p0, Lc8/FE;->val$bm2:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 410
    iget-object v4, p0, Lc8/FE;->val$bm2:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc8/FE;->val$bm2:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 411
    iget-object v4, p0, Lc8/FE;->val$bm2:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 413
    :cond_0
    if-eqz v2, :cond_1

    .line 415
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 421
    .end local v0    # "bytes":[B
    .end local v2    # "os":Ljava/io/OutputStream;
    :cond_1
    :goto_0
    iget-object v4, p0, Lc8/FE;->this$0:Lc8/HE;

    iget-object v5, p0, Lc8/FE;->val$targetPath:Ljava/lang/String;

    iget-object v6, p0, Lc8/FE;->val$params:Lc8/GE;

    invoke-static {v4, v5, v6}, Lc8/HE;->access$600(Lc8/HE;Ljava/lang/String;Lc8/GE;)V

    .line 422
    invoke-virtual {v3}, Lc8/kE;->setSuccess()V

    .line 423
    const-string/jumbo v4, "url"

    iget-object v5, p0, Lc8/FE;->val$params:Lc8/GE;

    iget-object v5, v5, Lc8/GE;->localUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string/jumbo v4, "localPath"

    iget-object v5, p0, Lc8/FE;->val$targetPath:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string/jumbo v4, "WVCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "url:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lc8/FE;->val$params:Lc8/GE;

    iget-object v6, v6, Lc8/GE;->localUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " localPath:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lc8/FE;->val$targetPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v4, p0, Lc8/FE;->this$0:Lc8/HE;

    invoke-static {v4}, Lc8/HE;->access$500(Lc8/HE;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v4

    const-string/jumbo v5, "WVPhoto.Event.takePhotoSuccess"

    invoke-virtual {v3}, Lc8/kE;->toJsonString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_2
    :goto_1
    return-void

    .line 405
    .restart local v0    # "bytes":[B
    .restart local v1    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    :goto_2
    :try_start_3
    const-string/jumbo v4, "WVCamera"

    const-string/jumbo v5, "fail to create bitmap file"

    invoke-static {v4, v5}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string/jumbo v4, "reason"

    const-string/jumbo v5, "fail to create bitmap file"

    invoke-virtual {v3, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v4, p0, Lc8/FE;->this$0:Lc8/HE;

    invoke-static {v4}, Lc8/HE;->access$500(Lc8/HE;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 410
    iget-object v4, p0, Lc8/FE;->val$bm2:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lc8/FE;->val$bm2:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 411
    iget-object v4, p0, Lc8/FE;->val$bm2:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 413
    :cond_3
    if-eqz v1, :cond_2

    .line 415
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_1

    .line 410
    :catchall_0
    move-exception v4

    :goto_3
    iget-object v5, p0, Lc8/FE;->val$bm2:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lc8/FE;->val$bm2:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_4

    .line 411
    iget-object v5, p0, Lc8/FE;->val$bm2:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 413
    :cond_4
    if-eqz v1, :cond_5

    .line 415
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 417
    :cond_5
    :goto_4
    throw v4

    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    :catch_2
    move-exception v4

    goto/16 :goto_0

    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    :catch_3
    move-exception v5

    goto :goto_4

    .line 410
    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    goto :goto_3

    .line 405
    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    :catch_4
    move-exception v4

    move-object v1, v2

    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    goto :goto_2
.end method
