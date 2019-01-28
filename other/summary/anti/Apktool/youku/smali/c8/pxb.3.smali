.class public Lc8/pxb;
.super Ljava/lang/Object;
.source "PhenixTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/sxb;->onSuccess(Lc8/wxf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/sxb;

.field final synthetic val$event:Lc8/wxf;


# direct methods
.method constructor <init>(Lc8/sxb;Lc8/wxf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/sxb;

    .prologue
    .line 74
    iput-object p1, p0, Lc8/pxb;->this$0:Lc8/sxb;

    iput-object p2, p0, Lc8/pxb;->val$event:Lc8/wxf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 77
    new-instance v10, Lc8/Twb;

    invoke-direct {v10}, Lc8/Twb;-><init>()V

    .line 78
    .local v10, "response":Lc8/Twb;
    iget-object v0, p0, Lc8/pxb;->this$0:Lc8/sxb;

    invoke-static {v0}, Lc8/sxb;->access$000(Lc8/sxb;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lc8/Twb;->setRequestId(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lc8/pxb;->val$event:Lc8/wxf;

    invoke-virtual {v0}, Lc8/wxf;->isFromDisk()Z

    move-result v0

    invoke-virtual {v10, v0}, Lc8/Twb;->setFromDiskCache(Z)V

    .line 80
    iget-object v0, p0, Lc8/pxb;->val$event:Lc8/wxf;

    invoke-virtual {v0}, Lc8/wxf;->isFromDisk()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x130

    :goto_0
    invoke-virtual {v10, v0}, Lc8/Twb;->setStatusCode(I)V

    .line 81
    iget-object v0, p0, Lc8/pxb;->val$event:Lc8/wxf;

    invoke-virtual {v0}, Lc8/wxf;->isFromDisk()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FROM DISK CACHE"

    :goto_1
    invoke-virtual {v10, v0}, Lc8/Twb;->setReasonPhrase(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lc8/pxb;->val$event:Lc8/wxf;

    invoke-virtual {v0}, Lc8/wxf;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lc8/Twb;->setUrl(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lc8/pxb;->val$event:Lc8/wxf;

    invoke-virtual {v0}, Lc8/wxf;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 85
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-nez v7, :cond_2

    .line 86
    iget-object v0, p0, Lc8/pxb;->this$0:Lc8/sxb;

    invoke-static {v0}, Lc8/sxb;->access$100(Lc8/sxb;)Lc8/Uwb;

    move-result-object v0

    iget-object v1, p0, Lc8/pxb;->this$0:Lc8/sxb;

    invoke-static {v1}, Lc8/sxb;->access$000(Lc8/sxb;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "event getbitmap obj is null"

    invoke-virtual {v0, v1, v2}, Lc8/Uwb;->responseReadFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_2
    return-void

    .line 80
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    const/16 v0, 0xc8

    goto :goto_0

    .line 81
    :cond_1
    const-string/jumbo v0, "OK"

    goto :goto_1

    .line 90
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 91
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    iget-object v0, p0, Lc8/pxb;->this$0:Lc8/sxb;

    iget-object v1, p0, Lc8/pxb;->val$event:Lc8/wxf;

    invoke-virtual {v1}, Lc8/wxf;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/sxb;->access$200(Lc8/sxb;Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v8

    .line 92
    .local v8, "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    const/16 v0, 0x64

    invoke-virtual {v7, v8, v0, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 95
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 97
    .local v9, "content":[B
    const-string/jumbo v0, "Content-Type"

    iget-object v1, p0, Lc8/pxb;->this$0:Lc8/sxb;

    invoke-static {v1, v8}, Lc8/sxb;->access$300(Lc8/sxb;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lc8/Twb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v0, "Content-Length"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lc8/Twb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lc8/pxb;->this$0:Lc8/sxb;

    invoke-static {v0}, Lc8/sxb;->access$100(Lc8/sxb;)Lc8/Uwb;

    move-result-object v0

    invoke-virtual {v0, v10}, Lc8/Uwb;->responseHeadersReceived(Lc8/Twb;)V

    .line 101
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 102
    .local v4, "inputStream":Ljava/io/InputStream;
    iget-object v0, p0, Lc8/pxb;->this$0:Lc8/sxb;

    invoke-static {v0}, Lc8/sxb;->access$100(Lc8/sxb;)Lc8/Uwb;

    move-result-object v0

    iget-object v1, p0, Lc8/pxb;->this$0:Lc8/sxb;

    invoke-static {v1}, Lc8/sxb;->access$000(Lc8/sxb;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/pxb;->this$0:Lc8/sxb;

    .line 103
    invoke-static {v2, v8}, Lc8/sxb;->access$300(Lc8/sxb;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 102
    invoke-virtual/range {v0 .. v5}, Lc8/Uwb;->interpretResponseStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    .line 108
    iget-object v0, p0, Lc8/pxb;->this$0:Lc8/sxb;

    invoke-static {v0}, Lc8/sxb;->access$100(Lc8/sxb;)Lc8/Uwb;

    move-result-object v0

    iget-object v1, p0, Lc8/pxb;->this$0:Lc8/sxb;

    invoke-static {v1}, Lc8/sxb;->access$000(Lc8/sxb;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Uwb;->responseReadFinished(Ljava/lang/String;)V

    goto/16 :goto_2
.end method
