.class public final Lc8/RH;
.super Lc8/WB;
.source "ImageTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/SH;->saveImageToDCIM(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/WB",
        "<",
        "Lc8/ZB;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lc8/RH;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lc8/RH;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Lc8/WB;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Lc8/RH;->val$handler:Landroid/os/Handler;

    const/16 v1, 0x195

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 112
    return-void
.end method

.method public onFinish(Lc8/ZB;I)V
    .locals 12
    .param p1, "data"    # Lc8/ZB;
    .param p2, "token"    # I

    .prologue
    .line 51
    :try_start_0
    invoke-virtual {p1}, Lc8/ZB;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 52
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lc8/ZB;->getData()[B

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 53
    .local v6, "bis":Ljava/io/ByteArrayInputStream;
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 54
    .local v7, "bmp":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lc8/RH;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wv_save_image"

    const-string/jumbo v2, ""

    invoke-static {v0, v7, v1, v2}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 56
    .local v11, "url":Ljava/lang/String;
    if-nez v11, :cond_0

    .line 57
    iget-object v0, p0, Lc8/RH;->val$handler:Landroid/os/Handler;

    const/16 v1, 0x195

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 108
    .end local v6    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v11    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 62
    .restart local v6    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "bmp":Landroid/graphics/Bitmap;
    .restart local v11    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v1, 0x13

    if-ge v0, v1, :cond_2

    .line 68
    const/4 v8, 0x0

    .line 70
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lc8/RH;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 72
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 74
    .local v10, "path":Ljava/lang/String;
    iget-object v0, p0, Lc8/RH;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .end local v10    # "path":Ljava/lang/String;
    :cond_1
    if-eqz v8, :cond_2

    .line 79
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 86
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 88
    .restart local v10    # "path":Ljava/lang/String;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    .line 89
    iget-object v0, p0, Lc8/RH;->val$context:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    const/4 v2, 0x0

    new-instance v3, Lc8/QH;

    invoke-direct {v3, p0}, Lc8/QH;-><init>(Lc8/RH;)V

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 98
    :goto_2
    iget-object v0, p0, Lc8/RH;->val$handler:Landroid/os/Handler;

    const/16 v1, 0x194

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 103
    .end local v6    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v10    # "path":Ljava/lang/String;
    .end local v11    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    iget-object v0, p0, Lc8/RH;->val$handler:Landroid/os/Handler;

    const/16 v1, 0x195

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 78
    .restart local v6    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "bmp":Landroid/graphics/Bitmap;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "url":Ljava/lang/String;
    :catch_1
    move-exception v0

    if-eqz v8, :cond_2

    .line 79
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 104
    .end local v6    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v11    # "url":Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 105
    .local v9, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v9}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 106
    iget-object v0, p0, Lc8/RH;->val$handler:Landroid/os/Handler;

    const/16 v1, 0x195

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 78
    .end local v9    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v6    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "bmp":Landroid/graphics/Bitmap;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 79
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 95
    .end local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "path":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lc8/RH;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 100
    .end local v6    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v10    # "path":Ljava/lang/String;
    .end local v11    # "url":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lc8/RH;->val$handler:Landroid/os/Handler;

    const/16 v1, 0x195

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0
.end method

.method public bridge synthetic onFinish(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I

    .prologue
    .line 48
    check-cast p1, Lc8/ZB;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/RH;->onFinish(Lc8/ZB;I)V

    return-void
.end method
