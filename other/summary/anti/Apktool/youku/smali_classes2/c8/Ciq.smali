.class public final Lc8/Ciq;
.super Ljava/lang/Object;
.source "MultipartTypedOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Diq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MimePart"
.end annotation


# instance fields
.field private final body:Lc8/Hiq;

.field private final boundary:Ljava/lang/String;

.field private isBuilt:Z

.field private final isFirst:Z

.field private final name:Ljava/lang/String;

.field private partBoundary:[B

.field private partHeader:[B

.field private final transferEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lc8/Hiq;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "transferEncoding"    # Ljava/lang/String;
    .param p3, "body"    # Lc8/Hiq;
    .param p4, "boundary"    # Ljava/lang/String;
    .param p5, "isFirst"    # Z

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lc8/Ciq;->name:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lc8/Ciq;->transferEncoding:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lc8/Ciq;->body:Lc8/Hiq;

    .line 46
    iput-boolean p5, p0, Lc8/Ciq;->isFirst:Z

    .line 47
    iput-object p4, p0, Lc8/Ciq;->boundary:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private build()V
    .locals 3

    .prologue
    .line 67
    iget-boolean v0, p0, Lc8/Ciq;->isBuilt:Z

    if-eqz v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lc8/Ciq;->boundary:Ljava/lang/String;

    iget-boolean v1, p0, Lc8/Ciq;->isFirst:Z

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc8/Diq;->access$000(Ljava/lang/String;ZZ)[B

    move-result-object v0

    iput-object v0, p0, Lc8/Ciq;->partBoundary:[B

    .line 69
    iget-object v0, p0, Lc8/Ciq;->name:Ljava/lang/String;

    iget-object v1, p0, Lc8/Ciq;->transferEncoding:Ljava/lang/String;

    iget-object v2, p0, Lc8/Ciq;->body:Lc8/Hiq;

    invoke-static {v0, v1, v2}, Lc8/Diq;->access$100(Ljava/lang/String;Ljava/lang/String;Lc8/Hiq;)[B

    move-result-object v0

    iput-object v0, p0, Lc8/Ciq;->partHeader:[B

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Ciq;->isBuilt:Z

    goto :goto_0
.end method


# virtual methods
.method public size()J
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 58
    invoke-direct {p0}, Lc8/Ciq;->build()V

    .line 59
    iget-object v2, p0, Lc8/Ciq;->body:Lc8/Hiq;

    invoke-interface {v2}, Lc8/Hiq;->length()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 60
    iget-object v0, p0, Lc8/Ciq;->body:Lc8/Hiq;

    invoke-interface {v0}, Lc8/Hiq;->length()J

    move-result-wide v0

    iget-object v2, p0, Lc8/Ciq;->partBoundary:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lc8/Ciq;->partHeader:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 62
    :cond_0
    return-wide v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Lc8/Ciq;->build()V

    .line 52
    iget-object v0, p0, Lc8/Ciq;->partBoundary:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 53
    iget-object v0, p0, Lc8/Ciq;->partHeader:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 54
    iget-object v0, p0, Lc8/Ciq;->body:Lc8/Hiq;

    invoke-interface {v0, p1}, Lc8/Hiq;->writeTo(Ljava/io/OutputStream;)V

    .line 55
    return-void
.end method
