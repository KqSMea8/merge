.class public Lc8/Jgq;
.super Ljava/lang/Object;
.source "ExceptionCatchingTypedInput.java"

# interfaces
.implements Lc8/Giq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Igq;
    }
.end annotation


# instance fields
.field private final delegate:Lc8/Giq;

.field private final delegateStream:Lc8/Igq;


# direct methods
.method constructor <init>(Lc8/Giq;)V
    .locals 2
    .param p1, "delegate"    # Lc8/Giq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lc8/Jgq;->delegate:Lc8/Giq;

    .line 13
    new-instance v0, Lc8/Igq;

    invoke-interface {p1}, Lc8/Giq;->in()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/Igq;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lc8/Jgq;->delegateStream:Lc8/Igq;

    .line 14
    return-void
.end method


# virtual methods
.method getThrownException()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lc8/Jgq;->delegateStream:Lc8/Igq;

    invoke-static {v0}, Lc8/Igq;->access$000(Lc8/Igq;)Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method public in()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lc8/Jgq;->delegateStream:Lc8/Igq;

    return-object v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lc8/Jgq;->delegate:Lc8/Giq;

    invoke-interface {v0}, Lc8/Giq;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public mimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lc8/Jgq;->delegate:Lc8/Giq;

    invoke-interface {v0}, Lc8/Giq;->mimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method threwException()Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lc8/Jgq;->delegateStream:Lc8/Igq;

    invoke-static {v0}, Lc8/Igq;->access$000(Lc8/Igq;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
