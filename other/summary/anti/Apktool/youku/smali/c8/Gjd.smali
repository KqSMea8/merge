.class public final Lc8/Gjd;
.super Ljava/lang/Object;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Fjd;
    }
.end annotation


# static fields
.field static final DEFAULT_COMPLEX_MAP_KEYS:Z = false

.field static final DEFAULT_ESCAPE_HTML:Z = true

.field static final DEFAULT_JSON_NON_EXECUTABLE:Z = false

.field static final DEFAULT_LENIENT:Z = false

.field static final DEFAULT_PRETTY_PRINT:Z = false

.field static final DEFAULT_SERIALIZE_NULLS:Z = false

.field static final DEFAULT_SPECIALIZE_FLOAT_VALUES:Z = false

.field private static final JSON_NON_EXECUTABLE_PREFIX:Ljava/lang/String; = ")]}\'\n"

.field private static final NULL_KEY_SURROGATE:Lc8/omd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/omd",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final calls:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lc8/omd",
            "<*>;",
            "Lc8/Fjd",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final constructorConstructor:Lc8/skd;

.field private final excluder:Lc8/ukd;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Wjd;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldNamingStrategy:Lc8/zjd;

.field private final generateNonExecutableJson:Z

.field private final htmlSafe:Z

.field private final jsonAdapterFactory:Lc8/cld;

.field private final lenient:Z

.field private final prettyPrinting:Z

.field private final serializeNulls:Z

.field private final typeTokenCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lc8/omd",
            "<*>;",
            "Lc8/Vjd",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lc8/omd;->get(Ljava/lang/Class;)Lc8/omd;

    move-result-object v0

    sput-object v0, Lc8/Gjd;->NULL_KEY_SURROGATE:Lc8/omd;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 174
    sget-object v1, Lc8/ukd;->DEFAULT:Lc8/ukd;

    sget-object v2, Lcom/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/google/gson/FieldNamingPolicy;

    .line 175
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v11, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy;

    .line 178
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    move v10, v4

    .line 174
    invoke-direct/range {v0 .. v12}, Lc8/Gjd;-><init>(Lc8/ukd;Lc8/zjd;Ljava/util/Map;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List;)V

    .line 179
    return-void
.end method

