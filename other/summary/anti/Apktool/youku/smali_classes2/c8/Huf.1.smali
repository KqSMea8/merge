.class public Lc8/Huf;
.super Lc8/Buf;
.source "WebPDecoder.java"


# static fields
.field private static final LIBRARY_JNI_VERSION:I = 0x2

.field private static final NATIVE_RET_DECODE_OK:I = 0x0

.field private static final NATIVE_RET_NULL_STRAIGHT:I = 0x2

.field private static final NATIVE_RET_TRY_DEGRADING:I = 0x1

.field private static final VP8_STATUS_OK:I = 0x0

.field private static final VP8_STATUS_REQUEST_CANCELLED:I = -0x6

.field private static final VP8_STATUS_SUSPENDED:I = 0x5

.field private static sIsSoInstalled:Z


# instance fields
.field private final CONFIG_OUT_DESTRUCTOR:Lc8/Juf;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 37
    invoke-static {}, Lc8/Huf;->getLibraryName()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "libName":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lc8/ZA;->loadLibrary(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lc8/Huf;->nativeLoadedVersionTest()I

    move-result v2

    if-ne v2, v9, :cond_0

    move v2, v3

    :goto_0
    sput-boolean v2, Lc8/Huf;->sIsSoInstalled:Z

    .line 41
    const-string/jumbo v2, "Pexode"

    const-string/jumbo v5, "system load lib%s.so result=%b"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    sget-boolean v8, Lc8/Huf;->sIsSoInstalled:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v5, v6}, Lc8/RNf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_1
    return-void

    :cond_0
    move v2, v4

    .line 40
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "ex":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v2, "Pexode"

    const-string/jumbo v5, "system load lib%s.so error=%s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v1, v6, v4

    aput-object v0, v6, v3

    invoke-static {v2, v5, v6}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lc8/Buf;-><init>()V

    .line 54
    new-instance v0, Lc8/Guf;

    invoke-direct {v0, p0}, Lc8/Guf;-><init>(Lc8/Huf;)V

    iput-object v0, p0, Lc8/Huf;->CONFIG_OUT_DESTRUCTOR:Lc8/Juf;

    return-void
.end method

