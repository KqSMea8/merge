.class public final Lc8/EId;
.super Lc8/GId;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/GId;->create(Lc8/xId;[BII)Lc8/GId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$byteCount:I

.field final synthetic val$content:[B

.field final synthetic val$contentType:Lc8/xId;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lc8/xId;I[BI)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lc8/EId;->val$contentType:Lc8/xId;

    iput p2, p0, Lc8/EId;->val$byteCount:I

    iput-object p3, p0, Lc8/EId;->val$content:[B

    iput p4, p0, Lc8/EId;->val$offset:I

    invoke-direct {p0}, Lc8/GId;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 83
    iget v0, p0, Lc8/EId;->val$byteCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lc8/xId;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lc8/EId;->val$contentType:Lc8/xId;

    return-object v0
.end method

.method public writeTo(Lc8/zJd;)V
    .locals 3
    .param p1, "sink"    # Lc8/zJd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lc8/EId;->val$content:[B

    iget v1, p0, Lc8/EId;->val$offset:I

    iget v2, p0, Lc8/EId;->val$byteCount:I

    invoke-interface {p1, v0, v1, v2}, Lc8/zJd;->write([BII)Lc8/zJd;

    .line 88
    return-void
.end method
