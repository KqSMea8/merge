.class public final Lc8/Shq;
.super Lc8/ZSe;
.source "OkClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Uhq;->createRequestBody(Lc8/Hiq;)Lc8/ZSe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$body:Lc8/Hiq;

.field final synthetic val$mediaType:Lc8/MSe;


# direct methods
.method constructor <init>(Lc8/MSe;Lc8/Hiq;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lc8/Shq;->val$mediaType:Lc8/MSe;

    iput-object p2, p0, Lc8/Shq;->val$body:Lc8/Hiq;

    invoke-direct {p0}, Lc8/ZSe;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lc8/Shq;->val$body:Lc8/Hiq;

    invoke-interface {v0}, Lc8/Hiq;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lc8/MSe;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lc8/Shq;->val$mediaType:Lc8/MSe;

    return-object v0
.end method

.method public writeTo(Lc8/ZVp;)V
    .locals 2
    .param p1, "sink"    # Lc8/ZVp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lc8/Shq;->val$body:Lc8/Hiq;

    invoke-interface {p1}, Lc8/ZVp;->outputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/Hiq;->writeTo(Ljava/io/OutputStream;)V

    .line 89
    return-void
.end method
