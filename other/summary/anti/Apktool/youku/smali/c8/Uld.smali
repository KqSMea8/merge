.class public final Lc8/Uld;
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
        "Lc8/Mjd;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 697
    invoke-direct {p0}, Lc8/Vjd;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lc8/qmd;)Lc8/Mjd;
    .locals 5
    .param p1, "in"    # Lc8/qmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 699
    sget-object v3, Lc8/dmd;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    invoke-virtual {p1}, Lc8/qmd;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 731
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 701
    :pswitch_0
    new-instance v0, Lc8/Qjd;

    invoke-virtual {p1}, Lc8/qmd;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lc8/Qjd;-><init>(Ljava/lang/String;)V

    .line 725
    :goto_0
    return-object v0

    .line 703
    :pswitch_1
    invoke-virtual {p1}, Lc8/qmd;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 704
    .local v1, "number":Ljava/lang/String;
    new-instance v0, Lc8/Qjd;

    new-instance v3, Lcom/google/gson/internal/LazilyParsedNumber;

    invoke-direct {v3, v1}, Lcom/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lc8/Qjd;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    .line 706
    .end local v1    # "number":Ljava/lang/String;
    :pswitch_2
    new-instance v0, Lc8/Qjd;

    invoke-virtual {p1}, Lc8/qmd;->nextBoolean()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v3}, Lc8/Qjd;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 708
    :pswitch_3
    invoke-virtual {p1}, Lc8/qmd;->nextNull()V

    .line 709
    sget-object v0, Lc8/Njd;->INSTANCE:Lc8/Njd;

    goto :goto_0

    .line 711
    :pswitch_4
    new-instance v0, Lc8/Jjd;

    invoke-direct {v0}, Lc8/Jjd;-><init>()V

    .line 712
    .local v0, "array":Lc8/Jjd;
    invoke-virtual {p1}, Lc8/qmd;->beginArray()V

    .line 713
    :goto_1
    invoke-virtual {p1}, Lc8/qmd;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 714
    invoke-virtual {p0, p1}, Lc8/Uld;->read(Lc8/qmd;)Lc8/Mjd;

    move-result-object v3

    invoke-virtual {v0, v3}, Lc8/Jjd;->add(Lc8/Mjd;)V

    goto :goto_1

    .line 716
    :cond_0
    invoke-virtual {p1}, Lc8/qmd;->endArray()V

    goto :goto_0

    .line 719
    .end local v0    # "array":Lc8/Jjd;
    :pswitch_5
    new-instance v2, Lc8/Ojd;

    invoke-direct {v2}, Lc8/Ojd;-><init>()V

    .line 720
    .local v2, "object":Lc8/Ojd;
    invoke-virtual {p1}, Lc8/qmd;->beginObject()V

    .line 721
    :goto_2
    invoke-virtual {p1}, Lc8/qmd;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 722
    invoke-virtual {p1}, Lc8/qmd;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1}, Lc8/Uld;->read(Lc8/qmd;)Lc8/Mjd;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lc8/Ojd;->add(Ljava/lang/String;Lc8/Mjd;)V

    goto :goto_2

    .line 724
    :cond_1
    invoke-virtual {p1}, Lc8/qmd;->endObject()V

    move-object v0, v2

    .line 725
    goto :goto_0

    .line 699
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic read(Lc8/qmd;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 697
    invoke-virtual {p0, p1}, Lc8/Uld;->read(Lc8/qmd;)Lc8/Mjd;

    move-result-object v0

    return-object v0
.end method

.method public write(Lc8/smd;Lc8/Mjd;)V
    .locals 6
    .param p1, "out"    # Lc8/smd;
    .param p2, "value"    # Lc8/Mjd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 736
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lc8/Mjd;->isJsonNull()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 737
    :cond_0
    invoke-virtual {p1}, Lc8/smd;->nullValue()Lc8/smd;

    .line 766
    :goto_0
    return-void

    .line 738
    :cond_1
    invoke-virtual {p2}, Lc8/Mjd;->isJsonPrimitive()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 739
    invoke-virtual {p2}, Lc8/Mjd;->getAsJsonPrimitive()Lc8/Qjd;

    move-result-object v2

    .line 740
    .local v2, "primitive":Lc8/Qjd;
    invoke-virtual {v2}, Lc8/Qjd;->isNumber()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 741
    invoke-virtual {v2}, Lc8/Qjd;->getAsNumber()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {p1, v3}, Lc8/smd;->value(Ljava/lang/Number;)Lc8/smd;

    goto :goto_0

    .line 742
    :cond_2
    invoke-virtual {v2}, Lc8/Qjd;->isBoolean()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 743
    invoke-virtual {v2}, Lc8/Qjd;->getAsBoolean()Z

    move-result v3

    invoke-virtual {p1, v3}, Lc8/smd;->value(Z)Lc8/smd;

    goto :goto_0

    .line 745
    :cond_3
    invoke-virtual {v2}, Lc8/Qjd;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lc8/smd;->value(Ljava/lang/String;)Lc8/smd;

    goto :goto_0

    .line 748
    .end local v2    # "primitive":Lc8/Qjd;
    :cond_4
    invoke-virtual {p2}, Lc8/Mjd;->isJsonArray()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 749
    invoke-virtual {p1}, Lc8/smd;->beginArray()Lc8/smd;

    .line 750
    invoke-virtual {p2}, Lc8/Mjd;->getAsJsonArray()Lc8/Jjd;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Jjd;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Mjd;

    .line 751
    .local v0, "e":Lc8/Mjd;
    invoke-virtual {p0, p1, v0}, Lc8/Uld;->write(Lc8/smd;Lc8/Mjd;)V

    goto :goto_1

    .line 753
    .end local v0    # "e":Lc8/Mjd;
    :cond_5
    invoke-virtual {p1}, Lc8/smd;->endArray()Lc8/smd;

    goto :goto_0

    .line 755
    :cond_6
    invoke-virtual {p2}, Lc8/Mjd;->isJsonObject()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 756
    invoke-virtual {p1}, Lc8/smd;->beginObject()Lc8/smd;

    .line 757
    invoke-virtual {p2}, Lc8/Mjd;->getAsJsonObject()Lc8/Ojd;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Ojd;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 758
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lc8/smd;->name(Ljava/lang/String;)Lc8/smd;

    .line 759
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Mjd;

    invoke-virtual {p0, p1, v3}, Lc8/Uld;->write(Lc8/smd;Lc8/Mjd;)V

    goto :goto_2

    .line 761
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    :cond_7
    invoke-virtual {p1}, Lc8/smd;->endObject()Lc8/smd;

    goto/16 :goto_0

    .line 764
    :cond_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic write(Lc8/smd;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 697
    check-cast p2, Lc8/Mjd;

    invoke-virtual {p0, p1, p2}, Lc8/Uld;->write(Lc8/smd;Lc8/Mjd;)V

    return-void
.end method
