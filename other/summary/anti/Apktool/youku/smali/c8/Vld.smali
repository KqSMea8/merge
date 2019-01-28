.class public final Lc8/Vld;
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
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
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
    .line 84
    invoke-virtual {p0, p1}, Lc8/Vld;->read(Lc8/qmd;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public read(Lc8/qmd;)Ljava/util/BitSet;
    .locals 9
    .param p1, "in"    # Lc8/qmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 86
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 87
    .local v0, "bitset":Ljava/util/BitSet;
    invoke-virtual {p1}, Lc8/qmd;->beginArray()V

    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, "i":I
    invoke-virtual {p1}, Lc8/qmd;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v4

    .line 90
    .local v4, "tokenType":Lcom/google/gson/stream/JsonToken;
    :goto_0
    sget-object v7, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v4, v7, :cond_3

    .line 92
    sget-object v7, Lc8/dmd;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    invoke-virtual {v4}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 109
    new-instance v5, Lcom/google/gson/JsonSyntaxException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid bitset value type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 94
    :pswitch_0
    invoke-virtual {p1}, Lc8/qmd;->nextInt()I

    move-result v7

    if-eqz v7, :cond_1

    move v2, v5

    .line 111
    .local v2, "set":Z
    :goto_1
    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 114
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 115
    invoke-virtual {p1}, Lc8/qmd;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v4

    .line 116
    goto :goto_0

    .end local v2    # "set":Z
    :cond_1
    move v2, v6

    .line 94
    goto :goto_1

    .line 97
    :pswitch_1
    invoke-virtual {p1}, Lc8/qmd;->nextBoolean()Z

    move-result v2

    .line 98
    .restart local v2    # "set":Z
    goto :goto_1

    .line 100
    .end local v2    # "set":Z
    :pswitch_2
    invoke-virtual {p1}, Lc8/qmd;->nextString()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "stringValue":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_2

    move v2, v5

    .restart local v2    # "set":Z
    :goto_2
    goto :goto_1

    .end local v2    # "set":Z
    :cond_2
    move v2, v6

    goto :goto_2

    .line 104
    :catch_0
    move-exception v5

    new-instance v5, Lcom/google/gson/JsonSyntaxException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error: Expecting: bitset number value (1, 0), Found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 117
    .end local v3    # "stringValue":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lc8/qmd;->endArray()V

    .line 118
    return-object v0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic write(Lc8/smd;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    check-cast p2, Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2}, Lc8/Vld;->write(Lc8/smd;Ljava/util/BitSet;)V

    return-void
.end method

.method public write(Lc8/smd;Ljava/util/BitSet;)V
    .locals 6
    .param p1, "out"    # Lc8/smd;
    .param p2, "src"    # Ljava/util/BitSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p1}, Lc8/smd;->beginArray()Lc8/smd;

    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 124
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 125
    .local v2, "value":I
    :goto_1
    int-to-long v4, v2

    invoke-virtual {p1, v4, v5}, Lc8/smd;->value(J)Lc8/smd;

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    .end local v2    # "value":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {p1}, Lc8/smd;->endArray()Lc8/smd;

    .line 128
    return-void
.end method
