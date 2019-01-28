.class public final Lc8/pE;
.super Ljava/lang/Object;
.source "ScreenCaptureUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/oE;
    }
.end annotation


# static fields
.field private static final IMAGE_SAVE_REQUEST_CODE:I = 0x611


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {p0, p1, p2}, Lc8/pE;->saveBitmapToPath(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$100(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/Uri;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-static {p0, p1}, Lc8/pE;->notifyNewMedia(Landroid/net/Uri;Landroid/content/Context;)V

    return-void
.end method

.method public static capture(Landroid/view/View;ZJJJZ)J
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "inAlbum"    # Z
    .param p2, "quality"    # J
    .param p4, "maxLongSide"    # J
    .param p6, "maxShortSide"    # J
    .param p8, "compress"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {p0}, Lc8/pE;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 37
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 38
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "can\'t get bitmap from the view"

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 40
    :cond_0
    invoke-static {}, Lc8/qB;->getInstance()Lc8/qB;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lc8/qB;->getCacheDir(Z)Ljava/lang/String;

    .line 41
    if-eqz p8, :cond_1

    invoke-static {v0, p4, p5, p6, p7}, Lc8/SH;->zoomBitmap(Landroid/graphics/Bitmap;JJ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 42
    .local v2, "finalBitmap":Landroid/graphics/Bitmap;
    :goto_0
    invoke-static {v2}, Lc8/zF;->saveBitmapToCache(Landroid/graphics/Bitmap;)J

    move-result-wide v4

    .line 44
    .local v4, "result":J
    if-nez p1, :cond_2

    .line 55
    :goto_1
    return-wide v4

    .end local v2    # "finalBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "result":J
    :cond_1
    move-object v2, v0

    .line 41
    goto :goto_0

    .line 47
    .restart local v2    # "finalBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "result":J
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 48
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lc8/pE;->checkSavePlan(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 49
    invoke-static {v2, v1}, Lc8/pE;->writeToDefaultPathAndShowInAlbum(Landroid/graphics/Bitmap;Landroid/content/Context;)V

    goto :goto_1

    .line 54
    :cond_3
    invoke-static {v2, v1}, Lc8/pE;->writeToCustomizedPathAndShowInAlbum(Landroid/graphics/Bitmap;Landroid/content/Context;)V

    goto :goto_1
.end method

.method public static captureByActivty(Landroid/app/Activity;ZJJJZ)J
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "inAlbum"    # Z
    .param p2, "quality"    # J
    .param p4, "maxLongSide"    # J
    .param p6, "maxShortSide"    # J
    .param p8, "compress"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 64
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "can\'t get bitmap from the view"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 66
    :cond_0
    invoke-static {}, Lc8/qB;->getInstance()Lc8/qB;

    move-result-object v4

    invoke-virtual {v4, v5}, Lc8/qB;->getCacheDir(Z)Ljava/lang/String;

    .line 67
    if-eqz p8, :cond_1

    invoke-static {v0, p4, p5, p6, p7}, Lc8/SH;->zoomBitmap(Landroid/graphics/Bitmap;JJ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 68
    .local v1, "finalBitmap":Landroid/graphics/Bitmap;
    :goto_0
    invoke-static {v1}, Lc8/zF;->saveBitmapToCache(Landroid/graphics/Bitmap;)J

    move-result-wide v2

    .line 70
    .local v2, "result":J
    if-nez p1, :cond_2

    .line 80
    :goto_1
    return-wide v2

    .end local v1    # "finalBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "result":J
    :cond_1
    move-object v1, v0

    .line 67
    goto :goto_0

    .line 73
    .restart local v1    # "finalBitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "result":J
    :cond_2
    invoke-static {p0}, Lc8/pE;->checkSavePlan(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 74
    invoke-static {v1, p0}, Lc8/pE;->writeToDefaultPathAndShowInAlbum(Landroid/graphics/Bitmap;Landroid/content/Context;)V

    goto :goto_1

    .line 79
    :cond_3
    invoke-static {v1, p0}, Lc8/pE;->writeToCustomizedPathAndShowInAlbum(Landroid/graphics/Bitmap;Landroid/content/Context;)V

    goto :goto_1
.end method

.method private static checkSavePlan(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static generateFileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SHOUTAO_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd_HH-mm-ss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 151
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 152
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 155
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private static notifyNewMedia(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 167
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 168
    return-void
.end method

.method private static saveBitmapToPath(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "finalPath"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "w"

    invoke-virtual {v3, p2, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 140
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .end local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v1, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 143
    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 145
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 148
    :cond_0
    return-void

    .line 143
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :goto_0
    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 145
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    throw v3

    .line 143
    .end local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private static writeToCustomizedPathAndShowInAlbum(Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .locals 6
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.category.OPENABLE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string/jumbo v4, "image/jpeg"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string/jumbo v4, "android.intent.extra.TITLE"

    invoke-static {}, Lc8/pE;->generateFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    move-object v0, p1

    .line 91
    .local v0, "activityContext":Landroid/content/Context;
    :goto_0
    instance-of v4, v0, Landroid/content/ContextWrapper;

    if-eqz v4, :cond_0

    .line 92
    instance-of v4, v0, Landroid/app/Activity;

    if-nez v4, :cond_0

    .line 94
    check-cast v0, Landroid/content/ContextWrapper;

    .end local v0    # "activityContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0    # "activityContext":Landroid/content/Context;
    goto :goto_0

    .line 97
    :cond_0
    if-eqz v0, :cond_1

    instance-of v4, v0, Landroid/app/Activity;

    if-nez v4, :cond_1

    .line 98
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "can\'t popup activity for user to choose path"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 100
    :cond_1
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "activityContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 102
    .local v1, "fm":Landroid/app/FragmentManager;
    const-string/jumbo v4, "ScreenCaptureBackFragment"

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 103
    .local v2, "fragment":Landroid/app/Fragment;
    if-nez v2, :cond_2

    .line 104
    new-instance v2, Lc8/oE;

    .end local v2    # "fragment":Landroid/app/Fragment;
    invoke-direct {v2, p0}, Lc8/oE;-><init>(Landroid/graphics/Bitmap;)V

    .line 105
    .restart local v2    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const-string/jumbo v5, "ScreenCaptureBackFragment"

    invoke-virtual {v4, v2, v5}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 107
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 109
    :cond_2
    const/16 v4, 0x611

    invoke-virtual {v2, v3, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 110
    return-void
.end method

.method private static writeToDefaultPathAndShowInAlbum(Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .locals 5
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 116
    .local v1, "publicDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 117
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 118
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "can\'t create file directory for image"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 121
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lc8/pE;->generateFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    .local v0, "finalFile":Ljava/io/File;
    invoke-static {p1, v0}, Lc8/LD;->getFileUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 123
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {p1, p0, v2}, Lc8/pE;->saveBitmapToPath(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    .line 124
    invoke-static {v2, p1}, Lc8/pE;->notifyNewMedia(Landroid/net/Uri;Landroid/content/Context;)V

    .line 125
    return-void
.end method
