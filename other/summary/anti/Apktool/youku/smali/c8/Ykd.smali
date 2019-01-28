.class public final Lc8/Ykd;
.super Lc8/Vjd;
.source "CollectionTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Zkd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Vjd",
        "<",
        "Ljava/util/Collection",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final constructor:Lc8/Mkd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Mkd",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final elementTypeAdapter:Lc8/Vjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vjd",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Gjd;Ljava/lang/reflect/Type;Lc8/Vjd;Lc8/Mkd;)V
    .locals 1
    .param p1, "context"    # Lc8/Gjd;
    .param p2, "elementType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Gjd;",
            "Ljava/lang/reflect/Type;",
            "Lc8/Vjd",
            "<TE;>;",
            "Lc8/Mkd",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lc8/Ykd;, "Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    .local p3, "elementTypeAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TE;>;"
    .local p4, "constructor":Lc8/Mkd;, "Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Collection<TE;>;>;"
    invoke-direct {p0}, Lc8/Vjd;-><init>()V

    .line 68
    new-instance v0, Lc8/yld;

    invoke-direct {v0, p1, p3, p2}, Lc8/yld;-><init>(Lc8/Gjd;Lc8/Vjd;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lc8/Ykd;->elementTypeAdapter:Lc8/Vjd;

    .line 70
    iput-object p4, p0, Lc8/Ykd;->constructor:Lc8/Mkd;

    .line 71
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
    .line 61
    .local p0, "this":Lc8/Ykd;, "Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    invoke-virtual {p0, p1}, Lc8/Ykd;->read(Lc8/qmd;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public read(Lc8/qmd;)Ljava/util/Collection;
    .locals 4
    .param p1, "in"    # Lc8/qmd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/qmd;",
            ")",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lc8/Ykd;, "Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    invoke-virtual {p1}, Lc8/qmd;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    .line 75
    invoke-virtual {p1}, Lc8/qmd;->nextNull()V

    .line 76
    const/4 v0, 0x0

    .line 86
    :goto_0
    return-object v0

    .line 79
    :cond_0
    iget-object v2, p0, Lc8/Ykd;->constructor:Lc8/Mkd;

    invoke-interface {v2}, Lc8/Mkd;->construct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 80
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-virtual {p1}, Lc8/qmd;->beginArray()V

    .line 81
    :goto_1
    invoke-virtual {p1}, Lc8/qmd;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    iget-object v2, p0, Lc8/Ykd;->elementTypeAdapter:Lc8/Vjd;

    invoke-virtual {v2, p1}, Lc8/Vjd;->read(Lc8/qmd;)Ljava/lang/Object;

    move-result-object v1

    .line 83
    .local v1, "instance":Ljava/lang/Object;, "TE;"
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 85
    .end local v1    # "instance":Ljava/lang/Object;, "TE;"
    :cond_1
    invoke-virtual {p1}, Lc8/qmd;->endArray()V

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
    .line 61
    .local p0, "this":Lc8/Ykd;, "Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lc8/Ykd;->write(Lc8/smd;Ljava/util/Collection;)V

    return-void
.end method

.method public write(Lc8/smd;Ljava/util/Collection;)V
    .locals 3
    .param p1, "out"    # Lc8/smd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/smd;",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lc8/Ykd;, "Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    if-nez p2, :cond_0

    .line 91
    invoke-virtual {p1}, Lc8/smd;->nullValue()Lc8/smd;

    .line 100
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p1}, Lc8/smd;->beginArray()Lc8/smd;

    .line 96
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 97
    .local v0, "element":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lc8/Ykd;->elementTypeAdapter:Lc8/Vjd;

    invoke-virtual {v2, p1, v0}, Lc8/Vjd;->write(Lc8/smd;Ljava/lang/Object;)V

    goto :goto_1

    .line 99
    .end local v0    # "element":Ljava/lang/Object;, "TE;"
    :cond_1
    invoke-virtual {p1}, Lc8/smd;->endArray()Lc8/smd;

    goto :goto_0
.end method
