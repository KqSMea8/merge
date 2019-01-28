.class public abstract Lc8/dWp;
.super Ljava/lang/Object;
.source "ForwardingSource.java"

# interfaces
.implements Lc8/uWp;


# instance fields
.field private final delegate:Lc8/uWp;


# direct methods
.method public constructor <init>(Lc8/uWp;)V
    .locals 2
    .param p1, "delegate"    # Lc8/uWp;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    iput-object p1, p0, Lc8/dWp;->delegate:Lc8/uWp;

    .line 27
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lc8/dWp;->delegate:Lc8/uWp;

    invoke-interface {v0}, Lc8/uWp;->close()V

    .line 44
    return-void
.end method

.method public final delegate()Lc8/uWp;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lc8/dWp;->delegate:Lc8/uWp;

    return-object v0
.end method

.method public read(Lc8/YVp;J)J
    .locals 2
    .param p1, "sink"    # Lc8/YVp;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lc8/dWp;->delegate:Lc8/uWp;

    invoke-interface {v0, p1, p2, p3}, Lc8/uWp;->read(Lc8/YVp;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public timeout()Lc8/wWp;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lc8/dWp;->delegate:Lc8/uWp;

    invoke-interface {v0}, Lc8/uWp;->timeout()Lc8/wWp;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/dWp;->delegate:Lc8/uWp;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
