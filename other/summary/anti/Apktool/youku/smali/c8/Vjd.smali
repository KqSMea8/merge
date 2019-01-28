.class public abstract Lc8/Vjd;
.super Ljava/lang/Object;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    .local p0, "this":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJson(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TT;>;"
    new-instance v0, Lc8/qmd;

    invoke-direct {v0, p1}, Lc8/qmd;-><init>(Ljava/io/Reader;)V

    .line 260
    .local v0, "reader":Lc8/qmd;
    invoke-virtual {p0, v0}, Lc8/Vjd;->read(Lc8/qmd;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final fromJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    .local p0, "this":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TT;>;"
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc8/Vjd;->fromJson(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final fromJsonTree(Lc8/Mjd;)Ljava/lang/Object;
    .locals 3
    .param p1, "jsonTree"    # Lc8/Mjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Mjd;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TT;>;"
    :try_start_0
    new-instance v1, Lc8/eld;

    invoke-direct {v1, p1}, Lc8/eld;-><init>(Lc8/Mjd;)V

    .line 285
    .local v1, "jsonReader":Lc8/qmd;
    invoke-virtual {p0, v1}, Lc8/Vjd;->read(Lc8/qmd;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 286
    .end local v1    # "jsonReader":Lc8/qmd;
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/google/gson/JsonIOException;

    invoke-direct {v2, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final nullSafe()Lc8/Vjd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vjd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TT;>;"
    new-instance v0, Lc8/Ujd;

    invoke-direct {v0, p0}, Lc8/Ujd;-><init>(Lc8/Vjd;)V

    return-object v0
.end method

.method public abstract read(Lc8/qmd;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/qmd;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 217
    .local v1, "stringWriter":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lc8/Vjd;->toJson(Ljava/io/Writer;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public final toJson(Ljava/io/Writer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lc8/smd;

    invoke-direct {v0, p1}, Lc8/smd;-><init>(Ljava/io/Writer;)V

    .line 142
    .local v0, "writer":Lc8/smd;
    invoke-virtual {p0, v0, p2}, Lc8/Vjd;->write(Lc8/smd;Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public final toJsonTree(Ljava/lang/Object;)Lc8/Mjd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lc8/Mjd;"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    :try_start_0
    new-instance v1, Lc8/gld;

    invoke-direct {v1}, Lc8/gld;-><init>()V

    .line 234
    .local v1, "jsonWriter":Lc8/gld;
    invoke-virtual {p0, v1, p1}, Lc8/Vjd;->write(Lc8/smd;Ljava/lang/Object;)V

    .line 235
    invoke-virtual {v1}, Lc8/gld;->get()Lc8/Mjd;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 236
    .end local v1    # "jsonWriter":Lc8/gld;
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/google/gson/JsonIOException;

    invoke-direct {v2, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public abstract write(Lc8/smd;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/smd;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
