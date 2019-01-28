.class public final Lc8/WSe;
.super Lc8/ZSe;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ZSe;->create(Lc8/MSe;Lokio/ByteString;)Lc8/ZSe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lokio/ByteString;

.field final synthetic val$contentType:Lc8/MSe;


# direct methods
.method constructor <init>(Lc8/MSe;Lokio/ByteString;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lc8/WSe;->val$contentType:Lc8/MSe;

    iput-object p2, p0, Lc8/WSe;->val$content:Lokio/ByteString;

    invoke-direct {p0}, Lc8/ZSe;-><init>()V

    return-void
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
    .line 67
    iget-object v0, p0, Lc8/WSe;->val$content:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lc8/MSe;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lc8/WSe;->val$contentType:Lc8/MSe;

    return-object v0
.end method

.method public writeTo(Lc8/ZVp;)V
    .locals 1
    .param p1, "sink"    # Lc8/ZVp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lc8/WSe;->val$content:Lokio/ByteString;

    invoke-interface {p1, v0}, Lc8/ZVp;->write(Lokio/ByteString;)Lc8/ZVp;

    .line 72
    return-void
.end method
