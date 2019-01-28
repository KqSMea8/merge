.class public final Lc8/ild;
.super Ljava/lang/Object;
.source "MapTypeAdapterFactory.java"

# interfaces
.implements Lc8/Wjd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/hld;
    }
.end annotation


# instance fields
.field final complexMapKeySerialization:Z

.field private final constructorConstructor:Lc8/skd;


# direct methods
.method public constructor <init>(Lc8/skd;Z)V
    .locals 0
    .param p1, "constructorConstructor"    # Lc8/skd;
    .param p2, "complexMapKeySerialization"    # Z

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lc8/ild;->constructorConstructor:Lc8/skd;

    .line 112
    iput-boolean p2, p0, Lc8/ild;->complexMapKeySerialization:Z

    .line 113
    return-void
.end method

.method private getKeyAdapter(Lc8/Gjd;Ljava/lang/reflect/Type;)Lc8/Vjd;
    .locals 1
    .param p1, "context"    # Lc8/Gjd;
    .param p2, "keyType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Gjd;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lc8/Vjd",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 140
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_1

    :cond_0
    sget-object v0, Lc8/mmd;->BOOLEAN_AS_STRING:Lc8/Vjd;

    :goto_0
    return-object v0

    .line 142
    :cond_1
    invoke-static {p2}, Lc8/omd;->get(Ljava/lang/reflect/Type;)Lc8/omd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc8/Gjd;->getAdapter(Lc8/omd;)Lc8/Vjd;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public create(Lc8/Gjd;Lc8/omd;)Lc8/Vjd;
    .locals 12
    .param p1, "gson"    # Lc8/Gjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Gjd;",
            "Lc8/omd",
            "<TT;>;)",
            "Lc8/Vjd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p2, "typeToken":Lc8/omd;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 116
    invoke-virtual {p2}, Lc8/omd;->getType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 118
    .local v11, "type":Ljava/lang/reflect/Type;
    invoke-virtual {p2}, Lc8/omd;->getRawType()Ljava/lang/Class;

    move-result-object v9

    .line 119
    .local v9, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    .line 123
    :cond_0
    invoke-static {v11}, Lc8/dkd;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v10

    .line 124
    .local v10, "rawTypeOfSrc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v11, v10}, Lc8/dkd;->getMapKeyAndValueTypes(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v8

    .line 125
    .local v8, "keyAndValueTypes":[Ljava/lang/reflect/Type;
    aget-object v1, v8, v2

    invoke-direct {p0, p1, v1}, Lc8/ild;->getKeyAdapter(Lc8/Gjd;Ljava/lang/reflect/Type;)Lc8/Vjd;

    move-result-object v4

    .line 126
    .local v4, "keyAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<*>;"
    aget-object v1, v8, v5

    invoke-static {v1}, Lc8/omd;->get(Ljava/lang/reflect/Type;)Lc8/omd;

    move-result-object v1

    invoke-virtual {p1, v1}, Lc8/Gjd;->getAdapter(Lc8/omd;)Lc8/Vjd;

    move-result-object v6

    .line 127
    .local v6, "valueAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<*>;"
    iget-object v1, p0, Lc8/ild;->constructorConstructor:Lc8/skd;

    invoke-virtual {v1, p2}, Lc8/skd;->get(Lc8/omd;)Lc8/Mkd;

    move-result-object v7

    .line 131
    .local v7, "constructor":Lc8/Mkd;, "Lcom/google/gson/internal/ObjectConstructor<TT;>;"
    new-instance v0, Lc8/hld;

    aget-object v3, v8, v2

    aget-object v5, v8, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lc8/hld;-><init>(Lc8/ild;Lc8/Gjd;Ljava/lang/reflect/Type;Lc8/Vjd;Ljava/lang/reflect/Type;Lc8/Vjd;Lc8/Mkd;)V

    .line 133
    .local v0, "result":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TT;>;"
    goto :goto_0
.end method
