.class public final Lc8/Thq;
.super Ljava/lang/Object;
.source "OkClient.java"

# interfaces
.implements Lc8/Giq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Uhq;->createResponseBody(Lc8/dTe;)Lc8/Giq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$body:Lc8/dTe;


# direct methods
.method constructor <init>(Lc8/dTe;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lc8/Thq;->val$body:Lc8/dTe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public in()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lc8/Thq;->val$body:Lc8/dTe;

    invoke-virtual {v0}, Lc8/dTe;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lc8/Thq;->val$body:Lc8/dTe;

    invoke-virtual {v0}, Lc8/dTe;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public mimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Lc8/Thq;->val$body:Lc8/dTe;

    invoke-virtual {v1}, Lc8/dTe;->contentType()Lc8/MSe;

    move-result-object v0

    .line 104
    .local v0, "mediaType":Lc8/MSe;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lc8/MSe;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
