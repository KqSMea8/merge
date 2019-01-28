.class public final Lc8/lld;
.super Lc8/Vjd;
.source "ObjectTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Vjd",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lc8/Wjd;


# instance fields
.field private final gson:Lc8/Gjd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lc8/jld;

    invoke-direct {v0}, Lc8/jld;-><init>()V

    sput-object v0, Lc8/lld;->FACTORY:Lc8/Wjd;

    return-void
.end method

.method constructor <init>(Lc8/Gjd;)V
    .locals 0
    .param p1, "gson"    # Lc8/Gjd;

    .prologue
    .line 50
    invoke-direct {p0}, Lc8/Vjd;-><init>()V

    .line 51
    iput-object p1, p0, Lc8/lld;->gson:Lc8/Gjd;

    .line 52
    return-void
.end method


# virtual methods
.method public read(Lc8/qmd;)Ljava/lang/Object;
    .locals 6
    .param p1, "in"    # Lc8/qmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p1}, Lc8/qmd;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    .line 56
    .local v2, "token":Lcom/google/gson/stream/JsonToken;
    sget-object v3, Lc8/kld;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    invoke-virtual {v2}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 89
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 58
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lc8/qmd;->beginArray()V

    .line 60
    :goto_0
    invoke-virtual {p1}, Lc8/qmd;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Lc8/lld;->read(Lc8/qmd;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1}, Lc8/qmd;->endArray()V

    .line 86
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_1
    return-object v0

    .line 67
    :pswitch_1
    new-instance v1, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {v1}, Lcom/google/gson/internal/LinkedTreeMap;-><init>()V

    .line 68
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lc8/qmd;->beginObject()V

    .line 69
    :goto_2
    invoke-virtual {p1}, Lc8/qmd;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    invoke-virtual {p1}, Lc8/qmd;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1}, Lc8/lld;->read(Lc8/qmd;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 72
    :cond_1
    invoke-virtual {p1}, Lc8/qmd;->endObject()V

    move-object v0, v1

    .line 73
    goto :goto_1

    .line 76
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_2
    invoke-virtual {p1}, Lc8/qmd;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 79
    :pswitch_3
    invoke-virtual {p1}, Lc8/qmd;->nextDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    .line 82
    :pswitch_4
    invoke-virtual {p1}, Lc8/qmd;->nextBoolean()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 85
    :pswitch_5
    invoke-virtual {p1}, Lc8/qmd;->nextNull()V

    .line 86
    const/4 v0, 0x0

    goto :goto_1

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public write(Lc8/smd;Ljava/lang/Object;)V
    .locals 3
    .param p1, "out"    # Lc8/smd;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    if-nez p2, :cond_0

    .line 96
    invoke-virtual {p1}, Lc8/smd;->nullValue()Lc8/smd;

    .line 108
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lc8/lld;->gson:Lc8/Gjd;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/Gjd;->getAdapter(Ljava/lang/Class;)Lc8/Vjd;

    move-result-object v0

    .line 101
    .local v0, "typeAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<Ljava/lang/Object;>;"
    instance-of v1, v0, Lc8/lld;

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {p1}, Lc8/smd;->beginObject()Lc8/smd;

    .line 103
    invoke-virtual {p1}, Lc8/smd;->endObject()Lc8/smd;

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v0, p1, p2}, Lc8/Vjd;->write(Lc8/smd;Ljava/lang/Object;)V

    goto :goto_0
.end method
