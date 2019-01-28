.class public Lc8/Iin;
.super Ljava/lang/Object;
.source "YoukuUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Hin;
    }
.end annotation


# static fields
.field public static final CHINESE:I = 0x0

.field public static COLOUMN_ITEM_HEIGHT:I = 0x0

.field public static DEFAULT_APP_KEY:Ljava/lang/String; = null

.field public static final MIX:I = 0x3

.field public static final NUMBER_CHARACTER:I = 0x2

.field public static final NUMBER_OR_CHARACTER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "YoukuUtil"

.field public static final YOUKU_TOAST_TEXT_IMG_KEY:I = 0x66

.field public static final YOUKU_TOAST_TEXT_KEY:I = 0x65

.field public static currentClickTime:J

.field public static lastClickTime:J

.field private static layout:Landroid/view/View;

.field private static final sMsgHandler:Lc8/Hin;

.field private static sToast:Landroid/widget/Toast;

.field private static toast_img:Landroid/widget/ImageView;

.field private static toast_text:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 79
    const-string/jumbo v0, "23570660"

    sput-object v0, Lc8/Iin;->DEFAULT_APP_KEY:Ljava/lang/String;

    .line 189
    sput-wide v2, Lc8/Iin;->lastClickTime:J

    .line 191
    sput-wide v2, Lc8/Iin;->currentClickTime:J

    .line 267
    new-instance v0, Lc8/Hin;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/Hin;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lc8/Iin;->sMsgHandler:Lc8/Hin;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    return-void
.end method

.method public static URLDecoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 508
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 509
    :cond_0
    const-string/jumbo p0, ""

    .line 517
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 511
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    goto :goto_0

    .line 513
    :catch_0
    move-exception v0

    const-string/jumbo p0, ""

    goto :goto_0

    .line 515
    :catch_1
    move-exception v0

    const-string/jumbo p0, ""

    goto :goto_0
.end method

.method public static URLEncoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 495
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 496
    :cond_0
    const-string/jumbo p0, ""

    .line 504
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 498
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    const-string/jumbo p0, ""

    goto :goto_0

    .line 502
    :catch_1
    move-exception v0

    const-string/jumbo p0, ""

    goto :goto_0
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static _2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method static synthetic access$000()Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lc8/Iin;->sToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-static {p0, p1}, Lc8/Iin;->initToast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lc8/Iin;->toast_text:Landroid/widget/TextView;

    return-object v0
.end method

.method public static cancelTips()V
    .locals 2

    .prologue
    .line 419
    sget-object v0, Lc8/Iin;->sMsgHandler:Lc8/Hin;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lc8/Hin;->sendEmptyMessage(I)Z

    .line 420
    return-void
.end method

.method public static checkClickEvent()Z
    .locals 1

    .prologue
    .line 197
    const/16 v0, 0x3e8

    invoke-static {v0}, Lc8/Iin;->checkClickEvent(I)Z

    move-result v0

    return v0
.end method

