.class public Lc8/Euf;
.super Ljava/lang/Object;
.source "GifImage.java"

# interfaces
.implements Lc8/ruf;


# static fields
.field private static final LOOP_COUNT_FOREVER:I = 0x0

.field private static final LOOP_COUNT_INFINITE:I = 0x0

.field private static final LOOP_COUNT_MISSING:I = -0x1


# instance fields
.field private mNativeContext:J


# direct methods
.method constructor <init>(J)V
    .locals 1
    .param p1, "nativeContext"    # J

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lc8/Euf;->mNativeContext:J

    .line 29
    return-void
.end method

.method public static create(JI)Lc8/Euf;
    .locals 2
    .param p0, "nativePtr"    # J
    .param p2, "sizeInBytes"    # I

    .prologue
    .line 53
    invoke-static {p0, p1, p2}, Lc8/Euf;->nativeCreateFromNativeMemory(JI)Lc8/Euf;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/FileDescriptor;)Lc8/Euf;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 49
    invoke-static {p0}, Lc8/Euf;->nativeCreateFromFileDescriptor(Ljava/io/FileDescriptor;)Lc8/Euf;

    move-result-object v0

    return-object v0
.end method

.method public static create([B)Lc8/Euf;
    .locals 2
    .param p0, "source"    # [B

    .prologue
    .line 38
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lc8/Euf;->create([BII)Lc8/Euf;

    move-result-object v0

    return-object v0
.end method

.method public static create([BII)Lc8/Euf;
    .locals 2
    .param p0, "source"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 42
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 43
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0, p1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 44
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 45
    invoke-static {v0}, Lc8/Euf;->nativeCreateFromDirectByteBuffer(Ljava/nio/ByteBuffer;)Lc8/Euf;

    move-result-object v1

    return-object v1
.end method

.method private static native nativeCreateFromDirectByteBuffer(Ljava/nio/ByteBuffer;)Lc8/Euf;
.end method

.method private static native nativeCreateFromFileDescriptor(Ljava/io/FileDescriptor;)Lc8/Euf;
.end method

.method private static native nativeCreateFromNativeMemory(JI)Lc8/Euf;
.end method

.method private native nativeDispose()V
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeGetDuration()I
.end method

.method private native nativeGetFrame(I)Lc8/Duf;
.end method

.method private native nativeGetFrameCount()I
.end method

.method private native nativeGetFrameDurations()[I
.end method

.method private native nativeGetHeight()I
.end method

.method private native nativeGetLoopCount()I
.end method

.method private native nativeGetSizeInBytes()I
.end method

.method private native nativeGetWidth()I
.end method

.method static native nativeLoadedVersionTest()I
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lc8/Euf;->nativeDispose()V

    .line 70
    return-void
.end method

.method public doesRenderSupportScaling()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lc8/Euf;->nativeFinalize()V

    .line 65
    return-void
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lc8/Euf;->nativeGetDuration()I

    move-result v0

    return v0
.end method

.method public getFrame(I)Lc8/Duf;
    .locals 1
    .param p1, "frameNumber"    # I

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lc8/Euf;->nativeGetFrame(I)Lc8/Duf;

    move-result-object v0

    .line 117
    .local v0, "gifFrame":Lc8/Duf;
    invoke-virtual {v0, p1}, Lc8/Duf;->setFrameNumber(I)V

    .line 118
    return-object v0
.end method

.method public bridge synthetic getFrame(I)Lc8/suf;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lc8/Euf;->getFrame(I)Lc8/Duf;

    move-result-object v0

    return-object v0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lc8/Euf;->nativeGetFrameCount()I

    move-result v0

    return v0
.end method

.method public getFrameDurations()[I
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lc8/Euf;->nativeGetFrameDurations()[I

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lc8/Euf;->nativeGetHeight()I

    move-result v0

    return v0
.end method

.method public getLoopCount()I
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0}, Lc8/Euf;->nativeGetLoopCount()I

    move-result v0

    .line 103
    .local v0, "loopCount":I
    packed-switch v0, :pswitch_data_0

    .line 110
    add-int/lit8 v1, v0, 0x1

    :goto_0
    return v1

    .line 105
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 108
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSizeInBytes()I
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lc8/Euf;->nativeGetSizeInBytes()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lc8/Euf;->nativeGetWidth()I

    move-result v0

    return v0
.end method
