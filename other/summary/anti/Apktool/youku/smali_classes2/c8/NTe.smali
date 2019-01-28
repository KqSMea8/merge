.class public final Lc8/NTe;
.super Lc8/OTe;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/OTe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 916
    invoke-direct {p0}, Lc8/OTe;-><init>()V

    return-void
.end method


# virtual methods
.method public onStream(Lc8/YTe;)V
    .locals 1
    .param p1, "stream"    # Lc8/YTe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 918
    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->REFUSED_STREAM:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p1, v0}, Lc8/YTe;->close(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 919
    return-void
.end method
