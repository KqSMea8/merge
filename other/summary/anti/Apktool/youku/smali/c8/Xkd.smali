.class public final Lc8/Xkd;
.super Lc8/Vjd;
.source "ArrayTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Vjd",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lc8/Wjd;


# instance fields
.field private final componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final componentTypeAdapter:Lc8/Vjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vjd",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lc8/Wkd;

    invoke-direct {v0}, Lc8/Wkd;-><init>()V

    sput-object v0, Lc8/Xkd;->FACTORY:Lc8/Wjd;

    return-void
.end method

.method public constructor <init>(Lc8/Gjd;Lc8/Vjd;Ljava/lang/Class;)V
    .locals 1
    .param p1, "context"    # Lc8/Gjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Gjd;",
            "Lc8/Vjd",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lc8/Xkd;, "Lcom/google/gson/internal/bind/ArrayTypeAdapter<TE;>;"
    .local p2, "componentTypeAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TE;>;"
    .local p3, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Lc8/Vjd;-><init>()V

    .line 58
    new-instance v0, Lc8/yld;

    invoke-direct {v0, p1, p2, p3}, Lc8/yld;-><init>(Lc8/Gjd;Lc8/Vjd;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lc8/Xkd;->componentTypeAdapter:Lc8/Vjd;

    .line 60
    iput-object p3, p0, Lc8/Xkd;->componentType:Ljava/lang/Class;

    .line 61
    return-void
.end method


# virtual methods
.method public read(Lc8/qmd;)Ljava/lang/Object;
    .locals 7
    .param p1, "in"    # Lc8/qmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lc8/Xkd;, "Lcom/google/gson/internal/bind/ArrayTypeAdapter<TE;>;"
    invoke-virtual {p1}, Lc8/qmd;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v5, v6, :cond_1

    .line 65
    invoke-virtual {p1}, Lc8/qmd;->nextNull()V

    .line 66
    const/4 v0, 0x0

    .line 82
    :cond_0
    return-object v0

    .line 69
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-virtual {p1}, Lc8/qmd;->beginArray()V

    .line 71
    :goto_0
    invoke-virtual {p1}, Lc8/qmd;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 72
    iget-object v5, p0, Lc8/Xkd;->componentTypeAdapter:Lc8/Vjd;

    invoke-virtual {v5, p1}, Lc8/Vjd;->read(Lc8/qmd;)Ljava/lang/Object;

    move-result-object v2

    .line 73
    .local v2, "instance":Ljava/lang/Object;, "TE;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    .end local v2    # "instance":Ljava/lang/Object;, "TE;"
    :cond_2
    invoke-virtual {p1}, Lc8/qmd;->endArray()V

    .line 77
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 78
    .local v4, "size":I
    iget-object v5, p0, Lc8/Xkd;->componentType:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 79
    .local v0, "array":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 80
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v1, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public write(Lc8/smd;Ljava/lang/Object;)V
    .locals 4
    .param p1, "out"    # Lc8/smd;
    .param p2, "array"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lc8/Xkd;, "Lcom/google/gson/internal/bind/ArrayTypeAdapter<TE;>;"
    if-nez p2, :cond_0

    .line 88
    invoke-virtual {p1}, Lc8/smd;->nullValue()Lc8/smd;

    .line 98
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p1}, Lc8/smd;->beginArray()Lc8/smd;

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .local v1, "length":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 94
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 95
    .local v2, "value":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lc8/Xkd;->componentTypeAdapter:Lc8/Vjd;

    invoke-virtual {v3, p1, v2}, Lc8/Vjd;->write(Lc8/smd;Ljava/lang/Object;)V

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    .end local v2    # "value":Ljava/lang/Object;, "TE;"
    :cond_1
    invoke-virtual {p1}, Lc8/smd;->endArray()Lc8/smd;

    goto :goto_0
.end method
