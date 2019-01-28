.class public final Lc8/Jpf;
.super Ljava/io/ByteArrayOutputStream;
.source "ByteStreams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Kpf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FastByteArrayOutputStream"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/Ipf;)V
    .locals 0
    .param p1, "x0"    # Lc8/Ipf;

    .prologue
    .line 178
    invoke-direct {p0}, Lc8/Jpf;-><init>()V

    return-void
.end method


# virtual methods
.method writeTo([BI)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lc8/Jpf;->buf:[B

    const/4 v1, 0x0

    iget v2, p0, Lc8/Jpf;->count:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    return-void
.end method
