.class public Lc8/Fuf;
.super Ljava/lang/Object;
.source "SystemDecoder.java"

# interfaces
.implements Lc8/Auf;


# static fields
.field private static final sIsWebPASupported:Z

.field private static final sIsWebPSupported:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lc8/Fuf;->sIsWebPSupported:Z

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-le v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lc8/Fuf;->sIsWebPASupported:Z

    return-void

    :cond_0
    move v0, v2

    .line 36
    goto :goto_0

    :cond_1
    move v1, v2

    .line 37
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkInputSafety(Lc8/Ouf;Lc8/ouf;)V
    .locals 6
    .param p0, "ris"    # Lc8/Ouf;
    .param p1, "options"    # Lc8/ouf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/pexode/exception/PexodeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 92
    invoke-virtual {p0}, Lc8/Ouf;->getInputType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    .line 93
    iget-boolean v0, p1, Lc8/ouf;->justDecodeBounds:Z

    if-nez v0, :cond_0

    .line 94
    const-string/jumbo v0, "Pexode"

    const-string/jumbo v1, "maybe leak when system decoding with fd, back to input stream type!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/RNf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lc8/Ouf;->back2StreamType()V

    .line 99
    :cond_1
    invoke-virtual {p0}, Lc8/Ouf;->getInputType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 100
    iget-boolean v0, p1, Lc8/ouf;->enableAshmem:Z

    if-eqz v0, :cond_2

    .line 101
    const-string/jumbo v0, "Pexode"

    const-string/jumbo v1, "cannot use ashmem when system decoding with input stream(justBounds=%b), disabled already!"

    new-array v2, v5, [Ljava/lang/Object;

    iget-boolean v3, p1, Lc8/ouf;->justDecodeBounds:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lc8/RNf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iput-boolean v4, p1, Lc8/ouf;->enableAshmem:Z

    .line 106
    :cond_2
    sget-object v0, Lc8/Wuf;->WEBP:Lc8/Yuf;

    iget-object v1, p1, Lc8/ouf;->outMimeType:Lc8/Yuf;

    invoke-virtual {v0, v1}, Lc8/Yuf;->isSame(Lc8/Yuf;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lc8/Fuf;->sIsWebPASupported:Z

    if-nez v0, :cond_3

    .line 107
    const-string/jumbo v0, "Pexode"

    const-string/jumbo v1, "maybe error black image when system decoding webp with input stream(justBounds=%b)!"

    new-array v2, v5, [Ljava/lang/Object;

    iget-boolean v3, p1, Lc8/ouf;->justDecodeBounds:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :cond_3
    return-void
.end method

.method public static varargs max([I)I
    .locals 3
    .param p0, "array"    # [I

    .prologue
    .line 27
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 28
    .local v1, "max":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 29
    aget v2, p0, v0

    if-le v2, v1, :cond_0

    .line 30
    aget v1, p0, v0

    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_1
    return v1
.end method

.method private static newSystemOptions(Lc8/ouf;)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .param p0, "pexOpts"    # Lc8/ouf;

    .prologue
    const/4 v1, 0x1

    .line 121
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 122
    .local v0, "sysOpts":Landroid/graphics/BitmapFactory$Options;
    iget-boolean v2, p0, Lc8/ouf;->justDecodeBounds:Z

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 123
    invoke-static {}, Lc8/juf;->instance()Lc8/juf;

    move-result-object v2

    iget-boolean v2, v2, Lc8/juf;->forcedDegrade2NoInBitmap:Z

    if-nez v2, :cond_0

    .line 124
    iget-object v2, p0, Lc8/ouf;->inBitmap:Landroid/graphics/Bitmap;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 126
    :cond_0
    invoke-virtual {p0}, Lc8/ouf;->isSizeAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    iget v2, p0, Lc8/ouf;->outWidth:I

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 128
    iget v2, p0, Lc8/ouf;->outHeight:I

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 130
    :cond_1
    iget-object v2, p0, Lc8/ouf;->outMimeType:Lc8/Yuf;

    if-eqz v2, :cond_2

    .line 131
    iget-object v2, p0, Lc8/ouf;->outMimeType:Lc8/Yuf;

    invoke-virtual {v2}, Lc8/Yuf;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 133
    :cond_2
    iget v2, p0, Lc8/ouf;->sampleSize:I

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 134
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 135
    sget-object v2, Lc8/ouf;->CONFIG:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 136
    invoke-static {}, Lc8/juf;->instance()Lc8/juf;

    move-result-object v2

    iget-boolean v2, v2, Lc8/juf;->forcedDegrade2NoAshmem:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lc8/ouf;->enableAshmem:Z

    if-eqz v2, :cond_3

    :goto_0
    invoke-static {v0, v1}, Lc8/Fuf;->setupAshmemOptions(Landroid/graphics/BitmapFactory$Options;Z)V

    .line 137
    invoke-static {p0, v0}, Lc8/juf;->setUponSysOptions(Lc8/ouf;Landroid/graphics/BitmapFactory$Options;)V

    .line 138
    return-object v0

    .line 136
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setupAshmemOptions(Landroid/graphics/BitmapFactory$Options;Z)V
    .locals 1
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "ashmem"    # Z

    .prologue
    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 114
    iget-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v0, :cond_0

    .line 115
    iput-boolean p1, p0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 116
    iput-boolean p1, p0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 118
    :cond_0
    return-void
.end method

.method private static updateFromSysOptions(Lc8/ouf;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .param p0, "outOpts"    # Lc8/ouf;
    .param p1, "inOpts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 142
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Lc8/ouf;->outWidth:I

    .line 143
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lc8/ouf;->outHeight:I

    .line 144
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lc8/juf;->setUponSysOptions(Lc8/ouf;Landroid/graphics/BitmapFactory$Options;)V

    .line 145
    return-void
.end method


# virtual methods
.method public acceptInputType(ILc8/Yuf;Z)Z
    .locals 2
    .param p1, "iType"    # I
    .param p2, "mimeType"    # Lc8/Yuf;
    .param p3, "ashmem"    # Z

    .prologue
    .line 59
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    if-nez p3, :cond_2

    sget-object v0, Lc8/Wuf;->WEBP:Lc8/Yuf;

    .line 60
    invoke-virtual {v0, p2}, Lc8/Yuf;->isSame(Lc8/Yuf;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lc8/Fuf;->sIsWebPASupported:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canDecodeIncrementally(Lc8/Yuf;)Z
    .locals 1
    .param p1, "mimeType"    # Lc8/Yuf;

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public decode(Lc8/Ouf;Lc8/ouf;Lc8/vuf;)Lc8/puf;
    .locals 12
    .param p1, "ris"    # Lc8/Ouf;
    .param p2, "outOpts"    # Lc8/ouf;
    .param p3, "listener"    # Lc8/vuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/pexode/exception/PexodeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {p1, p2}, Lc8/Fuf;->checkInputSafety(Lc8/Ouf;Lc8/ouf;)V

    .line 151
    const/4 v5, 0x0

    .line 152
    .local v5, "retBmp":Landroid/graphics/Bitmap;
    invoke-static {p2}, Lc8/Fuf;->newSystemOptions(Lc8/ouf;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    .line 153
    .local v3, "inOpts":Landroid/graphics/BitmapFactory$Options;
    iget-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v7, :cond_2

    iget-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    if-eqz v7, :cond_2

    const/4 v0, 0x1

    .line 154
    .local v0, "ashmem":Z
    :goto_0
    iget-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_3

    const/4 v2, 0x1

    .line 157
    .local v2, "inBitmap":Z
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lc8/Ouf;->getInputType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 165
    iget-object v7, p2, Lc8/ouf;->resourceValue:Landroid/util/TypedValue;

    if-eqz v7, :cond_5

    .line 166
    iget-object v7, p0, Lc8/Fuf;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lc8/Fuf;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    :goto_2
    iget-object v8, p2, Lc8/ouf;->resourceValue:Landroid/util/TypedValue;

    iget-object v9, p2, Lc8/ouf;->outPadding:Landroid/graphics/Rect;

    invoke-static {v7, v8, p1, v9, v3}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 172
    :goto_3
    invoke-static {p2, v3}, Lc8/Fuf;->updateFromSysOptions(Lc8/ouf;Landroid/graphics/BitmapFactory$Options;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_4
    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 179
    :try_start_1
    invoke-static {v5}, Lc8/xuf;->nativePinBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    :cond_0
    :goto_5
    invoke-static {v5}, Lc8/puf;->wrap(Landroid/graphics/Bitmap;)Lc8/puf;

    move-result-object v4

    .line 187
    .local v4, "result":Lc8/puf;
    invoke-static {v4, p2}, Lc8/juf;->resultEnd(Lc8/puf;Lc8/ouf;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 188
    if-eqz v0, :cond_6

    iget-boolean v7, p2, Lc8/ouf;->allowDegrade2NoAshmem:Z

    if-eqz v7, :cond_6

    .line 189
    invoke-virtual {p1}, Lc8/Ouf;->rewind()V

    .line 190
    const/4 v7, 0x0

    iput-boolean v7, p2, Lc8/ouf;->enableAshmem:Z

    .line 191
    invoke-virtual {p0, p1, p2, p3}, Lc8/Fuf;->decode(Lc8/Ouf;Lc8/ouf;Lc8/vuf;)Lc8/puf;

    move-result-object v4

    .line 193
    invoke-static {p2}, Lc8/juf;->cancelledInOptions(Lc8/ouf;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 194
    invoke-static {v4, p2}, Lc8/juf;->resultOK(Lc8/puf;Lc8/ouf;)Z

    move-result v7

    invoke-interface {p3, v7}, Lc8/vuf;->onDegraded2NoAshmem(Z)V

    .line 206
    :cond_1
    :goto_6
    return-object v4

    .line 153
    .end local v0    # "ashmem":Z
    .end local v2    # "inBitmap":Z
    .end local v4    # "result":Lc8/puf;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 154
    .restart local v0    # "ashmem":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 159
    .restart local v2    # "inBitmap":Z
    :pswitch_0
    :try_start_2
    invoke-virtual {p1}, Lc8/Ouf;->getBuffer()[B

    move-result-object v7

    invoke-virtual {p1}, Lc8/Ouf;->getBufferOffset()I

    move-result v8

    invoke-virtual {p1}, Lc8/Ouf;->getBufferLength()I

    move-result v9

    invoke-static {v7, v8, v9, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 160
    goto :goto_3

    .line 162
    :pswitch_1
    invoke-virtual {p1}, Lc8/Ouf;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    iget-object v8, p2, Lc8/ouf;->outPadding:Landroid/graphics/Rect;

    invoke-static {v7, v8, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 163
    goto :goto_3

    .line 166
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 168
    :cond_5
    iget-object v7, p2, Lc8/ouf;->outPadding:Landroid/graphics/Rect;

    invoke-static {p1, v7, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    goto :goto_3

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v7, "Pexode"

    const-string/jumbo v8, "SystemDecoder type=%d, error=%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p1}, Lc8/Ouf;->getInputType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v1, v9, v10

    invoke-static {v7, v8, v9}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 180
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 181
    .local v6, "thr":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 182
    const-string/jumbo v7, "Pexode"

    const-string/jumbo v8, "NdkCore nativePinBitmap error=%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-static {v7, v8, v9}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 196
    .end local v6    # "thr":Ljava/lang/Throwable;
    .restart local v4    # "result":Lc8/puf;
    :cond_6
    if-eqz v2, :cond_1

    iget-boolean v7, p2, Lc8/ouf;->allowDegrade2NoInBitmap:Z

    if-eqz v7, :cond_1

    .line 197
    invoke-virtual {p1}, Lc8/Ouf;->rewind()V

    .line 198
    const/4 v7, 0x0

    iput-object v7, p2, Lc8/ouf;->inBitmap:Landroid/graphics/Bitmap;

    .line 199
    invoke-virtual {p0, p1, p2, p3}, Lc8/Fuf;->decode(Lc8/Ouf;Lc8/ouf;Lc8/vuf;)Lc8/puf;

    move-result-object v4

    .line 201
    invoke-static {p2}, Lc8/juf;->cancelledInOptions(Lc8/ouf;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 202
    invoke-static {v4, p2}, Lc8/juf;->resultOK(Lc8/puf;Lc8/ouf;)Z

    move-result v7

    invoke-interface {p3, v7}, Lc8/vuf;->onDegraded2NoInBitmap(Z)V

    goto/16 :goto_6

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public detectMimeType([B)Lc8/Yuf;
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 70
    sget-boolean v0, Lc8/Fuf;->sIsWebPSupported:Z

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Wuf;->WEBP:Lc8/Yuf;

    invoke-virtual {v0, p1}, Lc8/Yuf;->isMyHeader([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lc8/Wuf;->WEBP:Lc8/Yuf;

    .line 88
    :goto_0
    return-object v0

    .line 73
    :cond_0
    sget-object v0, Lc8/Wuf;->JPEG:Lc8/Yuf;

    invoke-virtual {v0, p1}, Lc8/Yuf;->isMyHeader([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    sget-object v0, Lc8/Wuf;->JPEG:Lc8/Yuf;

    goto :goto_0

    .line 76
    :cond_1
    sget-object v0, Lc8/Wuf;->PNG:Lc8/Yuf;

    invoke-virtual {v0, p1}, Lc8/Yuf;->isMyHeader([B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    sget-object v0, Lc8/Wuf;->PNG:Lc8/Yuf;

    goto :goto_0

    .line 79
    :cond_2
    sget-object v0, Lc8/Wuf;->PNG_A:Lc8/Yuf;

    invoke-virtual {v0, p1}, Lc8/Yuf;->isMyHeader([B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    sget-object v0, Lc8/Wuf;->PNG_A:Lc8/Yuf;

    goto :goto_0

    .line 82
    :cond_3
    sget-boolean v0, Lc8/Fuf;->sIsWebPASupported:Z

    if-eqz v0, :cond_4

    sget-object v0, Lc8/Wuf;->WEBP_A:Lc8/Yuf;

    invoke-virtual {v0, p1}, Lc8/Yuf;->isMyHeader([B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    sget-object v0, Lc8/Wuf;->WEBP_A:Lc8/Yuf;

    goto :goto_0

    .line 85
    :cond_4
    sget-object v0, Lc8/Wuf;->BMP:Lc8/Yuf;

    invoke-virtual {v0, p1}, Lc8/Yuf;->isMyHeader([B)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 86
    sget-object v0, Lc8/Wuf;->BMP:Lc8/Yuf;

    goto :goto_0

    .line 88
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupported(Lc8/Yuf;)Z
    .locals 1
    .param p1, "mimeType"    # Lc8/Yuf;

    .prologue
    .line 46
    if-eqz p1, :cond_3

    sget-boolean v0, Lc8/Fuf;->sIsWebPSupported:Z

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Wuf;->WEBP:Lc8/Yuf;

    .line 47
    invoke-virtual {p1, v0}, Lc8/Yuf;->isSame(Lc8/Yuf;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lc8/Wuf;->JPEG:Lc8/Yuf;

    .line 48
    invoke-virtual {p1, v0}, Lc8/Yuf;->isSame(Lc8/Yuf;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lc8/Wuf;->PNG:Lc8/Yuf;

    .line 49
    invoke-virtual {p1, v0}, Lc8/Yuf;->isSame(Lc8/Yuf;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lc8/Wuf;->PNG_A:Lc8/Yuf;

    .line 50
    invoke-virtual {p1, v0}, Lc8/Yuf;->isSame(Lc8/Yuf;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lc8/Fuf;->sIsWebPASupported:Z

    if-eqz v0, :cond_1

    sget-object v0, Lc8/Wuf;->WEBP_A:Lc8/Yuf;

    .line 51
    invoke-virtual {p1, v0}, Lc8/Yuf;->isSame(Lc8/Yuf;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lc8/Wuf;->BMP:Lc8/Yuf;

    .line 52
    invoke-virtual {p1, v0}, Lc8/Yuf;->isSame(Lc8/Yuf;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepare(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    iput-object p1, p0, Lc8/Fuf;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SystemDecoder@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
