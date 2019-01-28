.class public final Lc8/Qkd;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Pkd;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static parse(Lc8/qmd;)Lc8/Mjd;
    .locals 3
    .param p0, "reader"    # Lc8/qmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v1, 0x1

    .line 46
    .local v1, "isEmpty":Z
    :try_start_0
    invoke-virtual {p0}, Lc8/qmd;->peek()Lcom/google/gson/stream/JsonToken;

    .line 47
    const/4 v1, 0x0

    .line 48
    sget-object v2, Lc8/mmd;->JSON_ELEMENT:Lc8/Vjd;

    invoke-virtual {v2, p0}, Lc8/Vjd;->read(Lc8/qmd;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Mjd;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    .line 55
    :goto_0
    return-object v2

    .line 49
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/io/EOFException;
    if-eqz v1, :cond_0

    .line 55
    sget-object v2, Lc8/Njd;->INSTANCE:Lc8/Njd;

    goto :goto_0

    .line 58
    :cond_0
    new-instance v2, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v2, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 59
    .end local v0    # "e":Ljava/io/EOFException;
    :catch_1
    move-exception v0

    .line 60
    .local v0, "e":Lcom/google/gson/stream/MalformedJsonException;
    new-instance v2, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v2, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 61
    .end local v0    # "e":Lcom/google/gson/stream/MalformedJsonException;
    :catch_2
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/google/gson/JsonIOException;

    invoke-direct {v2, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 63
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v2, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static write(Lc8/Mjd;Lc8/smd;)V
    .locals 1
    .param p0, "element"    # Lc8/Mjd;
    .param p1, "writer"    # Lc8/smd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    sget-object v0, Lc8/mmd;->JSON_ELEMENT:Lc8/Vjd;

    invoke-virtual {v0, p1, p0}, Lc8/Vjd;->write(Lc8/smd;Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public static writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 1
    .param p0, "appendable"    # Ljava/lang/Appendable;

    .prologue
    .line 76
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/Writer;

    .end local p0    # "appendable":Ljava/lang/Appendable;
    :goto_0
    return-object p0

    .restart local p0    # "appendable":Ljava/lang/Appendable;
    :cond_0
    new-instance v0, Lc8/Pkd;

    invoke-direct {v0, p0}, Lc8/Pkd;-><init>(Ljava/lang/Appendable;)V

    move-object p0, v0

    goto :goto_0
.end method