.method public static checkClickEvent(I)Z
    .locals 4
    .param p0, "interval"    # I

    .prologue
    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 205
    sput-wide v0, Lc8/Iin;->currentClickTime:J

    sget-wide v2, Lc8/Iin;->lastClickTime:J

    sub-long/2addr v0, v2

    int-to-long v2, p0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 206
    sget-wide v0, Lc8/Iin;->currentClickTime:J

    sput-wide v0, Lc8/Iin;->lastClickTime:J

    .line 207
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    .line 209
    :cond_0
    sget-wide v0, Lc8/Iin;->currentClickTime:J

    sput-wide v0, Lc8/Iin;->lastClickTime:J

    .line 210
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static commitPreference(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 450
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_preferences"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 451
    .local v0, "s":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static commitPreference(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 455
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_preferences"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 456
    .local v0, "s":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static createBitmapThumbnail(Landroid/graphics/Bitmap;)[B
    .locals 15
    .param p0, "bitMap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 741
    if-nez p0, :cond_0

    const/4 v12, 0x0

    .line 768
    :goto_0
    return-object v12

    .line 742
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 743
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 745
    .local v4, "height":I
    const/16 v10, 0x64

    .line 746
    .local v10, "newWidth":I
    const/16 v9, 0x64

    .line 748
    .local v9, "newHeight":I
    int-to-float v0, v10

    int-to-float v2, v3

    div-float v14, v0, v2

    .line 749
    .local v14, "scaleWidth":F
    int-to-float v0, v9

    int-to-float v2, v4

    div-float v13, v0, v2

    .line 751
    .local v13, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 752
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v14, v13}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 754
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 757
    .local v8, "newBitMap":Landroid/graphics/Bitmap;
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 758
    .local v11, "output":Ljava/io/ByteArrayOutputStream;
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {v8, v0, v1, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 760
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 761
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    .line 763
    .local v12, "result":[B
    :try_start_0
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "result::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 764
    :catch_0
    move-exception v7

    .line 765
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 521
    if-nez p0, :cond_1

    .line 538
    :cond_0
    :goto_0
    return v2

    .line 523
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 524
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 525
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0

    .line 526
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 527
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 528
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_3

    .line 529
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 530
    aget-object v3, v0, v1

    invoke-static {v3}, Lc8/Iin;->deleteFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 529
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 536
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0
.end method

.method public static formatSize(F)Ljava/lang/String;
    .locals 10
    .param p0, "size"    # F

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 672
    const-wide/16 v2, 0x400

    .line 673
    .local v2, "kb":J
    long-to-float v6, v2

    cmpg-float v6, p0, v6

    if-gez v6, :cond_0

    .line 674
    const-string/jumbo v6, "%dB"

    new-array v7, v7, [Ljava/lang/Object;

    float-to-int v8, p0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 684
    :goto_0
    return-object v6

    .line 676
    :cond_0
    shl-long v4, v2, v8

    .line 677
    .local v4, "mb":J
    long-to-float v6, v4

    cmpg-float v6, p0, v6

    if-gez v6, :cond_1

    .line 678
    const-string/jumbo v6, "%.1fK"

    new-array v7, v7, [Ljava/lang/Object;

    long-to-float v8, v2

    div-float v8, p0, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 680
    :cond_1
    shl-long v0, v4, v8

    .line 681
    .local v0, "gb":J
    long-to-float v6, v0

    cmpg-float v6, p0, v6

    if-gez v6, :cond_2

    .line 682
    const-string/jumbo v6, "%.1fM"

    new-array v7, v7, [Ljava/lang/Object;

    long-to-float v8, v4

    div-float v8, p0, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 684
    :cond_2
    const-string/jumbo v6, "%.1fG"

    new-array v7, v7, [Ljava/lang/Object;

    long-to-float v8, v0

    div-float v8, p0, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static formatTime(J)Ljava/lang/String;
    .locals 8
    .param p0, "time"    # J

    .prologue
    const-wide/16 v6, 0x3c

    const/4 v4, 0x1

    .line 98
    div-long v2, p0, v6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "minute":Ljava/lang/String;
    rem-long v2, p0, v6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "second":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u5206"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u79d2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static formatTimeForHistory(D)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # D

    .prologue
    .line 112
    double-to-long v2, p0

    .line 113
    .local v2, "msec":J
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "00"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3c

    rem-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "seconds":Ljava/lang/String;
    const-wide/16 v6, 0x3c

    div-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "minutes":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 122
    .end local v0    # "minutes":Ljava/lang/String;
    .end local v1    # "seconds":Ljava/lang/String;
    :goto_0
    return-object v4

    :catch_0
    move-exception v5

    const-string/jumbo v4, ""

    goto :goto_0
.end method

.method public static getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 794
    const/4 v0, 0x0

    .line 796
    .local v0, "appKey":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v3

    .line 797
    .local v3, "sgMgr":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    if-eqz v3, :cond_0

    .line 798
    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v2

    .line 799
    .local v2, "sdsComp":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    if-eqz v2, :cond_0

    .line 800
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 801
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Get app key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    .end local v2    # "sdsComp":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 811
    const-string/jumbo v0, "23570660"

    .line 814
    .end local v3    # "sgMgr":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :cond_1
    :goto_0
    return-object v0

    .line 804
    :catch_0
    move-exception v1

    .line 805
    .local v1, "e":Lcom/alibaba/wireless/security/open/SecException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error code is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 810
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 811
    const-string/jumbo v0, "23570660"

    goto :goto_0

    .line 810
    .end local v1    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :catch_1
    move-exception v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 811
    const-string/jumbo v0, "23570660"

    goto :goto_0

    .line 810
    :catchall_0
    move-exception v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 811
    throw v4
.end method

.method public static getChannelID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 772
    invoke-static {}, Lc8/Bfh;->getChannelID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getColor(Ljava/lang/String;)I
    .locals 3
    .param p0, "strColor"    # Ljava/lang/String;

    .prologue
    .line 689
    const/4 v0, 0x0

    .line 690
    .local v0, "color":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 692
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 697
    :cond_0
    :goto_0
    return v0

    .line 693
    :catch_0
    move-exception v1

    .line 694
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 465
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_preferences"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 466
    .local v0, "s":Landroid/content/SharedPreferences;
    const-string/jumbo v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 485
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_preferences"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 486
    .local v0, "s":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPreferenceBoolean(Ljava/lang/String;)Z
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 460
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_preferences"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 461
    .local v0, "s":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getPreferenceBoolean(Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Z

    .prologue
    .line 480
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_preferences"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 481
    .local v0, "s":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getPreferenceInt(Ljava/lang/String;)I
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 470
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_preferences"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 471
    .local v0, "s":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getPreferenceInt(Ljava/lang/String;I)I
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # I

    .prologue
    .line 490
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_preferences"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 491
    .local v0, "s":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getPreferenceLong(Ljava/lang/String;)J
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 475
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_preferences"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 476
    .local v0, "s":Landroid/content/SharedPreferences;
    const-wide/16 v2, 0x0

    invoke-interface {v0, p0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getRunningActivitySize()I
    .locals 8

    .prologue
    const/4 v4, -0x1

    .line 819
    :try_start_0
    const-string/jumbo v5, "android.app.ActivityThread"

    invoke-static {v5}, Lc8/Iin;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 820
    .local v3, "activityThreadClass":Ljava/lang/Class;
    const-string/jumbo v5, "currentActivityThread"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lc8/Iin;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 821
    .local v2, "activityThread":Ljava/lang/Object;
    const-string/jumbo v5, "mActivities"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 822
    .local v1, "activitiesField":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 823
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 824
    .local v0, "activities":Ljava/util/Map;
    if-nez v0, :cond_0

    .line 829
    .end local v0    # "activities":Ljava/util/Map;
    .end local v1    # "activitiesField":Ljava/lang/reflect/Field;
    .end local v2    # "activityThread":Ljava/lang/Object;
    :goto_0
    return v4

    .line 826
    .restart local v0    # "activities":Ljava/util/Map;
    .restart local v1    # "activitiesField":Ljava/lang/reflect/Field;
    .restart local v2    # "activityThread":Ljava/lang/Object;
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 829
    .end local v0    # "activities":Ljava/util/Map;
    .end local v1    # "activitiesField":Ljava/lang/reflect/Field;
    .end local v2    # "activityThread":Ljava/lang/Object;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static getTTID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/Iin;->getChannelID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@youku_android_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lc8/Iin;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, "ttid":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getTTID():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 778
    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 6

    .prologue
    .line 782
    const-string/jumbo v2, ""

    .line 784
    .local v2, "versionName":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 785
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVersion():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 790
    return-object v2

    .line 786
    :catch_0
    move-exception v0

    .line 787
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static goBackActivity(Landroid/app/Activity;)V
    .locals 1
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lc8/Iin;->goBackActivity(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 220
    return-void
.end method

.method public static goBackActivity(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 226
    invoke-static {p0}, Lc8/Iin;->isTopActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 228
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.youku.ui.activity.HomePageActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 232
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 234
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 235
    return-void
.end method

.method public static hasInternet()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 575
    sget-object v4, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 576
    .local v2, "m":Landroid/net/ConnectivityManager;
    if-nez v2, :cond_1

    .line 590
    :cond_0
    :goto_0
    return v3

    .line 580
    :cond_1
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    .line 581
    .local v1, "info":[Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 582
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 583
    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    .line 585
    const/4 v3, 0x1

    goto :goto_0

    .line 582
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static initToast(Ljava/lang/String;I)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "uiType"    # I

    .prologue
    const/4 v2, 0x0

    .line 368
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    sget-object v0, Lc8/Iin;->sToast:Landroid/widget/Toast;

    if-nez v0, :cond_2

    .line 372
    new-instance v0, Landroid/widget/Toast;

    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/Iin;->sToast:Landroid/widget/Toast;

    .line 374
    :cond_2
    invoke-static {p0, p1}, Lc8/Iin;->initToastLayout(Ljava/lang/String;I)V

    .line 376
    sget-object v0, Lc8/Iin;->layout:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 377
    sget-object v0, Lc8/Iin;->sToast:Landroid/widget/Toast;

    sget-object v1, Lc8/Iin;->layout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 379
    :cond_3
    sget-object v0, Lc8/Iin;->sToast:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 380
    sget-object v0, Lc8/Iin;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 381
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 382
    sget-object v0, Lc8/Iin;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private static initToastLayout(Ljava/lang/String;I)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "uiType"    # I

    .prologue
    .line 387
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v2, "layout_inflater"

    .line 388
    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 389
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/youku/phone/R$layout;->youku_base_project_toast_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 390
    sput-object v1, Lc8/Iin;->layout:Landroid/view/View;

    sget v2, Lcom/youku/phone/R$id;->youku_base_project_click_toast_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lc8/Iin;->toast_text:Landroid/widget/TextView;

    .line 391
    sget-object v1, Lc8/Iin;->layout:Landroid/view/View;

    sget v2, Lcom/youku/phone/R$id;->youku_base_project_click_toast_img:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sput-object v1, Lc8/Iin;->toast_img:Landroid/widget/ImageView;

    .line 392
    packed-switch p1, :pswitch_data_0

    .line 413
    :cond_0
    :goto_0
    sget-object v1, Lc8/Iin;->toast_text:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 414
    sget-object v1, Lc8/Iin;->toast_text:Landroid/widget/TextView;

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    :cond_1
    return-void

    .line 394
    :pswitch_0
    sget-object v1, Lc8/Iin;->toast_img:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 395
    sget-object v1, Lc8/Iin;->toast_img:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    :cond_2
    sget-object v1, Lc8/Iin;->toast_text:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 398
    sget-object v1, Lc8/Iin;->toast_text:Landroid/widget/TextView;

    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$color;->youku_base_project_click_toast_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 402
    :pswitch_1
    sget-object v1, Lc8/Iin;->toast_img:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 403
    sget-object v1, Lc8/Iin;->toast_img:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 404
    sget-object v1, Lc8/Iin;->toast_img:Landroid/widget/ImageView;

    sget v2, Lcom/youku/phone/R$drawable;->youku_detail_base_cache_vip:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 406
    :cond_3
    sget-object v1, Lc8/Iin;->toast_text:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 407
    sget-object v1, Lc8/Iin;->toast_text:Landroid/widget/TextView;

    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$color;->youku_base_project_click_toast_text_img_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isActivityContextValid(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 662
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLandscapePad()Z
    .locals 2

    .prologue
    .line 658
    const/4 v0, 0x2

    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    invoke-static {v1}, Lc8/LWc;->getDeviceDefaultOrientation(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMiPad()Z
    .locals 2

    .prologue
    .line 606
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "MI PAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNonePhoneAbility()Z
    .locals 5

    .prologue
    .line 634
    :try_start_0
    sget-object v3, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 635
    .local v2, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 636
    const/4 v1, 0x1

    .line 644
    .local v1, "isNonePhoneAbility":Z
    :goto_0
    return v1

    .line 638
    .end local v1    # "isNonePhoneAbility":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "isNonePhoneAbility":Z
    goto :goto_0

    .line 640
    .end local v1    # "isNonePhoneAbility":Z
    :catch_0
    move-exception v0

    .line 641
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 642
    const/4 v1, 0x0

    .restart local v1    # "isNonePhoneAbility":Z
    goto :goto_0
.end method

.method public static isPad()Z
    .locals 1

    .prologue
    .line 628
    sget-object v0, Lc8/ddn;->context:Landroid/content/Context;

    invoke-static {v0}, Lc8/Iin;->isPad(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isPad(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 615
    if-eqz p0, :cond_1

    .line 616
    const/4 v1, 0x2

    invoke-static {p0}, Lc8/LWc;->getDeviceDefaultOrientation(Landroid/content/Context;)I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-static {}, Lc8/Iin;->isMiPad()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 618
    :cond_1
    return v0
.end method

.method public static isShowid(Ljava/lang/String;)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 839
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 840
    .local v2, "len":I
    const/4 v1, 0x0

    .line 841
    .local v1, "i":I
    const-string/jumbo v4, "z"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 842
    const/4 v1, 0x1

    .line 843
    :cond_0
    sub-int v4, v2, v1

    const/16 v5, 0x14

    if-eq v4, v5, :cond_3

    .line 852
    :cond_1
    :goto_0
    return v3

    .line 845
    .local v0, "cc":C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .end local v0    # "cc":C
    :cond_3
    if-ge v1, v2, :cond_6

    .line 846
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 847
    .restart local v0    # "cc":C
    const/16 v4, 0x30

    if-lt v0, v4, :cond_4

    const/16 v4, 0x39

    if-le v0, v4, :cond_2

    :cond_4
    const/16 v4, 0x41

    if-lt v0, v4, :cond_5

    const/16 v4, 0x46

    if-le v0, v4, :cond_2

    :cond_5
    const/16 v4, 0x61

    if-lt v0, v4, :cond_1

    const/16 v4, 0x66

    if-le v0, v4, :cond_2

    goto :goto_0

    .line 852
    .end local v0    # "cc":C
    :cond_6
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 654
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTopActivity(Landroid/app/Activity;)Z
    .locals 6
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 241
    const-string/jumbo v5, "activity"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 243
    .local v0, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 245
    .local v2, "taskInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 246
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 247
    .local v1, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    if-ne v5, v3, :cond_0

    .line 250
    .end local v1    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    return v3

    .restart local v1    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    move v3, v4

    .line 247
    goto :goto_0

    .end local v1    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    move v3, v4

    .line 250
    goto :goto_0
.end method

.method public static isVid(Ljava/lang/String;)Z
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 834
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 835
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lc8/Iin;->isShowid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWifi()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 597
    sget-object v3, Lc8/KWc;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 598
    .local v0, "m":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 599
    .local v1, "n":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static join([I)Ljava/lang/String;
    .locals 4
    .param p0, "objs"    # [I

    .prologue
    .line 139
    if-nez p0, :cond_0

    .line 140
    const-string/jumbo v3, ""

    .line 147
    :goto_0
    return-object v3

    .line 141
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 142
    .local v2, "s":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 143
    aget v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 144
    add-int/lit8 v3, v1, -0x1

    if-eq v0, v3, :cond_1

    .line 145
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 147
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static join([J)Ljava/lang/String;
    .locals 6
    .param p0, "objs"    # [J

    .prologue
    .line 151
    if-nez p0, :cond_0

    .line 152
    const-string/jumbo v3, ""

    .line 159
    :goto_0
    return-object v3

    .line 153
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 154
    .local v2, "s":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 155
    aget-wide v4, p0, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 156
    add-int/lit8 v3, v1, -0x1

    if-eq v0, v3, :cond_1

    .line 157
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static join([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 127
    if-nez p0, :cond_0

    .line 128
    const-string/jumbo v3, ""

    .line 135
    :goto_0
    return-object v3

    .line 129
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    .local v2, "s":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 131
    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 132
    add-int/lit8 v3, v1, -0x1

    if-eq v0, v3, :cond_1

    .line 133
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p0}, Lc8/OWc;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static savePreference(Ljava/lang/String;I)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 435
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_preferences"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 436
    .local v0, "s":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 437
    return-void
.end method

.method public static savePreference(Ljava/lang/String;J)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # J

    .prologue
    .line 440
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_preferences"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 441
    .local v0, "s":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 442
    return-void
.end method

.method public static savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 445
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_preferences"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 446
    .local v0, "s":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 447
    return-void
.end method

.method public static savePreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 430
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_preferences"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 431
    .local v0, "s":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 432
    return-void
.end method

.method public static scaleImage(Landroid/graphics/Bitmap;II)[B
    .locals 18
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "maxLength"    # I
    .param p2, "quality"    # I

    .prologue
    .line 708
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 709
    .local v11, "sourceWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 712
    .local v10, "sourceHeight":I
    if-lt v11, v10, :cond_0

    .line 713
    move/from16 v8, p1

    .line 714
    .local v8, "newWidth":I
    move/from16 v0, p1

    int-to-double v14, v0

    int-to-double v0, v10

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    int-to-double v0, v11

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v7, v14

    .line 719
    .local v7, "newHeight":I
    :goto_0
    new-instance v12, Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    int-to-float v15, v8

    int-to-float v0, v7

    move/from16 v16, v0

    invoke-direct/range {v12 .. v16}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 720
    .local v12, "targetRect":Landroid/graphics/RectF;
    sget-object v13, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 721
    .local v4, "dest":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 722
    .local v3, "canvas":Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 723
    .local v9, "paint":Landroid/graphics/Paint;
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 724
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 725
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setDither(Z)V

    .line 726
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v13, v12, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 727
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 728
    .local v5, "localByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v0, p2

    invoke-virtual {v4, v13, v0, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 729
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 731
    .local v2, "arrayOfByte":[B
    :try_start_0
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 732
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :goto_1
    return-object v2

    .line 716
    .end local v2    # "arrayOfByte":[B
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "dest":Landroid/graphics/Bitmap;
    .end local v5    # "localByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "newHeight":I
    .end local v8    # "newWidth":I
    .end local v9    # "paint":Landroid/graphics/Paint;
    .end local v12    # "targetRect":Landroid/graphics/RectF;
    :cond_0
    move/from16 v7, p1

    .line 717
    .restart local v7    # "newHeight":I
    move/from16 v0, p1

    int-to-double v14, v0

    int-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    int-to-double v0, v10

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v8, v14

    .restart local v8    # "newWidth":I
    goto :goto_0

    .line 734
    .restart local v2    # "arrayOfByte":[B
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "dest":Landroid/graphics/Bitmap;
    .restart local v5    # "localByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "paint":Landroid/graphics/Paint;
    .restart local v12    # "targetRect":Landroid/graphics/RectF;
    :catch_0
    move-exception v6

    .line 735
    .local v6, "localException":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static setViewTouchDelegate(Landroid/view/View;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 558
    invoke-static {p0}, Lc8/Mzo;->setViewTouchDelegate(Landroid/view/View;)V

    .line 559
    return-void
.end method

.method public static setViewTouchDelegate(Landroid/view/View;I)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # I

    .prologue
    .line 566
    invoke-static {p0, p1}, Lc8/Mzo;->setViewTouchDelegate(Landroid/view/View;I)V

    .line 567
    return-void
.end method

.method public static setViewTouchDelegate(Landroid/view/View;IIII)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "top"    # I
    .param p2, "bottom"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I

    .prologue
    .line 562
    invoke-static {p0, p1, p2, p3, p4}, Lc8/Mzo;->setViewTouchDelegate(Landroid/view/View;IIII)V

    .line 563
    return-void
.end method

.method public static setViewTouchDelegate(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 554
    invoke-static {p0, p1}, Lc8/Mzo;->setViewTouchDelegate(Landroid/view/View;Landroid/view/View;)V

    .line 555
    return-void
.end method

.method public static setViewTouchDelegate(Landroid/view/View;Landroid/view/View;IIII)V
    .locals 0
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "left"    # I
    .param p5, "right"    # I

    .prologue
    .line 550
    invoke-static/range {p0 .. p5}, Lc8/Mzo;->setViewTouchDelegate(Landroid/view/View;Landroid/view/View;IIII)V

    .line 551
    return-void
.end method

.method public static setViewTouchDelegate(Lc8/Oap;Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .param p0, "mTouchDelegateGroup"    # Lc8/Oap;
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x64

    .line 546
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lc8/Iin;->setViewTouchDelegate(Lc8/Oap;Landroid/view/View;Landroid/view/View;IIII)V

    .line 547
    return-void
.end method

.method public static setViewTouchDelegate(Lc8/Oap;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 0
    .param p0, "mTouchDelegateGroup"    # Lc8/Oap;
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "top"    # I
    .param p4, "bottom"    # I
    .param p5, "left"    # I
    .param p6, "right"    # I

    .prologue
    .line 542
    invoke-static/range {p0 .. p6}, Lc8/Mzo;->setViewTouchDelegate(Lc8/Oap;Landroid/view/View;Landroid/view/View;IIII)V

    .line 543
    return-void
.end method

.method public static showTips(I)V
    .locals 4
    .param p0, "stringId"    # I

    .prologue
    .line 270
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, -0x1

    const/16 v1, 0x65

    invoke-static {v0, v2, v3, v1}, Lc8/Iin;->showTips(Ljava/lang/String;JI)V

    .line 271
    return-void
.end method

.method public static showTips(IJ)V
    .locals 3
    .param p0, "stringId"    # I
    .param p1, "threshold"    # J

    .prologue
    .line 278
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x65

    invoke-static {v0, p1, p2, v1}, Lc8/Iin;->showTips(Ljava/lang/String;JI)V

    .line 279
    return-void
.end method

.method public static showTips(Ljava/lang/String;)V
    .locals 3
    .param p0, "tipsString"    # Ljava/lang/String;

    .prologue
    .line 274
    const-wide/16 v0, -0x1

    const/16 v2, 0x65

    invoke-static {p0, v0, v1, v2}, Lc8/Iin;->showTips(Ljava/lang/String;JI)V

    .line 275
    return-void
.end method

.method public static showTips(Ljava/lang/String;J)V
    .locals 1
    .param p0, "tipsString"    # Ljava/lang/String;
    .param p1, "threshold"    # J

    .prologue
    .line 289
    const/16 v0, 0x65

    invoke-static {p0, p1, p2, v0}, Lc8/Iin;->showTips(Ljava/lang/String;JI)V

    .line 290
    return-void
.end method

.method public static showTips(Ljava/lang/String;JI)V
    .locals 5
    .param p0, "tipsString"    # Ljava/lang/String;
    .param p1, "threshold"    # J
    .param p3, "uiType"    # I

    .prologue
    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Youku.showTips():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 298
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 299
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 300
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 301
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "tipsString"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string/jumbo v2, "threshold"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 303
    const-string/jumbo v2, "uiType"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 304
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 305
    sget-object v2, Lc8/Iin;->sMsgHandler:Lc8/Hin;

    invoke-virtual {v2, v1}, Lc8/Hin;->sendMessage(Landroid/os/Message;)Z

    .line 307
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public static showToast(Ljava/lang/Object;)V
    .locals 5
    .param p0, "msgString"    # Ljava/lang/Object;

    .prologue
    .line 257
    if-eqz p0, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 260
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 261
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "ToastMsg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 263
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 264
    sget-object v2, Lc8/Iin;->sMsgHandler:Lc8/Hin;

    invoke-virtual {v2, v1}, Lc8/Hin;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static showVipTips(I)V
    .locals 4
    .param p0, "stringId"    # I

    .prologue
    .line 282
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, -0x1

    const/16 v1, 0x66

    invoke-static {v0, v2, v3, v1}, Lc8/Iin;->showTips(Ljava/lang/String;JI)V

    .line 283
    return-void
.end method

.method public static string2int([Ljava/lang/String;)[I
    .locals 4
    .param p0, "numbers"    # [Ljava/lang/String;

    .prologue
    .line 163
    array-length v1, p0

    .line 164
    .local v1, "n":I
    new-array v2, v1, [I

    .line 166
    .local v2, "nums":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 167
    :try_start_0
    aget-object v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :catch_0
    move-exception v3

    .line 172
    :cond_0
    return-object v2
.end method

.method public static string2long([Ljava/lang/String;)[J
    .locals 6
    .param p0, "numbers"    # [Ljava/lang/String;

    .prologue
    .line 176
    array-length v1, p0

    .line 177
    .local v1, "n":I
    new-array v2, v1, [J

    .line 179
    .local v2, "nums":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 180
    :try_start_0
    aget-object v3, p0, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :catch_0
    move-exception v3

    .line 185
    :cond_0
    return-object v2
.end method
