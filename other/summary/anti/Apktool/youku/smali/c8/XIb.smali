.class public Lc8/XIb;
.super Ljava/lang/Object;
.source "ParserConfig.java"


# static fields
.field public static global:Lc8/XIb;


# instance fields
.field public defaultClassLoader:Ljava/lang/ClassLoader;

.field private final derializers:Lc8/PJb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/PJb",
            "<",
            "Lc8/hJb;",
            ">;"
        }
    .end annotation
.end field

.field public propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public final symbolTable:Lc8/aJb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lc8/XIb;

    invoke-direct {v0}, Lc8/XIb;-><init>()V

    sput-object v0, Lc8/XIb;->global:Lc8/XIb;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lc8/PJb;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lc8/PJb;-><init>(I)V

    iput-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    .line 75
    new-instance v0, Lc8/aJb;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Lc8/aJb;-><init>(I)V

    iput-object v0, p0, Lc8/XIb;->symbolTable:Lc8/aJb;

    .line 80
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Lc8/AJb;->instance:Lc8/AJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/util/Date;

    sget-object v2, Lc8/qJb;->instance:Lc8/qJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/util/Calendar;

    sget-object v2, Lc8/qJb;->instance:Lc8/qJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/util/Map;

    sget-object v2, Lc8/VIb;->instance:Lc8/VIb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/util/HashMap;

    sget-object v2, Lc8/VIb;->instance:Lc8/VIb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/util/LinkedHashMap;

    sget-object v2, Lc8/VIb;->instance:Lc8/VIb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/util/TreeMap;

    sget-object v2, Lc8/VIb;->instance:Lc8/VIb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    sget-object v2, Lc8/VIb;->instance:Lc8/VIb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lc8/VIb;->instance:Lc8/VIb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/util/Collection;

    sget-object v2, Lc8/pJb;->instance:Lc8/pJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/util/List;

    sget-object v2, Lc8/pJb;->instance:Lc8/pJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/util/ArrayList;

    sget-object v2, Lc8/pJb;->instance:Lc8/pJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/lang/Object;

    sget-object v2, Lc8/TIb;->instance:Lc8/TIb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lc8/LJb;->instance:Lc8/LJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v2, Lc8/AJb;->instance:Lc8/AJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/lang/Character;

    sget-object v2, Lc8/AJb;->instance:Lc8/AJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v2, Lc8/CJb;->instance:Lc8/CJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lc8/CJb;->instance:Lc8/CJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lc8/CJb;->instance:Lc8/CJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Lc8/CJb;->instance:Lc8/CJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lc8/uJb;->instance:Lc8/uJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lc8/uJb;->instance:Lc8/uJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v2, Lc8/uJb;->instance:Lc8/uJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lc8/uJb;->instance:Lc8/uJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lc8/nJb;->instance:Lc8/nJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lc8/nJb;->instance:Lc8/nJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v2, Lc8/CJb;->instance:Lc8/CJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Lc8/CJb;->instance:Lc8/CJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v2, Lc8/CJb;->instance:Lc8/CJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Lc8/CJb;->instance:Lc8/CJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Lc8/oJb;->instance:Lc8/oJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lc8/oJb;->instance:Lc8/oJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/lang/Class;

    sget-object v2, Lc8/AJb;->instance:Lc8/AJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, [C

    sget-object v2, Lc8/kJb;->instance:Lc8/kJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, [Ljava/lang/Object;

    sget-object v2, Lc8/kJb;->instance:Lc8/kJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/util/UUID;

    sget-object v2, Lc8/AJb;->instance:Lc8/AJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/util/TimeZone;

    sget-object v2, Lc8/AJb;->instance:Lc8/AJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/util/Locale;

    sget-object v2, Lc8/AJb;->instance:Lc8/AJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/util/Currency;

    sget-object v2, Lc8/AJb;->instance:Lc8/AJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/net/URI;

    sget-object v2, Lc8/AJb;->instance:Lc8/AJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/net/URL;

    sget-object v2, Lc8/AJb;->instance:Lc8/AJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/util/regex/Pattern;

    sget-object v2, Lc8/AJb;->instance:Lc8/AJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/nio/charset/Charset;

    sget-object v2, Lc8/AJb;->instance:Lc8/AJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/lang/Number;

    sget-object v2, Lc8/CJb;->instance:Lc8/CJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/lang/StackTraceElement;

    sget-object v2, Lc8/AJb;->instance:Lc8/AJb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/io/Serializable;

    sget-object v2, Lc8/TIb;->instance:Lc8/TIb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/lang/Cloneable;

    sget-object v2, Lc8/TIb;->instance:Lc8/TIb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/lang/Comparable;

    sget-object v2, Lc8/TIb;->instance:Lc8/TIb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    const-class v1, Ljava/io/Closeable;

    sget-object v2, Lc8/TIb;->instance:Lc8/TIb;

    invoke-virtual {v0, v1, v2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method public static getGlobalInstance()Lc8/XIb;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lc8/XIb;->global:Lc8/XIb;

    return-object v0
.end method

.method public static isPrimitive(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Character;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Double;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/math/BigInteger;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/math/BigDecimal;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/String;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/util/Date;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/sql/Date;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/sql/Time;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/sql/Timestamp;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createFieldDeserializer(Lc8/XIb;Ljava/lang/Class;Lc8/NJb;)Lc8/fJb;
    .locals 2
    .param p1, "mapping"    # Lc8/XIb;
    .param p3, "fieldInfo"    # Lc8/NJb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/XIb;",
            "Ljava/lang/Class",
            "<*>;",
            "Lc8/NJb;",
            ")",
            "Lc8/fJb;"
        }
    .end annotation

    .prologue
    .line 254
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p3, Lc8/NJb;->fieldClass:Ljava/lang/Class;

    .line 256
    .local v0, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/List;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/util/ArrayList;

    if-eq v0, v1, :cond_0

    .line 258
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 261
    :cond_0
    new-instance v1, Lc8/UIb;

    invoke-direct {v1, p1, p2, p3}, Lc8/UIb;-><init>(Lc8/XIb;Ljava/lang/Class;Lc8/NJb;)V

    .line 264
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lc8/LIb;

    invoke-direct {v1, p1, p2, p3}, Lc8/LIb;-><init>(Lc8/XIb;Ljava/lang/Class;Lc8/NJb;)V

    goto :goto_0
.end method

.method public getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lc8/hJb;
    .locals 5
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lc8/hJb;"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lc8/XIb;->derializers:Lc8/PJb;

    invoke-virtual {v4, p2}, Lc8/PJb;->get(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/hJb;

    .line 161
    .local v2, "deserializer":Lc8/hJb;
    if-eqz v2, :cond_0

    move-object v4, v2

    .line 222
    :goto_0
    return-object v4

    .line 165
    :cond_0
    if-nez p2, :cond_1

    .line 166
    move-object p2, p1

    .line 169
    :cond_1
    iget-object v4, p0, Lc8/XIb;->derializers:Lc8/PJb;

    invoke-virtual {v4, p2}, Lc8/PJb;->get(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "deserializer":Lc8/hJb;
    check-cast v2, Lc8/hJb;

    .line 170
    .restart local v2    # "deserializer":Lc8/hJb;
    if-eqz v2, :cond_2

    move-object v4, v2

    .line 171
    goto :goto_0

    .line 174
    :cond_2
    invoke-static {p1}, Lc8/XIb;->isPrimitive(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 175
    const-class v4, Lc8/KIb;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lc8/KIb;

    .line 176
    .local v0, "annotation":Lc8/KIb;
    if-eqz v0, :cond_3

    .line 177
    invoke-interface {v0}, Lc8/KIb;->mappingTo()Ljava/lang/Class;

    move-result-object v3

    .line 178
    .local v3, "mappingTo":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/lang/Void;

    if-eq v3, v4, :cond_3

    .line 179
    invoke-virtual {p0, v3, v3}, Lc8/XIb;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lc8/hJb;

    move-result-object v4

    goto :goto_0

    .line 184
    .end local v0    # "annotation":Lc8/KIb;
    .end local v3    # "mappingTo":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    instance-of v4, p2, Ljava/lang/reflect/WildcardType;

    if-nez v4, :cond_4

    instance-of v4, p2, Ljava/lang/reflect/TypeVariable;

    if-nez v4, :cond_4

    instance-of v4, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_5

    .line 185
    :cond_4
    iget-object v4, p0, Lc8/XIb;->derializers:Lc8/PJb;

    invoke-virtual {v4, p1}, Lc8/PJb;->get(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "deserializer":Lc8/hJb;
    check-cast v2, Lc8/hJb;

    .line 188
    .restart local v2    # "deserializer":Lc8/hJb;
    :cond_5
    if-eqz v2, :cond_6

    move-object v4, v2

    .line 189
    goto :goto_0

    .line 192
    :cond_6
    iget-object v4, p0, Lc8/XIb;->derializers:Lc8/PJb;

    invoke-virtual {v4, p2}, Lc8/PJb;->get(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "deserializer":Lc8/hJb;
    check-cast v2, Lc8/hJb;

    .line 193
    .restart local v2    # "deserializer":Lc8/hJb;
    if-eqz v2, :cond_7

    move-object v4, v2

    .line 194
    goto :goto_0

    .line 197
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 198
    new-instance v2, Lc8/OIb;

    .end local v2    # "deserializer":Lc8/hJb;
    invoke-direct {v2, p1}, Lc8/OIb;-><init>(Ljava/lang/Class;)V

    .line 220
    .restart local v2    # "deserializer":Lc8/hJb;
    :goto_1
    invoke-virtual {p0, p2, v2}, Lc8/XIb;->putDeserializer(Ljava/lang/reflect/Type;Lc8/hJb;)V

    move-object v4, v2

    .line 222
    goto :goto_0

    .line 199
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 200
    sget-object v2, Lc8/kJb;->instance:Lc8/kJb;

    goto :goto_1

    .line 201
    :cond_9
    const-class v4, Ljava/util/Set;

    if-eq p1, v4, :cond_a

    const-class v4, Ljava/util/HashSet;

    if-eq p1, v4, :cond_a

    const-class v4, Ljava/util/Collection;

    if-eq p1, v4, :cond_a

    const-class v4, Ljava/util/List;

    if-eq p1, v4, :cond_a

    const-class v4, Ljava/util/ArrayList;

    if-ne p1, v4, :cond_b

    .line 203
    :cond_a
    sget-object v2, Lc8/pJb;->instance:Lc8/pJb;

    goto :goto_1

    .line 204
    :cond_b
    const-class v4, Ljava/util/Collection;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 205
    sget-object v2, Lc8/pJb;->instance:Lc8/pJb;

    goto :goto_1

    .line 206
    :cond_c
    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 207
    sget-object v2, Lc8/VIb;->instance:Lc8/VIb;

    goto :goto_1

    .line 208
    :cond_d
    const-class v4, Ljava/lang/Throwable;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 209
    new-instance v2, Lc8/bJb;

    .end local v2    # "deserializer":Lc8/hJb;
    invoke-direct {v2, p0, p1}, Lc8/bJb;-><init>(Lc8/XIb;Ljava/lang/Class;)V

    .restart local v2    # "deserializer":Lc8/hJb;
    goto :goto_1

    .line 211
    :cond_e
    invoke-static {p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "clazzName":Ljava/lang/String;
    const-string/jumbo v4, "android.net.Uri"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 214
    sget-object v2, Lc8/AJb;->instance:Lc8/AJb;

    goto :goto_1

    .line 216
    :cond_f
    new-instance v2, Lc8/RIb;

    .end local v2    # "deserializer":Lc8/hJb;
    invoke-direct {v2, p0, p1, p2}, Lc8/RIb;-><init>(Lc8/XIb;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .restart local v2    # "deserializer":Lc8/hJb;
    goto :goto_1
.end method

.method public getDeserializer(Ljava/lang/reflect/Type;)Lc8/hJb;
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 138
    iget-object v2, p0, Lc8/XIb;->derializers:Lc8/PJb;

    invoke-virtual {v2, p1}, Lc8/PJb;->get(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/hJb;

    .line 139
    .local v0, "derializer":Lc8/hJb;
    if-eqz v0, :cond_0

    .line 156
    .end local v0    # "derializer":Lc8/hJb;
    :goto_0
    return-object v0

    .line 143
    .restart local v0    # "derializer":Lc8/hJb;
    :cond_0
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 144
    check-cast v2, Ljava/lang/Class;

    invoke-virtual {p0, v2, p1}, Lc8/XIb;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lc8/hJb;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_1
    instance-of v2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3

    move-object v2, p1

    .line 148
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 149
    .local v1, "rawType":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_2

    .line 150
    check-cast v1, Ljava/lang/Class;

    .end local v1    # "rawType":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v1, p1}, Lc8/XIb;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lc8/hJb;

    move-result-object v0

    goto :goto_0

    .line 152
    .restart local v1    # "rawType":Ljava/lang/reflect/Type;
    :cond_2
    invoke-virtual {p0, v1}, Lc8/XIb;->getDeserializer(Ljava/lang/reflect/Type;)Lc8/hJb;

    move-result-object v0

    goto :goto_0

    .line 156
    .end local v1    # "rawType":Ljava/lang/reflect/Type;
    :cond_3
    sget-object v0, Lc8/TIb;->instance:Lc8/TIb;

    goto :goto_0
.end method

.method public putDeserializer(Ljava/lang/reflect/Type;Lc8/hJb;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "deserializer"    # Lc8/hJb;

    .prologue
    .line 268
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    invoke-virtual {v0, p1, p2}, Lc8/PJb;->put(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 269
    return-void
.end method

.method public registerIfNotExists(Ljava/lang/Class;)Lc8/hJb;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lc8/hJb;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    .line 226
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lc8/XIb;->registerIfNotExists(Ljava/lang/Class;IZZZZ)Lc8/hJb;

    move-result-object v0

    return-object v0
.end method

.method public registerIfNotExists(Ljava/lang/Class;IZZZZ)Lc8/hJb;
    .locals 11
    .param p2, "classModifiers"    # I
    .param p3, "fieldOnly"    # Z
    .param p4, "jsonTypeSupport"    # Z
    .param p5, "jsonFieldSupport"    # Z
    .param p6, "fieldGenericSupport"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;IZZZZ)",
            "Lc8/hJb;"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lc8/XIb;->derializers:Lc8/PJb;

    invoke-virtual {v0, p1}, Lc8/PJb;->get(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc8/hJb;

    .line 236
    .local v9, "deserializer":Lc8/hJb;
    if-eqz v9, :cond_0

    move-object v10, v9

    .line 250
    .end local v9    # "deserializer":Lc8/hJb;
    .local v10, "deserializer":Ljava/lang/Object;
    :goto_0
    return-object v10

    .line 240
    .end local v10    # "deserializer":Ljava/lang/Object;
    .restart local v9    # "deserializer":Lc8/hJb;
    :cond_0
    iget-object v7, p0, Lc8/XIb;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-object v0, p1

    move v1, p2

    move-object v2, p1

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v7}, Lc8/SIb;->build(Ljava/lang/Class;ILjava/lang/reflect/Type;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Lc8/SIb;

    move-result-object v8

    .line 247
    .local v8, "beanInfo":Lc8/SIb;
    new-instance v9, Lc8/RIb;

    .end local v9    # "deserializer":Lc8/hJb;
    invoke-direct {v9, p0, p1, p1, v8}, Lc8/RIb;-><init>(Lc8/XIb;Ljava/lang/Class;Ljava/lang/reflect/Type;Lc8/SIb;)V

    .line 248
    .restart local v9    # "deserializer":Lc8/hJb;
    invoke-virtual {p0, p1, v9}, Lc8/XIb;->putDeserializer(Ljava/lang/reflect/Type;Lc8/hJb;)V

    move-object v10, v9

    .line 250
    .restart local v10    # "deserializer":Ljava/lang/Object;
    goto :goto_0
.end method
