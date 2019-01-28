.class public final Lc8/Lld;
.super Lc8/Vjd;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/mmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Vjd",
        "<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 483
    invoke-direct {p0}, Lc8/Vjd;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lc8/qmd;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    invoke-virtual {p0, p1}, Lc8/Lld;->read(Lc8/qmd;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public read(Lc8/qmd;)Ljava/net/URL;
    .locals 4
    .param p1, "in"    # Lc8/qmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 486
    invoke-virtual {p1}, Lc8/qmd;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_1

    .line 487
    invoke-virtual {p1}, Lc8/qmd;->nextNull()V

    .line 491
    :cond_0
    :goto_0
    return-object v1

    .line 490
    :cond_1
    invoke-virtual {p1}, Lc8/qmd;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "nextString":Ljava/lang/String;
    const-string/jumbo v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic write(Lc8/smd;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    check-cast p2, Ljava/net/URL;

    invoke-virtual {p0, p1, p2}, Lc8/Lld;->write(Lc8/smd;Ljava/net/URL;)V

    return-void
.end method

.method public write(Lc8/smd;Ljava/net/URL;)V
    .locals 1
    .param p1, "out"    # Lc8/smd;
    .param p2, "value"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lc8/smd;->value(Ljava/lang/String;)Lc8/smd;

    .line 496
    return-void

    .line 495
    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
