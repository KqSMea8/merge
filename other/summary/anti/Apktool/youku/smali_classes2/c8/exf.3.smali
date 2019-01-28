.class public Lc8/exf;
.super Ljava/lang/Object;
.source "ResponseData.java"

# interfaces
.implements Lc8/iyf;


# static fields
.field public static final TYPE_BYTE_ARRAY:I = 0x1

.field public static final TYPE_INPUT_STREAM:I = 0x3


# instance fields
.field public final bytes:[B

.field public final inputStream:Ljava/io/InputStream;

.field public final length:I

.field public final offset:I

.field public resourceValue:Landroid/util/TypedValue;

.field public final type:I


# direct methods
.method protected constructor <init>(I[BILjava/io/InputStream;ILandroid/util/TypedValue;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "bytes"    # [B
    .param p3, "offset"    # I
    .param p4, "is"    # Ljava/io/InputStream;
    .param p5, "length"    # I
    .param p6, "value"    # Landroid/util/TypedValue;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lc8/exf;->type:I

    .line 37
    iput-object p2, p0, Lc8/exf;->bytes:[B

    .line 38
    iput p3, p0, Lc8/exf;->offset:I

    .line 39
    iput-object p4, p0, Lc8/exf;->inputStream:Ljava/io/InputStream;

    .line 40
    iput p5, p0, Lc8/exf;->length:I

    .line 41
    iput-object p6, p0, Lc8/exf;->resourceValue:Landroid/util/TypedValue;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 27
    const/4 v1, 0x3

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lc8/exf;-><init>(I[BILjava/io/InputStream;ILandroid/util/TypedValue;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILandroid/util/TypedValue;)V
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .param p3, "value"    # Landroid/util/TypedValue;

    .prologue
    .line 31
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lc8/exf;-><init>(I[BILjava/io/InputStream;ILandroid/util/TypedValue;)V

    .line 33
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 7
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v4, 0x0

    .line 23
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lc8/exf;-><init>(I[BILjava/io/InputStream;ILandroid/util/TypedValue;)V

    .line 24
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lc8/exf;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 48
    :try_start_0
    iget-object v0, p0, Lc8/exf;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