.method static synthetic access$000(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 26
    invoke-static {p0, p1}, Lc8/Huf;->nativeDestructConfigOut(J)V

    return-void
.end method

.method private decodeFirstIncrementally(Lc8/Ouf;Lc8/ouf;Landroid/graphics/Bitmap;Z)I
    .locals 17
    .param p1, "ris"    # Lc8/Ouf;
    .param p2, "options"    # Lc8/ouf;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "ashmem"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/pexode/exception/PexodeException;
        }
    .end annotation

    .prologue
    .line 105
    const-string/jumbo v2, "decodeFirstIncrementally"

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v0, v1, v2}, Lc8/Huf;->invalidBitmap(Landroid/graphics/Bitmap;Lc8/ouf;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    const/4 v2, 0x1

    .line 169
    :goto_0
    return v2

    .line 109
    :cond_0
    const-wide/16 v6, 0x0

    .line 110
    .local v6, "address":J
    const/4 v13, 0x0

    .line 112
    .local v13, "buffer":[B
    if-eqz p4, :cond_1

    .line 113
    invoke-static/range {p3 .. p3}, Lc8/Huf;->getPixelAddressFromBitmap(Landroid/graphics/Bitmap;)J

    move-result-wide v6

    .line 118
    :goto_1
    if-nez v13, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-nez v2, :cond_2

    .line 119
    const/4 v2, 0x1

    goto :goto_0

    .line 115
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lc8/Huf;->getPixelBufferFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v13

    goto :goto_1

    .line 122
    :cond_2
    const/4 v2, 0x1

    new-array v8, v2, [J

    .line 126
    .local v8, "nativeConfig":[J
    invoke-virtual/range {p1 .. p1}, Lc8/Ouf;->getInputType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 142
    invoke-static {}, Lc8/juf;->instance()Lc8/juf;

    move-result-object v2

    const/16 v3, 0x800

    invoke-virtual {v2, v3}, Lc8/juf;->offerBytes(I)[B

    move-result-object v4

    .line 143
    .local v4, "tempBuf":[B
    if-eqz p4, :cond_7

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    .line 144
    invoke-static/range {v3 .. v8}, Lc8/Huf;->nativeDecodeStreamWithOutAddressIncrementally(Lc8/Ouf;[BLc8/ouf;J[J)I

    move-result v16

    .line 148
    .local v16, "status":I
    :goto_2
    invoke-static {}, Lc8/juf;->instance()Lc8/juf;

    move-result-object v2

    invoke-virtual {v2, v4}, Lc8/juf;->releaseBytes([B)V

    .line 153
    .end local v4    # "tempBuf":[B
    :goto_3
    new-instance v15, Lc8/Kuf;

    const/4 v2, 0x0

    aget-wide v2, v8, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Huf;->CONFIG_OUT_DESTRUCTOR:Lc8/Juf;

    move-object/from16 v0, p3

    invoke-direct {v15, v0, v2, v3, v5}, Lc8/Kuf;-><init>(Landroid/graphics/Bitmap;JLc8/Juf;)V

    .line 155
    .local v15, "staging":Lc8/Kuf;
    const/4 v2, 0x5

    move/from16 v0, v16

    if-ne v0, v2, :cond_3

    invoke-static/range {p2 .. p2}, Lc8/juf;->cancelledInOptions(Lc8/ouf;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 156
    :cond_3
    invoke-virtual {v15}, Lc8/Kuf;->release()V

    .line 159
    :cond_4
    const/4 v2, -0x6

    move/from16 v0, v16

    if-ne v0, v2, :cond_8

    .line 160
    const/4 v2, 0x2

    goto :goto_0

    .line 128
    .end local v15    # "staging":Lc8/Kuf;
    .end local v16    # "status":I
    :pswitch_0
    if-eqz p4, :cond_5

    .line 129
    invoke-virtual/range {p1 .. p1}, Lc8/Ouf;->getBuffer()[B

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lc8/Ouf;->getBufferOffset()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lc8/Ouf;->getBufferLength()I

    move-result v4

    move-object/from16 v5, p2

    invoke-static/range {v2 .. v8}, Lc8/Huf;->nativeDecodeBytesWithOutAddressIncrementally([BIILc8/ouf;J[J)I

    move-result v16

    .restart local v16    # "status":I
    goto :goto_3

    .line 131
    .end local v16    # "status":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lc8/Ouf;->getBuffer()[B

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lc8/Ouf;->getBufferOffset()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lc8/Ouf;->getBufferLength()I

    move-result v11

    move-object/from16 v12, p2

    move-object v14, v8

    invoke-static/range {v9 .. v14}, Lc8/Huf;->nativeDecodeBytesWithOutBufferIncrementally([BIILc8/ouf;[B[J)I

    move-result v16

    .line 133
    .restart local v16    # "status":I
    goto :goto_3

    .line 135
    .end local v16    # "status":I
    :pswitch_1
    if-eqz p4, :cond_6

    .line 136
    invoke-virtual/range {p1 .. p1}, Lc8/Ouf;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-static {v2, v0, v6, v7, v8}, Lc8/Huf;->nativeDecodeFdWithOutAddressIncrementally(Ljava/io/FileDescriptor;Lc8/ouf;J[J)I

    move-result v16

    .restart local v16    # "status":I
    goto :goto_3

    .line 138
    .end local v16    # "status":I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lc8/Ouf;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-static {v2, v0, v13, v8}, Lc8/Huf;->nativeDecodeFdWithOutBufferIncrementally(Ljava/io/FileDescriptor;Lc8/ouf;[B[J)I

    move-result v16

    .line 140
    .restart local v16    # "status":I
    goto :goto_3

    .line 146
    .end local v16    # "status":I
    .restart local v4    # "tempBuf":[B
    :cond_7
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v4, v1, v13, v8}, Lc8/Huf;->nativeDecodeStreamWithOutBufferIncrementally(Lc8/Ouf;[BLc8/ouf;[B[J)I

    move-result v16

    .restart local v16    # "status":I
    goto :goto_2

    .line 162
    .end local v4    # "tempBuf":[B
    .restart local v15    # "staging":Lc8/Kuf;
    :cond_8
    if-eqz v16, :cond_9

    const/4 v2, 0x5

    move/from16 v0, v16

    if-eq v0, v2, :cond_9

    .line 163
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 165
    :cond_9
    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lc8/juf;->setIncrementalStaging(Lc8/ouf;Lc8/Kuf;)V

    .line 166
    const/4 v2, 0x5

    move/from16 v0, v16

    if-ne v0, v2, :cond_a

    .line 167
    const/4 v2, 0x2

    goto/16 :goto_0

    .line 169
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static decodeInBitmapAddress(Lc8/Ouf;Lc8/ouf;Landroid/graphics/Bitmap;)I
    .locals 9
    .param p0, "ris"    # Lc8/Ouf;
    .param p1, "options"    # Lc8/ouf;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x1

    .line 238
    const-string/jumbo v0, "decodeInBitmapAddress"

    invoke-static {p2, p1, v0}, Lc8/Huf;->invalidBitmap(Landroid/graphics/Bitmap;Lc8/ouf;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    .line 262
    :goto_0
    return v0

    .line 242
    :cond_0
    invoke-static {p2}, Lc8/Huf;->getPixelAddressFromBitmap(Landroid/graphics/Bitmap;)J

    move-result-wide v4

    .line 243
    .local v4, "address":J
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_1

    move v0, v8

    .line 244
    goto :goto_0

    .line 248
    :cond_1
    invoke-virtual {p0}, Lc8/Ouf;->getInputType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 256
    invoke-static {}, Lc8/juf;->instance()Lc8/juf;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lc8/juf;->offerBytes(I)[B

    move-result-object v7

    .line 257
    .local v7, "tempBuf":[B
    invoke-static {p0, v7, p1, v4, v5}, Lc8/Huf;->nativeDecodeStreamWithOutAddress(Lc8/Ouf;[BLc8/ouf;J)Z

    move-result v6

    .line 258
    .local v6, "result":Z
    invoke-static {}, Lc8/juf;->instance()Lc8/juf;

    move-result-object v0

    invoke-virtual {v0, v7}, Lc8/juf;->releaseBytes([B)V

    .line 262
    .end local v7    # "tempBuf":[B
    :goto_1
    if-eqz v6, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 250
    .end local v6    # "result":Z
    :pswitch_0
    invoke-virtual {p0}, Lc8/Ouf;->getBuffer()[B

    move-result-object v0

    invoke-virtual {p0}, Lc8/Ouf;->getBufferOffset()I

    move-result v1

    invoke-virtual {p0}, Lc8/Ouf;->getBufferLength()I

    move-result v2

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lc8/Huf;->nativeDecodeBytesWithOutAddress([BIILc8/ouf;J)Z

    move-result v6

    .line 251
    .restart local v6    # "result":Z
    goto :goto_1

    .line 253
    .end local v6    # "result":Z
    :pswitch_1
    invoke-virtual {p0}, Lc8/Ouf;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0, p1, v4, v5}, Lc8/Huf;->nativeDecodeFdWithOutAddress(Ljava/io/FileDescriptor;Lc8/ouf;J)Z

    move-result v6

    .line 254
    .restart local v6    # "result":Z
    goto :goto_1

    :cond_2
    move v0, v8

    .line 262
    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private decodeInBitmapBuffer(Lc8/Ouf;Lc8/ouf;Landroid/graphics/Bitmap;)I
    .locals 7
    .param p1, "ris"    # Lc8/Ouf;
    .param p2, "options"    # Lc8/ouf;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x1

    .line 210
    const-string/jumbo v4, "decodeInBitmapBuffer"

    invoke-static {p3, p2, v4}, Lc8/Huf;->invalidBitmap(Landroid/graphics/Bitmap;Lc8/ouf;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v3

    .line 214
    :cond_1
    invoke-virtual {p0, p3}, Lc8/Huf;->getPixelBufferFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 215
    .local v0, "buffer":[B
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p1}, Lc8/Ouf;->getInputType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 228
    invoke-static {}, Lc8/juf;->instance()Lc8/juf;

    move-result-object v4

    const/16 v5, 0x800

    invoke-virtual {v4, v5}, Lc8/juf;->offerBytes(I)[B

    move-result-object v2

    .line 229
    .local v2, "tempBuf":[B
    invoke-static {p1, v2, p2, v0}, Lc8/Huf;->nativeDecodeStreamWithOutBuffer(Lc8/Ouf;[BLc8/ouf;[B)Z

    move-result v1

    .line 230
    .local v1, "result":Z
    invoke-static {}, Lc8/juf;->instance()Lc8/juf;

    move-result-object v4

    invoke-virtual {v4, v2}, Lc8/juf;->releaseBytes([B)V

    .line 234
    .end local v2    # "tempBuf":[B
    :goto_1
    if-eqz v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 222
    .end local v1    # "result":Z
    :pswitch_0
    invoke-virtual {p1}, Lc8/Ouf;->getBuffer()[B

    move-result-object v4

    invoke-virtual {p1}, Lc8/Ouf;->getBufferOffset()I

    move-result v5

    invoke-virtual {p1}, Lc8/Ouf;->getBufferLength()I

    move-result v6

    invoke-static {v4, v5, v6, p2, v0}, Lc8/Huf;->nativeDecodeBytesWithOutBuffer([BIILc8/ouf;[B)Z

    move-result v1

    .line 223
    .restart local v1    # "result":Z
    goto :goto_1

    .line 225
    .end local v1    # "result":Z
    :pswitch_1
    invoke-virtual {p1}, Lc8/Ouf;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {v4, p2, v0}, Lc8/Huf;->nativeDecodeFdWithOutBuffer(Ljava/io/FileDescriptor;Lc8/ouf;[B)Z

    move-result v1

    .line 226
    .restart local v1    # "result":Z
    goto :goto_1

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private decodeLaterIncrementally(Lc8/Ouf;Lc8/ouf;Lc8/Kuf;)I
    .locals 9
    .param p1, "ris"    # Lc8/Ouf;
    .param p2, "options"    # Lc8/ouf;
    .param p3, "staging"    # Lc8/Kuf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/pexode/exception/PexodeException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x5

    .line 179
    invoke-virtual {p1}, Lc8/Ouf;->getInputType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 187
    invoke-static {}, Lc8/juf;->instance()Lc8/juf;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lc8/juf;->offerBytes(I)[B

    move-result-object v7

    .line 188
    .local v7, "tempBuf":[B
    invoke-virtual {p3}, Lc8/Kuf;->getNativeConfigOut()J

    move-result-wide v0

    invoke-static {p1, v7, p2, v0, v1}, Lc8/Huf;->nativeDecodeStreamIncrementally(Lc8/Ouf;[BLc8/ouf;J)I

    move-result v6

    .line 189
    .local v6, "status":I
    invoke-static {}, Lc8/juf;->instance()Lc8/juf;

    move-result-object v0

    invoke-virtual {v0, v7}, Lc8/juf;->releaseBytes([B)V

    .line 194
    .end local v7    # "tempBuf":[B
    :goto_0
    if-ne v6, v8, :cond_0

    invoke-static {p2}, Lc8/juf;->cancelledInOptions(Lc8/ouf;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    :cond_0
    invoke-virtual {p3}, Lc8/Kuf;->release()V

    .line 198
    :cond_1
    if-eq v6, v8, :cond_2

    const/4 v0, -0x6

    if-ne v6, v0, :cond_3

    .line 199
    :cond_2
    const/4 v0, 0x2

    .line 202
    :goto_1
    return v0

    .line 181
    .end local v6    # "status":I
    :pswitch_0
    invoke-virtual {p1}, Lc8/Ouf;->getBuffer()[B

    move-result-object v0

    invoke-virtual {p1}, Lc8/Ouf;->getBufferOffset()I

    move-result v1

    invoke-virtual {p1}, Lc8/Ouf;->getBufferLength()I

    move-result v2

    invoke-virtual {p3}, Lc8/Kuf;->getNativeConfigOut()J

    move-result-wide v4

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lc8/Huf;->nativeDecodeBytesIncrementally([BIILc8/ouf;J)I

    move-result v6

    .line 182
    .restart local v6    # "status":I
    goto :goto_0

    .line 184
    .end local v6    # "status":I
    :pswitch_1
    invoke-virtual {p1}, Lc8/Ouf;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p3}, Lc8/Kuf;->getNativeConfigOut()J

    move-result-wide v2

    invoke-static {v0, p2, v2, v3}, Lc8/Huf;->nativeDecodeFdIncrementally(Ljava/io/FileDescriptor;Lc8/ouf;J)I

    move-result v6

    .line 185
    .restart local v6    # "status":I
    goto :goto_0

    .line 201
    :cond_3
    if-nez v6, :cond_4

    .line 202
    const/4 v0, 0x0

    goto :goto_1

    .line 205
    :cond_4
    new-instance v0, Lcom/taobao/pexode/exception/IncrementalDecodeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "native decode bytes with buffer incrementally error, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/pexode/exception/IncrementalDecodeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private decodeReturnInBuffer(Lc8/Ouf;Lc8/ouf;Landroid/graphics/Bitmap;Lc8/Kuf;ZZ)I
    .locals 1
    .param p1, "ris"    # Lc8/Ouf;
    .param p2, "options"    # Lc8/ouf;
    .param p3, "bufferBmp"    # Landroid/graphics/Bitmap;
    .param p4, "staging"    # Lc8/Kuf;
    .param p5, "isIncremental"    # Z
    .param p6, "firstIncrement"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/pexode/exception/PexodeException;
        }
    .end annotation

    .prologue
    .line 266
    if-nez p5, :cond_0

    .line 267
    invoke-direct {p0, p1, p2, p3}, Lc8/Huf;->decodeInBitmapBuffer(Lc8/Ouf;Lc8/ouf;Landroid/graphics/Bitmap;)I

    move-result v0

    .line 272
    :goto_0
    return v0

    .line 269
    :cond_0
    if-eqz p6, :cond_1

    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lc8/Huf;->decodeFirstIncrementally(Lc8/Ouf;Lc8/ouf;Landroid/graphics/Bitmap;Z)I

    move-result v0

    goto :goto_0

    .line 272
    :cond_1
    invoke-direct {p0, p1, p2, p4}, Lc8/Huf;->decodeLaterIncrementally(Lc8/Ouf;Lc8/ouf;Lc8/Kuf;)I

    move-result v0

    goto :goto_0
.end method

.method private static getLibraryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lc8/xuf;->isSoInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "armeabi-v7a"

    invoke-static {v0}, Lc8/xuf;->isCpuAbiSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lc8/xuf;->isCpuSupportNEON()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string/jumbo v0, "pexwebp-v7a"

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "pexwebp"

    goto :goto_0
.end method

.method private static native nativeDecodeBytesIncrementally([BIILc8/ouf;J)I
.end method

.method private static native nativeDecodeBytesWithOutAddress([BIILc8/ouf;J)Z
.end method

.method private static native nativeDecodeBytesWithOutAddressIncrementally([BIILc8/ouf;J[J)I
.end method

.method private static native nativeDecodeBytesWithOutBuffer([BIILc8/ouf;[B)Z
.end method

.method private static native nativeDecodeBytesWithOutBufferIncrementally([BIILc8/ouf;[B[J)I
.end method

.method private static native nativeDecodeFdIncrementally(Ljava/io/FileDescriptor;Lc8/ouf;J)I
.end method

.method private static native nativeDecodeFdWithOutAddress(Ljava/io/FileDescriptor;Lc8/ouf;J)Z
.end method

.method private static native nativeDecodeFdWithOutAddressIncrementally(Ljava/io/FileDescriptor;Lc8/ouf;J[J)I
.end method

.method private static native nativeDecodeFdWithOutBuffer(Ljava/io/FileDescriptor;Lc8/ouf;[B)Z
.end method

.method private static native nativeDecodeFdWithOutBufferIncrementally(Ljava/io/FileDescriptor;Lc8/ouf;[B[J)I
.end method

.method private static native nativeDecodeStreamIncrementally(Lc8/Ouf;[BLc8/ouf;J)I
.end method

.method private static native nativeDecodeStreamWithOutAddress(Lc8/Ouf;[BLc8/ouf;J)Z
.end method

.method private static native nativeDecodeStreamWithOutAddressIncrementally(Lc8/Ouf;[BLc8/ouf;J[J)I
.end method

.method private static native nativeDecodeStreamWithOutBuffer(Lc8/Ouf;[BLc8/ouf;[B)Z
.end method

.method private static native nativeDecodeStreamWithOutBufferIncrementally(Lc8/Ouf;[BLc8/ouf;[B[J)I
.end method

.method private static native nativeDestructConfigOut(J)V
.end method

.method private static native nativeLoadedVersionTest()I
.end method


# virtual methods
.method public acceptInputType(ILc8/Yuf;Z)Z
    .locals 1
    .param p1, "iType"    # I
    .param p2, "mimeType"    # Lc8/Yuf;
    .param p3, "ashmem"    # Z

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public canDecodeIncrementally(Lc8/Yuf;)Z
    .locals 1
    .param p1, "mimeType"    # Lc8/Yuf;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lc8/Huf;->isSupported(Lc8/Yuf;)Z

    move-result v0

    return v0
.end method

.method public decode(Lc8/Ouf;Lc8/ouf;Lc8/vuf;)Lc8/puf;
    .locals 7
    .param p1, "ris"    # Lc8/Ouf;
    .param p2, "options"    # Lc8/ouf;
    .param p3, "listener"    # Lc8/vuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/pexode/exception/PexodeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 384
    invoke-virtual {p2}, Lc8/ouf;->isSizeAvailable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 385
    invoke-virtual {p1}, Lc8/Ouf;->getInputType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 393
    invoke-static {}, Lc8/juf;->instance()Lc8/juf;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Lc8/juf;->offerBytes(I)[B

    move-result-object v2

    .line 394
    .local v2, "tempBuf":[B
    invoke-static {p1, v2, p2, v3}, Lc8/Huf;->nativeDecodeStreamWithOutBuffer(Lc8/Ouf;[BLc8/ouf;[B)Z

    .line 395
    invoke-static {}, Lc8/juf;->instance()Lc8/juf;

    move-result-object v4

    invoke-virtual {v4, v2}, Lc8/juf;->releaseBytes([B)V

    .line 404
    .end local v2    # "tempBuf":[B
    :cond_0
    :goto_0
    iget v4, p2, Lc8/ouf;->sampleSize:I

    invoke-static {p2, v4}, Lc8/juf;->setLastSampleSizeInOptions(Lc8/ouf;I)V

    .line 406
    iget-boolean v4, p2, Lc8/ouf;->justDecodeBounds:Z

    if-nez v4, :cond_1

    invoke-static {p2}, Lc8/juf;->cancelledInOptions(Lc8/ouf;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 425
    :cond_1
    :goto_1
    return-object v3

    .line 387
    :pswitch_0
    invoke-virtual {p1}, Lc8/Ouf;->getBuffer()[B

    move-result-object v4

    invoke-virtual {p1}, Lc8/Ouf;->getBufferOffset()I

    move-result v5

    invoke-virtual {p1}, Lc8/Ouf;->getBufferLength()I

    move-result v6

    invoke-static {v4, v5, v6, p2, v3}, Lc8/Huf;->nativeDecodeBytesWithOutBuffer([BIILc8/ouf;[B)Z

    goto :goto_0

    .line 390
    :pswitch_1
    invoke-virtual {p1}, Lc8/Ouf;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {v4, p2, v3}, Lc8/Huf;->nativeDecodeFdWithOutBuffer(Ljava/io/FileDescriptor;Lc8/ouf;[B)Z

    goto :goto_0

    .line 398
    :cond_2
    iget v4, p2, Lc8/ouf;->sampleSize:I

    invoke-static {p2}, Lc8/juf;->getLastSampleSizeInOptions(Lc8/ouf;)I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 399
    iget v0, p2, Lc8/ouf;->outWidth:I

    .line 400
    .local v0, "lastW":I
    iget v4, p2, Lc8/ouf;->sampleSize:I

    div-int v4, v0, v4

    iput v4, p2, Lc8/ouf;->outWidth:I

    .line 401
    iget v4, p2, Lc8/ouf;->outHeight:I

    iget v5, p2, Lc8/ouf;->outWidth:I

    mul-int/2addr v4, v5

    div-int/2addr v4, v0

    iput v4, p2, Lc8/ouf;->outHeight:I

    goto :goto_0

    .line 410
    .end local v0    # "lastW":I
    :cond_3
    invoke-virtual {p2}, Lc8/ouf;->isSizeAvailable()Z

    move-result v4

    if-nez v4, :cond_4

    .line 411
    const-string/jumbo v4, "Pexode"

    const-string/jumbo v5, "WebPDecoder size unavailable before bitmap decoding"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 417
    :cond_4
    iget-boolean v3, p2, Lc8/ouf;->enableAshmem:Z

    if-eqz v3, :cond_5

    invoke-static {}, Lc8/juf;->instance()Lc8/juf;

    move-result-object v3

    iget-boolean v3, v3, Lc8/juf;->forcedDegrade2NoAshmem:Z

    if-nez v3, :cond_5

    .line 418
    invoke-virtual {p0, p1, p2, p3}, Lc8/Huf;->decodeAshmem(Lc8/Ouf;Lc8/ouf;Lc8/vuf;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 425
    .local v1, "retBmp":Landroid/graphics/Bitmap;
    :goto_2
    invoke-static {v1}, Lc8/puf;->wrap(Landroid/graphics/Bitmap;)Lc8/puf;

    move-result-object v3

    goto :goto_1

    .line 419
    .end local v1    # "retBmp":Landroid/graphics/Bitmap;
    :cond_5
    iget-object v3, p2, Lc8/ouf;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6

    invoke-static {}, Lc8/juf;->instance()Lc8/juf;

    move-result-object v3

    iget-boolean v3, v3, Lc8/juf;->forcedDegrade2NoInBitmap:Z

    if-nez v3, :cond_6

    .line 420
    invoke-virtual {p0, p1, p2, p3}, Lc8/Huf;->decodeInBitmap(Lc8/Ouf;Lc8/ouf;Lc8/vuf;)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1    # "retBmp":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 422
    .end local v1    # "retBmp":Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {p0, p1, p2}, Lc8/Huf;->decodeNormal(Lc8/Ouf;Lc8/ouf;)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1    # "retBmp":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected decodeAshmem(Lc8/Ouf;Lc8/ouf;Lc8/vuf;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "ris"    # Lc8/Ouf;
    .param p2, "options"    # Lc8/ouf;
    .param p3, "listener"    # Lc8/vuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/pexode/exception/PexodeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 337
    iget-boolean v2, p2, Lc8/ouf;->incrementalDecode:Z

    .line 338
    .local v2, "isIncremental":Z
    invoke-static {p2}, Lc8/juf;->getIncrementalStaging(Lc8/ouf;)Lc8/Kuf;

    move-result-object v5

    .line 339
    .local v5, "staging":Lc8/Kuf;
    if-nez v5, :cond_3

    move v1, v7

    .line 340
    .local v1, "firstIncrement":Z
    :goto_0
    const/4 v0, 0x0

    .line 342
    .local v0, "bufferBmp":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    .line 343
    :cond_0
    invoke-static {p2, v7}, Lc8/Huf;->newBitmap(Lc8/ouf;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 347
    :cond_1
    if-eqz v2, :cond_5

    .line 348
    if-eqz v1, :cond_4

    .line 349
    invoke-direct {p0, p1, p2, v0, v7}, Lc8/Huf;->decodeFirstIncrementally(Lc8/Ouf;Lc8/ouf;Landroid/graphics/Bitmap;Z)I

    move-result v3

    .line 357
    .local v3, "nret":I
    :goto_1
    if-nez v3, :cond_6

    .line 358
    if-eqz v2, :cond_2

    .line 359
    invoke-static {p2}, Lc8/juf;->getIncrementalStaging(Lc8/ouf;)Lc8/Kuf;

    move-result-object v6

    invoke-virtual {v6}, Lc8/Kuf;->getInterBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 379
    .end local v0    # "bufferBmp":Landroid/graphics/Bitmap;
    :cond_2
    :goto_2
    return-object v0

    .end local v1    # "firstIncrement":Z
    .end local v3    # "nret":I
    :cond_3
    move v1, v6

    .line 339
    goto :goto_0

    .line 351
    .restart local v0    # "bufferBmp":Landroid/graphics/Bitmap;
    .restart local v1    # "firstIncrement":Z
    :cond_4
    invoke-direct {p0, p1, p2, v5}, Lc8/Huf;->decodeLaterIncrementally(Lc8/Ouf;Lc8/ouf;Lc8/Kuf;)I

    move-result v3

    .restart local v3    # "nret":I
    goto :goto_1

    .line 354
    .end local v3    # "nret":I
    :cond_5
    invoke-static {p1, p2, v0}, Lc8/Huf;->decodeInBitmapAddress(Lc8/Ouf;Lc8/ouf;Landroid/graphics/Bitmap;)I

    move-result v3

    .restart local v3    # "nret":I
    goto :goto_1

    .line 364
    :cond_6
    const/4 v8, 0x2

    if-ne v8, v3, :cond_7

    .line 365
    const/4 v0, 0x0

    goto :goto_2

    .line 368
    :cond_7
    const/4 v4, 0x0

    .line 370
    .local v4, "ret":Landroid/graphics/Bitmap;
    invoke-static {p2}, Lc8/juf;->cancelledInOptions(Lc8/ouf;)Z

    move-result v8

    if-nez v8, :cond_a

    iget-boolean v8, p2, Lc8/ouf;->allowDegrade2NoAshmem:Z

    if-eqz v8, :cond_a

    .line 371
    invoke-virtual {p1}, Lc8/Ouf;->rewind()V

    .line 372
    invoke-virtual {p0, p1, p2}, Lc8/Huf;->decodeNormal(Lc8/Ouf;Lc8/ouf;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 374
    invoke-static {p2}, Lc8/juf;->cancelledInOptions(Lc8/ouf;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 375
    if-nez v4, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    move v6, v7

    :cond_9
    invoke-interface {p3, v6}, Lc8/vuf;->onDegraded2NoAshmem(Z)V

    :cond_a
    move-object v0, v4

    .line 379
    goto :goto_2
.end method

.method protected decodeInBitmap(Lc8/Ouf;Lc8/ouf;Lc8/vuf;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "ris"    # Lc8/Ouf;
    .param p2, "options"    # Lc8/ouf;
    .param p3, "listener"    # Lc8/vuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/pexode/exception/PexodeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 304
    iget-boolean v5, p2, Lc8/ouf;->incrementalDecode:Z

    .line 305
    .local v5, "isIncremental":Z
    invoke-static {p2}, Lc8/juf;->getIncrementalStaging(Lc8/ouf;)Lc8/Kuf;

    move-result-object v4

    .line 306
    .local v4, "staging":Lc8/Kuf;
    if-nez v4, :cond_1

    move v6, v9

    .line 308
    .local v6, "firstIncrement":Z
    :goto_0
    iget-object v3, p2, Lc8/ouf;->inBitmap:Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lc8/Huf;->decodeReturnInBuffer(Lc8/Ouf;Lc8/ouf;Landroid/graphics/Bitmap;Lc8/Kuf;ZZ)I

    move-result v7

    .line 310
    .local v7, "nret":I
    if-nez v7, :cond_3

    .line 311
    if-eqz v5, :cond_2

    .line 312
    invoke-static {p2}, Lc8/juf;->getIncrementalStaging(Lc8/ouf;)Lc8/Kuf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Kuf;->getInterBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 332
    :cond_0
    :goto_1
    return-object v8

    .end local v6    # "firstIncrement":Z
    .end local v7    # "nret":I
    :cond_1
    move v6, v10

    .line 306
    goto :goto_0

    .line 314
    .restart local v6    # "firstIncrement":Z
    .restart local v7    # "nret":I
    :cond_2
    iget-object v8, p2, Lc8/ouf;->inBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 317
    :cond_3
    const/4 v0, 0x2

    if-ne v0, v7, :cond_4

    .line 318
    const/4 v8, 0x0

    goto :goto_1

    .line 321
    :cond_4
    const/4 v8, 0x0

    .line 323
    .local v8, "ret":Landroid/graphics/Bitmap;
    invoke-static {p2}, Lc8/juf;->cancelledInOptions(Lc8/ouf;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p2, Lc8/ouf;->allowDegrade2NoInBitmap:Z

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p1}, Lc8/Ouf;->rewind()V

    .line 325
    invoke-virtual {p0, p1, p2}, Lc8/Huf;->decodeNormal(Lc8/Ouf;Lc8/ouf;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 327
    invoke-static {p2}, Lc8/juf;->cancelledInOptions(Lc8/ouf;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    if-nez v8, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    move v10, v9

    :cond_6
    invoke-interface {p3, v10}, Lc8/vuf;->onDegraded2NoInBitmap(Z)V

    goto :goto_1
.end method

.method protected decodeNormal(Lc8/Ouf;Lc8/ouf;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "ris"    # Lc8/Ouf;
    .param p2, "options"    # Lc8/ouf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/pexode/exception/PexodeException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 277
    iget-boolean v5, p2, Lc8/ouf;->incrementalDecode:Z

    .line 278
    .local v5, "isIncremental":Z
    invoke-static {p2}, Lc8/juf;->getIncrementalStaging(Lc8/ouf;)Lc8/Kuf;

    move-result-object v4

    .line 279
    .local v4, "staging":Lc8/Kuf;
    if-nez v4, :cond_3

    move v6, v8

    .line 280
    .local v6, "firstIncrement":Z
    :goto_0
    const/4 v3, 0x0

    .line 282
    .local v3, "bufferBmp":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_0

    if-eqz v6, :cond_1

    .line 283
    :cond_0
    invoke-static {p2, v0}, Lc8/Huf;->newBitmap(Lc8/ouf;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 286
    invoke-direct/range {v0 .. v6}, Lc8/Huf;->decodeReturnInBuffer(Lc8/Ouf;Lc8/ouf;Landroid/graphics/Bitmap;Lc8/Kuf;ZZ)I

    move-result v7

    .line 288
    .local v7, "nret":I
    if-nez v7, :cond_4

    .line 289
    if-eqz v5, :cond_2

    .line 290
    invoke-static {p2}, Lc8/juf;->getIncrementalStaging(Lc8/ouf;)Lc8/Kuf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Kuf;->getInterBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 299
    .end local v3    # "bufferBmp":Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    return-object v3

    .end local v6    # "firstIncrement":Z
    .end local v7    # "nret":I
    :cond_3
    move v6, v0

    .line 279
    goto :goto_0

    .line 295
    .restart local v3    # "bufferBmp":Landroid/graphics/Bitmap;
    .restart local v6    # "firstIncrement":Z
    .restart local v7    # "nret":I
    :cond_4
    if-ne v8, v7, :cond_5

    if-eqz v5, :cond_5

    .line 296
    new-instance v0, Lcom/taobao/pexode/exception/IncrementalDecodeException;

    const-string/jumbo v1, "incremental decoding error at the first and cannot degrade now"

    invoke-direct {v0, v1}, Lcom/taobao/pexode/exception/IncrementalDecodeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public detectMimeType([B)Lc8/Yuf;
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 88
    sget-boolean v0, Lc8/Huf;->sIsSoInstalled:Z

    if-eqz v0, :cond_1

    .line 89
    sget-object v0, Lc8/Wuf;->WEBP:Lc8/Yuf;

    invoke-virtual {v0, p1}, Lc8/Yuf;->isMyHeader([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lc8/Wuf;->WEBP:Lc8/Yuf;

    .line 96
    :goto_0
    return-object v0

    .line 92
    :cond_0
    sget-object v0, Lc8/Wuf;->WEBP_A:Lc8/Yuf;

    invoke-virtual {v0, p1}, Lc8/Yuf;->isMyHeader([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Lc8/Wuf;->WEBP_A:Lc8/Yuf;

    goto :goto_0

    .line 96
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupported(Lc8/Yuf;)Z
    .locals 2
    .param p1, "mimeType"    # Lc8/Yuf;

    .prologue
    .line 77
    sget-boolean v0, Lc8/Huf;->sIsSoInstalled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lc8/Wuf;->WEBP:Lc8/Yuf;

    invoke-virtual {v0}, Lc8/Yuf;->getMajorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lc8/Yuf;->getMajorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepare(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    .line 63
    sget-boolean v1, Lc8/Huf;->sIsSoInstalled:Z

    if-nez v1, :cond_0

    .line 64
    invoke-static {}, Lc8/Huf;->getLibraryName()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "libName":Ljava/lang/String;
    invoke-static {v0, v5}, Lc8/zuf;->loadBackup(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lc8/Huf;->nativeLoadedVersionTest()I

    move-result v1

    if-ne v1, v5, :cond_1

    move v1, v2

    :goto_0
    sput-boolean v1, Lc8/Huf;->sIsSoInstalled:Z

    .line 66
    const-string/jumbo v1, "Pexode"

    const-string/jumbo v4, "retry load lib%s.so result=%b"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v3

    sget-boolean v3, Lc8/Huf;->sIsSoInstalled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v1, v4, v5}, Lc8/RNf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    .end local v0    # "libName":Ljava/lang/String;
    :cond_0
    return-void

    .restart local v0    # "libName":Ljava/lang/String;
    :cond_1
    move v1, v3

    .line 65
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WebPDecoder@"

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