.method constructor <init>(Lc8/ukd;Lc8/zjd;Ljava/util/Map;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List;)V
    .locals 6
    .param p1, "excluder"    # Lc8/ukd;
    .param p2, "fieldNamingStrategy"    # Lc8/zjd;
    .param p4, "serializeNulls"    # Z
    .param p5, "complexMapKeySerialization"    # Z
    .param p6, "generateNonExecutableGson"    # Z
    .param p7, "htmlSafe"    # Z
    .param p8, "prettyPrinting"    # Z
    .param p9, "lenient"    # Z
    .param p10, "serializeSpecialFloatingPointValues"    # Z
    .param p11, "longSerializationPolicy"    # Lcom/google/gson/LongSerializationPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/ukd;",
            "Lc8/zjd;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lc8/Ijd",
            "<*>;>;ZZZZZZZ",
            "Lcom/google/gson/LongSerializationPolicy;",
            "Ljava/util/List",
            "<",
            "Lc8/Wjd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p3, "instanceCreators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<*>;>;"
    .local p12, "typeAdapterFactories":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v3, Ljava/lang/ThreadLocal;

    invoke-direct {v3}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v3, p0, Lc8/Gjd;->calls:Ljava/lang/ThreadLocal;

    .line 125
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lc8/Gjd;->typeTokenCache:Ljava/util/Map;

    .line 187
    new-instance v3, Lc8/skd;

    invoke-direct {v3, p3}, Lc8/skd;-><init>(Ljava/util/Map;)V

    iput-object v3, p0, Lc8/Gjd;->constructorConstructor:Lc8/skd;

    .line 188
    iput-object p1, p0, Lc8/Gjd;->excluder:Lc8/ukd;

    .line 189
    iput-object p2, p0, Lc8/Gjd;->fieldNamingStrategy:Lc8/zjd;

    .line 190
    iput-boolean p4, p0, Lc8/Gjd;->serializeNulls:Z

    .line 191
    iput-boolean p6, p0, Lc8/Gjd;->generateNonExecutableJson:Z

    .line 192
    iput-boolean p7, p0, Lc8/Gjd;->htmlSafe:Z

    .line 193
    iput-boolean p8, p0, Lc8/Gjd;->prettyPrinting:Z

    .line 194
    iput-boolean p9, p0, Lc8/Gjd;->lenient:Z

    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v1, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;"
    sget-object v3, Lc8/mmd;->JSON_ELEMENT_FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v3, Lc8/lld;->FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    move-object/from16 v0, p12

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    sget-object v3, Lc8/mmd;->STRING_FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v3, Lc8/mmd;->INTEGER_FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v3, Lc8/mmd;->BOOLEAN_FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v3, Lc8/mmd;->BYTE_FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v3, Lc8/mmd;->SHORT_FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-static/range {p11 .. p11}, Lc8/Gjd;->longAdapter(Lcom/google/gson/LongSerializationPolicy;)Lc8/Vjd;

    move-result-object v2

    .line 215
    .local v2, "longAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;"
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Long;

    invoke-static {v3, v4, v2}, Lc8/mmd;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lc8/Vjd;)Lc8/Wjd;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Double;

    .line 217
    move/from16 v0, p10

    invoke-direct {p0, v0}, Lc8/Gjd;->doubleAdapter(Z)Lc8/Vjd;

    move-result-object v5

    .line 216
    invoke-static {v3, v4, v5}, Lc8/mmd;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lc8/Vjd;)Lc8/Wjd;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Float;

    .line 219
    move/from16 v0, p10

    invoke-direct {p0, v0}, Lc8/Gjd;->floatAdapter(Z)Lc8/Vjd;

    move-result-object v5

    .line 218
    invoke-static {v3, v4, v5}, Lc8/mmd;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lc8/Vjd;)Lc8/Wjd;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v3, Lc8/mmd;->NUMBER_FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v3, Lc8/mmd;->ATOMIC_INTEGER_FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v3, Lc8/mmd;->ATOMIC_BOOLEAN_FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v2}, Lc8/Gjd;->atomicLongAdapter(Lc8/Vjd;)Lc8/Vjd;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/mmd;->newFactory(Ljava/lang/Class;Lc8/Vjd;)Lc8/Wjd;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    const-class v3, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v2}, Lc8/Gjd;->atomicLongArrayAdapter(Lc8/Vjd;)Lc8/Vjd;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/mmd;->newFactory(Ljava/lang/Class;Lc8/Vjd;)Lc8/Wjd;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v3, Lc8/mmd;->ATOMIC_INTEGER_ARRAY_FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v3, Lc8/mmd;->CHARACTER_FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v3, Lc8/mmd;->STRING_BUILDER_FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v3, Lc8/mmd;->STRING_BUFFER_FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    const-class v3, Ljava/math/BigDecimal;

    sget-object v4, Lc8/mmd;->BIG_DECIMAL:Lc8/Vjd;

    invoke-static {v3, v4}, Lc8/mmd;->newFactory(Ljava/lang/Class;Lc8/Vjd;)Lc8/Wjd;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    const-class v3, Ljava/math/BigInteger;

    sget-object v4, Lc8/mmd;->BIG_INTEGER:Lc8/Vjd;

    invoke-static {v3, v4}, Lc8/mmd;->newFactory(Ljava/lang/Class;Lc8/Vjd;)Lc8/Wjd;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v3, Lc8/mmd;->URL_FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v3, Lc8/mmd;->URI_FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v3, Lc8/mmd;->UUID_FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v3, Lc8/mmd;->CURRENCY_FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v3, Lc8/mmd;->LOCALE_FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v3, Lc8/mmd;->INET_ADDRESS_FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v3, Lc8/mmd;->BIT_SET_FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v3, Lc8/bld;->FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v3, Lc8/mmd;->CALENDAR_FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v3, Lc8/tld;->FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v3, Lc8/rld;->FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v3, Lc8/mmd;->TIMESTAMP_FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v3, Lc8/Xkd;->FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v3, Lc8/mmd;->CLASS_FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v3, Lc8/Zkd;

    iget-object v4, p0, Lc8/Gjd;->constructorConstructor:Lc8/skd;

    invoke-direct {v3, v4}, Lc8/Zkd;-><init>(Lc8/skd;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v3, Lc8/ild;

    iget-object v4, p0, Lc8/Gjd;->constructorConstructor:Lc8/skd;

    invoke-direct {v3, v4, p5}, Lc8/ild;-><init>(Lc8/skd;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v3, Lc8/cld;

    iget-object v4, p0, Lc8/Gjd;->constructorConstructor:Lc8/skd;

    invoke-direct {v3, v4}, Lc8/cld;-><init>(Lc8/skd;)V

    iput-object v3, p0, Lc8/Gjd;->jsonAdapterFactory:Lc8/cld;

    .line 250
    iget-object v3, p0, Lc8/Gjd;->jsonAdapterFactory:Lc8/cld;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v3, Lc8/mmd;->ENUM_FACTORY:Lc8/Wjd;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v3, Lc8/pld;

    iget-object v4, p0, Lc8/Gjd;->constructorConstructor:Lc8/skd;

    iget-object v5, p0, Lc8/Gjd;->jsonAdapterFactory:Lc8/cld;

    invoke-direct {v3, v4, p2, p1, v5}, Lc8/pld;-><init>(Lc8/skd;Lc8/zjd;Lc8/ukd;Lc8/cld;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lc8/Gjd;->factories:Ljava/util/List;

    .line 256
    return-void
.end method

.method private static assertFullConsumption(Ljava/lang/Object;Lc8/qmd;)V
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "reader"    # Lc8/qmd;

    .prologue
    .line 860
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lc8/qmd;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_0

    .line 861
    new-instance v1, Lcom/google/gson/JsonIOException;

    const-string/jumbo v2, "JSON document was not fully consumed."

    invoke-direct {v1, v2}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 863
    :catch_0
    move-exception v0

    .line 864
    .local v0, "e":Lcom/google/gson/stream/MalformedJsonException;
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 865
    .end local v0    # "e":Lcom/google/gson/stream/MalformedJsonException;
    :catch_1
    move-exception v0

    .line 866
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 867
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method private static atomicLongAdapter(Lc8/Vjd;)Lc8/Vjd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vjd",
            "<",
            "Ljava/lang/Number;",
            ">;)",
            "Lc8/Vjd",
            "<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "longAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;"
    new-instance v0, Lc8/Djd;

    invoke-direct {v0, p0}, Lc8/Djd;-><init>(Lc8/Vjd;)V

    .line 361
    invoke-virtual {v0}, Lc8/Djd;->nullSafe()Lc8/Vjd;

    move-result-object v0

    .line 353
    return-object v0
.end method

.method private static atomicLongArrayAdapter(Lc8/Vjd;)Lc8/Vjd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vjd",
            "<",
            "Ljava/lang/Number;",
            ">;)",
            "Lc8/Vjd",
            "<",
            "Ljava/util/concurrent/atomic/AtomicLongArray;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "longAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;"
    new-instance v0, Lc8/Ejd;

    invoke-direct {v0, p0}, Lc8/Ejd;-><init>(Lc8/Vjd;)V

    .line 388
    invoke-virtual {v0}, Lc8/Ejd;->nullSafe()Lc8/Vjd;

    move-result-object v0

    .line 365
    return-object v0
.end method

.method static checkValidFloatingPoint(D)V
    .locals 4
    .param p0, "value"    # D

    .prologue
    .line 323
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_1
    return-void
.end method

.method private doubleAdapter(Z)Lc8/Vjd;
    .locals 1
    .param p1, "serializeSpecialFloatingPointValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lc8/Vjd",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    if-eqz p1, :cond_0

    .line 276
    sget-object v0, Lc8/mmd;->DOUBLE:Lc8/Vjd;

    .line 278
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/Ajd;

    invoke-direct {v0, p0}, Lc8/Ajd;-><init>(Lc8/Gjd;)V

    goto :goto_0
.end method

.method private floatAdapter(Z)Lc8/Vjd;
    .locals 1
    .param p1, "serializeSpecialFloatingPointValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lc8/Vjd",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    if-eqz p1, :cond_0

    .line 300
    sget-object v0, Lc8/mmd;->FLOAT:Lc8/Vjd;

    .line 302
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/Bjd;

    invoke-direct {v0, p0}, Lc8/Bjd;-><init>(Lc8/Gjd;)V

    goto :goto_0
.end method

.method private static longAdapter(Lcom/google/gson/LongSerializationPolicy;)Lc8/Vjd;
    .locals 1
    .param p0, "longSerializationPolicy"    # Lcom/google/gson/LongSerializationPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/LongSerializationPolicy;",
            ")",
            "Lc8/Vjd",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    sget-object v0, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy;

    if-ne p0, v0, :cond_0

    .line 332
    sget-object v0, Lc8/mmd;->LONG:Lc8/Vjd;

    .line 334
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/Cjd;

    invoke-direct {v0}, Lc8/Cjd;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public excluder()Lc8/ukd;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lc8/Gjd;->excluder:Lc8/ukd;

    return-object v0
.end method

.method public fieldNamingStrategy()Lc8/zjd;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lc8/Gjd;->fieldNamingStrategy:Lc8/zjd;

    return-object v0
.end method

.method public fromJson(Lc8/Mjd;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "json"    # Lc8/Mjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mjd;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 926
    .local p2, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/Gjd;->fromJson(Lc8/Mjd;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 927
    .local v0, "object":Ljava/lang/Object;
    invoke-static {p2}, Lc8/Nkd;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public fromJson(Lc8/Mjd;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .param p1, "json"    # Lc8/Mjd;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mjd;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 950
    if-nez p1, :cond_0

    .line 951
    const/4 v0, 0x0

    .line 953
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/eld;

    invoke-direct {v0, p1}, Lc8/eld;-><init>(Lc8/Mjd;)V

    invoke-virtual {p0, v0, p2}, Lc8/Gjd;->fromJson(Lc8/qmd;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public fromJson(Lc8/qmd;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 7
    .param p1, "reader"    # Lc8/qmd;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/qmd;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;,
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 880
    const/4 v1, 0x1

    .line 881
    .local v1, "isEmpty":Z
    invoke-virtual {p1}, Lc8/qmd;->isLenient()Z

    move-result v3

    .line 882
    .local v3, "oldLenient":Z
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lc8/qmd;->setLenient(Z)V

    .line 884
    :try_start_0
    invoke-virtual {p1}, Lc8/qmd;->peek()Lcom/google/gson/stream/JsonToken;

    .line 885
    const/4 v1, 0x0

    .line 886
    invoke-static {p2}, Lc8/omd;->get(Ljava/lang/reflect/Type;)Lc8/omd;

    move-result-object v5

    .line 887
    .local v5, "typeToken":Lc8/omd;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p0, v5}, Lc8/Gjd;->getAdapter(Lc8/omd;)Lc8/Vjd;

    move-result-object v4

    .line 888
    .local v4, "typeAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TT;>;"
    invoke-virtual {v4, p1}, Lc8/Vjd;->read(Lc8/qmd;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 905
    .local v2, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, v3}, Lc8/qmd;->setLenient(Z)V

    .line 896
    .end local v2    # "object":Ljava/lang/Object;, "TT;"
    .end local v4    # "typeAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TT;>;"
    .end local v5    # "typeToken":Lc8/omd;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    :goto_0
    return-object v2

    .line 890
    :catch_0
    move-exception v0

    .line 895
    .local v0, "e":Ljava/io/EOFException;
    if-eqz v1, :cond_0

    .line 896
    const/4 v2, 0x0

    .line 905
    invoke-virtual {p1, v3}, Lc8/qmd;->setLenient(Z)V

    goto :goto_0

    .line 898
    :cond_0
    :try_start_1
    new-instance v6, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v6, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 905
    .end local v0    # "e":Ljava/io/EOFException;
    :catchall_0
    move-exception v6

    invoke-virtual {p1, v3}, Lc8/qmd;->setLenient(Z)V

    throw v6

    .line 899
    :catch_1
    move-exception v0

    .line 900
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    new-instance v6, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v6, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 901
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 903
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v6, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "json"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;,
            Lcom/google/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 825
    .local p2, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lc8/Gjd;->newJsonReader(Ljava/io/Reader;)Lc8/qmd;

    move-result-object v0

    .line 826
    .local v0, "jsonReader":Lc8/qmd;
    invoke-virtual {p0, v0, p2}, Lc8/Gjd;->fromJson(Lc8/qmd;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 827
    .local v1, "object":Ljava/lang/Object;
    invoke-static {v1, v0}, Lc8/Gjd;->assertFullConsumption(Ljava/lang/Object;Lc8/qmd;)V

    .line 828
    invoke-static {p2}, Lc8/Nkd;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .param p1, "json"    # Ljava/io/Reader;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;,
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 852
    invoke-virtual {p0, p1}, Lc8/Gjd;->newJsonReader(Ljava/io/Reader;)Lc8/qmd;

    move-result-object v0

    .line 853
    .local v0, "jsonReader":Lc8/qmd;
    invoke-virtual {p0, v0, p2}, Lc8/Gjd;->fromJson(Lc8/qmd;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 854
    .local v1, "object":Ljava/lang/Object;, "TT;"
    invoke-static {v1, v0}, Lc8/Gjd;->assertFullConsumption(Ljava/lang/Object;Lc8/qmd;)V

    .line 855
    return-object v1
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 774
    .local p2, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/Gjd;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 775
    .local v0, "object":Ljava/lang/Object;
    invoke-static {p2}, Lc8/Nkd;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 798
    if-nez p1, :cond_0

    .line 799
    const/4 v1, 0x0

    .line 803
    :goto_0
    return-object v1

    .line 801
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 802
    .local v0, "reader":Ljava/io/StringReader;
    invoke-virtual {p0, v0, p2}, Lc8/Gjd;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 803
    .local v1, "target":Ljava/lang/Object;, "TT;"
    goto :goto_0
.end method

.method public getAdapter(Lc8/omd;)Lc8/Vjd;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/omd",
            "<TT;>;)",
            "Lc8/Vjd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 399
    .local p1, "type":Lc8/omd;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    iget-object v8, p0, Lc8/Gjd;->typeTokenCache:Ljava/util/Map;

    if-nez p1, :cond_0

    sget-object v7, Lc8/Gjd;->NULL_KEY_SURROGATE:Lc8/omd;

    :goto_0
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Vjd;

    .line 400
    .local v0, "cached":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<*>;"
    if-eqz v0, :cond_1

    .line 427
    .end local v0    # "cached":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<*>;"
    :goto_1
    return-object v0

    :cond_0
    move-object v7, p1

    .line 399
    goto :goto_0

    .line 404
    .restart local v0    # "cached":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<*>;"
    :cond_1
    iget-object v7, p0, Lc8/Gjd;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 405
    .local v6, "threadCalls":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gson/reflect/TypeToken<*>;Lcom/google/gson/Gson$FutureTypeAdapter<*>;>;"
    const/4 v5, 0x0

    .line 406
    .local v5, "requiresThreadLocalCleanup":Z
    if-nez v6, :cond_2

    .line 407
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "threadCalls":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gson/reflect/TypeToken<*>;Lcom/google/gson/Gson$FutureTypeAdapter<*>;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 408
    .restart local v6    # "threadCalls":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gson/reflect/TypeToken<*>;Lcom/google/gson/Gson$FutureTypeAdapter<*>;>;"
    iget-object v7, p0, Lc8/Gjd;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 409
    const/4 v5, 0x1

    .line 413
    :cond_2
    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/Fjd;

    .line 414
    .local v4, "ongoingCall":Lc8/Fjd;, "Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    if-eqz v4, :cond_3

    move-object v0, v4

    .line 415
    goto :goto_1

    .line 419
    :cond_3
    :try_start_0
    new-instance v1, Lc8/Fjd;

    invoke-direct {v1}, Lc8/Fjd;-><init>()V

    .line 420
    .local v1, "call":Lc8/Fjd;, "Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    invoke-interface {v6, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v7, p0, Lc8/Gjd;->factories:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Wjd;

    .line 423
    .local v3, "factory":Lc8/Wjd;
    invoke-interface {v3, p0, p1}, Lc8/Wjd;->create(Lc8/Gjd;Lc8/omd;)Lc8/Vjd;

    move-result-object v2

    .line 424
    .local v2, "candidate":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TT;>;"
    if-eqz v2, :cond_4

    .line 425
    invoke-virtual {v1, v2}, Lc8/Fjd;->setDelegate(Lc8/Vjd;)V

    .line 426
    iget-object v7, p0, Lc8/Gjd;->typeTokenCache:Ljava/util/Map;

    invoke-interface {v7, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    if-eqz v5, :cond_5

    .line 435
    iget-object v7, p0, Lc8/Gjd;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->remove()V

    :cond_5
    move-object v0, v2

    .line 427
    goto :goto_1

    .line 430
    .end local v2    # "candidate":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TT;>;"
    .end local v3    # "factory":Lc8/Wjd;
    :cond_6
    :try_start_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "GSON cannot handle "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    .end local v1    # "call":Lc8/Fjd;, "Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    :catchall_0
    move-exception v7

    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    if-eqz v5, :cond_7

    .line 435
    iget-object v8, p0, Lc8/Gjd;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->remove()V

    :cond_7
    throw v7
.end method

.method public getAdapter(Ljava/lang/Class;)Lc8/Vjd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lc8/Vjd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 521
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lc8/omd;->get(Ljava/lang/Class;)Lc8/omd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Gjd;->getAdapter(Lc8/omd;)Lc8/Vjd;

    move-result-object v0

    return-object v0
.end method

.method public getDelegateAdapter(Lc8/Wjd;Lc8/omd;)Lc8/Vjd;
    .locals 6
    .param p1, "skipPast"    # Lc8/Wjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Wjd;",
            "Lc8/omd",
            "<TT;>;)",
            "Lc8/Vjd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 493
    .local p2, "type":Lc8/omd;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    iget-object v3, p0, Lc8/Gjd;->factories:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 494
    iget-object p1, p0, Lc8/Gjd;->jsonAdapterFactory:Lc8/cld;

    .line 497
    :cond_0
    const/4 v2, 0x0

    .line 498
    .local v2, "skipPastFound":Z
    iget-object v3, p0, Lc8/Gjd;->factories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Wjd;

    .line 499
    .local v1, "factory":Lc8/Wjd;
    if-nez v2, :cond_2

    .line 500
    if-ne v1, p1, :cond_1

    .line 501
    const/4 v2, 0x1

    goto :goto_0

    .line 506
    :cond_2
    invoke-interface {v1, p0, p2}, Lc8/Wjd;->create(Lc8/Gjd;Lc8/omd;)Lc8/Vjd;

    move-result-object v0

    .line 507
    .local v0, "candidate":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TT;>;"
    if-eqz v0, :cond_1

    .line 508
    return-object v0

    .line 511
    .end local v0    # "candidate":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TT;>;"
    .end local v1    # "factory":Lc8/Wjd;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GSON cannot serialize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public htmlSafe()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lc8/Gjd;->htmlSafe:Z

    return v0
.end method

.method public newJsonReader(Ljava/io/Reader;)Lc8/qmd;
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 728
    new-instance v0, Lc8/qmd;

    invoke-direct {v0, p1}, Lc8/qmd;-><init>(Ljava/io/Reader;)V

    .line 729
    .local v0, "jsonReader":Lc8/qmd;
    iget-boolean v1, p0, Lc8/Gjd;->lenient:Z

    invoke-virtual {v0, v1}, Lc8/qmd;->setLenient(Z)V

    .line 730
    return-object v0
.end method

.method public newJsonWriter(Ljava/io/Writer;)Lc8/smd;
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 713
    iget-boolean v1, p0, Lc8/Gjd;->generateNonExecutableJson:Z

    if-eqz v1, :cond_0

    .line 714
    const-string/jumbo v1, ")]}\'\n"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 716
    :cond_0
    new-instance v0, Lc8/smd;

    invoke-direct {v0, p1}, Lc8/smd;-><init>(Ljava/io/Writer;)V

    .line 717
    .local v0, "jsonWriter":Lc8/smd;
    iget-boolean v1, p0, Lc8/Gjd;->prettyPrinting:Z

    if-eqz v1, :cond_1

    .line 718
    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Lc8/smd;->setIndent(Ljava/lang/String;)V

    .line 720
    :cond_1
    iget-boolean v1, p0, Lc8/Gjd;->serializeNulls:Z

    invoke-virtual {v0, v1}, Lc8/smd;->setSerializeNulls(Z)V

    .line 721
    return-object v0
.end method

.method public serializeNulls()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lc8/Gjd;->serializeNulls:Z

    return v0
.end method

.method public toJson(Lc8/Mjd;)Ljava/lang/String;
    .locals 2
    .param p1, "jsonElement"    # Lc8/Mjd;

    .prologue
    .line 687
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 688
    .local v0, "writer":Ljava/io/StringWriter;
    invoke-virtual {p0, p1, v0}, Lc8/Gjd;->toJson(Lc8/Mjd;Ljava/lang/Appendable;)V

    .line 689
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;

    .prologue
    .line 580
    if-nez p1, :cond_0

    .line 581
    sget-object v0, Lc8/Njd;->INSTANCE:Lc8/Njd;

    invoke-virtual {p0, v0}, Lc8/Gjd;->toJson(Lc8/Mjd;)Ljava/lang/String;

    move-result-object v0

    .line 583
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lc8/Gjd;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 2
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;

    .prologue
    .line 602
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 603
    .local v0, "writer":Ljava/io/StringWriter;
    invoke-virtual {p0, p1, p2, v0}, Lc8/Gjd;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 604
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toJson(Lc8/Mjd;Lc8/smd;)V
    .locals 5
    .param p1, "jsonElement"    # Lc8/Mjd;
    .param p2, "writer"    # Lc8/smd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 738
    invoke-virtual {p2}, Lc8/smd;->isLenient()Z

    move-result v2

    .line 739
    .local v2, "oldLenient":Z
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lc8/smd;->setLenient(Z)V

    .line 740
    invoke-virtual {p2}, Lc8/smd;->isHtmlSafe()Z

    move-result v1

    .line 741
    .local v1, "oldHtmlSafe":Z
    iget-boolean v4, p0, Lc8/Gjd;->htmlSafe:Z

    invoke-virtual {p2, v4}, Lc8/smd;->setHtmlSafe(Z)V

    .line 742
    invoke-virtual {p2}, Lc8/smd;->getSerializeNulls()Z

    move-result v3

    .line 743
    .local v3, "oldSerializeNulls":Z
    iget-boolean v4, p0, Lc8/Gjd;->serializeNulls:Z

    invoke-virtual {p2, v4}, Lc8/smd;->setSerializeNulls(Z)V

    .line 745
    :try_start_0
    invoke-static {p1, p2}, Lc8/Qkd;->write(Lc8/Mjd;Lc8/smd;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    invoke-virtual {p2, v2}, Lc8/smd;->setLenient(Z)V

    .line 750
    invoke-virtual {p2, v1}, Lc8/smd;->setHtmlSafe(Z)V

    .line 751
    invoke-virtual {p2, v3}, Lc8/smd;->setSerializeNulls(Z)V

    .line 752
    return-void

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Lcom/google/gson/JsonIOException;

    invoke-direct {v4, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 749
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-virtual {p2, v2}, Lc8/smd;->setLenient(Z)V

    .line 750
    invoke-virtual {p2, v1}, Lc8/smd;->setHtmlSafe(Z)V

    .line 751
    invoke-virtual {p2, v3}, Lc8/smd;->setSerializeNulls(Z)V

    throw v4
.end method

.method public toJson(Lc8/Mjd;Ljava/lang/Appendable;)V
    .locals 3
    .param p1, "jsonElement"    # Lc8/Mjd;
    .param p2, "writer"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 702
    :try_start_0
    invoke-static {p2}, Lc8/Qkd;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc8/Gjd;->newJsonWriter(Ljava/io/Writer;)Lc8/smd;

    move-result-object v1

    .line 703
    .local v1, "jsonWriter":Lc8/smd;
    invoke-virtual {p0, p1, v1}, Lc8/Gjd;->toJson(Lc8/Mjd;Lc8/smd;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    return-void

    .line 704
    .end local v1    # "jsonWriter":Lc8/smd;
    :catch_0
    move-exception v0

    .line 705
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/google/gson/JsonIOException;

    invoke-direct {v2, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "writer"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 622
    if-eqz p1, :cond_0

    .line 623
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lc8/Gjd;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 627
    :goto_0
    return-void

    .line 625
    :cond_0
    sget-object v0, Lc8/Njd;->INSTANCE:Lc8/Njd;

    invoke-virtual {p0, v0, p2}, Lc8/Gjd;->toJson(Lc8/Mjd;Ljava/lang/Appendable;)V

    goto :goto_0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lc8/smd;)V
    .locals 6
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "writer"    # Lc8/smd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 661
    invoke-static {p2}, Lc8/omd;->get(Ljava/lang/reflect/Type;)Lc8/omd;

    move-result-object v5

    invoke-virtual {p0, v5}, Lc8/Gjd;->getAdapter(Lc8/omd;)Lc8/Vjd;

    move-result-object v0

    .line 662
    .local v0, "adapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<*>;"
    invoke-virtual {p3}, Lc8/smd;->isLenient()Z

    move-result v3

    .line 663
    .local v3, "oldLenient":Z
    const/4 v5, 0x1

    invoke-virtual {p3, v5}, Lc8/smd;->setLenient(Z)V

    .line 664
    invoke-virtual {p3}, Lc8/smd;->isHtmlSafe()Z

    move-result v2

    .line 665
    .local v2, "oldHtmlSafe":Z
    iget-boolean v5, p0, Lc8/Gjd;->htmlSafe:Z

    invoke-virtual {p3, v5}, Lc8/smd;->setHtmlSafe(Z)V

    .line 666
    invoke-virtual {p3}, Lc8/smd;->getSerializeNulls()Z

    move-result v4

    .line 667
    .local v4, "oldSerializeNulls":Z
    iget-boolean v5, p0, Lc8/Gjd;->serializeNulls:Z

    invoke-virtual {p3, v5}, Lc8/smd;->setSerializeNulls(Z)V

    .line 669
    :try_start_0
    invoke-virtual {v0, p3, p1}, Lc8/Vjd;->write(Lc8/smd;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    invoke-virtual {p3, v3}, Lc8/smd;->setLenient(Z)V

    .line 674
    invoke-virtual {p3, v2}, Lc8/smd;->setHtmlSafe(Z)V

    .line 675
    invoke-virtual {p3, v4}, Lc8/smd;->setSerializeNulls(Z)V

    .line 676
    return-void

    .line 670
    :catch_0
    move-exception v1

    .line 671
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v5, Lcom/google/gson/JsonIOException;

    invoke-direct {v5, v1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 673
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-virtual {p3, v3}, Lc8/smd;->setLenient(Z)V

    .line 674
    invoke-virtual {p3, v2}, Lc8/smd;->setHtmlSafe(Z)V

    .line 675
    invoke-virtual {p3, v4}, Lc8/smd;->setSerializeNulls(Z)V

    throw v5
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 3
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "writer"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 647
    :try_start_0
    invoke-static {p3}, Lc8/Qkd;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc8/Gjd;->newJsonWriter(Ljava/io/Writer;)Lc8/smd;

    move-result-object v1

    .line 648
    .local v1, "jsonWriter":Lc8/smd;
    invoke-virtual {p0, p1, p2, v1}, Lc8/Gjd;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lc8/smd;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    return-void

    .line 649
    .end local v1    # "jsonWriter":Lc8/smd;
    :catch_0
    move-exception v0

    .line 650
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/google/gson/JsonIOException;

    invoke-direct {v2, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toJsonTree(Ljava/lang/Object;)Lc8/Mjd;
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;

    .prologue
    .line 538
    if-nez p1, :cond_0

    .line 539
    sget-object v0, Lc8/Njd;->INSTANCE:Lc8/Njd;

    .line 541
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lc8/Gjd;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lc8/Mjd;

    move-result-object v0

    goto :goto_0
.end method

.method public toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lc8/Mjd;
    .locals 2
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;

    .prologue
    .line 561
    new-instance v0, Lc8/gld;

    invoke-direct {v0}, Lc8/gld;-><init>()V

    .line 562
    .local v0, "writer":Lc8/gld;
    invoke-virtual {p0, p1, p2, v0}, Lc8/Gjd;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lc8/smd;)V

    .line 563
    invoke-virtual {v0}, Lc8/gld;->get()Lc8/Mjd;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lc8/Gjd;->serializeNulls:Z

    .line 984
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",factories:"

    .line 985
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Gjd;->factories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",instanceCreators:"

    .line 986
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Gjd;->constructorConstructor:Lc8/skd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    .line 987
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 988
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 983
    return-object v0
.end method
