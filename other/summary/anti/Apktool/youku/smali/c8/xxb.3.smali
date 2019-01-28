.class public Lc8/xxb;
.super Ljava/lang/Object;
.source "RequestBodyUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/wxb;,
        Lc8/uxb;
    }
.end annotation


# static fields
.field protected static final DEFLATE_ENCODING:Ljava/lang/String; = "deflate"

.field protected static final GZIP_ENCODING:Ljava/lang/String; = "gzip"


# instance fields
.field private mDeflatedOutput:Ljava/io/ByteArrayOutputStream;

.field private mDeflatingOutput:Lc8/uxb;

.field private final mEventReporter:Lc8/Uwb;

.field private final mRequestId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc8/Uwb;Ljava/lang/String;)V
    .locals 0
    .param p1, "eventReporter"    # Lc8/Uwb;
    .param p2, "requestId"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lc8/xxb;->mEventReporter:Lc8/Uwb;

    .line 38
    iput-object p2, p0, Lc8/xxb;->mRequestId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private throwIfNoBody()V
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lc8/xxb;->hasBody()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No body found; has createBodySink been called?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    return-void
.end method


# virtual methods
.method public createBodySink(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 3
    .param p1, "contentEncoding"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 44
    .local v0, "deflatedOutput":Ljava/io/ByteArrayOutputStream;
    const-string/jumbo v2, "gzip"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    invoke-static {v0}, Lc8/wxb;->create(Ljava/io/OutputStream;)Lc8/wxb;

    move-result-object v1

    .line 52
    .local v1, "deflatingOutput":Ljava/io/OutputStream;
    :goto_0
    new-instance v2, Lc8/uxb;

    invoke-direct {v2, p0, v1}, Lc8/uxb;-><init>(Lc8/xxb;Ljava/io/OutputStream;)V

    iput-object v2, p0, Lc8/xxb;->mDeflatingOutput:Lc8/uxb;

    .line 53
    iput-object v0, p0, Lc8/xxb;->mDeflatedOutput:Ljava/io/ByteArrayOutputStream;

    .line 55
    iget-object v2, p0, Lc8/xxb;->mDeflatingOutput:Lc8/uxb;

    return-object v2

    .line 46
    .end local v1    # "deflatingOutput":Ljava/io/OutputStream;
    :cond_0
    const-string/jumbo v2, "deflate"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    new-instance v1, Ljava/util/zip/InflaterOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/InflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .restart local v1    # "deflatingOutput":Ljava/io/OutputStream;
    goto :goto_0

    .line 49
    .end local v1    # "deflatingOutput":Ljava/io/OutputStream;
    :cond_1
    move-object v1, v0

    .restart local v1    # "deflatingOutput":Ljava/io/OutputStream;
    goto :goto_0
.end method

.method public getDisplayBody()[B
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lc8/xxb;->throwIfNoBody()V

    .line 60
    iget-object v0, p0, Lc8/xxb;->mDeflatedOutput:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public hasBody()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lc8/xxb;->mDeflatedOutput:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reportDataSent()V
    .locals 6

    .prologue
    .line 68
    invoke-direct {p0}, Lc8/xxb;->throwIfNoBody()V

    .line 69
    iget-object v0, p0, Lc8/xxb;->mEventReporter:Lc8/Uwb;

    iget-object v1, p0, Lc8/xxb;->mRequestId:Ljava/lang/String;

    iget-object v2, p0, Lc8/xxb;->mDeflatedOutput:Ljava/io/ByteArrayOutputStream;

    .line 71
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    iget-object v3, p0, Lc8/xxb;->mDeflatingOutput:Lc8/uxb;

    .line 72
    invoke-virtual {v3}, Lc8/uxb;->getCount()J

    move-result-wide v4

    long-to-int v3, v4

    .line 69
    invoke-virtual {v0, v1, v2, v3}, Lc8/Uwb;->dataSent(Ljava/lang/String;II)V

    .line 73
    return-void
.end method
