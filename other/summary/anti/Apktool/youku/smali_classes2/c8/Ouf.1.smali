.class public abstract Lc8/Ouf;
.super Ljava/io/InputStream;
.source "RewindableStream.java"


# instance fields
.field private mInputType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "inputType"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 19
    iput p1, p0, Lc8/Ouf;->mInputType:I

    .line 20
    return-void
.end method


# virtual methods
.method public back2StreamType()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x3

    iput v0, p0, Lc8/Ouf;->mInputType:I

    .line 33
    return-void
.end method

.method public abstract getBuffer()[B
.end method

.method public abstract getBufferLength()I
.end method

.method public abstract getBufferOffset()I
.end method

.method public abstract getFD()Ljava/io/FileDescriptor;
.end method

.method public final getInputType()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lc8/Ouf;->mInputType:I

    return v0
.end method

.method protected resetInputType(I)V
    .locals 0
    .param p1, "inputType"    # I

    .prologue
    .line 28
    iput p1, p0, Lc8/Ouf;->mInputType:I

    .line 29
    return-void
.end method

.method public abstract rewind()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract rewindAndSetBufferSize(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
