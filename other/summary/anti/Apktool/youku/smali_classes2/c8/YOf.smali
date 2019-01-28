.class public Lc8/YOf;
.super Landroid/os/AsyncTask;
.source "ImageSaveFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ZOf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SaveFileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final FAIL_FULL:I = 0x2

.field private static final FAIL_GET:I = 0x1

.field private static final SUCCESS_SAVE:I


# instance fields
.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Lc8/ZOf;


# direct methods
.method private constructor <init>(Lc8/ZOf;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lc8/YOf;->this$0:Lc8/ZOf;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/ZOf;Lc8/VOf;)V
    .locals 0
    .param p1, "x0"    # Lc8/ZOf;
    .param p2, "x1"    # Lc8/VOf;

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lc8/YOf;-><init>(Lc8/ZOf;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 358
    const/4 v6, 0x0

    aget-object v6, p1, v6

    check-cast v6, Landroid/net/Uri;

    iput-object v6, p0, Lc8/YOf;->mUri:Landroid/net/Uri;

    .line 359
    const/4 v6, 0x1

    aget-object v0, p1, v6

    check-cast v0, Landroid/graphics/Bitmap;

    .line 360
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    .line 361
    .local v5, "result":I
    if-eqz v0, :cond_1

    .line 363
    const/4 v2, 0x0

    .line 364
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 366
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v6, p0, Lc8/YOf;->this$0:Lc8/ZOf;

    invoke-static {v6}, Lc8/ZOf;->access$300(Lc8/ZOf;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lc8/YOf;->mUri:Landroid/net/Uri;

    const-string/jumbo v8, "w"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 367
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v0, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 369
    const/4 v5, 0x0

    .line 375
    if-eqz v3, :cond_0

    .line 376
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 377
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 379
    :cond_0
    if-eqz v4, :cond_1

    .line 380
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 388
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    .line 382
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    .line 383
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 370
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 371
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 372
    const/4 v5, 0x2

    .line 375
    if-eqz v2, :cond_2

    .line 376
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 377
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 379
    :cond_2
    if-eqz v4, :cond_1

    .line 380
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 382
    :catch_2
    move-exception v1

    .line 383
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 374
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 375
    :goto_2
    if-eqz v2, :cond_3

    .line 376
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 377
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 379
    :cond_3
    if-eqz v4, :cond_4

    .line 380
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 384
    :cond_4
    :goto_3
    throw v6

    .line 382
    :catch_3
    move-exception v1

    .line 383
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 374
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 370
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lc8/YOf;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x0

    .line 393
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 395
    :pswitch_0
    iget-object v0, p0, Lc8/YOf;->this$0:Lc8/ZOf;

    invoke-static {v0}, Lc8/ZOf;->access$300(Lc8/ZOf;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lc8/YOf;->this$0:Lc8/ZOf;

    sget v2, Lcom/youku/phone/R$string;->uik_save_image_success:I

    invoke-static {v1, v2}, Lc8/ZOf;->access$400(Lc8/ZOf;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 396
    iget-object v0, p0, Lc8/YOf;->this$0:Lc8/ZOf;

    invoke-static {v0}, Lc8/ZOf;->access$500(Lc8/ZOf;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lc8/YOf;->this$0:Lc8/ZOf;

    iget-object v1, p0, Lc8/YOf;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lc8/ZOf;->access$600(Lc8/ZOf;Landroid/net/Uri;)V

    goto :goto_0

    .line 402
    :pswitch_1
    iget-object v0, p0, Lc8/YOf;->this$0:Lc8/ZOf;

    invoke-static {v0}, Lc8/ZOf;->access$300(Lc8/ZOf;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lc8/YOf;->this$0:Lc8/ZOf;

    sget v2, Lcom/youku/phone/R$string;->uik_save_image_fail_get:I

    invoke-static {v1, v2}, Lc8/ZOf;->access$400(Lc8/ZOf;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 405
    :pswitch_2
    iget-object v0, p0, Lc8/YOf;->this$0:Lc8/ZOf;

    invoke-static {v0}, Lc8/ZOf;->access$300(Lc8/ZOf;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lc8/YOf;->this$0:Lc8/ZOf;

    sget v2, Lcom/youku/phone/R$string;->uik_save_image_fail_full:I

    invoke-static {v1, v2}, Lc8/ZOf;->access$400(Lc8/ZOf;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 350
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/YOf;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
