.class public final Lc8/hld;
.super Lc8/Vjd;
.source "MapTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Vjd",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final constructor:Lc8/Mkd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Mkd",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final keyTypeAdapter:Lc8/Vjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vjd",
            "<TK;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lc8/ild;

.field private final valueTypeAdapter:Lc8/Vjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vjd",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/ild;Lc8/Gjd;Ljava/lang/reflect/Type;Lc8/Vjd;Ljava/lang/reflect/Type;Lc8/Vjd;Lc8/Mkd;)V
    .locals 1
    .param p2, "context"    # Lc8/Gjd;
    .param p3, "keyType"    # Ljava/lang/reflect/Type;
    .param p5, "valueType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Gjd;",
            "Ljava/lang/reflect/Type;",
            "Lc8/Vjd",
            "<TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lc8/Vjd",
            "<TV;>;",
            "Lc8/Mkd",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lc8/hld;, "Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    .local p4, "keyTypeAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TK;>;"
    .local p6, "valueTypeAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TV;>;"
    .local p7, "constructor":Lc8/Mkd;, "Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Map<TK;TV;>;>;"
    iput-object p1, p0, Lc8/hld;->this$0:Lc8/ild;

    invoke-direct {p0}, Lc8/Vjd;-><init>()V

    .line 153
    new-instance v0, Lc8/yld;

    invoke-direct {v0, p2, p4, p3}, Lc8/yld;-><init>(Lc8/Gjd;Lc8/Vjd;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lc8/hld;->keyTypeAdapter:Lc8/Vjd;

    .line 155
    new-instance v0, Lc8/yld;

    invoke-direct {v0, p2, p6, p5}, Lc8/yld;-><init>(Lc8/Gjd;Lc8/Vjd;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lc8/hld;->valueTypeAdapter:Lc8/Vjd;

    .line 157
    iput-object p7, p0, Lc8/hld;->constructor:Lc8/Mkd;

    .line 158
    return-void
.end method

.method private keyToString(Lc8/Mjd;)Ljava/lang/String;
    .locals 2
    .param p1, "keyElement"    # Lc8/Mjd;

    .prologue
    .line 246
    .local p0, "this":Lc8/hld;, "Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    invoke-virtual {p1}, Lc8/Mjd;->isJsonPrimitive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 247
    invoke-virtual {p1}, Lc8/Mjd;->getAsJsonPrimitive()Lc8/Qjd;

    move-result-object v0

    .line 248
    .local v0, "primitive":Lc8/Qjd;
    invoke-virtual {v0}, Lc8/Qjd;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {v0}, Lc8/Qjd;->getAsNumber()Ljava/lang/Number;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 258
    .end local v0    # "primitive":Lc8/Qjd;
    :goto_0
    return-object v1

    .line 250
    .restart local v0    # "primitive":Lc8/Qjd;
    :cond_0
    invoke-virtual {v0}, Lc8/Qjd;->isBoolean()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    invoke-virtual {v0}, Lc8/Qjd;->getAsBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {v0}, Lc8/Qjd;->isString()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 253
    invoke-virtual {v0}, Lc8/Qjd;->getAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 255
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 257
    .end local v0    # "primitive":Lc8/Qjd;
    :cond_3
    invoke-virtual {p1}, Lc8/Mjd;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 258
    const-string/jumbo v1, "null"

    goto :goto_0

    .line 260
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
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
    .line 145
    .local p0, "this":Lc8/hld;, "Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    invoke-virtual {p0, p1}, Lc8/hld;->read(Lc8/qmd;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public read(Lc8/qmd;)Ljava/util/Map;
    .locals 8
    .param p1, "in"    # Lc8/qmd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/qmd;",
            ")",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lc8/hld;, "Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    invoke-virtual {p1}, Lc8/qmd;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    .line 162
    .local v2, "peek":Lcom/google/gson/stream/JsonToken;
    sget-object v5, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v5, :cond_0

    .line 163
    invoke-virtual {p1}, Lc8/qmd;->nextNull()V

    .line 164
    const/4 v1, 0x0

    .line 195
    :goto_0
    return-object v1

    .line 167
    :cond_0
    iget-object v5, p0, Lc8/hld;->constructor:Lc8/Mkd;

    invoke-interface {v5}, Lc8/Mkd;->construct()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 169
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    sget-object v5, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v5, :cond_3

    .line 170
    invoke-virtual {p1}, Lc8/qmd;->beginArray()V

    .line 171
    :goto_1
    invoke-virtual {p1}, Lc8/qmd;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 172
    invoke-virtual {p1}, Lc8/qmd;->beginArray()V

    .line 173
    iget-object v5, p0, Lc8/hld;->keyTypeAdapter:Lc8/Vjd;

    invoke-virtual {v5, p1}, Lc8/Vjd;->read(Lc8/qmd;)Ljava/lang/Object;

    move-result-object v0

    .line 174
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget-object v5, p0, Lc8/hld;->valueTypeAdapter:Lc8/Vjd;

    invoke-virtual {v5, p1}, Lc8/Vjd;->read(Lc8/qmd;)Ljava/lang/Object;

    move-result-object v4

    .line 175
    .local v4, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 176
    .local v3, "replaced":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_1

    .line 177
    new-instance v5, Lcom/google/gson/JsonSyntaxException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "duplicate key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 179
    :cond_1
    invoke-virtual {p1}, Lc8/qmd;->endArray()V

    goto :goto_1

    .line 181
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "replaced":Ljava/lang/Object;, "TV;"
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-virtual {p1}, Lc8/qmd;->endArray()V

    goto :goto_0

    .line 183
    :cond_3
    invoke-virtual {p1}, Lc8/qmd;->beginObject()V

    .line 184
    :cond_4
    invoke-virtual {p1}, Lc8/qmd;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 185
    sget-object v5, Lc8/vkd;->INSTANCE:Lc8/vkd;

    invoke-virtual {v5, p1}, Lc8/vkd;->promoteNameToValue(Lc8/qmd;)V

    .line 186
    iget-object v5, p0, Lc8/hld;->keyTypeAdapter:Lc8/Vjd;

    invoke-virtual {v5, p1}, Lc8/Vjd;->read(Lc8/qmd;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    .restart local v0    # "key":Ljava/lang/Object;, "TK;"
    iget-object v5, p0, Lc8/hld;->valueTypeAdapter:Lc8/Vjd;

    invoke-virtual {v5, p1}, Lc8/Vjd;->read(Lc8/qmd;)Ljava/lang/Object;

    move-result-object v4

    .line 188
    .restart local v4    # "value":Ljava/lang/Object;, "TV;"
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 189
    .restart local v3    # "replaced":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_4

    .line 190
    new-instance v5, Lcom/google/gson/JsonSyntaxException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "duplicate key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 193
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "replaced":Ljava/lang/Object;, "TV;"
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    :cond_5
    invoke-virtual {p1}, Lc8/qmd;->endObject()V

    goto/16 :goto_0
.end method

.method public bridge synthetic write(Lc8/smd;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lc8/hld;, "Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lc8/hld;->write(Lc8/smd;Ljava/util/Map;)V

    return-void
.end method

.method public write(Lc8/smd;Ljava/util/Map;)V
    .locals 10
    .param p1, "out"    # Lc8/smd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/smd;",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lc8/hld;, "Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-nez p2, :cond_0

    .line 200
    invoke-virtual {p1}, Lc8/smd;->nullValue()Lc8/smd;

    .line 243
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v7, p0, Lc8/hld;->this$0:Lc8/ild;

    iget-boolean v7, v7, Lc8/ild;->complexMapKeySerialization:Z

    if-nez v7, :cond_2

    .line 205
    invoke-virtual {p1}, Lc8/smd;->beginObject()Lc8/smd;

    .line 206
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 207
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lc8/smd;->name(Ljava/lang/String;)Lc8/smd;

    .line 208
    iget-object v8, p0, Lc8/hld;->valueTypeAdapter:Lc8/Vjd;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, p1, v9}, Lc8/Vjd;->write(Lc8/smd;Ljava/lang/Object;)V

    goto :goto_1

    .line 210
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    invoke-virtual {p1}, Lc8/smd;->endObject()Lc8/smd;

    goto :goto_0

    .line 214
    :cond_2
    const/4 v1, 0x0

    .line 215
    .local v1, "hasComplexKeys":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 217
    .local v4, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/JsonElement;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 219
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v7, p0, Lc8/hld;->keyTypeAdapter:Lc8/Vjd;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Lc8/Vjd;->toJsonTree(Ljava/lang/Object;)Lc8/Mjd;

    move-result-object v3

    .line 220
    .local v3, "keyElement":Lc8/Mjd;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {v3}, Lc8/Mjd;->isJsonArray()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v3}, Lc8/Mjd;->isJsonObject()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    const/4 v7, 0x1

    :goto_3
    or-int/2addr v1, v7

    .line 223
    goto :goto_2

    .line 222
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 225
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v3    # "keyElement":Lc8/Mjd;
    :cond_5
    if-eqz v1, :cond_7

    .line 226
    invoke-virtual {p1}, Lc8/smd;->beginArray()Lc8/smd;

    .line 227
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_4
    if-ge v2, v5, :cond_6

    .line 228
    invoke-virtual {p1}, Lc8/smd;->beginArray()Lc8/smd;

    .line 229
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/Mjd;

    invoke-static {v7, p1}, Lc8/Qkd;->write(Lc8/Mjd;Lc8/smd;)V

    .line 230
    iget-object v7, p0, Lc8/hld;->valueTypeAdapter:Lc8/Vjd;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lc8/Vjd;->write(Lc8/smd;Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p1}, Lc8/smd;->endArray()Lc8/smd;

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 233
    :cond_6
    invoke-virtual {p1}, Lc8/smd;->endArray()Lc8/smd;

    goto/16 :goto_0

    .line 235
    .end local v2    # "i":I
    .end local v5    # "size":I
    :cond_7
    invoke-virtual {p1}, Lc8/smd;->beginObject()Lc8/smd;

    .line 236
    const/4 v2, 0x0

    .restart local v2    # "i":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .restart local v5    # "size":I
    :goto_5
    if-ge v2, v5, :cond_8

    .line 237
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Mjd;

    .line 238
    .restart local v3    # "keyElement":Lc8/Mjd;
    invoke-direct {p0, v3}, Lc8/hld;->keyToString(Lc8/Mjd;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lc8/smd;->name(Ljava/lang/String;)Lc8/smd;

    .line 239
    iget-object v7, p0, Lc8/hld;->valueTypeAdapter:Lc8/Vjd;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lc8/Vjd;->write(Lc8/smd;Ljava/lang/Object;)V

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 241
    .end local v3    # "keyElement":Lc8/Mjd;
    :cond_8
    invoke-virtual {p1}, Lc8/smd;->endObject()Lc8/smd;

    goto/16 :goto_0
.end method
