.class public final Lc8/xld;
.super Lc8/Vjd;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/vld;,
        Lc8/wld;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Vjd",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final context:Lc8/vld;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/xld",
            "<TT;>.GsonContextImpl;"
        }
    .end annotation
.end field

.field private delegate:Lc8/Vjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vjd",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final deserializer:Lc8/Ljd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Ljd",
            "<TT;>;"
        }
    .end annotation
.end field

.field final gson:Lc8/Gjd;

.field private final serializer:Lc8/Sjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Sjd",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final skipPast:Lc8/Wjd;

.field private final typeToken:Lc8/omd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/omd",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Sjd;Lc8/Ljd;Lc8/Gjd;Lc8/omd;Lc8/Wjd;)V
    .locals 2
    .param p3, "gson"    # Lc8/Gjd;
    .param p5, "skipPast"    # Lc8/Wjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Sjd",
            "<TT;>;",
            "Lc8/Ljd",
            "<TT;>;",
            "Lc8/Gjd;",
            "Lc8/omd",
            "<TT;>;",
            "Lc8/Wjd;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lc8/xld;, "Lcom/google/gson/internal/bind/TreeTypeAdapter<TT;>;"
    .local p1, "serializer":Lc8/Sjd;, "Lcom/google/gson/JsonSerializer<TT;>;"
    .local p2, "deserializer":Lc8/Ljd;, "Lcom/google/gson/JsonDeserializer<TT;>;"
    .local p4, "typeToken":Lc8/omd;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Lc8/Vjd;-><init>()V

    .line 47
    new-instance v0, Lc8/vld;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/vld;-><init>(Lc8/xld;Lc8/uld;)V

    iput-object v0, p0, Lc8/xld;->context:Lc8/vld;

    .line 54
    iput-object p1, p0, Lc8/xld;->serializer:Lc8/Sjd;

    .line 55
    iput-object p2, p0, Lc8/xld;->deserializer:Lc8/Ljd;

    .line 56
    iput-object p3, p0, Lc8/xld;->gson:Lc8/Gjd;

    .line 57
    iput-object p4, p0, Lc8/xld;->typeToken:Lc8/omd;

    .line 58
    iput-object p5, p0, Lc8/xld;->skipPast:Lc8/Wjd;

    .line 59
    return-void
.end method

.method private delegate()Lc8/Vjd;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vjd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lc8/xld;, "Lcom/google/gson/internal/bind/TreeTypeAdapter<TT;>;"
    iget-object v0, p0, Lc8/xld;->delegate:Lc8/Vjd;

    .line 87
    .local v0, "d":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TT;>;"
    if-eqz v0, :cond_0

    .end local v0    # "d":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "d":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TT;>;"
    :cond_0
    iget-object v1, p0, Lc8/xld;->gson:Lc8/Gjd;

    iget-object v2, p0, Lc8/xld;->skipPast:Lc8/Wjd;

    iget-object v3, p0, Lc8/xld;->typeToken:Lc8/omd;

    .line 89
    invoke-virtual {v1, v2, v3}, Lc8/Gjd;->getDelegateAdapter(Lc8/Wjd;Lc8/omd;)Lc8/Vjd;

    move-result-object v0

    .end local v0    # "d":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TT;>;"
    iput-object v0, p0, Lc8/xld;->delegate:Lc8/Vjd;

    goto :goto_0
.end method

.method public static newFactory(Lc8/omd;Ljava/lang/Object;)Lc8/Wjd;
    .locals 3
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/omd",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lc8/Wjd;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "exactType":Lc8/omd;, "Lcom/google/gson/reflect/TypeToken<*>;"
    new-instance v0, Lc8/wld;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v1, v2}, Lc8/wld;-><init>(Ljava/lang/Object;Lc8/omd;ZLjava/lang/Class;)V

    return-object v0
.end method

.method public static newFactoryWithMatchRawType(Lc8/omd;Ljava/lang/Object;)Lc8/Wjd;
    .locals 3
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/omd",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lc8/Wjd;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "exactType":Lc8/omd;, "Lcom/google/gson/reflect/TypeToken<*>;"
    invoke-virtual {p0}, Lc8/omd;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0}, Lc8/omd;->getRawType()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 107
    .local v0, "matchRawType":Z
    :goto_0
    new-instance v1, Lc8/wld;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v0, v2}, Lc8/wld;-><init>(Ljava/lang/Object;Lc8/omd;ZLjava/lang/Class;)V

    return-object v1

    .line 106
    .end local v0    # "matchRawType":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lc8/Wjd;
    .locals 3
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lc8/Wjd;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "hierarchyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lc8/wld;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p0}, Lc8/wld;-><init>(Ljava/lang/Object;Lc8/omd;ZLjava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public read(Lc8/qmd;)Ljava/lang/Object;
    .locals 4
    .param p1, "in"    # Lc8/qmd;
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

    .prologue
    .line 62
    .local p0, "this":Lc8/xld;, "Lcom/google/gson/internal/bind/TreeTypeAdapter<TT;>;"
    iget-object v1, p0, Lc8/xld;->deserializer:Lc8/Ljd;

    if-nez v1, :cond_0

    .line 63
    invoke-direct {p0}, Lc8/xld;->delegate()Lc8/Vjd;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc8/Vjd;->read(Lc8/qmd;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    :goto_0
    return-object v1

    .line 65
    :cond_0
    invoke-static {p1}, Lc8/Qkd;->parse(Lc8/qmd;)Lc8/Mjd;

    move-result-object v0

    .line 66
    .local v0, "value":Lc8/Mjd;
    invoke-virtual {v0}, Lc8/Mjd;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    const/4 v1, 0x0

    goto :goto_0

    .line 69
    :cond_1
    iget-object v1, p0, Lc8/xld;->deserializer:Lc8/Ljd;

    iget-object v2, p0, Lc8/xld;->typeToken:Lc8/omd;

    invoke-virtual {v2}, Lc8/omd;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lc8/xld;->context:Lc8/vld;

    invoke-interface {v1, v0, v2, v3}, Lc8/Ljd;->deserialize(Lc8/Mjd;Ljava/lang/reflect/Type;Lc8/Kjd;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public write(Lc8/smd;Ljava/lang/Object;)V
    .locals 4
    .param p1, "out"    # Lc8/smd;
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

    .prologue
    .line 73
    .local p0, "this":Lc8/xld;, "Lcom/google/gson/internal/bind/TreeTypeAdapter<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lc8/xld;->serializer:Lc8/Sjd;

    if-nez v1, :cond_0

    .line 74
    invoke-direct {p0}, Lc8/xld;->delegate()Lc8/Vjd;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lc8/Vjd;->write(Lc8/smd;Ljava/lang/Object;)V

    .line 83
    :goto_0
    return-void

    .line 77
    :cond_0
    if-nez p2, :cond_1

    .line 78
    invoke-virtual {p1}, Lc8/smd;->nullValue()Lc8/smd;

    goto :goto_0

    .line 81
    :cond_1
    iget-object v1, p0, Lc8/xld;->serializer:Lc8/Sjd;

    iget-object v2, p0, Lc8/xld;->typeToken:Lc8/omd;

    invoke-virtual {v2}, Lc8/omd;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lc8/xld;->context:Lc8/vld;

    invoke-interface {v1, p2, v2, v3}, Lc8/Sjd;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lc8/Rjd;)Lc8/Mjd;

    move-result-object v0

    .line 82
    .local v0, "tree":Lc8/Mjd;
    invoke-static {v0, p1}, Lc8/Qkd;->write(Lc8/Mjd;Lc8/smd;)V

    goto :goto_0
.end method
