.class public Lc8/iCq;
.super Ljava/lang/Object;
.source "MediacodecWrap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyunos/media/codec/MediacodecWrap$CodecState;
    }
.end annotation


# instance fields
.field private final LogTag:Ljava/lang/String;

.field private audioFormatChannelCount:I

.field private audioFormatSampleRate:I

.field private codec:Landroid/media/MediaCodec;

.field private codecState:Lyunos/media/codec/MediacodecWrap$CodecState;

.field private configHeight:I

.field private configWidth:I

.field private createForVideo:I

.field private csd:Ljava/io/FileOutputStream;

.field private dequeueOutputBufferFlags:I

.field private dequeueOutputBufferOffset:I

.field private dequeueOutputBufferPresentationTimeUs:J

.field private dequeueOutputBufferSize:I

.field private foundHwDecoder:Z

.field private hwDecoderName:Ljava/lang/String;

.field private planeCount:I

.field private rowStride:[I

.field private videoFormatColorFormat:I

.field private videoFormatHeight:I

.field private videoFormatMaxHeight:I

.field private videoFormatMaxWidth:I

.field private videoFormatWidth:I

.field private videoSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string/jumbo v0, "MediacodecWrap"

    iput-object v0, p0, Lc8/iCq;->LogTag:Ljava/lang/String;

    .line 76
    const/4 v0, 0x1

    iput v0, p0, Lc8/iCq;->createForVideo:I

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/iCq;->foundHwDecoder:Z

    .line 80
    iput-object v1, p0, Lc8/iCq;->hwDecoderName:Ljava/lang/String;

    .line 82
    sget-object v0, Lyunos/media/codec/MediacodecWrap$CodecState;->Uninitialized:Lyunos/media/codec/MediacodecWrap$CodecState;

    iput-object v0, p0, Lc8/iCq;->codecState:Lyunos/media/codec/MediacodecWrap$CodecState;

    .line 86
    iput-object v1, p0, Lc8/iCq;->csd:Ljava/io/FileOutputStream;

    .line 90
    iput-object v1, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    .line 91
    return-void
.end method


# virtual methods
.method public configureAudio(Ljava/lang/String;III)I
    .locals 7
    .param p1, "mime"    # Ljava/lang/String;
    .param p2, "channelCount"    # I
    .param p3, "sampleRate"    # I
    .param p4, "flags"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 221
    new-instance v2, Landroid/media/MediaFormat;

    invoke-direct {v2}, Landroid/media/MediaFormat;-><init>()V

    .line 223
    .local v2, "format":Landroid/media/MediaFormat;
    const-string/jumbo v5, "channel-count"

    invoke-virtual {v2, v5, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 224
    const-string/jumbo v5, "sample-rate"

    invoke-virtual {v2, v5, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 227
    :try_start_0
    invoke-static {p1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5

    iput-object v5, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    sget-object v5, Lyunos/media/codec/MediacodecWrap$CodecState;->Uninitialized:Lyunos/media/codec/MediacodecWrap$CodecState;

    iput-object v5, p0, Lc8/iCq;->codecState:Lyunos/media/codec/MediacodecWrap$CodecState;

    .line 237
    const/4 v0, 0x0

    .line 239
    .local v0, "crypto":Landroid/media/MediaCrypto;
    :try_start_1
    iget-object v5, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v0, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 246
    sget-object v4, Lyunos/media/codec/MediacodecWrap$CodecState;->Configured:Lyunos/media/codec/MediacodecWrap$CodecState;

    iput-object v4, p0, Lc8/iCq;->codecState:Lyunos/media/codec/MediacodecWrap$CodecState;

    .line 247
    iput v3, p0, Lc8/iCq;->createForVideo:I

    .line 249
    .end local v0    # "crypto":Landroid/media/MediaCrypto;
    :goto_0
    return v3

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/Exception;
    iput-object v6, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    .line 230
    const-string/jumbo v3, "MediacodecWrap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "createDecoderByType exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 232
    goto :goto_0

    .line 241
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "crypto":Landroid/media/MediaCrypto;
    :catch_1
    move-exception v3

    const-string/jumbo v3, "MediacodecWrap"

    const-string/jumbo v5, "codec configure failed"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 243
    goto :goto_0
.end method

.method public configureVideo(Ljava/lang/String;[BLjava/lang/String;IIIIIF)I
    .locals 8
    .param p1, "mime"    # Ljava/lang/String;
    .param p2, "csd0"    # [B
    .param p3, "containerInfo"    # Ljava/lang/String;
    .param p4, "adaptive"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "preferColorFormat"    # I
    .param p8, "flags"    # I
    .param p9, "frameRate"    # F

    .prologue
    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "configureVideo(), mime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", Adaptive:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", preferColorFormat:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", frameRate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", flags:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", containerInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    new-instance v4, Landroid/media/MediaFormat;

    invoke-direct {v4}, Landroid/media/MediaFormat;-><init>()V

    .line 150
    .local v4, "format":Landroid/media/MediaFormat;
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 151
    .local v1, "bufCsd0":Ljava/nio/ByteBuffer;
    const-string/jumbo v5, "mime"

    invoke-virtual {v4, v5, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string/jumbo v5, "csd-0"

    invoke-virtual {v4, v5, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 153
    const-string/jumbo v5, "Adaptive"

    invoke-virtual {v4, v5, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 155
    const-string/jumbo v5, "frame-rate"

    move/from16 v0, p9

    invoke-virtual {v4, v5, v0}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 156
    const-string/jumbo v5, "width"

    invoke-virtual {v4, v5, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 157
    const-string/jumbo v5, "height"

    invoke-virtual {v4, v5, p6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 158
    const-string/jumbo v5, "containerInfo"

    invoke-virtual {v4, v5, p3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iput p5, p0, Lc8/iCq;->configWidth:I

    .line 161
    iput p6, p0, Lc8/iCq;->configHeight:I

    .line 164
    iget-boolean v5, p0, Lc8/iCq;->foundHwDecoder:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 166
    :try_start_0
    iget-object v5, p0, Lc8/iCq;->hwDecoderName:Ljava/lang/String;

    invoke-static {v5}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5

    iput-object v5, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    sget-object v5, Lyunos/media/codec/MediacodecWrap$CodecState;->Uninitialized:Lyunos/media/codec/MediacodecWrap$CodecState;

    iput-object v5, p0, Lc8/iCq;->codecState:Lyunos/media/codec/MediacodecWrap$CodecState;

    .line 194
    const/4 v2, 0x0

    .line 196
    .local v2, "crypto":Landroid/media/MediaCrypto;
    :try_start_1
    iget-object v5, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    iget-object v6, p0, Lc8/iCq;->videoSurface:Landroid/view/Surface;

    move/from16 v0, p8

    invoke-virtual {v5, v4, v6, v2, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 203
    sget-object v5, Lyunos/media/codec/MediacodecWrap$CodecState;->Configured:Lyunos/media/codec/MediacodecWrap$CodecState;

    iput-object v5, p0, Lc8/iCq;->codecState:Lyunos/media/codec/MediacodecWrap$CodecState;

    .line 204
    const/4 v5, 0x1

    iput v5, p0, Lc8/iCq;->createForVideo:I

    .line 206
    const/4 v5, 0x0

    .end local v2    # "crypto":Landroid/media/MediaCrypto;
    :goto_1
    return v5

    .line 169
    :catch_0
    move-exception v5

    const-string/jumbo v5, "MediacodecWrap"

    const-string/jumbo v6, "createByCodecName failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v5, 0x0

    iput-object v5, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    .line 172
    const/4 v5, -0x1

    goto :goto_1

    .line 175
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not find hw decoer,will call createDecoderByType(), mime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    :try_start_2
    invoke-static {p1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5

    iput-object v5, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 178
    :catch_1
    move-exception v3

    .line 179
    .local v3, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    iput-object v5, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    .line 180
    const-string/jumbo v5, "MediacodecWrap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "createDecoderByType exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v5, -0x1

    goto :goto_1

    .line 197
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "crypto":Landroid/media/MediaCrypto;
    :catch_2
    move-exception v3

    .line 198
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "MediacodecWrap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "codec configure exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v5, -0x1

    goto :goto_1
.end method

.method public dequeueInputBuffer(J)I
    .locals 5
    .param p1, "timeoutUs"    # J

    .prologue
    .line 344
    iget-object v2, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/iCq;->codecState:Lyunos/media/codec/MediacodecWrap$CodecState;

    sget-object v3, Lyunos/media/codec/MediacodecWrap$CodecState;->Started:Lyunos/media/codec/MediacodecWrap$CodecState;

    if-eq v2, v3, :cond_1

    .line 345
    :cond_0
    const-string/jumbo v2, "MediacodecWrap"

    const-string/jumbo v3, "codec is null or not Started! dequeueInputBuffer failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v1, -0x1

    .line 357
    :goto_0
    return v1

    .line 349
    :cond_1
    const/4 v1, -0x1

    .line 351
    .local v1, "ret":I
    :try_start_0
    iget-object v2, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2, p1, p2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dequeueInputBuffer exception,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public dequeueOutputBuffer(J)I
    .locals 7
    .param p1, "timeoutUs"    # J

    .prologue
    .line 364
    iget-object v3, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/iCq;->codecState:Lyunos/media/codec/MediacodecWrap$CodecState;

    sget-object v4, Lyunos/media/codec/MediacodecWrap$CodecState;->Started:Lyunos/media/codec/MediacodecWrap$CodecState;

    if-eq v3, v4, :cond_2

    .line 365
    :cond_0
    const-string/jumbo v3, "MediacodecWrap"

    const-string/jumbo v4, "codec is null or not Started! dequeueOutputBuffer failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v2, -0x1

    .line 390
    :cond_1
    :goto_0
    return v2

    .line 369
    :cond_2
    const/4 v2, -0x1

    .line 370
    .local v2, "ret":I
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 372
    .local v1, "info":Landroid/media/MediaCodec$BufferInfo;
    :try_start_0
    iget-object v3, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v3, v1, p1, p2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 378
    :goto_1
    if-ltz v2, :cond_3

    .line 379
    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iput v3, p0, Lc8/iCq;->dequeueOutputBufferOffset:I

    .line 380
    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v3, p0, Lc8/iCq;->dequeueOutputBufferSize:I

    .line 381
    iget-wide v4, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v4, p0, Lc8/iCq;->dequeueOutputBufferPresentationTimeUs:J

    .line 382
    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v3, p0, Lc8/iCq;->dequeueOutputBufferFlags:I

    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dequeueOutputBuffer Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 384
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v3, -0x2

    if-ne v2, v3, :cond_4

    .line 385
    const/16 v2, -0x3f4

    goto :goto_0

    .line 386
    :cond_4
    const/4 v3, -0x3

    if-ne v2, v3, :cond_1

    .line 387
    const/16 v2, -0x3f6

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 97
    iget-object v0, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 98
    sget-object v0, Lyunos/media/codec/MediacodecWrap$CodecState;->Uninitialized:Lyunos/media/codec/MediacodecWrap$CodecState;

    iput-object v0, p0, Lc8/iCq;->codecState:Lyunos/media/codec/MediacodecWrap$CodecState;

    .line 100
    :cond_0
    return-void
.end method

.method public flush()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 303
    iget-object v2, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/iCq;->codecState:Lyunos/media/codec/MediacodecWrap$CodecState;

    sget-object v3, Lyunos/media/codec/MediacodecWrap$CodecState;->Uninitialized:Lyunos/media/codec/MediacodecWrap$CodecState;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lc8/iCq;->codecState:Lyunos/media/codec/MediacodecWrap$CodecState;

    sget-object v3, Lyunos/media/codec/MediacodecWrap$CodecState;->Released:Lyunos/media/codec/MediacodecWrap$CodecState;

    if-ne v2, v3, :cond_1

    .line 305
    :cond_0
    const-string/jumbo v2, "MediacodecWrap"

    const-string/jumbo v3, "codec is null or not Started! flush failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :goto_0
    return v1

    .line 310
    :cond_1
    :try_start_0
    iget-object v2, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    const/4 v1, 0x0

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MediacodecWrap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "codec flush exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public foundHwDecoder(Ljava/lang/String;)Z
    .locals 7
    .param p1, "mime"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    .line 104
    .local v3, "numCodecs":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", Codec num: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    if-gtz v3, :cond_0

    .line 107
    const/4 v5, 0x0

    .line 132
    :goto_0
    return v5

    .line 110
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_4

    .line 111
    invoke-static {v0}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v1

    .line 112
    .local v1, "info":Landroid/media/MediaCodecInfo;
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_2

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "check decoder name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "types":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "decoder support type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    aget-object v5, v4, v2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 120
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "OMX."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 121
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "OMX.GOOGLE."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 122
    const/4 v5, 0x1

    iput-boolean v5, p0, Lc8/iCq;->foundHwDecoder:Z

    .line 123
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lc8/iCq;->hwDecoderName:Ljava/lang/String;

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "found available hwDecoder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lc8/iCq;->hwDecoderName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    :cond_1
    iget-boolean v5, p0, Lc8/iCq;->foundHwDecoder:Z

    if-nez v5, :cond_4

    .line 110
    .end local v2    # "j":I
    .end local v4    # "types":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 117
    .restart local v2    # "j":I
    .restart local v4    # "types":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 132
    .end local v1    # "info":Landroid/media/MediaCodecInfo;
    .end local v2    # "j":I
    .end local v4    # "types":[Ljava/lang/String;
    :cond_4
    iget-boolean v5, p0, Lc8/iCq;->foundHwDecoder:Z

    goto/16 :goto_0
.end method

.method public getAudioFormatChannelCount()I
    .locals 1

    .prologue
    .line 614
    iget v0, p0, Lc8/iCq;->audioFormatChannelCount:I

    return v0
.end method

.method public getAudioFormatSampleRate()I
    .locals 1

    .prologue
    .line 618
    iget v0, p0, Lc8/iCq;->audioFormatSampleRate:I

    return v0
.end method

.method public getBufferPtr(I)[Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 558
    iget-object v2, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    if-nez v2, :cond_0

    .line 559
    const/4 v1, 0x0

    .line 574
    :goto_0
    return-object v1

    .line 561
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 572
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/nio/ByteBuffer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/nio/ByteBuffer;

    .line 574
    .local v1, "yuvBuf":[Ljava/nio/ByteBuffer;
    goto :goto_0
.end method

.method public getDdequeueOutputBufferFlags()I
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Lc8/iCq;->dequeueOutputBufferFlags:I

    return v0
.end method

.method public getDdequeueOutputBufferOffset()I
    .locals 1

    .prologue
    .line 578
    iget v0, p0, Lc8/iCq;->dequeueOutputBufferOffset:I

    return v0
.end method

.method public getDdequeueOutputBufferPresentationTimeUs()J
    .locals 2

    .prologue
    .line 586
    iget-wide v0, p0, Lc8/iCq;->dequeueOutputBufferPresentationTimeUs:J

    return-wide v0
.end method

.method public getDdequeueOutputBufferSize()I
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Lc8/iCq;->dequeueOutputBufferSize:I

    return v0
.end method

.method public getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 530
    iget-object v0, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    .line 534
    :cond_0
    return-object v1
.end method

.method public getInputBuffers()[Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 469
    iget-object v2, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    if-nez v2, :cond_0

    .line 480
    :goto_0
    return-object v0

    .line 474
    :cond_0
    :try_start_0
    iget-object v2, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, "bytebufs":[Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 475
    .end local v0    # "bytebufs":[Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 476
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getInputBuffers Exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    .line 548
    const/4 v0, 0x0

    .line 550
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 539
    iget-object v0, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    .line 542
    :cond_0
    return-object v1
.end method

.method public getOutputBuffers()[Ljava/nio/ByteBuffer;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 485
    iget-object v7, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    if-nez v7, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-object v4

    .line 488
    :cond_1
    iget-object v7, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    .line 491
    :try_start_0
    iget-object v7, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 497
    .local v0, "bytebufs":[Ljava/nio/ByteBuffer;
    array-length v6, v0

    .line 498
    .local v6, "len":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getOutputBuffers() buffer num:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", bytebufs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    const/4 v1, 0x1

    .line 500
    .local v1, "canAccess":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v6, :cond_2

    .line 501
    aget-object v7, v0, v5

    if-eqz v7, :cond_3

    .line 502
    aget-object v7, v0, v5

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v7

    if-nez v7, :cond_4

    .line 503
    const/4 v1, 0x0

    .line 514
    :cond_2
    :goto_2
    if-nez v1, :cond_5

    .line 516
    iget v7, p0, Lc8/iCq;->configWidth:I

    iget v8, p0, Lc8/iCq;->configWidth:I

    mul-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x3

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 517
    .local v3, "fakeOutputByteBuffer":Ljava/nio/ByteBuffer;
    new-array v4, v6, [Ljava/nio/ByteBuffer;

    .line 518
    .local v4, "fakeOutputByteBufferArray":[Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_0

    .line 520
    aput-object v3, v4, v5

    .line 518
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 492
    .end local v0    # "bytebufs":[Ljava/nio/ByteBuffer;
    .end local v1    # "canAccess":I
    .end local v3    # "fakeOutputByteBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "fakeOutputByteBufferArray":[Ljava/nio/ByteBuffer;
    .end local v5    # "i":I
    .end local v6    # "len":I
    :catch_0
    move-exception v2

    .line 493
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getOutputBuffers Exception :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 507
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bytebufs":[Ljava/nio/ByteBuffer;
    .restart local v1    # "canAccess":I
    .restart local v5    # "i":I
    .restart local v6    # "len":I
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getOutputBuffers() bytebufs["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] is null!!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    const/4 v1, 0x0

    .line 509
    goto :goto_2

    .line 500
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    move-object v4, v0

    .line 524
    goto/16 :goto_0
.end method

.method public getOutputFormat()I
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 432
    iget-object v4, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    if-nez v4, :cond_0

    move v2, v3

    .line 464
    :goto_0
    return v2

    .line 435
    :cond_0
    const/4 v2, -0x1

    .line 438
    .local v2, "ret":I
    :try_start_0
    iget-object v4, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 444
    .local v0, "bufferFormat":Landroid/media/MediaFormat;
    if-eqz v0, :cond_1

    .line 445
    iget v3, p0, Lc8/iCq;->createForVideo:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 446
    const-string/jumbo v3, "width"

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lc8/iCq;->videoFormatWidth:I

    .line 447
    const-string/jumbo v3, "height"

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lc8/iCq;->videoFormatHeight:I

    .line 448
    const-string/jumbo v3, "color-format"

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lc8/iCq;->videoFormatColorFormat:I

    .line 455
    :goto_1
    const/4 v2, 0x0

    .line 458
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "releaseOutputBuffer() leave, ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", videoFormatWidth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lc8/iCq;->videoFormatWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", videoFormatHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lc8/iCq;->videoFormatHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", videoFormatColorFormat:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lc8/iCq;->videoFormatColorFormat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", videoFormatMaxWidth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lc8/iCq;->videoFormatMaxWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", videoFormatMaxHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lc8/iCq;->videoFormatMaxHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", audioFormatChannelCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lc8/iCq;->audioFormatChannelCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", audioFormatSampleRate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lc8/iCq;->audioFormatSampleRate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    .line 439
    .end local v0    # "bufferFormat":Landroid/media/MediaFormat;
    :catch_0
    move-exception v1

    .line 440
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getOutputFormat Exception :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v2, v3

    .line 441
    goto/16 :goto_0

    .line 452
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bufferFormat":Landroid/media/MediaFormat;
    :cond_2
    const-string/jumbo v3, "channel-count"

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lc8/iCq;->audioFormatChannelCount:I

    .line 453
    const-string/jumbo v3, "sample-rate"

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lc8/iCq;->audioFormatSampleRate:I

    goto/16 :goto_1
.end method

.method public getVideoFormatColorFormat()I
    .locals 1

    .prologue
    .line 602
    iget v0, p0, Lc8/iCq;->videoFormatColorFormat:I

    return v0
.end method

.method public getVideoFormatHeight()I
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Lc8/iCq;->videoFormatHeight:I

    return v0
.end method

.method public getVideoFormatMaxHeight()I
    .locals 1

    .prologue
    .line 610
    iget v0, p0, Lc8/iCq;->videoFormatMaxHeight:I

    return v0
.end method

.method public getVideoFormatMaxWidth()I
    .locals 1

    .prologue
    .line 606
    iget v0, p0, Lc8/iCq;->videoFormatMaxWidth:I

    return v0
.end method

.method public getVideoFormatWidth()I
    .locals 1

    .prologue
    .line 594
    iget v0, p0, Lc8/iCq;->videoFormatWidth:I

    return v0
.end method

.method public queueInputBuffer(IIIJI)I
    .locals 10
    .param p1, "index"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "presentationTimeUs"    # J
    .param p6, "flags"    # I

    .prologue
    const/4 v8, -0x1

    .line 324
    iget-object v0, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/iCq;->codecState:Lyunos/media/codec/MediacodecWrap$CodecState;

    sget-object v1, Lyunos/media/codec/MediacodecWrap$CodecState;->Started:Lyunos/media/codec/MediacodecWrap$CodecState;

    if-eq v0, v1, :cond_1

    .line 325
    :cond_0
    const-string/jumbo v0, "MediacodecWrap"

    const-string/jumbo v1, "codec is null or not Started! queueInputBuffer failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 337
    :goto_0
    return v0

    .line 330
    :cond_1
    :try_start_0
    iget-object v0, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    const/4 v0, 0x0

    goto :goto_0

    .line 331
    :catch_0
    move-exception v7

    .line 332
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "queueInputBuffer exception,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v0, v8

    .line 334
    goto :goto_0
.end method

.method public release()I
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    .line 297
    sget-object v0, Lyunos/media/codec/MediacodecWrap$CodecState;->Released:Lyunos/media/codec/MediacodecWrap$CodecState;

    iput-object v0, p0, Lc8/iCq;->codecState:Lyunos/media/codec/MediacodecWrap$CodecState;

    .line 298
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 295
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public releaseOutputBuffer(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 414
    iget-object v3, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/iCq;->codecState:Lyunos/media/codec/MediacodecWrap$CodecState;

    sget-object v4, Lyunos/media/codec/MediacodecWrap$CodecState;->Started:Lyunos/media/codec/MediacodecWrap$CodecState;

    if-eq v3, v4, :cond_1

    .line 415
    :cond_0
    const-string/jumbo v1, "MediacodecWrap"

    const-string/jumbo v3, "codec is null or not Started! releaseOutputBuffer failed!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 427
    :goto_0
    return v1

    .line 420
    :cond_1
    :try_start_0
    iget-object v3, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "releaseOutputBuffer Exception :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v1, v2

    .line 424
    goto :goto_0
.end method

.method public renderOutputBufferAndRelease(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v1, -0x1

    .line 396
    iget-object v2, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/iCq;->codecState:Lyunos/media/codec/MediacodecWrap$CodecState;

    sget-object v3, Lyunos/media/codec/MediacodecWrap$CodecState;->Started:Lyunos/media/codec/MediacodecWrap$CodecState;

    if-eq v2, v3, :cond_1

    .line 397
    :cond_0
    const-string/jumbo v2, "MediacodecWrap"

    const-string/jumbo v3, "codec is null or not Started! renderOutputBufferAndRelease failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :goto_0
    return v1

    .line 402
    :cond_1
    :try_start_0
    iget-object v2, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    const/4 v1, 0x0

    goto :goto_0

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "releaseOutputBuffer Exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public setParameters(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 554
    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)I
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVideoSurface() surface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    iput-object p1, p0, Lc8/iCq;->videoSurface:Landroid/view/Surface;

    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public start()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 254
    iget-object v2, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/iCq;->codecState:Lyunos/media/codec/MediacodecWrap$CodecState;

    sget-object v3, Lyunos/media/codec/MediacodecWrap$CodecState;->Uninitialized:Lyunos/media/codec/MediacodecWrap$CodecState;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lc8/iCq;->codecState:Lyunos/media/codec/MediacodecWrap$CodecState;

    sget-object v3, Lyunos/media/codec/MediacodecWrap$CodecState;->Released:Lyunos/media/codec/MediacodecWrap$CodecState;

    if-ne v2, v3, :cond_1

    .line 256
    :cond_0
    const-string/jumbo v2, "MediacodecWrap"

    const-string/jumbo v3, "codec is null or not Configured! start failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_0
    return v1

    .line 261
    :cond_1
    :try_start_0
    iget-object v2, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    sget-object v1, Lyunos/media/codec/MediacodecWrap$CodecState;->Started:Lyunos/media/codec/MediacodecWrap$CodecState;

    iput-object v1, p0, Lc8/iCq;->codecState:Lyunos/media/codec/MediacodecWrap$CodecState;

    .line 269
    const/4 v1, 0x0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MediacodecWrap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "codec start exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 274
    iget-object v2, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/iCq;->codecState:Lyunos/media/codec/MediacodecWrap$CodecState;

    sget-object v3, Lyunos/media/codec/MediacodecWrap$CodecState;->Started:Lyunos/media/codec/MediacodecWrap$CodecState;

    if-eq v2, v3, :cond_1

    .line 275
    :cond_0
    const-string/jumbo v2, "MediacodecWrap"

    const-string/jumbo v3, "codec is null or not Started! stop failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_0
    return v1

    .line 280
    :cond_1
    :try_start_0
    iget-object v2, p0, Lc8/iCq;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    sget-object v1, Lyunos/media/codec/MediacodecWrap$CodecState;->Stoped:Lyunos/media/codec/MediacodecWrap$CodecState;

    iput-object v1, p0, Lc8/iCq;->codecState:Lyunos/media/codec/MediacodecWrap$CodecState;

    .line 287
    const/4 v1, 0x0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MediacodecWrap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "codec stop exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
