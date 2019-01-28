.class public Lc8/qJd;
.super Lc8/GId;
.source "RequestProgressBody.java"


# instance fields
.field private bufferedSink:Lc8/zJd;

.field private final requestBody:Lc8/GId;

.field private uploadProgressHandler:Lc8/sJd;


# direct methods
.method public constructor <init>(Lc8/GId;Lc8/cJd;)V
    .locals 1
    .param p1, "requestBody"    # Lc8/GId;
    .param p2, "uploadProgressListener"    # Lc8/cJd;

    .prologue
    .line 42
    invoke-direct {p0}, Lc8/GId;-><init>()V

    .line 43
    iput-object p1, p0, Lc8/qJd;->requestBody:Lc8/GId;

    .line 44
    if-eqz p2, :cond_0

    .line 45
    new-instance v0, Lc8/sJd;

    invoke-direct {v0, p2}, Lc8/sJd;-><init>(Lc8/cJd;)V

    iput-object v0, p0, Lc8/qJd;->uploadProgressHandler:Lc8/sJd;

    .line 47
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lc8/qJd;)Lc8/sJd;
    .locals 1
    .param p0, "x0"    # Lc8/qJd;

    .prologue
    .line 37
    iget-object v0, p0, Lc8/qJd;->uploadProgressHandler:Lc8/sJd;

    return-object v0
.end method

.method private sink(Lc8/LJd;)Lc8/LJd;
    .locals 1
    .param p1, "sink"    # Lc8/LJd;

    .prologue
    .line 68
    new-instance v0, Lc8/pJd;

    invoke-direct {v0, p0, p1}, Lc8/pJd;-><init>(Lc8/qJd;Lc8/LJd;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lc8/qJd;->requestBody:Lc8/GId;

    invoke-virtual {v0}, Lc8/GId;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lc8/xId;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lc8/qJd;->requestBody:Lc8/GId;

    invoke-virtual {v0}, Lc8/GId;->contentType()Lc8/xId;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lc8/zJd;)V
    .locals 2
    .param p1, "sink"    # Lc8/zJd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lc8/qJd;->bufferedSink:Lc8/zJd;

    if-nez v0, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lc8/qJd;->sink(Lc8/LJd;)Lc8/LJd;

    move-result-object v0

    invoke-static {v0}, Lc8/EJd;->buffer(Lc8/LJd;)Lc8/zJd;

    move-result-object v0

    iput-object v0, p0, Lc8/qJd;->bufferedSink:Lc8/zJd;

    .line 63
    :cond_0
    iget-object v0, p0, Lc8/qJd;->requestBody:Lc8/GId;

    iget-object v1, p0, Lc8/qJd;->bufferedSink:Lc8/zJd;

    invoke-virtual {v0, v1}, Lc8/GId;->writeTo(Lc8/zJd;)V

    .line 64
    iget-object v0, p0, Lc8/qJd;->bufferedSink:Lc8/zJd;

    invoke-interface {v0}, Lc8/zJd;->flush()V

    .line 65
    return-void
.end method
