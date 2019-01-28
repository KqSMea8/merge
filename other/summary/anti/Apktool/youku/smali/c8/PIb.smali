.class public final Lc8/PIb;
.super Ljava/lang/Object;
.source "JSONLexer.java"


# static fields
.field public static final CA:[C

.field public static final END:I = 0x4

.field public static final EOI:C = '\u001a'

.field static final IA:[I

.field public static final NOT_MATCH:I = -0x1

.field public static final NOT_MATCH_NAME:I = -0x2

.field public static final UNKNOWN:I = 0x0

.field private static V6:Z = false

.field public static final VALUE:I = 0x3

.field protected static final digits:[I

.field public static final firstIdentifierFlags:[Z

.field public static final identifierFlags:[Z

.field private static final sbufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field


# instance fields
.field protected bp:I

.field public calendar:Ljava/util/Calendar;

.field protected ch:C

.field public disableCircularReferenceDetect:Z

.field protected eofPos:I

.field protected exp:Z

.field public features:I

.field protected fieldHash:J

.field protected hasSpecial:Z

.field protected isDouble:Z

.field protected final len:I

.field public locale:Ljava/util/Locale;

.field public matchStat:I

.field protected np:I

.field protected pos:I

.field protected sbuf:[C

.field protected sp:I

.field protected stringDefaultValue:Ljava/lang/String;

.field protected final text:Ljava/lang/String;

.field public timeZone:Ljava/util/TimeZone;

.field protected token:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v12, 0x41

    const/16 v11, 0x39

    const/4 v8, 0x0

    const/16 v10, 0x100

    const/4 v7, 0x1

    .line 36
    const/4 v5, -0x1

    .line 39
    .local v5, "version":I
    :try_start_0
    const-string/jumbo v6, "android.os.Build$VERSION"

    invoke-static {v6}, Lc8/PIb;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 40
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "SDK_INT"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 41
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 46
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :goto_0
    const/16 v6, 0x17

    if-lt v5, v6, :cond_0

    move v6, v7

    :goto_1
    sput-boolean v6, Lc8/PIb;->V6:Z

    .line 79
    new-instance v6, Ljava/lang/ThreadLocal;

    invoke-direct {v6}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v6, Lc8/PIb;->sbufLocal:Ljava/lang/ThreadLocal;

    .line 1942
    const/16 v6, 0x67

    new-array v6, v6, [I

    sput-object v6, Lc8/PIb;->digits:[I

    .line 1945
    const/16 v3, 0x30

    .local v3, "i":I
    :goto_2
    if-gt v3, v11, :cond_1

    .line 1946
    sget-object v6, Lc8/PIb;->digits:[I

    add-int/lit8 v9, v3, -0x30

    aput v9, v6, v3

    .line 1945
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v3    # "i":I
    :cond_0
    move v6, v8

    .line 46
    goto :goto_1

    .line 1949
    .restart local v3    # "i":I
    :cond_1
    const/16 v3, 0x61

    :goto_3
    const/16 v6, 0x66

    if-gt v3, v6, :cond_2

    .line 1950
    sget-object v6, Lc8/PIb;->digits:[I

    add-int/lit8 v9, v3, -0x61

    add-int/lit8 v9, v9, 0xa

    aput v9, v6, v3

    .line 1949
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1952
    :cond_2
    const/16 v3, 0x41

    :goto_4
    const/16 v6, 0x46

    if-gt v3, v6, :cond_3

    .line 1953
    sget-object v6, Lc8/PIb;->digits:[I

    add-int/lit8 v9, v3, -0x41

    add-int/lit8 v9, v9, 0xa

    aput v9, v6, v3

    .line 1952
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 4348
    :cond_3
    const-string/jumbo v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    sput-object v6, Lc8/PIb;->CA:[C

    .line 4349
    new-array v6, v10, [I

    .line 4351
    sput-object v6, Lc8/PIb;->IA:[I

    const/4 v9, -0x1

    invoke-static {v6, v9}, Ljava/util/Arrays;->fill([II)V

    .line 4352
    const/4 v3, 0x0

    sget-object v6, Lc8/PIb;->CA:[C

    array-length v4, v6

    .local v4, "iS":I
    :goto_5
    if-ge v3, v4, :cond_4

    .line 4353
    sget-object v6, Lc8/PIb;->IA:[I

    sget-object v9, Lc8/PIb;->CA:[C

    aget-char v9, v9, v3

    aput v3, v6, v9

    .line 4352
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 4355
    :cond_4
    sget-object v6, Lc8/PIb;->IA:[I

    const/16 v9, 0x3d

    aput v8, v6, v9

    .line 4414
    new-array v6, v10, [Z

    sput-object v6, Lc8/PIb;->firstIdentifierFlags:[Z

    .line 4416
    const/4 v0, 0x0

    .local v0, "c":C
    :goto_6
    sget-object v6, Lc8/PIb;->firstIdentifierFlags:[Z

    array-length v6, v6

    if-ge v0, v6, :cond_8

    .line 4417
    if-lt v0, v12, :cond_6

    const/16 v6, 0x5a

    if-gt v0, v6, :cond_6

    .line 4418
    sget-object v6, Lc8/PIb;->firstIdentifierFlags:[Z

    aput-boolean v7, v6, v0

    .line 4416
    :cond_5
    :goto_7
    add-int/lit8 v6, v0, 0x1

    int-to-char v0, v6

    goto :goto_6

    .line 4419
    :cond_6
    const/16 v6, 0x61

    if-lt v0, v6, :cond_7

    const/16 v6, 0x7a

    if-gt v0, v6, :cond_7

    .line 4420
    sget-object v6, Lc8/PIb;->firstIdentifierFlags:[Z

    aput-boolean v7, v6, v0

    goto :goto_7

    .line 4421
    :cond_7
    const/16 v6, 0x5f

    if-ne v0, v6, :cond_5

    .line 4422
    sget-object v6, Lc8/PIb;->firstIdentifierFlags:[Z

    aput-boolean v7, v6, v0

    goto :goto_7

    .line 4427
    :cond_8
    new-array v6, v10, [Z

    sput-object v6, Lc8/PIb;->identifierFlags:[Z

    .line 4430
    const/4 v0, 0x0

    :goto_8
    sget-object v6, Lc8/PIb;->identifierFlags:[Z

    array-length v6, v6

    if-ge v0, v6, :cond_d

    .line 4431
    if-lt v0, v12, :cond_a

    const/16 v6, 0x5a

    if-gt v0, v6, :cond_a

    .line 4432
    sget-object v6, Lc8/PIb;->identifierFlags:[Z

    aput-boolean v7, v6, v0

    .line 4430
    :cond_9
    :goto_9
    add-int/lit8 v6, v0, 0x1

    int-to-char v0, v6

    goto :goto_8

    .line 4433
    :cond_a
    const/16 v6, 0x61

    if-lt v0, v6, :cond_b

    const/16 v6, 0x7a

    if-gt v0, v6, :cond_b

    .line 4434
    sget-object v6, Lc8/PIb;->identifierFlags:[Z

    aput-boolean v7, v6, v0

    goto :goto_9

    .line 4435
    :cond_b
    const/16 v6, 0x5f

    if-ne v0, v6, :cond_c

    .line 4436
    sget-object v6, Lc8/PIb;->identifierFlags:[Z

    aput-boolean v7, v6, v0

    goto :goto_9

    .line 4437
    :cond_c
    const/16 v6, 0x30

    if-lt v0, v6, :cond_9

    if-gt v0, v11, :cond_9

    .line 4438
    sget-object v6, Lc8/PIb;->identifierFlags:[Z

    aput-boolean v7, v6, v0

    goto :goto_9

    .line 4441
    :cond_d
    return-void

    .end local v0    # "c":C
    .end local v3    # "i":I
    .end local v4    # "iS":I
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 90
    sget v0, Lc8/AIb;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lc8/PIb;-><init>(Ljava/lang/String;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "features"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget v1, Lc8/AIb;->DEFAULT_PARSER_FEATURE:I

    iput v1, p0, Lc8/PIb;->features:I

    .line 63
    iput-boolean v3, p0, Lc8/PIb;->exp:Z

    .line 64
    iput-boolean v3, p0, Lc8/PIb;->isDouble:Z

    .line 73
    sget-object v1, Lc8/AIb;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object v1, p0, Lc8/PIb;->timeZone:Ljava/util/TimeZone;

    .line 74
    sget-object v1, Lc8/AIb;->defaultLocale:Ljava/util/Locale;

    iput-object v1, p0, Lc8/PIb;->locale:Ljava/util/Locale;

    .line 75
    iput-object v2, p0, Lc8/PIb;->calendar:Ljava/util/Calendar;

    .line 77
    iput v3, p0, Lc8/PIb;->matchStat:I

    .line 102
    sget-object v1, Lc8/PIb;->sbufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, p0, Lc8/PIb;->sbuf:[C

    .line 104
    iget-object v1, p0, Lc8/PIb;->sbuf:[C

    if-nez v1, :cond_0

    .line 105
    const/16 v1, 0x200

    new-array v1, v1, [C

    iput-object v1, p0, Lc8/PIb;->sbuf:[C

    .line 108
    :cond_0
    iput p2, p0, Lc8/PIb;->features:I

    .line 110
    iput-object p1, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lc8/PIb;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lc8/PIb;->len:I

    .line 112
    const/4 v1, -0x1

    iput v1, p0, Lc8/PIb;->bp:I

    .line 116
    iget v1, p0, Lc8/PIb;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lc8/PIb;->bp:I

    .line 117
    .local v0, "index":I
    iget v1, p0, Lc8/PIb;->len:I

    if-lt v0, v1, :cond_2

    const/16 v1, 0x1a

    .line 119
    :goto_0
    iput-char v1, p0, Lc8/PIb;->ch:C

    .line 121
    iget-char v1, p0, Lc8/PIb;->ch:C

    const v4, 0xfeff

    if-ne v1, v4, :cond_1

    .line 122
    invoke-virtual {p0}, Lc8/PIb;->next()C

    .line 125
    :cond_1
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_3

    const-string/jumbo v1, ""

    :goto_1
    iput-object v1, p0, Lc8/PIb;->stringDefaultValue:Ljava/lang/String;

    .line 128
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lc8/PIb;->disableCircularReferenceDetect:Z

    .line 129
    return-void

    .line 117
    :cond_2
    iget-object v1, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 119
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 125
    goto :goto_1

    :cond_4
    move v1, v3

    .line 128
    goto :goto_2
.end method

.method public constructor <init>([CI)V
    .locals 1
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I

    .prologue
    .line 94
    sget v0, Lc8/AIb;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lc8/PIb;-><init>([CII)V

    .line 95
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I
    .param p3, "features"    # I

    .prologue
    .line 98
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lc8/PIb;-><init>(Ljava/lang/String;I)V

    .line 99
    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static checkDate(CCCCCCII)Z
    .locals 5
    .param p0, "y0"    # C
    .param p1, "y1"    # C
    .param p2, "y2"    # C
    .param p3, "y3"    # C
    .param p4, "M0"    # C
    .param p5, "M1"    # C
    .param p6, "d0"    # I
    .param p7, "d1"    # I

    .prologue
    const/16 v4, 0x32

    const/16 v1, 0x39

    const/16 v3, 0x31

    const/16 v2, 0x30

    const/4 v0, 0x0

    .line 4303
    if-eq p0, v3, :cond_1

    if-eq p0, v4, :cond_1

    .line 4344
    :cond_0
    :goto_0
    return v0

    .line 4306
    :cond_1
    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 4309
    if-lt p2, v2, :cond_0

    if-gt p2, v1, :cond_0

    .line 4312
    if-lt p3, v2, :cond_0

    if-gt p3, v1, :cond_0

    .line 4316
    if-ne p4, v2, :cond_4

    .line 4317
    if-lt p5, v3, :cond_0

    if-gt p5, v1, :cond_0

    .line 4328
    :cond_2
    if-ne p6, v2, :cond_5

    .line 4329
    if-lt p7, v3, :cond_0

    if-gt p7, v1, :cond_0

    .line 4344
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 4320
    :cond_4
    if-ne p4, v3, :cond_0

    .line 4321
    if-eq p5, v2, :cond_2

    if-eq p5, v3, :cond_2

    if-eq p5, v4, :cond_2

    goto :goto_0

    .line 4332
    :cond_5
    if-eq p6, v3, :cond_6

    if-ne p6, v4, :cond_7

    .line 4333
    :cond_6
    if-lt p7, v2, :cond_0

    if-le p7, v1, :cond_3

    goto :goto_0

    .line 4336
    :cond_7
    const/16 v1, 0x33

    if-ne p6, v1, :cond_0

    .line 4337
    if-eq p7, v2, :cond_3

    if-eq p7, v3, :cond_3

    goto :goto_0
.end method

.method static checkTime(CCCCCC)Z
    .locals 6
    .param p0, "h0"    # C
    .param p1, "h1"    # C
    .param p2, "m0"    # C
    .param p3, "m1"    # C
    .param p4, "s0"    # C
    .param p5, "s1"    # C

    .prologue
    const/16 v5, 0x36

    const/16 v4, 0x35

    const/16 v3, 0x39

    const/16 v2, 0x30

    const/4 v0, 0x0

    .line 4249
    if-ne p0, v2, :cond_1

    .line 4250
    if-lt p1, v2, :cond_0

    if-le p1, v3, :cond_2

    .line 4289
    :cond_0
    :goto_0
    return v0

    .line 4253
    :cond_1
    const/16 v1, 0x31

    if-ne p0, v1, :cond_5

    .line 4254
    if-lt p1, v2, :cond_0

    if-gt p1, v3, :cond_0

    .line 4265
    :cond_2
    if-lt p2, v2, :cond_6

    if-gt p2, v4, :cond_6

    .line 4266
    if-lt p3, v2, :cond_0

    if-gt p3, v3, :cond_0

    .line 4277
    :cond_3
    if-lt p4, v2, :cond_7

    if-gt p4, v4, :cond_7

    .line 4278
    if-lt p5, v2, :cond_0

    if-gt p5, v3, :cond_0

    .line 4289
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 4257
    :cond_5
    const/16 v1, 0x32

    if-ne p0, v1, :cond_0

    .line 4258
    if-lt p1, v2, :cond_0

    const/16 v1, 0x34

    if-le p1, v1, :cond_2

    goto :goto_0

    .line 4269
    :cond_6
    if-ne p2, v5, :cond_0

    .line 4270
    if-eq p3, v2, :cond_3

    goto :goto_0

    .line 4281
    :cond_7
    if-ne p4, v5, :cond_0

    .line 4282
    if-eq p5, v2, :cond_4

    goto :goto_0
.end method

.method public static final decodeFast(Ljava/lang/String;II)[B
    .locals 20
    .param p0, "chars"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "charsLen"    # I

    .prologue
    .line 4360
    if-nez p2, :cond_0

    .line 4361
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v2, v0, [B

    .line 4411
    :goto_0
    return-object v2

    .line 4364
    :cond_0
    move/from16 v14, p1

    .local v14, "sIx":I
    add-int v17, p1, p2

    add-int/lit8 v7, v17, -0x1

    .line 4367
    .local v7, "eIx":I
    :goto_1
    if-ge v14, v7, :cond_1

    sget-object v17, Lc8/PIb;->IA:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    if-gez v17, :cond_1

    .line 4368
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 4371
    :cond_1
    :goto_2
    if-lez v7, :cond_2

    sget-object v17, Lc8/PIb;->IA:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    if-gez v17, :cond_2

    .line 4372
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 4375
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    add-int/lit8 v17, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/4 v12, 0x2

    .line 4376
    .local v12, "pad":I
    :goto_3
    sub-int v17, v7, v14

    add-int/lit8 v3, v17, 0x1

    .line 4377
    .local v3, "cCnt":I
    const/16 v17, 0x4c

    move/from16 v0, p2

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    const/16 v17, 0x4c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    div-int/lit8 v17, v3, 0x4e

    :goto_4
    shl-int/lit8 v16, v17, 0x1

    .line 4379
    .local v16, "sepCnt":I
    :goto_5
    sub-int v17, v3, v16

    mul-int/lit8 v17, v17, 0x6

    shr-int/lit8 v17, v17, 0x3

    sub-int v11, v17, v12

    .line 4380
    .local v11, "len":I
    new-array v2, v11, [B

    .line 4383
    .local v2, "bytes":[B
    const/4 v5, 0x0

    .line 4384
    .local v5, "d":I
    const/4 v4, 0x0

    .local v4, "cc":I
    div-int/lit8 v17, v11, 0x3

    mul-int/lit8 v8, v17, 0x3

    .local v8, "eLen":I
    move v6, v5

    .end local v5    # "d":I
    .local v6, "d":I
    move v15, v14

    .end local v14    # "sIx":I
    .local v15, "sIx":I
    :goto_6
    if-ge v6, v8, :cond_7

    .line 4386
    sget-object v17, Lc8/PIb;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    shl-int/lit8 v17, v17, 0x12

    sget-object v18, Lc8/PIb;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    shl-int/lit8 v18, v18, 0xc

    or-int v17, v17, v18

    sget-object v18, Lc8/PIb;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    shl-int/lit8 v18, v18, 0x6

    or-int v17, v17, v18

    sget-object v18, Lc8/PIb;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .line 4387
    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    or-int v9, v17, v18

    .line 4390
    .local v9, "i":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    shr-int/lit8 v17, v9, 0x10

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v6

    .line 4391
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "d":I
    .restart local v6    # "d":I
    shr-int/lit8 v17, v9, 0x8

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v5

    .line 4392
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    int-to-byte v0, v9

    move/from16 v17, v0

    aput-byte v17, v2, v6

    .line 4395
    if-lez v16, :cond_a

    add-int/lit8 v4, v4, 0x1

    const/16 v17, 0x13

    move/from16 v0, v17

    if-ne v4, v0, :cond_a

    .line 4396
    add-int/lit8 v14, v15, 0x2

    .line 4397
    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    const/4 v4, 0x0

    :goto_7
    move v6, v5

    .end local v5    # "d":I
    .restart local v6    # "d":I
    move v15, v14

    .line 4399
    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    goto :goto_6

    .line 4375
    .end local v2    # "bytes":[B
    .end local v3    # "cCnt":I
    .end local v4    # "cc":I
    .end local v6    # "d":I
    .end local v8    # "eLen":I
    .end local v9    # "i":I
    .end local v11    # "len":I
    .end local v12    # "pad":I
    .end local v15    # "sIx":I
    .end local v16    # "sepCnt":I
    .restart local v14    # "sIx":I
    :cond_3
    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 4377
    .restart local v3    # "cCnt":I
    .restart local v12    # "pad":I
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_4

    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 4401
    .end local v14    # "sIx":I
    .restart local v2    # "bytes":[B
    .restart local v4    # "cc":I
    .restart local v6    # "d":I
    .restart local v8    # "eLen":I
    .restart local v11    # "len":I
    .restart local v15    # "sIx":I
    .restart local v16    # "sepCnt":I
    :cond_7
    if-ge v6, v11, :cond_9

    .line 4403
    const/4 v9, 0x0

    .line 4404
    .restart local v9    # "i":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_8
    sub-int v17, v7, v12

    move/from16 v0, v17

    if-gt v15, v0, :cond_8

    .line 4405
    sget-object v17, Lc8/PIb;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    mul-int/lit8 v18, v10, 0x6

    rsub-int/lit8 v18, v18, 0x12

    shl-int v17, v17, v18

    or-int v9, v9, v17

    .line 4404
    add-int/lit8 v10, v10, 0x1

    move v15, v14

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    goto :goto_8

    .line 4407
    :cond_8
    const/16 v13, 0x10

    .local v13, "r":I
    :goto_9
    if-ge v6, v11, :cond_9

    .line 4408
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    shr-int v17, v9, v13

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v6

    .line 4407
    add-int/lit8 v13, v13, -0x8

    move v6, v5

    .end local v5    # "d":I
    .restart local v6    # "d":I
    goto :goto_9

    .end local v9    # "i":I
    .end local v10    # "j":I
    .end local v13    # "r":I
    :cond_9
    move v5, v6

    .end local v6    # "d":I
    .restart local v5    # "d":I
    move v14, v15

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    goto/16 :goto_0

    .end local v14    # "sIx":I
    .restart local v9    # "i":I
    .restart local v15    # "sIx":I
    :cond_a
    move v14, v15

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    goto :goto_7
.end method

.method private matchFieldHash(J)I
    .locals 13
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2057
    const/4 v8, 0x1

    .line 2058
    .local v8, "offset":I
    iget-char v3, p0, Lc8/PIb;->ch:C

    .line 2059
    .local v3, "fieldQuote":C
    iget v10, p0, Lc8/PIb;->bp:I

    add-int/lit8 v4, v10, 0x1

    .local v4, "fieldStartIndex":I
    move v9, v8

    .line 2061
    .end local v8    # "offset":I
    .local v9, "offset":I
    :goto_0
    const/16 v10, 0x22

    if-eq v3, v10, :cond_3

    .line 2063
    const/16 v10, 0x27

    if-eq v3, v10, :cond_3

    .line 2065
    const/16 v10, 0x20

    if-gt v3, v10, :cond_2

    const/16 v10, 0x20

    if-eq v3, v10, :cond_0

    const/16 v10, 0xa

    if-eq v3, v10, :cond_0

    const/16 v10, 0xd

    if-eq v3, v10, :cond_0

    const/16 v10, 0x9

    if-eq v3, v10, :cond_0

    const/16 v10, 0xc

    if-eq v3, v10, :cond_0

    const/16 v10, 0x8

    if-ne v3, v10, :cond_2

    .line 2072
    :cond_0
    iget v10, p0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v2, v10, v9

    .line 2073
    .local v2, "charIndex":I
    iget v10, p0, Lc8/PIb;->len:I

    if-lt v2, v10, :cond_1

    const/16 v3, 0x1a

    :goto_1
    move v9, v8

    .line 2075
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_0

    .line 2073
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :cond_1
    iget-object v10, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2075
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_1

    .line 2077
    .end local v2    # "charIndex":I
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_2
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lc8/PIb;->fieldHash:J

    .line 2078
    const/4 v10, -0x2

    iput v10, p0, Lc8/PIb;->matchStat:I

    .line 2079
    const/4 v8, 0x0

    move v10, v8

    move v8, v9

    .line 2129
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :goto_2
    return v10

    .line 2083
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_3
    const-wide/32 v6, -0x7ee3623b

    .line 2084
    .local v6, "hash":J
    move v5, v4

    .local v5, "i":I
    :goto_3
    iget v10, p0, Lc8/PIb;->len:I

    if-ge v5, v10, :cond_b

    .line 2085
    iget-object v10, p0, Lc8/PIb;->text:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2086
    .local v0, "ch":C
    if-ne v0, v3, :cond_4

    .line 2088
    sub-int v10, v5, v4

    add-int v8, v9, v10

    .line 2096
    .end local v0    # "ch":C
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :goto_4
    cmp-long v10, v6, p1

    if-eqz v10, :cond_5

    .line 2097
    iput-wide v6, p0, Lc8/PIb;->fieldHash:J

    .line 2098
    const/4 v10, -0x2

    iput v10, p0, Lc8/PIb;->matchStat:I

    .line 2099
    const/4 v10, 0x0

    goto :goto_2

    .line 2092
    .end local v8    # "offset":I
    .restart local v0    # "ch":C
    .restart local v9    # "offset":I
    :cond_4
    int-to-long v10, v0

    xor-long/2addr v6, v10

    .line 2093
    const-wide/32 v10, 0x1000193

    mul-long/2addr v6, v10

    .line 2084
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2102
    .end local v0    # "ch":C
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :cond_5
    iget v10, p0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v8, 0x1

    add-int v2, v10, v8

    .line 2103
    .restart local v2    # "charIndex":I
    iget v10, p0, Lc8/PIb;->len:I

    if-lt v2, v10, :cond_6

    const/16 v1, 0x1a

    .local v1, "chLocal":C
    :goto_5
    move v9, v8

    .line 2107
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :goto_6
    const/16 v10, 0x3a

    if-ne v1, v10, :cond_7

    .line 2108
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move v10, v8

    .line 2129
    goto :goto_2

    .line 2103
    .end local v1    # "chLocal":C
    :cond_6
    iget-object v10, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2105
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_5

    .line 2112
    .end local v8    # "offset":I
    .restart local v1    # "chLocal":C
    .restart local v9    # "offset":I
    :cond_7
    const/16 v10, 0x20

    if-gt v1, v10, :cond_a

    const/16 v10, 0x20

    if-eq v1, v10, :cond_8

    const/16 v10, 0xa

    if-eq v1, v10, :cond_8

    const/16 v10, 0xd

    if-eq v1, v10, :cond_8

    const/16 v10, 0x9

    if-eq v1, v10, :cond_8

    const/16 v10, 0xc

    if-eq v1, v10, :cond_8

    const/16 v10, 0x8

    if-ne v1, v10, :cond_a

    .line 2119
    :cond_8
    iget v10, p0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v2, v10, v9

    .line 2120
    iget v10, p0, Lc8/PIb;->len:I

    if-lt v2, v10, :cond_9

    const/16 v1, 0x1a

    :goto_7
    move v9, v8

    .line 2123
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_6

    .line 2120
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :cond_9
    iget-object v10, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2122
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_7

    .line 2126
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_a
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v11, "match feild error expect \':\'"

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .end local v1    # "chLocal":C
    .end local v2    # "charIndex":I
    :cond_b
    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_4
.end method

.method private static readString([CI)Ljava/lang/String;
    .locals 13
    .param p0, "chars"    # [C
    .param p1, "chars_len"    # I

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 825
    new-array v4, p1, [C

    .line 826
    .local v4, "sbuf":[C
    const/4 v2, 0x0

    .line 827
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .end local v2    # "len":I
    .local v3, "len":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 828
    aget-char v0, p0, v1

    .line 830
    .local v0, "ch":C
    const/16 v5, 0x5c

    if-eq v0, v5, :cond_0

    .line 831
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v0, v4, v3

    .line 827
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "len":I
    .restart local v3    # "len":I
    goto :goto_0

    .line 834
    :cond_0
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p0, v1

    .line 836
    sparse-switch v0, :sswitch_data_0

    .line 903
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v6, "unclosed.str.lit"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 838
    :sswitch_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v8, v4, v3

    goto :goto_1

    .line 841
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_1
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v9, v4, v3

    goto :goto_1

    .line 844
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_2
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v10, v4, v3

    goto :goto_1

    .line 847
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_3
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v11, v4, v3

    goto :goto_1

    .line 850
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_4
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v12, v4, v3

    goto :goto_1

    .line 853
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_5
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/4 v5, 0x5

    aput-char v5, v4, v3

    goto :goto_1

    .line 856
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_6
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/4 v5, 0x6

    aput-char v5, v4, v3

    goto :goto_1

    .line 859
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_7
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/4 v5, 0x7

    aput-char v5, v4, v3

    goto :goto_1

    .line 862
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_8
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x8

    aput-char v5, v4, v3

    goto :goto_1

    .line 865
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_9
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x9

    aput-char v5, v4, v3

    goto :goto_1

    .line 868
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_a
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0xa

    aput-char v5, v4, v3

    goto :goto_1

    .line 871
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_b
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0xb

    aput-char v5, v4, v3

    goto :goto_1

    .line 875
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_c
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0xc

    aput-char v5, v4, v3

    goto :goto_1

    .line 878
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_d
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0xd

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 881
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_e
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x22

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 884
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_f
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x27

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 887
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_10
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x2f

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 890
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_11
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x5c

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 893
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_12
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    sget-object v5, Lc8/PIb;->digits:[I

    add-int/lit8 v1, v1, 0x1

    aget-char v6, p0, v1

    aget v5, v5, v6

    shl-int/lit8 v5, v5, 0x4

    sget-object v6, Lc8/PIb;->digits:[I

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aget v6, v6, v7

    add-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 896
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_13
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    new-instance v5, Ljava/lang/String;

    new-array v6, v12, [C

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aput-char v7, v6, v8

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aput-char v7, v6, v9

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aput-char v7, v6, v10

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aput-char v7, v6, v11

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v5, v5

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 906
    .end local v0    # "ch":C
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4, v8, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v5

    .line 836
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method

.method private scanIdent()V
    .locals 2

    .prologue
    .line 1183
    iget v1, p0, Lc8/PIb;->bp:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lc8/PIb;->np:I

    .line 1184
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/PIb;->hasSpecial:Z

    .line 1187
    :cond_0
    iget v1, p0, Lc8/PIb;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/PIb;->sp:I

    .line 1189
    invoke-virtual {p0}, Lc8/PIb;->next()C

    .line 1190
    iget-char v1, p0, Lc8/PIb;->ch:C

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1194
    invoke-virtual {p0}, Lc8/PIb;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 1196
    .local v0, "ident":Ljava/lang/String;
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1197
    const/16 v1, 0x8

    iput v1, p0, Lc8/PIb;->token:I

    .line 1214
    :goto_0
    return-void

    .line 1198
    :cond_1
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1199
    const/4 v1, 0x6

    iput v1, p0, Lc8/PIb;->token:I

    goto :goto_0

    .line 1200
    :cond_2
    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1201
    const/4 v1, 0x7

    iput v1, p0, Lc8/PIb;->token:I

    goto :goto_0

    .line 1202
    :cond_3
    const-string/jumbo v1, "new"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1203
    const/16 v1, 0x9

    iput v1, p0, Lc8/PIb;->token:I

    goto :goto_0

    .line 1204
    :cond_4
    const-string/jumbo v1, "undefined"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1205
    const/16 v1, 0x17

    iput v1, p0, Lc8/PIb;->token:I

    goto :goto_0

    .line 1206
    :cond_5
    const-string/jumbo v1, "Set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1207
    const/16 v1, 0x15

    iput v1, p0, Lc8/PIb;->token:I

    goto :goto_0

    .line 1208
    :cond_6
    const-string/jumbo v1, "TreeSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1209
    const/16 v1, 0x16

    iput v1, p0, Lc8/PIb;->token:I

    goto :goto_0

    .line 1211
    :cond_7
    const/16 v1, 0x12

    iput v1, p0, Lc8/PIb;->token:I

    goto :goto_0
.end method

.method private setCalendar(CCCCCCCC)V
    .locals 5
    .param p1, "y0"    # C
    .param p2, "y1"    # C
    .param p3, "y2"    # C
    .param p4, "y3"    # C
    .param p5, "M0"    # C
    .param p6, "M1"    # C
    .param p7, "d0"    # C
    .param p8, "d1"    # C

    .prologue
    .line 4293
    iget-object v3, p0, Lc8/PIb;->timeZone:Ljava/util/TimeZone;

    iget-object v4, p0, Lc8/PIb;->locale:Ljava/util/Locale;

    invoke-static {v3, v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lc8/PIb;->calendar:Ljava/util/Calendar;

    .line 4294
    add-int/lit8 v3, p1, -0x30

    mul-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v4, p2, -0x30

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    add-int/lit8 v4, p3, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v3, v4

    add-int/lit8 v4, p4, -0x30

    add-int v2, v3, v4

    .line 4295
    .local v2, "year":I
    add-int/lit8 v3, p5, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p6, -0x30

    add-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    .line 4296
    .local v1, "month":I
    add-int/lit8 v3, p7, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p8, -0x30

    add-int v0, v3, v4

    .line 4297
    .local v0, "day":I
    iget-object v3, p0, Lc8/PIb;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 4298
    iget-object v3, p0, Lc8/PIb;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 4299
    iget-object v3, p0, Lc8/PIb;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 4300
    return-void
.end method

.method private final subString(II)Ljava/lang/String;
    .locals 5
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 1225
    iget-object v1, p0, Lc8/PIb;->sbuf:[C

    array-length v1, v1

    if-ge p2, v1, :cond_0

    .line 1226
    iget-object v1, p0, Lc8/PIb;->text:Ljava/lang/String;

    add-int v2, p1, p2

    iget-object v3, p0, Lc8/PIb;->sbuf:[C

    invoke-virtual {v1, p1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1227
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lc8/PIb;->sbuf:[C

    invoke-direct {v1, v2, v4, p2}, Ljava/lang/String;-><init>([CII)V

    .line 1231
    :goto_0
    return-object v1

    .line 1229
    :cond_0
    new-array v0, p2, [C

    .line 1230
    .local v0, "chars":[C
    iget-object v1, p0, Lc8/PIb;->text:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1231
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method


# virtual methods
.method public bytesValue()[B
    .locals 3

    .prologue
    .line 1179
    iget-object v0, p0, Lc8/PIb;->text:Ljava/lang/String;

    iget v1, p0, Lc8/PIb;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lc8/PIb;->sp:I

    invoke-static {v0, v1, v2}, Lc8/PIb;->decodeFast(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method protected charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 216
    iget v0, p0, Lc8/PIb;->len:I

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1a

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lc8/PIb;->sbuf:[C

    array-length v0, v0

    const/16 v1, 0x2004

    if-gt v0, v1, :cond_0

    .line 137
    sget-object v0, Lc8/PIb;->sbufLocal:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lc8/PIb;->sbuf:[C

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 139
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/PIb;->sbuf:[C

    .line 140
    return-void
.end method

.method public final config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;
    .param p2, "state"    # Z

    .prologue
    .line 150
    if-eqz p2, :cond_1

    .line 151
    iget v0, p0, Lc8/PIb;->features:I

    iget v1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v0, v1

    iput v0, p0, Lc8/PIb;->features:I

    .line 156
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    if-ne p1, v0, :cond_0

    .line 157
    if-eqz p2, :cond_2

    const-string/jumbo v0, ""

    :goto_1
    iput-object v0, p0, Lc8/PIb;->stringDefaultValue:Ljava/lang/String;

    .line 161
    :cond_0
    iget v0, p0, Lc8/PIb;->features:I

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lc8/PIb;->disableCircularReferenceDetect:Z

    .line 162
    return-void

    .line 153
    :cond_1
    iget v0, p0, Lc8/PIb;->features:I

    iget v1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lc8/PIb;->features:I

    goto :goto_0

    .line 157
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 161
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final decimalValue(Z)Ljava/lang/Number;
    .locals 28
    .param p1, "decimal"    # Z

    .prologue
    .line 1825
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->np:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->sp:I

    move/from16 v25, v0

    add-int v24, v24, v25

    add-int/lit8 v8, v24, -0x1

    .line 1826
    .local v8, "charIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v8, v0, :cond_0

    const/16 v7, 0x1a

    .line 1830
    .local v7, "chLocal":C
    :goto_0
    const/16 v24, 0x46

    move/from16 v0, v24

    if-ne v7, v0, :cond_1

    .line 1831
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->numberString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    .line 1909
    :goto_1
    return-object v24

    .line 1826
    .end local v7    # "chLocal":C
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 1828
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_0

    .line 1834
    .restart local v7    # "chLocal":C
    :cond_1
    const/16 v24, 0x44

    move/from16 v0, v24

    if-ne v7, v0, :cond_2

    .line 1835
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->numberString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v24

    goto :goto_1

    .line 1838
    :cond_2
    if-eqz p1, :cond_3

    .line 1839
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v24

    goto :goto_1

    .line 1841
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->np:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->sp:I

    move/from16 v25, v0

    add-int v24, v24, v25

    add-int/lit8 v17, v24, -0x1

    .line 1842
    .local v17, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1844
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->sp:I

    move/from16 v22, v0

    .line 1845
    .local v22, "sp":I
    const/16 v24, 0x4c

    move/from16 v0, v24

    if-eq v7, v0, :cond_4

    const/16 v24, 0x53

    move/from16 v0, v24

    if-eq v7, v0, :cond_4

    const/16 v24, 0x42

    move/from16 v0, v24

    if-eq v7, v0, :cond_4

    const/16 v24, 0x46

    move/from16 v0, v24

    if-eq v7, v0, :cond_4

    const/16 v24, 0x44

    move/from16 v0, v24

    if-ne v7, v0, :cond_5

    .line 1850
    :cond_4
    add-int/lit8 v22, v22, -0x1

    .line 1856
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->np:I

    move/from16 v20, v0

    .line 1858
    .local v20, "offset":I
    move/from16 v10, v22

    .local v10, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->sbuf:[C

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    .line 1859
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    add-int v25, v20, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->sbuf:[C

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v25

    move-object/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1860
    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/PIb;->sbuf:[C

    .line 1866
    .local v9, "chars":[C
    :goto_2
    const/16 v24, 0x9

    move/from16 v0, v24

    if-gt v10, v0, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/PIb;->exp:Z

    move/from16 v24, v0

    if-nez v24, :cond_c

    .line 1867
    const/16 v19, 0x0

    .line 1869
    .local v19, "negative":Z
    const/4 v15, 0x0

    .line 1870
    .local v15, "i":I
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "i":I
    .local v16, "i":I
    aget-char v6, v9, v15

    .line 1872
    .local v6, "c":C
    const/16 v24, 0x2d

    move/from16 v0, v24

    if-ne v6, v0, :cond_8

    .line 1873
    const/16 v19, 0x1

    .line 1874
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "i":I
    .restart local v15    # "i":I
    aget-char v6, v9, v16

    .line 1883
    :goto_3
    add-int/lit8 v18, v6, -0x30

    .line 1884
    .local v18, "intVal":I
    const/16 v21, 0x0

    .line 1885
    .local v21, "power":I
    :goto_4
    if-ge v15, v10, :cond_a

    .line 1886
    aget-char v6, v9, v15

    .line 1888
    const/16 v24, 0x2e

    move/from16 v0, v24

    if-ne v6, v0, :cond_9

    .line 1889
    const/16 v21, 0x1

    .line 1885
    :cond_6
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1862
    .end local v6    # "c":C
    .end local v9    # "chars":[C
    .end local v15    # "i":I
    .end local v18    # "intVal":I
    .end local v19    # "negative":Z
    .end local v21    # "power":I
    :cond_7
    new-array v9, v10, [C

    .line 1863
    .restart local v9    # "chars":[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    add-int v25, v20, v10

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v9, v3}, Ljava/lang/String;->getChars(II[CI)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1911
    .end local v9    # "chars":[C
    .end local v10    # "count":I
    .end local v17    # "index":I
    .end local v20    # "offset":I
    .end local v22    # "sp":I
    :catch_0
    move-exception v14

    .line 1912
    .local v14, "ex":Ljava/lang/NumberFormatException;
    new-instance v24, Lcom/alibaba/fastjson/JSONException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 1876
    .end local v14    # "ex":Ljava/lang/NumberFormatException;
    .restart local v6    # "c":C
    .restart local v9    # "chars":[C
    .restart local v10    # "count":I
    .restart local v16    # "i":I
    .restart local v17    # "index":I
    .restart local v19    # "negative":Z
    .restart local v20    # "offset":I
    .restart local v22    # "sp":I
    :cond_8
    const/16 v24, 0x2b

    move/from16 v0, v24

    if-ne v6, v0, :cond_d

    .line 1877
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "i":I
    .restart local v15    # "i":I
    :try_start_2
    aget-char v6, v9, v16

    goto :goto_3

    .line 1892
    .restart local v18    # "intVal":I
    .restart local v21    # "power":I
    :cond_9
    add-int/lit8 v11, v6, -0x30

    .line 1893
    .local v11, "digit":I
    mul-int/lit8 v24, v18, 0xa

    add-int v18, v24, v11

    .line 1895
    if-eqz v21, :cond_6

    .line 1896
    mul-int/lit8 v21, v21, 0xa

    goto :goto_5

    .line 1900
    .end local v11    # "digit":I
    :cond_a
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v12, v24, v26

    .line 1901
    .local v12, "doubleVal":D
    if-eqz v19, :cond_b

    .line 1902
    neg-double v12, v12

    .line 1905
    :cond_b
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v24

    goto/16 :goto_1

    .line 1907
    .end local v6    # "c":C
    .end local v12    # "doubleVal":D
    .end local v15    # "i":I
    .end local v18    # "intVal":I
    .end local v19    # "negative":Z
    .end local v21    # "power":I
    :cond_c
    new-instance v23, Ljava/lang/String;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v0, v9, v1, v10}, Ljava/lang/String;-><init>([CII)V

    .line 1909
    .local v23, "str":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v24

    goto/16 :goto_1

    .end local v23    # "str":Ljava/lang/String;
    .restart local v6    # "c":C
    .restart local v16    # "i":I
    .restart local v19    # "negative":Z
    :cond_d
    move/from16 v15, v16

    .end local v16    # "i":I
    .restart local v15    # "i":I
    goto/16 :goto_3
.end method

.method public final decimalValue()Ljava/math/BigDecimal;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1917
    iget v6, p0, Lc8/PIb;->np:I

    iget v7, p0, Lc8/PIb;->sp:I

    add-int/2addr v6, v7

    add-int/lit8 v3, v6, -0x1

    .line 1918
    .local v3, "index":I
    iget-object v6, p0, Lc8/PIb;->text:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1920
    .local v0, "chLocal":C
    iget v5, p0, Lc8/PIb;->sp:I

    .line 1921
    .local v5, "sp":I
    const/16 v6, 0x4c

    if-eq v0, v6, :cond_0

    const/16 v6, 0x53

    if-eq v0, v6, :cond_0

    const/16 v6, 0x42

    if-eq v0, v6, :cond_0

    const/16 v6, 0x46

    if-eq v0, v6, :cond_0

    const/16 v6, 0x44

    if-ne v0, v6, :cond_1

    .line 1926
    :cond_0
    add-int/lit8 v5, v5, -0x1

    .line 1931
    :cond_1
    iget v4, p0, Lc8/PIb;->np:I

    .line 1932
    .local v4, "offset":I
    move v2, v5

    .local v2, "count":I
    iget-object v6, p0, Lc8/PIb;->sbuf:[C

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 1933
    iget-object v6, p0, Lc8/PIb;->text:Ljava/lang/String;

    add-int v7, v4, v2

    iget-object v8, p0, Lc8/PIb;->sbuf:[C

    invoke-virtual {v6, v4, v7, v8, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 1934
    new-instance v6, Ljava/math/BigDecimal;

    iget-object v7, p0, Lc8/PIb;->sbuf:[C

    invoke-direct {v6, v7, v9, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 1938
    :goto_0
    return-object v6

    .line 1936
    :cond_2
    new-array v1, v2, [C

    .line 1937
    .local v1, "chars":[C
    iget-object v6, p0, Lc8/PIb;->text:Ljava/lang/String;

    add-int v7, v4, v2

    invoke-virtual {v6, v4, v7, v1, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 1938
    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v1}, Ljava/math/BigDecimal;-><init>([C)V

    goto :goto_0
.end method

.method public info()Ljava/lang/String;
    .locals 4

    .prologue
    const/high16 v3, 0x10000

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/PIb;->bp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", json : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lc8/PIb;->len:I

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 914
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 910
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/PIb;->text:Ljava/lang/String;

    const/4 v2, 0x0

    .line 914
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final intValue()I
    .locals 13

    .prologue
    const/16 v10, 0x1a

    .line 1117
    const/4 v9, 0x0

    .line 1118
    .local v9, "result":I
    const/4 v8, 0x0

    .line 1119
    .local v8, "negative":Z
    iget v4, p0, Lc8/PIb;->np:I

    .local v4, "i":I
    iget v11, p0, Lc8/PIb;->np:I

    iget v12, p0, Lc8/PIb;->sp:I

    add-int v7, v11, v12

    .line 1123
    .local v7, "max":I
    iget v11, p0, Lc8/PIb;->np:I

    iget v12, p0, Lc8/PIb;->len:I

    if-lt v11, v12, :cond_1

    move v1, v10

    .line 1126
    .local v1, "chLocal":C
    :goto_0
    const/16 v11, 0x2d

    if-ne v1, v11, :cond_2

    .line 1127
    const/4 v8, 0x1

    .line 1128
    const/high16 v6, -0x80000000

    .line 1129
    .local v6, "limit":I
    add-int/lit8 v4, v4, 0x1

    move v5, v4

    .line 1134
    .end local v4    # "i":I
    .local v5, "i":I
    :goto_1
    if-ge v5, v7, :cond_0

    .line 1135
    add-int/lit8 v4, v5, 0x1

    .line 1136
    .end local v5    # "i":I
    .restart local v4    # "i":I
    move v2, v5

    .local v2, "charIndex":I
    iget v11, p0, Lc8/PIb;->len:I

    if-lt v5, v11, :cond_3

    move v1, v10

    .line 1140
    :goto_2
    add-int/lit8 v3, v1, -0x30

    .line 1141
    .local v3, "digit":I
    neg-int v9, v3

    move v5, v4

    .line 1143
    .end local v2    # "charIndex":I
    .end local v3    # "digit":I
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_0
    :goto_3
    if-ge v5, v7, :cond_7

    .line 1146
    add-int/lit8 v4, v5, 0x1

    .line 1147
    .end local v5    # "i":I
    .restart local v4    # "i":I
    move v2, v5

    .restart local v2    # "charIndex":I
    iget v11, p0, Lc8/PIb;->len:I

    if-lt v5, v11, :cond_4

    move v0, v10

    .line 1151
    .local v0, "ch":C
    :goto_4
    const/16 v11, 0x4c

    if-eq v0, v11, :cond_8

    const/16 v11, 0x53

    if-eq v0, v11, :cond_8

    const/16 v11, 0x42

    if-eq v0, v11, :cond_8

    .line 1155
    add-int/lit8 v3, v0, -0x30

    .line 1157
    .restart local v3    # "digit":I
    const v11, -0xccccccc

    if-ge v9, v11, :cond_5

    .line 1158
    new-instance v10, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lc8/PIb;->numberString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1123
    .end local v0    # "ch":C
    .end local v1    # "chLocal":C
    .end local v2    # "charIndex":I
    .end local v3    # "digit":I
    .end local v6    # "limit":I
    :cond_1
    iget-object v11, p0, Lc8/PIb;->text:Ljava/lang/String;

    iget v12, p0, Lc8/PIb;->np:I

    .line 1125
    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 1131
    .restart local v1    # "chLocal":C
    :cond_2
    const v6, -0x7fffffff

    .restart local v6    # "limit":I
    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    .line 1136
    .end local v5    # "i":I
    .restart local v2    # "charIndex":I
    .restart local v4    # "i":I
    :cond_3
    iget-object v11, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 1138
    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_2

    .line 1147
    :cond_4
    iget-object v11, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 1149
    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    .line 1160
    .restart local v0    # "ch":C
    .restart local v3    # "digit":I
    :cond_5
    mul-int/lit8 v9, v9, 0xa

    .line 1161
    add-int v11, v6, v3

    if-ge v9, v11, :cond_6

    .line 1162
    new-instance v10, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lc8/PIb;->numberString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1164
    :cond_6
    sub-int/2addr v9, v3

    move v5, v4

    .line 1165
    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_3

    .end local v0    # "ch":C
    .end local v2    # "charIndex":I
    .end local v3    # "digit":I
    :cond_7
    move v4, v5

    .line 1167
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :cond_8
    if-eqz v8, :cond_a

    .line 1168
    iget v10, p0, Lc8/PIb;->np:I

    add-int/lit8 v10, v10, 0x1

    if-le v4, v10, :cond_9

    .line 1174
    .end local v9    # "result":I
    :goto_5
    return v9

    .line 1171
    .restart local v9    # "result":I
    :cond_9
    new-instance v10, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lc8/PIb;->numberString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1174
    :cond_a
    neg-int v9, v9

    goto :goto_5
.end method

.method public final integerValue()Ljava/lang/Number;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 604
    const-wide/16 v10, 0x0

    .line 605
    .local v10, "result":J
    const/4 v8, 0x0

    .line 606
    .local v8, "negative":Z
    iget v3, p0, Lc8/PIb;->np:I

    .local v3, "i":I
    iget v12, p0, Lc8/PIb;->np:I

    iget v13, p0, Lc8/PIb;->sp:I

    add-int v5, v12, v13

    .line 610
    .local v5, "max":I
    const/16 v9, 0x20

    .line 612
    .local v9, "type":C
    add-int/lit8 v1, v5, -0x1

    .line 613
    .local v1, "charIndex":I
    iget v12, p0, Lc8/PIb;->len:I

    if-lt v1, v12, :cond_1

    const/16 v0, 0x1a

    .line 617
    .local v0, "chLocal":C
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 634
    :goto_1
    iget v12, p0, Lc8/PIb;->np:I

    iget v13, p0, Lc8/PIb;->len:I

    if-lt v12, v13, :cond_2

    const/16 v0, 0x1a

    .line 637
    :goto_2
    const/16 v12, 0x2d

    if-ne v0, v12, :cond_3

    .line 638
    const/4 v8, 0x1

    .line 639
    const-wide/high16 v6, -0x8000000000000000L

    .line 640
    .local v6, "limit":J
    add-int/lit8 v3, v3, 0x1

    move v4, v3

    .line 644
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_3
    if-ge v4, v5, :cond_0

    .line 645
    add-int/lit8 v3, v4, 0x1

    .line 646
    .end local v4    # "i":I
    .restart local v3    # "i":I
    move v1, v4

    iget v12, p0, Lc8/PIb;->len:I

    if-lt v4, v12, :cond_4

    const/16 v0, 0x1a

    .line 649
    :goto_4
    add-int/lit8 v2, v0, -0x30

    .line 650
    .local v2, "digit":I
    neg-int v12, v2

    int-to-long v10, v12

    move v4, v3

    .line 652
    .end local v2    # "digit":I
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_0
    :goto_5
    if-ge v4, v5, :cond_8

    .line 654
    add-int/lit8 v3, v4, 0x1

    .line 655
    .end local v4    # "i":I
    .restart local v3    # "i":I
    move v1, v4

    iget v12, p0, Lc8/PIb;->len:I

    if-lt v4, v12, :cond_5

    const/16 v0, 0x1a

    .line 658
    :goto_6
    add-int/lit8 v2, v0, -0x30

    .line 659
    .restart local v2    # "digit":I
    const-wide v12, -0xcccccccccccccccL

    cmp-long v12, v10, v12

    if-gez v12, :cond_6

    .line 660
    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lc8/PIb;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 697
    .end local v2    # "digit":I
    :goto_7
    return-object v12

    .line 613
    .end local v0    # "chLocal":C
    .end local v6    # "limit":J
    :cond_1
    iget-object v12, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 615
    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 619
    .restart local v0    # "chLocal":C
    :sswitch_0
    add-int/lit8 v5, v5, -0x1

    .line 620
    const/16 v9, 0x4c

    .line 621
    goto :goto_1

    .line 623
    :sswitch_1
    add-int/lit8 v5, v5, -0x1

    .line 624
    const/16 v9, 0x53

    .line 625
    goto :goto_1

    .line 627
    :sswitch_2
    add-int/lit8 v5, v5, -0x1

    .line 628
    const/16 v9, 0x42

    goto :goto_1

    .line 634
    :cond_2
    iget-object v12, p0, Lc8/PIb;->text:Ljava/lang/String;

    iget v13, p0, Lc8/PIb;->np:I

    .line 636
    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_2

    .line 642
    :cond_3
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .restart local v6    # "limit":J
    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_3

    .line 646
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_4
    iget-object v12, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 648
    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    .line 655
    :cond_5
    iget-object v12, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 657
    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_6

    .line 662
    .restart local v2    # "digit":I
    :cond_6
    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    .line 663
    int-to-long v12, v2

    add-long/2addr v12, v6

    cmp-long v12, v10, v12

    if-gez v12, :cond_7

    .line 664
    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lc8/PIb;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 666
    :cond_7
    int-to-long v12, v2

    sub-long/2addr v10, v12

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_5

    .line 669
    .end local v2    # "digit":I
    :cond_8
    if-eqz v8, :cond_d

    .line 670
    iget v12, p0, Lc8/PIb;->np:I

    add-int/lit8 v12, v12, 0x1

    if-le v4, v12, :cond_c

    .line 671
    const-wide/32 v12, -0x80000000

    cmp-long v12, v10, v12

    if-ltz v12, :cond_b

    const/16 v12, 0x4c

    if-eq v9, v12, :cond_b

    .line 672
    const/16 v12, 0x53

    if-ne v9, v12, :cond_9

    .line 673
    long-to-int v12, v10

    int-to-short v12, v12

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_7

    .line 676
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_9
    const/16 v12, 0x42

    if-ne v9, v12, :cond_a

    .line 677
    long-to-int v12, v10

    int-to-byte v12, v12

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_7

    .line 680
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_a
    long-to-int v12, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_7

    .line 682
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_b
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_7

    .line 684
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_c
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lc8/PIb;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 687
    :cond_d
    neg-long v10, v10

    .line 688
    const-wide/32 v12, 0x7fffffff

    cmp-long v12, v10, v12

    if-gtz v12, :cond_10

    const/16 v12, 0x4c

    if-eq v9, v12, :cond_10

    .line 689
    const/16 v12, 0x53

    if-ne v9, v12, :cond_e

    .line 690
    long-to-int v12, v10

    int-to-short v12, v12

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_7

    .line 691
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_e
    const/16 v12, 0x42

    if-ne v9, v12, :cond_f

    .line 692
    long-to-int v12, v10

    int-to-byte v12, v12

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_7

    .line 694
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_f
    long-to-int v12, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_7

    .line 697
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_10
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_7

    .line 617
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x4c -> :sswitch_0
        0x53 -> :sswitch_1
    .end sparse-switch
.end method

.method public final isBlankInput()Z
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1247
    const/4 v1, 0x0

    .line 1248
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, v1}, Lc8/PIb;->charAt(I)C

    move-result v0

    .line 1249
    .local v0, "ch":C
    const/16 v5, 0x1a

    if-eq v0, v5, :cond_3

    .line 1253
    if-gt v0, v6, :cond_1

    if-eq v0, v6, :cond_0

    const/16 v5, 0xa

    if-eq v0, v5, :cond_0

    const/16 v5, 0xd

    if-eq v0, v5, :cond_0

    const/16 v5, 0x9

    if-eq v0, v5, :cond_0

    const/16 v5, 0xc

    if-eq v0, v5, :cond_0

    const/16 v5, 0x8

    if-ne v0, v5, :cond_1

    :cond_0
    move v2, v4

    .line 1260
    .local v2, "whitespace":Z
    :goto_1
    if-nez v2, :cond_2

    .line 1265
    .end local v2    # "whitespace":Z
    :goto_2
    return v3

    :cond_1
    move v2, v3

    .line 1253
    goto :goto_1

    .line 1247
    .restart local v2    # "whitespace":Z
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "whitespace":Z
    :cond_3
    move v3, v4

    .line 1265
    goto :goto_2
.end method

.method public final isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;

    .prologue
    .line 165
    iget v0, p0, Lc8/PIb;->features:I

    iget v1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final longValue()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 1766
    const-wide/16 v10, 0x0

    .line 1767
    .local v10, "result":J
    const/4 v8, 0x0

    .line 1768
    .local v8, "negative":Z
    iget v2, p0, Lc8/PIb;->np:I

    .local v2, "i":I
    iget v9, p0, Lc8/PIb;->np:I

    iget v12, p0, Lc8/PIb;->sp:I

    add-int v5, v9, v12

    .line 1773
    .local v5, "max":I
    iget v9, p0, Lc8/PIb;->np:I

    invoke-virtual {p0, v9}, Lc8/PIb;->charAt(I)C

    move-result v9

    const/16 v12, 0x2d

    if-ne v9, v12, :cond_1

    .line 1774
    const/4 v8, 0x1

    .line 1775
    const-wide/high16 v6, -0x8000000000000000L

    .line 1776
    .local v6, "limit":J
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 1780
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 1781
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Lc8/PIb;->charAt(I)C

    move-result v9

    add-int/lit8 v1, v9, -0x30

    .line 1782
    .local v1, "digit":I
    neg-int v9, v1

    int-to-long v10, v9

    move v3, v2

    .line 1784
    .end local v1    # "digit":I
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_0
    :goto_1
    if-ge v3, v5, :cond_5

    .line 1789
    add-int/lit8 v2, v3, 0x1

    .line 1790
    .end local v3    # "i":I
    .restart local v2    # "i":I
    move v4, v3

    .local v4, "index":I
    iget v9, p0, Lc8/PIb;->len:I

    if-lt v3, v9, :cond_2

    const/16 v0, 0x1a

    .line 1795
    .local v0, "chLocal":C
    :goto_2
    const/16 v9, 0x4c

    if-eq v0, v9, :cond_6

    const/16 v9, 0x53

    if-eq v0, v9, :cond_6

    const/16 v9, 0x42

    if-eq v0, v9, :cond_6

    .line 1801
    add-int/lit8 v1, v0, -0x30

    .line 1802
    .restart local v1    # "digit":I
    const-wide v12, -0xcccccccccccccccL

    cmp-long v9, v10, v12

    if-gez v9, :cond_3

    .line 1803
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lc8/PIb;->numberString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1778
    .end local v0    # "chLocal":C
    .end local v1    # "digit":I
    .end local v4    # "index":I
    .end local v6    # "limit":J
    :cond_1
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .restart local v6    # "limit":J
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 1790
    .end local v3    # "i":I
    .restart local v2    # "i":I
    .restart local v4    # "index":I
    :cond_2
    iget-object v9, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 1792
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_2

    .line 1805
    .restart local v0    # "chLocal":C
    .restart local v1    # "digit":I
    :cond_3
    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    .line 1806
    int-to-long v12, v1

    add-long/2addr v12, v6

    cmp-long v9, v10, v12

    if-gez v9, :cond_4

    .line 1807
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lc8/PIb;->numberString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1809
    :cond_4
    int-to-long v12, v1

    sub-long/2addr v10, v12

    move v3, v2

    .line 1810
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .end local v0    # "chLocal":C
    .end local v1    # "digit":I
    .end local v4    # "index":I
    :cond_5
    move v2, v3

    .line 1812
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_6
    if-eqz v8, :cond_8

    .line 1813
    iget v9, p0, Lc8/PIb;->np:I

    add-int/lit8 v9, v9, 0x1

    if-le v2, v9, :cond_7

    .line 1819
    .end local v10    # "result":J
    :goto_3
    return-wide v10

    .line 1816
    .restart local v10    # "result":J
    :cond_7
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lc8/PIb;->numberString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1819
    :cond_8
    neg-long v10, v10

    goto :goto_3
.end method

.method public matchField(J)Z
    .locals 13
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 1958
    const/4 v8, 0x1

    .line 1959
    .local v8, "offset":I
    iget-char v3, p0, Lc8/PIb;->ch:C

    .line 1960
    .local v3, "fieldQuote":C
    iget v10, p0, Lc8/PIb;->bp:I

    add-int/lit8 v4, v10, 0x1

    .local v4, "fieldStartIndex":I
    move v9, v8

    .line 1962
    .end local v8    # "offset":I
    .local v9, "offset":I
    :goto_0
    const/16 v10, 0x22

    if-eq v3, v10, :cond_3

    .line 1964
    const/16 v10, 0x27

    if-eq v3, v10, :cond_3

    .line 1966
    const/16 v10, 0x20

    if-gt v3, v10, :cond_2

    const/16 v10, 0x20

    if-eq v3, v10, :cond_0

    const/16 v10, 0xa

    if-eq v3, v10, :cond_0

    const/16 v10, 0xd

    if-eq v3, v10, :cond_0

    const/16 v10, 0x9

    if-eq v3, v10, :cond_0

    const/16 v10, 0xc

    if-eq v3, v10, :cond_0

    const/16 v10, 0x8

    if-ne v3, v10, :cond_2

    .line 1973
    :cond_0
    iget v10, p0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v2, v10, v9

    .line 1974
    .local v2, "charIndex":I
    iget v10, p0, Lc8/PIb;->len:I

    if-lt v2, v10, :cond_1

    const/16 v3, 0x1a

    :goto_1
    move v9, v8

    .line 1976
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_0

    .line 1974
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :cond_1
    iget-object v10, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 1976
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_1

    .line 1978
    .end local v2    # "charIndex":I
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_2
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lc8/PIb;->fieldHash:J

    .line 1979
    const/4 v10, -0x2

    iput v10, p0, Lc8/PIb;->matchStat:I

    .line 1980
    const/4 v10, 0x0

    move v8, v9

    .line 2053
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :goto_2
    return v10

    .line 1984
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_3
    const-wide/32 v6, -0x7ee3623b

    .line 1985
    .local v6, "hash":J
    move v5, v4

    .local v5, "i":I
    :goto_3
    iget v10, p0, Lc8/PIb;->len:I

    if-ge v5, v10, :cond_4

    .line 1986
    iget-object v10, p0, Lc8/PIb;->text:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1987
    .local v0, "ch":C
    if-ne v0, v3, :cond_5

    .line 1989
    sub-int v10, v5, v4

    add-int/lit8 v10, v10, 0x1

    add-int v8, v9, v10

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move v9, v8

    .line 1997
    .end local v0    # "ch":C
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_4
    cmp-long v10, v6, p1

    if-eqz v10, :cond_6

    .line 1998
    const/4 v10, -0x2

    iput v10, p0, Lc8/PIb;->matchStat:I

    .line 1999
    iput-wide v6, p0, Lc8/PIb;->fieldHash:J

    .line 2000
    const/4 v10, 0x0

    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_2

    .line 1993
    .end local v8    # "offset":I
    .restart local v0    # "ch":C
    .restart local v9    # "offset":I
    :cond_5
    int-to-long v10, v0

    xor-long/2addr v6, v10

    .line 1994
    const-wide/32 v10, 0x1000193

    mul-long/2addr v6, v10

    .line 1985
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2003
    .end local v0    # "ch":C
    :cond_6
    iget v10, p0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v2, v10, v9

    .line 2004
    .restart local v2    # "charIndex":I
    iget v10, p0, Lc8/PIb;->len:I

    if-lt v2, v10, :cond_7

    const/16 v1, 0x1a

    .local v1, "chLocal":C
    :goto_4
    move v9, v8

    .line 2008
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :goto_5
    const/16 v10, 0x3a

    if-ne v1, v10, :cond_9

    .line 2009
    iget v10, p0, Lc8/PIb;->bp:I

    add-int v2, v10, v9

    .line 2010
    iget v10, p0, Lc8/PIb;->len:I

    if-lt v2, v10, :cond_8

    const/16 v1, 0x1a

    .line 2033
    :goto_6
    const/16 v10, 0x7b

    if-ne v1, v10, :cond_e

    .line 2034
    add-int/lit8 v10, v2, 0x1

    iput v10, p0, Lc8/PIb;->bp:I

    .line 2035
    iget v10, p0, Lc8/PIb;->bp:I

    iget v11, p0, Lc8/PIb;->len:I

    if-lt v10, v11, :cond_d

    const/16 v10, 0x1a

    .line 2037
    :goto_7
    iput-char v10, p0, Lc8/PIb;->ch:C

    .line 2038
    const/16 v10, 0xc

    iput v10, p0, Lc8/PIb;->token:I

    .line 2053
    :goto_8
    const/4 v10, 0x1

    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_2

    .line 2004
    .end local v1    # "chLocal":C
    :cond_7
    iget-object v10, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2006
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_4

    .line 2010
    .end local v8    # "offset":I
    .restart local v1    # "chLocal":C
    .restart local v9    # "offset":I
    :cond_8
    iget-object v10, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2012
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_6

    .line 2016
    :cond_9
    const/16 v10, 0x20

    if-gt v1, v10, :cond_c

    const/16 v10, 0x20

    if-eq v1, v10, :cond_a

    const/16 v10, 0xa

    if-eq v1, v10, :cond_a

    const/16 v10, 0xd

    if-eq v1, v10, :cond_a

    const/16 v10, 0x9

    if-eq v1, v10, :cond_a

    const/16 v10, 0xc

    if-eq v1, v10, :cond_a

    const/16 v10, 0x8

    if-ne v1, v10, :cond_c

    .line 2023
    :cond_a
    iget v10, p0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v2, v10, v9

    .line 2024
    iget v10, p0, Lc8/PIb;->len:I

    if-lt v2, v10, :cond_b

    const/16 v1, 0x1a

    :goto_9
    move v9, v8

    .line 2027
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_5

    .line 2024
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :cond_b
    iget-object v10, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2026
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_9

    .line 2030
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_c
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v11, "match feild error expect \':\'"

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2035
    :cond_d
    iget-object v10, p0, Lc8/PIb;->text:Ljava/lang/String;

    iget v11, p0, Lc8/PIb;->bp:I

    .line 2037
    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_7

    .line 2039
    :cond_e
    const/16 v10, 0x5b

    if-ne v1, v10, :cond_10

    .line 2040
    add-int/lit8 v10, v2, 0x1

    iput v10, p0, Lc8/PIb;->bp:I

    .line 2041
    iget v10, p0, Lc8/PIb;->bp:I

    iget v11, p0, Lc8/PIb;->len:I

    if-lt v10, v11, :cond_f

    const/16 v10, 0x1a

    .line 2043
    :goto_a
    iput-char v10, p0, Lc8/PIb;->ch:C

    .line 2044
    const/16 v10, 0xe

    iput v10, p0, Lc8/PIb;->token:I

    goto :goto_8

    .line 2041
    :cond_f
    iget-object v10, p0, Lc8/PIb;->text:Ljava/lang/String;

    iget v11, p0, Lc8/PIb;->bp:I

    .line 2043
    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_a

    .line 2046
    :cond_10
    iput v2, p0, Lc8/PIb;->bp:I

    .line 2047
    iget v10, p0, Lc8/PIb;->bp:I

    iget v11, p0, Lc8/PIb;->len:I

    if-lt v10, v11, :cond_11

    const/16 v10, 0x1a

    .line 2049
    :goto_b
    iput-char v10, p0, Lc8/PIb;->ch:C

    .line 2050
    invoke-virtual {p0}, Lc8/PIb;->nextToken()V

    goto/16 :goto_8

    .line 2047
    :cond_11
    iget-object v10, p0, Lc8/PIb;->text:Ljava/lang/String;

    iget v11, p0, Lc8/PIb;->bp:I

    .line 2049
    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_b
.end method

.method public next()C
    .locals 2

    .prologue
    .line 143
    iget v1, p0, Lc8/PIb;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lc8/PIb;->bp:I

    .line 144
    .local v0, "index":I
    iget v1, p0, Lc8/PIb;->len:I

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1a

    .line 146
    :goto_0
    iput-char v1, p0, Lc8/PIb;->ch:C

    .line 144
    return v1

    :cond_0
    iget-object v1, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0
.end method

.method public final nextIdent()V
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 582
    :goto_0
    iget-char v1, p0, Lc8/PIb;->ch:C

    if-gt v1, v3, :cond_1

    iget-char v1, p0, Lc8/PIb;->ch:C

    if-eq v1, v3, :cond_0

    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 589
    .local v0, "whitespace":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 592
    invoke-virtual {p0}, Lc8/PIb;->next()C

    goto :goto_0

    .line 582
    .end local v0    # "whitespace":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 595
    .restart local v0    # "whitespace":Z
    :cond_2
    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_3

    iget-char v1, p0, Lc8/PIb;->ch:C

    .line 596
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 597
    :cond_3
    invoke-direct {p0}, Lc8/PIb;->scanIdent()V

    .line 601
    :goto_2
    return-void

    .line 599
    :cond_4
    invoke-virtual {p0}, Lc8/PIb;->nextToken()V

    goto :goto_2
.end method

.method public final nextToken()V
    .locals 11

    .prologue
    const/16 v10, 0x2c

    const/16 v9, 0xd

    const/16 v8, 0xc

    const/16 v7, 0xa

    const/16 v3, 0x1a

    .line 222
    const/4 v4, 0x0

    iput v4, p0, Lc8/PIb;->sp:I

    .line 225
    :goto_0
    iget v4, p0, Lc8/PIb;->bp:I

    iput v4, p0, Lc8/PIb;->pos:I

    .line 227
    iget-char v4, p0, Lc8/PIb;->ch:C

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_0

    .line 228
    invoke-virtual {p0}, Lc8/PIb;->skipComment()V

    goto :goto_0

    .line 232
    :cond_0
    iget-char v4, p0, Lc8/PIb;->ch:C

    const/16 v5, 0x22

    if-ne v4, v5, :cond_1

    .line 233
    invoke-virtual {p0}, Lc8/PIb;->scanString()V

    .line 405
    :goto_1
    return-void

    .line 237
    :cond_1
    iget-char v4, p0, Lc8/PIb;->ch:C

    const/16 v5, 0x30

    if-lt v4, v5, :cond_2

    iget-char v4, p0, Lc8/PIb;->ch:C

    const/16 v5, 0x39

    if-le v4, v5, :cond_3

    :cond_2
    iget-char v4, p0, Lc8/PIb;->ch:C

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_4

    .line 238
    :cond_3
    invoke-virtual {p0}, Lc8/PIb;->scanNumber()V

    goto :goto_1

    .line 242
    :cond_4
    iget-char v4, p0, Lc8/PIb;->ch:C

    if-ne v4, v10, :cond_5

    .line 243
    invoke-virtual {p0}, Lc8/PIb;->next()C

    .line 244
    const/16 v3, 0x10

    iput v3, p0, Lc8/PIb;->token:I

    goto :goto_1

    .line 248
    :cond_5
    iget-char v4, p0, Lc8/PIb;->ch:C

    sparse-switch v4, :sswitch_data_0

    .line 388
    iget v4, p0, Lc8/PIb;->bp:I

    iget v5, p0, Lc8/PIb;->len:I

    if-eq v4, v5, :cond_6

    iget-char v4, p0, Lc8/PIb;->ch:C

    if-ne v4, v3, :cond_12

    iget v4, p0, Lc8/PIb;->bp:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lc8/PIb;->len:I

    if-ne v4, v5, :cond_12

    :cond_6
    const/4 v0, 0x1

    .line 389
    .local v0, "eof":Z
    :goto_2
    if-eqz v0, :cond_14

    .line 390
    iget v3, p0, Lc8/PIb;->token:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_13

    .line 391
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v4, "EOF error"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 250
    .end local v0    # "eof":Z
    :sswitch_0
    invoke-virtual {p0}, Lc8/PIb;->scanString()V

    goto :goto_1

    .line 258
    :sswitch_1
    invoke-virtual {p0}, Lc8/PIb;->next()C

    goto :goto_0

    .line 262
    :sswitch_2
    iget-object v4, p0, Lc8/PIb;->text:Ljava/lang/String;

    const-string/jumbo v5, "true"

    iget v6, p0, Lc8/PIb;->bp:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 263
    iget v4, p0, Lc8/PIb;->bp:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lc8/PIb;->bp:I

    .line 264
    iget v4, p0, Lc8/PIb;->bp:I

    invoke-virtual {p0, v4}, Lc8/PIb;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lc8/PIb;->ch:C

    .line 266
    iget-char v4, p0, Lc8/PIb;->ch:C

    const/16 v5, 0x20

    if-eq v4, v5, :cond_7

    iget-char v4, p0, Lc8/PIb;->ch:C

    if-eq v4, v10, :cond_7

    iget-char v4, p0, Lc8/PIb;->ch:C

    const/16 v5, 0x7d

    if-eq v4, v5, :cond_7

    iget-char v4, p0, Lc8/PIb;->ch:C

    const/16 v5, 0x5d

    if-eq v4, v5, :cond_7

    iget-char v4, p0, Lc8/PIb;->ch:C

    if-eq v4, v7, :cond_7

    iget-char v4, p0, Lc8/PIb;->ch:C

    if-eq v4, v9, :cond_7

    iget-char v4, p0, Lc8/PIb;->ch:C

    const/16 v5, 0x9

    if-eq v4, v5, :cond_7

    iget-char v4, p0, Lc8/PIb;->ch:C

    if-eq v4, v3, :cond_7

    iget-char v3, p0, Lc8/PIb;->ch:C

    if-eq v3, v8, :cond_7

    iget-char v3, p0, Lc8/PIb;->ch:C

    const/16 v4, 0x8

    if-eq v3, v4, :cond_7

    iget-char v3, p0, Lc8/PIb;->ch:C

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_8

    .line 277
    :cond_7
    const/4 v3, 0x6

    iput v3, p0, Lc8/PIb;->token:I

    goto/16 :goto_1

    .line 281
    :cond_8
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v4, "scan true error"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 286
    :sswitch_3
    invoke-direct {p0}, Lc8/PIb;->scanIdent()V

    goto/16 :goto_1

    .line 290
    :sswitch_4
    iget-object v4, p0, Lc8/PIb;->text:Ljava/lang/String;

    const-string/jumbo v5, "false"

    iget v6, p0, Lc8/PIb;->bp:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 291
    iget v4, p0, Lc8/PIb;->bp:I

    add-int/lit8 v4, v4, 0x5

    iput v4, p0, Lc8/PIb;->bp:I

    .line 292
    iget v4, p0, Lc8/PIb;->bp:I

    invoke-virtual {p0, v4}, Lc8/PIb;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lc8/PIb;->ch:C

    .line 294
    iget-char v4, p0, Lc8/PIb;->ch:C

    const/16 v5, 0x20

    if-eq v4, v5, :cond_9

    iget-char v4, p0, Lc8/PIb;->ch:C

    if-eq v4, v10, :cond_9

    iget-char v4, p0, Lc8/PIb;->ch:C

    const/16 v5, 0x7d

    if-eq v4, v5, :cond_9

    iget-char v4, p0, Lc8/PIb;->ch:C

    const/16 v5, 0x5d

    if-eq v4, v5, :cond_9

    iget-char v4, p0, Lc8/PIb;->ch:C

    if-eq v4, v7, :cond_9

    iget-char v4, p0, Lc8/PIb;->ch:C

    if-eq v4, v9, :cond_9

    iget-char v4, p0, Lc8/PIb;->ch:C

    const/16 v5, 0x9

    if-eq v4, v5, :cond_9

    iget-char v4, p0, Lc8/PIb;->ch:C

    if-eq v4, v3, :cond_9

    iget-char v3, p0, Lc8/PIb;->ch:C

    if-eq v3, v8, :cond_9

    iget-char v3, p0, Lc8/PIb;->ch:C

    const/16 v4, 0x8

    if-eq v3, v4, :cond_9

    iget-char v3, p0, Lc8/PIb;->ch:C

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_a

    .line 305
    :cond_9
    const/4 v3, 0x7

    iput v3, p0, Lc8/PIb;->token:I

    goto/16 :goto_1

    .line 309
    :cond_a
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v4, "scan false error"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 313
    :sswitch_5
    const/4 v2, 0x0

    .line 314
    .local v2, "token":I
    iget-object v4, p0, Lc8/PIb;->text:Ljava/lang/String;

    const-string/jumbo v5, "null"

    iget v6, p0, Lc8/PIb;->bp:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 315
    iget v4, p0, Lc8/PIb;->bp:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lc8/PIb;->bp:I

    .line 316
    const/16 v2, 0x8

    .line 322
    :cond_b
    :goto_3
    if-eqz v2, :cond_e

    .line 323
    iget v4, p0, Lc8/PIb;->bp:I

    invoke-virtual {p0, v4}, Lc8/PIb;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lc8/PIb;->ch:C

    .line 324
    iget-char v4, p0, Lc8/PIb;->ch:C

    const/16 v5, 0x20

    if-eq v4, v5, :cond_c

    iget-char v4, p0, Lc8/PIb;->ch:C

    if-eq v4, v10, :cond_c

    iget-char v4, p0, Lc8/PIb;->ch:C

    const/16 v5, 0x7d

    if-eq v4, v5, :cond_c

    iget-char v4, p0, Lc8/PIb;->ch:C

    const/16 v5, 0x5d

    if-eq v4, v5, :cond_c

    iget-char v4, p0, Lc8/PIb;->ch:C

    if-eq v4, v7, :cond_c

    iget-char v4, p0, Lc8/PIb;->ch:C

    if-eq v4, v9, :cond_c

    iget-char v4, p0, Lc8/PIb;->ch:C

    const/16 v5, 0x9

    if-eq v4, v5, :cond_c

    iget-char v4, p0, Lc8/PIb;->ch:C

    if-eq v4, v3, :cond_c

    iget-char v3, p0, Lc8/PIb;->ch:C

    if-eq v3, v8, :cond_c

    iget-char v3, p0, Lc8/PIb;->ch:C

    const/16 v4, 0x8

    if-ne v3, v4, :cond_e

    .line 334
    :cond_c
    iput v2, p0, Lc8/PIb;->token:I

    goto/16 :goto_1

    .line 317
    :cond_d
    iget-object v4, p0, Lc8/PIb;->text:Ljava/lang/String;

    const-string/jumbo v5, "new"

    iget v6, p0, Lc8/PIb;->bp:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 318
    iget v4, p0, Lc8/PIb;->bp:I

    add-int/lit8 v4, v4, 0x3

    iput v4, p0, Lc8/PIb;->bp:I

    .line 319
    const/16 v2, 0x9

    goto :goto_3

    .line 339
    :cond_e
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v4, "scan null/new error"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 342
    .end local v2    # "token":I
    :sswitch_6
    invoke-virtual {p0}, Lc8/PIb;->next()C

    .line 343
    iput v7, p0, Lc8/PIb;->token:I

    goto/16 :goto_1

    .line 346
    :sswitch_7
    invoke-virtual {p0}, Lc8/PIb;->next()C

    .line 347
    const/16 v3, 0xb

    iput v3, p0, Lc8/PIb;->token:I

    goto/16 :goto_1

    .line 352
    :sswitch_8
    iget v4, p0, Lc8/PIb;->bp:I

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lc8/PIb;->bp:I

    .line 353
    .local v1, "index":I
    iget v4, p0, Lc8/PIb;->len:I

    if-lt v1, v4, :cond_f

    .line 355
    :goto_4
    iput-char v3, p0, Lc8/PIb;->ch:C

    .line 357
    const/16 v3, 0xe

    iput v3, p0, Lc8/PIb;->token:I

    goto/16 :goto_1

    .line 353
    :cond_f
    iget-object v3, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 355
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_4

    .line 360
    .end local v1    # "index":I
    :sswitch_9
    invoke-virtual {p0}, Lc8/PIb;->next()C

    .line 361
    const/16 v3, 0xf

    iput v3, p0, Lc8/PIb;->token:I

    goto/16 :goto_1

    .line 366
    :sswitch_a
    iget v4, p0, Lc8/PIb;->bp:I

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lc8/PIb;->bp:I

    .line 367
    .restart local v1    # "index":I
    iget v4, p0, Lc8/PIb;->len:I

    if-lt v1, v4, :cond_10

    .line 369
    :goto_5
    iput-char v3, p0, Lc8/PIb;->ch:C

    .line 371
    iput v8, p0, Lc8/PIb;->token:I

    goto/16 :goto_1

    .line 367
    :cond_10
    iget-object v3, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 369
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_5

    .line 376
    .end local v1    # "index":I
    :sswitch_b
    iget v4, p0, Lc8/PIb;->bp:I

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lc8/PIb;->bp:I

    .line 377
    .restart local v1    # "index":I
    iget v4, p0, Lc8/PIb;->len:I

    if-lt v1, v4, :cond_11

    .line 379
    :goto_6
    iput-char v3, p0, Lc8/PIb;->ch:C

    .line 381
    iput v9, p0, Lc8/PIb;->token:I

    goto/16 :goto_1

    .line 377
    :cond_11
    iget-object v3, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 379
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_6

    .line 384
    .end local v1    # "index":I
    :sswitch_c
    invoke-virtual {p0}, Lc8/PIb;->next()C

    .line 385
    const/16 v3, 0x11

    iput v3, p0, Lc8/PIb;->token:I

    goto/16 :goto_1

    .line 388
    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 394
    .restart local v0    # "eof":Z
    :cond_13
    const/16 v3, 0x14

    iput v3, p0, Lc8/PIb;->token:I

    .line 395
    iget v3, p0, Lc8/PIb;->eofPos:I

    iput v3, p0, Lc8/PIb;->bp:I

    iput v3, p0, Lc8/PIb;->pos:I

    goto/16 :goto_1

    .line 397
    :cond_14
    iget-char v4, p0, Lc8/PIb;->ch:C

    const/16 v5, 0x1f

    if-le v4, v5, :cond_15

    iget-char v4, p0, Lc8/PIb;->ch:C

    const/16 v5, 0x7f

    if-ne v4, v5, :cond_16

    .line 398
    :cond_15
    invoke-virtual {p0}, Lc8/PIb;->next()C

    goto/16 :goto_0

    .line 401
    :cond_16
    const/4 v3, 0x1

    iput v3, p0, Lc8/PIb;->token:I

    .line 402
    invoke-virtual {p0}, Lc8/PIb;->next()C

    goto/16 :goto_1

    .line 248
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x27 -> :sswitch_0
        0x28 -> :sswitch_6
        0x29 -> :sswitch_7
        0x3a -> :sswitch_c
        0x53 -> :sswitch_3
        0x54 -> :sswitch_3
        0x5b -> :sswitch_8
        0x5d -> :sswitch_9
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x74 -> :sswitch_2
        0x75 -> :sswitch_3
        0x7b -> :sswitch_a
        0x7d -> :sswitch_b
    .end sparse-switch
.end method

.method public final nextToken(I)V
    .locals 8
    .param p1, "expect"    # I

    .prologue
    const/16 v7, 0x5b

    const/16 v6, 0xe

    const/16 v5, 0x7b

    const/16 v4, 0xc

    const/16 v1, 0x1a

    .line 412
    const/4 v2, 0x0

    iput v2, p0, Lc8/PIb;->sp:I

    .line 415
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 565
    :cond_0
    :pswitch_0
    iget-char v2, p0, Lc8/PIb;->ch:C

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    iget-char v2, p0, Lc8/PIb;->ch:C

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    iget-char v2, p0, Lc8/PIb;->ch:C

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    iget-char v2, p0, Lc8/PIb;->ch:C

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    iget-char v2, p0, Lc8/PIb;->ch:C

    if-eq v2, v4, :cond_1

    iget-char v2, p0, Lc8/PIb;->ch:C

    const/16 v3, 0x8

    if-ne v2, v3, :cond_13

    .line 571
    :cond_1
    invoke-virtual {p0}, Lc8/PIb;->next()C

    goto :goto_0

    .line 417
    :pswitch_1
    iget-char v2, p0, Lc8/PIb;->ch:C

    if-ne v2, v5, :cond_3

    .line 418
    iput v4, p0, Lc8/PIb;->token:I

    .line 421
    iget v2, p0, Lc8/PIb;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lc8/PIb;->bp:I

    .line 422
    .local v0, "index":I
    iget v2, p0, Lc8/PIb;->len:I

    if-lt v0, v2, :cond_2

    .line 424
    :goto_1
    iput-char v1, p0, Lc8/PIb;->ch:C

    .line 578
    .end local v0    # "index":I
    :goto_2
    return-void

    .line 422
    .restart local v0    # "index":I
    :cond_2
    iget-object v1, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 424
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_1

    .line 428
    .end local v0    # "index":I
    :cond_3
    iget-char v2, p0, Lc8/PIb;->ch:C

    if-ne v2, v7, :cond_0

    .line 429
    iput v6, p0, Lc8/PIb;->token:I

    .line 432
    iget v2, p0, Lc8/PIb;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lc8/PIb;->bp:I

    .line 433
    .restart local v0    # "index":I
    iget v2, p0, Lc8/PIb;->len:I

    if-lt v0, v2, :cond_4

    .line 435
    :goto_3
    iput-char v1, p0, Lc8/PIb;->ch:C

    goto :goto_2

    .line 433
    :cond_4
    iget-object v1, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 435
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_3

    .line 441
    .end local v0    # "index":I
    :pswitch_2
    iget-char v2, p0, Lc8/PIb;->ch:C

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_6

    .line 442
    const/16 v2, 0x10

    iput v2, p0, Lc8/PIb;->token:I

    .line 445
    iget v2, p0, Lc8/PIb;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lc8/PIb;->bp:I

    .line 446
    .restart local v0    # "index":I
    iget v2, p0, Lc8/PIb;->len:I

    if-lt v0, v2, :cond_5

    .line 448
    :goto_4
    iput-char v1, p0, Lc8/PIb;->ch:C

    goto :goto_2

    .line 446
    :cond_5
    iget-object v1, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 448
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_4

    .line 453
    .end local v0    # "index":I
    :cond_6
    iget-char v2, p0, Lc8/PIb;->ch:C

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_8

    .line 454
    const/16 v2, 0xd

    iput v2, p0, Lc8/PIb;->token:I

    .line 457
    iget v2, p0, Lc8/PIb;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lc8/PIb;->bp:I

    .line 458
    .restart local v0    # "index":I
    iget v2, p0, Lc8/PIb;->len:I

    if-lt v0, v2, :cond_7

    .line 460
    :goto_5
    iput-char v1, p0, Lc8/PIb;->ch:C

    goto :goto_2

    .line 458
    :cond_7
    iget-object v1, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 460
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_5

    .line 465
    .end local v0    # "index":I
    :cond_8
    iget-char v2, p0, Lc8/PIb;->ch:C

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_a

    .line 466
    const/16 v2, 0xf

    iput v2, p0, Lc8/PIb;->token:I

    .line 469
    iget v2, p0, Lc8/PIb;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lc8/PIb;->bp:I

    .line 470
    .restart local v0    # "index":I
    iget v2, p0, Lc8/PIb;->len:I

    if-lt v0, v2, :cond_9

    .line 472
    :goto_6
    iput-char v1, p0, Lc8/PIb;->ch:C

    goto/16 :goto_2

    .line 470
    :cond_9
    iget-object v1, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 472
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_6

    .line 477
    .end local v0    # "index":I
    :cond_a
    iget-char v2, p0, Lc8/PIb;->ch:C

    if-ne v2, v1, :cond_0

    .line 478
    const/16 v1, 0x14

    iput v1, p0, Lc8/PIb;->token:I

    goto/16 :goto_2

    .line 483
    :pswitch_3
    iget-char v2, p0, Lc8/PIb;->ch:C

    const/16 v3, 0x30

    if-lt v2, v3, :cond_b

    iget-char v2, p0, Lc8/PIb;->ch:C

    const/16 v3, 0x39

    if-gt v2, v3, :cond_b

    .line 484
    iget v1, p0, Lc8/PIb;->bp:I

    iput v1, p0, Lc8/PIb;->pos:I

    .line 485
    invoke-virtual {p0}, Lc8/PIb;->scanNumber()V

    goto/16 :goto_2

    .line 489
    :cond_b
    iget-char v2, p0, Lc8/PIb;->ch:C

    const/16 v3, 0x22

    if-ne v2, v3, :cond_c

    .line 490
    iget v1, p0, Lc8/PIb;->bp:I

    iput v1, p0, Lc8/PIb;->pos:I

    .line 491
    invoke-virtual {p0}, Lc8/PIb;->scanString()V

    goto/16 :goto_2

    .line 495
    :cond_c
    iget-char v2, p0, Lc8/PIb;->ch:C

    if-ne v2, v7, :cond_d

    .line 496
    iput v6, p0, Lc8/PIb;->token:I

    .line 497
    invoke-virtual {p0}, Lc8/PIb;->next()C

    goto/16 :goto_2

    .line 501
    :cond_d
    iget-char v2, p0, Lc8/PIb;->ch:C

    if-ne v2, v5, :cond_0

    .line 502
    iput v4, p0, Lc8/PIb;->token:I

    .line 503
    invoke-virtual {p0}, Lc8/PIb;->next()C

    goto/16 :goto_2

    .line 509
    :pswitch_4
    iget-char v2, p0, Lc8/PIb;->ch:C

    const/16 v3, 0x22

    if-ne v2, v3, :cond_e

    .line 510
    iget v1, p0, Lc8/PIb;->bp:I

    iput v1, p0, Lc8/PIb;->pos:I

    .line 511
    invoke-virtual {p0}, Lc8/PIb;->scanString()V

    goto/16 :goto_2

    .line 515
    :cond_e
    iget-char v2, p0, Lc8/PIb;->ch:C

    const/16 v3, 0x30

    if-lt v2, v3, :cond_f

    iget-char v2, p0, Lc8/PIb;->ch:C

    const/16 v3, 0x39

    if-gt v2, v3, :cond_f

    .line 516
    iget v1, p0, Lc8/PIb;->bp:I

    iput v1, p0, Lc8/PIb;->pos:I

    .line 517
    invoke-virtual {p0}, Lc8/PIb;->scanNumber()V

    goto/16 :goto_2

    .line 521
    :cond_f
    iget-char v2, p0, Lc8/PIb;->ch:C

    if-ne v2, v5, :cond_0

    .line 522
    iput v4, p0, Lc8/PIb;->token:I

    .line 525
    iget v2, p0, Lc8/PIb;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lc8/PIb;->bp:I

    .line 526
    .restart local v0    # "index":I
    iget v2, p0, Lc8/PIb;->len:I

    if-lt v0, v2, :cond_10

    .line 528
    :goto_7
    iput-char v1, p0, Lc8/PIb;->ch:C

    goto/16 :goto_2

    .line 526
    :cond_10
    iget-object v1, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 528
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_7

    .line 534
    .end local v0    # "index":I
    :pswitch_5
    iget-char v2, p0, Lc8/PIb;->ch:C

    if-ne v2, v7, :cond_11

    .line 535
    iput v6, p0, Lc8/PIb;->token:I

    .line 536
    invoke-virtual {p0}, Lc8/PIb;->next()C

    goto/16 :goto_2

    .line 540
    :cond_11
    iget-char v2, p0, Lc8/PIb;->ch:C

    if-ne v2, v5, :cond_0

    .line 541
    iput v4, p0, Lc8/PIb;->token:I

    .line 542
    invoke-virtual {p0}, Lc8/PIb;->next()C

    goto/16 :goto_2

    .line 547
    :pswitch_6
    iget-char v2, p0, Lc8/PIb;->ch:C

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_12

    .line 548
    const/16 v1, 0xf

    iput v1, p0, Lc8/PIb;->token:I

    .line 549
    invoke-virtual {p0}, Lc8/PIb;->next()C

    goto/16 :goto_2

    .line 553
    :cond_12
    :pswitch_7
    iget-char v2, p0, Lc8/PIb;->ch:C

    if-ne v2, v1, :cond_0

    .line 554
    const/16 v1, 0x14

    iput v1, p0, Lc8/PIb;->token:I

    goto/16 :goto_2

    .line 559
    :pswitch_8
    invoke-virtual {p0}, Lc8/PIb;->nextIdent()V

    goto/16 :goto_2

    .line 575
    :cond_13
    invoke-virtual {p0}, Lc8/PIb;->nextToken()V

    goto/16 :goto_2

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public final nextTokenWithChar(C)V
    .locals 4
    .param p1, "expect"    # C

    .prologue
    .line 169
    const/4 v1, 0x0

    iput v1, p0, Lc8/PIb;->sp:I

    .line 172
    :goto_0
    iget-char v1, p0, Lc8/PIb;->ch:C

    if-ne v1, p1, :cond_1

    .line 175
    iget v1, p0, Lc8/PIb;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lc8/PIb;->bp:I

    .line 176
    .local v0, "index":I
    iget v1, p0, Lc8/PIb;->len:I

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1a

    .line 178
    :goto_1
    iput-char v1, p0, Lc8/PIb;->ch:C

    .line 180
    invoke-virtual {p0}, Lc8/PIb;->nextToken()V

    .line 181
    return-void

    .line 176
    :cond_0
    iget-object v1, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_1

    .line 184
    .end local v0    # "index":I
    :cond_1
    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 190
    :cond_2
    invoke-virtual {p0}, Lc8/PIb;->next()C

    goto :goto_0

    .line 194
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not match "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, p0, Lc8/PIb;->ch:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final numberString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 199
    iget v3, p0, Lc8/PIb;->np:I

    iget v4, p0, Lc8/PIb;->sp:I

    add-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    .line 200
    .local v1, "index":I
    iget-object v3, p0, Lc8/PIb;->text:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 202
    .local v0, "chLocal":C
    iget v2, p0, Lc8/PIb;->sp:I

    .line 203
    .local v2, "sp":I
    const/16 v3, 0x4c

    if-eq v0, v3, :cond_0

    const/16 v3, 0x53

    if-eq v0, v3, :cond_0

    const/16 v3, 0x42

    if-eq v0, v3, :cond_0

    const/16 v3, 0x46

    if-eq v0, v3, :cond_0

    const/16 v3, 0x44

    if-ne v0, v3, :cond_1

    .line 208
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 212
    :cond_1
    iget v3, p0, Lc8/PIb;->np:I

    invoke-direct {p0, v3, v2}, Lc8/PIb;->subString(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public scanBoolean()Z
    .locals 5

    .prologue
    .line 1428
    iget-object v2, p0, Lc8/PIb;->text:Ljava/lang/String;

    const-string/jumbo v3, "false"

    iget v4, p0, Lc8/PIb;->bp:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1429
    const/4 v0, 0x5

    .line 1430
    .local v0, "offset":I
    const/4 v1, 0x0

    .line 1445
    .local v1, "value":Z
    :goto_0
    iget v2, p0, Lc8/PIb;->bp:I

    add-int/2addr v2, v0

    iput v2, p0, Lc8/PIb;->bp:I

    .line 1446
    iget v2, p0, Lc8/PIb;->bp:I

    invoke-virtual {p0, v2}, Lc8/PIb;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lc8/PIb;->ch:C

    .line 1448
    .end local v0    # "offset":I
    .end local v1    # "value":Z
    :goto_1
    return v1

    .line 1431
    :cond_0
    iget-object v2, p0, Lc8/PIb;->text:Ljava/lang/String;

    const-string/jumbo v3, "true"

    iget v4, p0, Lc8/PIb;->bp:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1432
    const/4 v0, 0x4

    .line 1433
    .restart local v0    # "offset":I
    const/4 v1, 0x1

    .restart local v1    # "value":Z
    goto :goto_0

    .line 1434
    .end local v0    # "offset":I
    .end local v1    # "value":Z
    :cond_1
    iget-char v2, p0, Lc8/PIb;->ch:C

    const/16 v3, 0x31

    if-ne v2, v3, :cond_2

    .line 1435
    const/4 v0, 0x1

    .line 1436
    .restart local v0    # "offset":I
    const/4 v1, 0x1

    .restart local v1    # "value":Z
    goto :goto_0

    .line 1437
    .end local v0    # "offset":I
    .end local v1    # "value":Z
    :cond_2
    iget-char v2, p0, Lc8/PIb;->ch:C

    const/16 v3, 0x30

    if-ne v2, v3, :cond_3

    .line 1438
    const/4 v0, 0x1

    .line 1439
    .restart local v0    # "offset":I
    const/4 v1, 0x0

    .restart local v1    # "value":Z
    goto :goto_0

    .line 1441
    .end local v0    # "offset":I
    .end local v1    # "value":Z
    :cond_3
    const/4 v2, -0x1

    iput v2, p0, Lc8/PIb;->matchStat:I

    .line 1442
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public scanFieldBoolean(J)Z
    .locals 9
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2652
    const/4 v6, 0x0

    iput v6, p0, Lc8/PIb;->matchStat:I

    .line 2654
    invoke-direct {p0, p1, p2}, Lc8/PIb;->matchFieldHash(J)I

    move-result v3

    .line 2655
    .local v3, "offset":I
    if-nez v3, :cond_0

    .line 2656
    const/4 v5, 0x0

    .line 2744
    :goto_0
    return v5

    .line 2660
    :cond_0
    iget-object v6, p0, Lc8/PIb;->text:Ljava/lang/String;

    const-string/jumbo v7, "false"

    iget v8, p0, Lc8/PIb;->bp:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2661
    add-int/lit8 v3, v3, 0x5

    .line 2662
    const/4 v5, 0x0

    .line 2678
    .local v5, "value":Z
    :goto_1
    iget v6, p0, Lc8/PIb;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    add-int v1, v6, v3

    .line 2679
    .local v1, "charIndex":I
    iget v6, p0, Lc8/PIb;->len:I

    if-lt v1, v6, :cond_5

    const/16 v0, 0x1a

    .line 2683
    .local v0, "chLocal":C
    :goto_2
    const/16 v6, 0x2c

    if-ne v0, v6, :cond_7

    .line 2684
    iget v6, p0, Lc8/PIb;->bp:I

    add-int/lit8 v7, v4, -0x1

    add-int/2addr v6, v7

    iput v6, p0, Lc8/PIb;->bp:I

    .line 2687
    iget v6, p0, Lc8/PIb;->bp:I

    add-int/lit8 v2, v6, 0x1

    iput v2, p0, Lc8/PIb;->bp:I

    .line 2688
    .local v2, "index":I
    iget v6, p0, Lc8/PIb;->len:I

    if-lt v2, v6, :cond_6

    const/16 v6, 0x1a

    .line 2690
    :goto_3
    iput-char v6, p0, Lc8/PIb;->ch:C

    .line 2692
    const/4 v6, 0x3

    iput v6, p0, Lc8/PIb;->matchStat:I

    .line 2693
    const/16 v6, 0x10

    iput v6, p0, Lc8/PIb;->token:I

    move v3, v4

    .line 2695
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 2663
    .end local v0    # "chLocal":C
    .end local v1    # "charIndex":I
    .end local v2    # "index":I
    .end local v5    # "value":Z
    :cond_1
    iget-object v6, p0, Lc8/PIb;->text:Ljava/lang/String;

    const-string/jumbo v7, "true"

    iget v8, p0, Lc8/PIb;->bp:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2664
    add-int/lit8 v3, v3, 0x4

    .line 2665
    const/4 v5, 0x1

    .restart local v5    # "value":Z
    goto :goto_1

    .line 2666
    .end local v5    # "value":Z
    :cond_2
    iget-object v6, p0, Lc8/PIb;->text:Ljava/lang/String;

    const-string/jumbo v7, "\"false\""

    iget v8, p0, Lc8/PIb;->bp:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2667
    add-int/lit8 v3, v3, 0x7

    .line 2668
    const/4 v5, 0x0

    .restart local v5    # "value":Z
    goto :goto_1

    .line 2669
    .end local v5    # "value":Z
    :cond_3
    iget-object v6, p0, Lc8/PIb;->text:Ljava/lang/String;

    const-string/jumbo v7, "\"true\""

    iget v8, p0, Lc8/PIb;->bp:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2670
    add-int/lit8 v3, v3, 0x6

    .line 2671
    const/4 v5, 0x1

    .restart local v5    # "value":Z
    goto :goto_1

    .line 2673
    .end local v5    # "value":Z
    :cond_4
    const/4 v6, -0x1

    iput v6, p0, Lc8/PIb;->matchStat:I

    .line 2674
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2679
    .end local v3    # "offset":I
    .restart local v1    # "charIndex":I
    .restart local v4    # "offset":I
    .restart local v5    # "value":Z
    :cond_5
    iget-object v6, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2681
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_2

    .line 2688
    .restart local v0    # "chLocal":C
    .restart local v2    # "index":I
    :cond_6
    iget-object v6, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2690
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_3

    .line 2698
    .end local v2    # "index":I
    :cond_7
    const/16 v6, 0x7d

    if-ne v0, v6, :cond_f

    .line 2699
    iget v6, p0, Lc8/PIb;->bp:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v6, v4

    invoke-virtual {p0, v6}, Lc8/PIb;->charAt(I)C

    move-result v0

    .line 2700
    const/16 v6, 0x2c

    if-ne v0, v6, :cond_9

    .line 2701
    const/16 v6, 0x10

    iput v6, p0, Lc8/PIb;->token:I

    .line 2702
    iget v6, p0, Lc8/PIb;->bp:I

    add-int/lit8 v7, v3, -0x1

    add-int/2addr v6, v7

    iput v6, p0, Lc8/PIb;->bp:I

    .line 2705
    iget v6, p0, Lc8/PIb;->bp:I

    add-int/lit8 v2, v6, 0x1

    iput v2, p0, Lc8/PIb;->bp:I

    .line 2706
    .restart local v2    # "index":I
    iget v6, p0, Lc8/PIb;->len:I

    if-lt v2, v6, :cond_8

    const/16 v6, 0x1a

    .line 2708
    :goto_4
    iput-char v6, p0, Lc8/PIb;->ch:C

    .line 2738
    .end local v2    # "index":I
    :goto_5
    const/4 v6, 0x4

    iput v6, p0, Lc8/PIb;->matchStat:I

    goto/16 :goto_0

    .line 2706
    .restart local v2    # "index":I
    :cond_8
    iget-object v6, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2708
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_4

    .line 2710
    .end local v2    # "index":I
    :cond_9
    const/16 v6, 0x5d

    if-ne v0, v6, :cond_b

    .line 2711
    const/16 v6, 0xf

    iput v6, p0, Lc8/PIb;->token:I

    .line 2712
    iget v6, p0, Lc8/PIb;->bp:I

    add-int/lit8 v7, v3, -0x1

    add-int/2addr v6, v7

    iput v6, p0, Lc8/PIb;->bp:I

    .line 2715
    iget v6, p0, Lc8/PIb;->bp:I

    add-int/lit8 v2, v6, 0x1

    iput v2, p0, Lc8/PIb;->bp:I

    .line 2716
    .restart local v2    # "index":I
    iget v6, p0, Lc8/PIb;->len:I

    if-lt v2, v6, :cond_a

    const/16 v6, 0x1a

    .line 2718
    :goto_6
    iput-char v6, p0, Lc8/PIb;->ch:C

    goto :goto_5

    .line 2716
    :cond_a
    iget-object v6, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2718
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_6

    .line 2720
    .end local v2    # "index":I
    :cond_b
    const/16 v6, 0x7d

    if-ne v0, v6, :cond_d

    .line 2721
    const/16 v6, 0xd

    iput v6, p0, Lc8/PIb;->token:I

    .line 2722
    iget v6, p0, Lc8/PIb;->bp:I

    add-int/lit8 v7, v3, -0x1

    add-int/2addr v6, v7

    iput v6, p0, Lc8/PIb;->bp:I

    .line 2725
    iget v6, p0, Lc8/PIb;->bp:I

    add-int/lit8 v2, v6, 0x1

    iput v2, p0, Lc8/PIb;->bp:I

    .line 2726
    .restart local v2    # "index":I
    iget v6, p0, Lc8/PIb;->len:I

    if-lt v2, v6, :cond_c

    const/16 v6, 0x1a

    .line 2728
    :goto_7
    iput-char v6, p0, Lc8/PIb;->ch:C

    goto :goto_5

    .line 2726
    :cond_c
    iget-object v6, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2728
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_7

    .line 2730
    .end local v2    # "index":I
    :cond_d
    const/16 v6, 0x1a

    if-ne v0, v6, :cond_e

    .line 2731
    const/16 v6, 0x14

    iput v6, p0, Lc8/PIb;->token:I

    .line 2732
    iget v6, p0, Lc8/PIb;->bp:I

    add-int/lit8 v7, v3, -0x1

    add-int/2addr v6, v7

    iput v6, p0, Lc8/PIb;->bp:I

    .line 2733
    const/16 v6, 0x1a

    iput-char v6, p0, Lc8/PIb;->ch:C

    goto :goto_5

    .line 2735
    :cond_e
    const/4 v6, -0x1

    iput v6, p0, Lc8/PIb;->matchStat:I

    .line 2736
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2740
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_f
    const/4 v6, -0x1

    iput v6, p0, Lc8/PIb;->matchStat:I

    .line 2741
    const/4 v5, 0x0

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_0
.end method

.method public final scanFieldDouble(J)D
    .locals 21
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 3309
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lc8/PIb;->matchStat:I

    .line 3311
    invoke-direct/range {p0 .. p2}, Lc8/PIb;->matchFieldHash(J)I

    move-result v7

    .line 3312
    .local v7, "offset":I
    if-nez v7, :cond_0

    .line 3313
    const-wide/16 v14, 0x0

    .line 3426
    :goto_0
    return-wide v14

    .line 3316
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .local v8, "offset":I
    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lc8/PIb;->charAt(I)C

    move-result v2

    .line 3318
    .local v2, "chLocal":C
    move-object/from16 v0, p0

    iget v13, v0, Lc8/PIb;->bp:I

    add-int/2addr v13, v8

    add-int/lit8 v11, v13, -0x1

    .line 3319
    .local v11, "start":I
    const/16 v13, 0x2d

    if-ne v2, v13, :cond_1

    const/4 v6, 0x1

    .line 3320
    .local v6, "negative":Z
    :goto_1
    if-eqz v6, :cond_14

    .line 3321
    move-object/from16 v0, p0

    iget v13, v0, Lc8/PIb;->bp:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lc8/PIb;->charAt(I)C

    move-result v2

    .line 3325
    :goto_2
    const/16 v13, 0x30

    if-lt v2, v13, :cond_c

    const/16 v13, 0x39

    if-gt v2, v13, :cond_c

    .line 3326
    add-int/lit8 v5, v2, -0x30

    .line 3328
    .local v5, "intVal":I
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lc8/PIb;->charAt(I)C

    move-result v2

    .line 3329
    const/16 v13, 0x30

    if-lt v2, v13, :cond_2

    const/16 v13, 0x39

    if-gt v2, v13, :cond_2

    .line 3330
    mul-int/lit8 v13, v5, 0xa

    add-int/lit8 v16, v2, -0x30

    add-int v5, v13, v16

    move v7, v8

    .line 3331
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    goto :goto_3

    .line 3319
    .end local v5    # "intVal":I
    .end local v6    # "negative":Z
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 3337
    .restart local v5    # "intVal":I
    .restart local v6    # "negative":Z
    :cond_2
    const/4 v9, 0x1

    .line 3338
    .local v9, "power":I
    const/16 v13, 0x2e

    if-ne v2, v13, :cond_3

    const/4 v10, 0x1

    .line 3339
    .local v10, "small":Z
    :goto_4
    if-eqz v10, :cond_5

    .line 3340
    move-object/from16 v0, p0

    iget v13, v0, Lc8/PIb;->bp:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lc8/PIb;->charAt(I)C

    move-result v2

    .line 3341
    const/16 v13, 0x30

    if-lt v2, v13, :cond_4

    const/16 v13, 0x39

    if-gt v2, v13, :cond_4

    .line 3342
    mul-int/lit8 v13, v5, 0xa

    add-int/lit8 v16, v2, -0x30

    add-int v5, v13, v16

    .line 3343
    mul-int/lit8 v9, v9, 0xa

    .line 3345
    :goto_5
    move-object/from16 v0, p0

    iget v13, v0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lc8/PIb;->charAt(I)C

    move-result v2

    .line 3346
    const/16 v13, 0x30

    if-lt v2, v13, :cond_5

    const/16 v13, 0x39

    if-gt v2, v13, :cond_5

    .line 3347
    mul-int/lit8 v13, v5, 0xa

    add-int/lit8 v16, v2, -0x30

    add-int v5, v13, v16

    .line 3348
    mul-int/lit8 v9, v9, 0xa

    move v7, v8

    .line 3349
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    goto :goto_5

    .line 3338
    .end local v7    # "offset":I
    .end local v10    # "small":Z
    .restart local v8    # "offset":I
    :cond_3
    const/4 v10, 0x0

    goto :goto_4

    .line 3355
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    .restart local v10    # "small":Z
    :cond_4
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lc8/PIb;->matchStat:I

    .line 3356
    const-wide/16 v14, 0x0

    goto/16 :goto_0

    .line 3360
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    :cond_5
    const/16 v13, 0x65

    if-eq v2, v13, :cond_6

    const/16 v13, 0x45

    if-ne v2, v13, :cond_8

    :cond_6
    const/4 v4, 0x1

    .line 3361
    .local v4, "exp":Z
    :goto_6
    if-eqz v4, :cond_9

    .line 3362
    move-object/from16 v0, p0

    iget v13, v0, Lc8/PIb;->bp:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lc8/PIb;->charAt(I)C

    move-result v2

    .line 3363
    const/16 v13, 0x2b

    if-eq v2, v13, :cond_7

    const/16 v13, 0x2d

    if-ne v2, v13, :cond_13

    .line 3364
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lc8/PIb;->charAt(I)C

    move-result v2

    .line 3367
    :goto_7
    const/16 v13, 0x30

    if-lt v2, v13, :cond_9

    const/16 v13, 0x39

    if-gt v2, v13, :cond_9

    .line 3368
    move-object/from16 v0, p0

    iget v13, v0, Lc8/PIb;->bp:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lc8/PIb;->charAt(I)C

    move-result v2

    move v8, v7

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_7

    .line 3360
    .end local v4    # "exp":Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_6

    .restart local v4    # "exp":Z
    :cond_9
    move v7, v8

    .line 3375
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    move-object/from16 v0, p0

    iget v13, v0, Lc8/PIb;->bp:I

    add-int/2addr v13, v7

    sub-int/2addr v13, v11

    add-int/lit8 v3, v13, -0x1

    .line 3376
    .local v3, "count":I
    if-nez v4, :cond_b

    const/16 v13, 0xa

    if-ge v3, v13, :cond_b

    .line 3377
    int-to-double v0, v5

    move-wide/from16 v16, v0

    int-to-double v0, v9

    move-wide/from16 v18, v0

    div-double v14, v16, v18

    .line 3378
    .local v14, "value":D
    if-eqz v6, :cond_a

    .line 3379
    neg-double v14, v14

    .line 3390
    :cond_a
    :goto_8
    const/16 v13, 0x2c

    if-ne v2, v13, :cond_d

    .line 3391
    move-object/from16 v0, p0

    iget v13, v0, Lc8/PIb;->bp:I

    add-int/lit8 v16, v7, -0x1

    add-int v13, v13, v16

    move-object/from16 v0, p0

    iput v13, v0, Lc8/PIb;->bp:I

    .line 3392
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    .line 3393
    const/4 v13, 0x3

    move-object/from16 v0, p0

    iput v13, v0, Lc8/PIb;->matchStat:I

    .line 3394
    const/16 v13, 0x10

    move-object/from16 v0, p0

    iput v13, v0, Lc8/PIb;->token:I

    goto/16 :goto_0

    .line 3382
    .end local v14    # "value":D
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lc8/PIb;->subString(II)Ljava/lang/String;

    move-result-object v12

    .line 3383
    .local v12, "text":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .restart local v14    # "value":D
    goto :goto_8

    .line 3386
    .end local v3    # "count":I
    .end local v4    # "exp":Z
    .end local v5    # "intVal":I
    .end local v9    # "power":I
    .end local v10    # "small":Z
    .end local v12    # "text":Ljava/lang/String;
    .end local v14    # "value":D
    :cond_c
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lc8/PIb;->matchStat:I

    .line 3387
    const-wide/16 v14, 0x0

    goto/16 :goto_0

    .line 3398
    .restart local v3    # "count":I
    .restart local v4    # "exp":Z
    .restart local v5    # "intVal":I
    .restart local v9    # "power":I
    .restart local v10    # "small":Z
    .restart local v14    # "value":D
    :cond_d
    const/16 v13, 0x7d

    if-ne v2, v13, :cond_12

    .line 3399
    move-object/from16 v0, p0

    iget v13, v0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lc8/PIb;->charAt(I)C

    move-result v2

    .line 3400
    const/16 v13, 0x2c

    if-ne v2, v13, :cond_e

    .line 3401
    const/16 v13, 0x10

    move-object/from16 v0, p0

    iput v13, v0, Lc8/PIb;->token:I

    .line 3402
    move-object/from16 v0, p0

    iget v13, v0, Lc8/PIb;->bp:I

    add-int/lit8 v16, v8, -0x1

    add-int v13, v13, v16

    move-object/from16 v0, p0

    iput v13, v0, Lc8/PIb;->bp:I

    .line 3403
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    .line 3420
    :goto_9
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, Lc8/PIb;->matchStat:I

    move v7, v8

    .line 3426
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    goto/16 :goto_0

    .line 3404
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    :cond_e
    const/16 v13, 0x5d

    if-ne v2, v13, :cond_f

    .line 3405
    const/16 v13, 0xf

    move-object/from16 v0, p0

    iput v13, v0, Lc8/PIb;->token:I

    .line 3406
    move-object/from16 v0, p0

    iget v13, v0, Lc8/PIb;->bp:I

    add-int/lit8 v16, v8, -0x1

    add-int v13, v13, v16

    move-object/from16 v0, p0

    iput v13, v0, Lc8/PIb;->bp:I

    .line 3407
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    goto :goto_9

    .line 3408
    :cond_f
    const/16 v13, 0x7d

    if-ne v2, v13, :cond_10

    .line 3409
    const/16 v13, 0xd

    move-object/from16 v0, p0

    iput v13, v0, Lc8/PIb;->token:I

    .line 3410
    move-object/from16 v0, p0

    iget v13, v0, Lc8/PIb;->bp:I

    add-int/lit8 v16, v8, -0x1

    add-int v13, v13, v16

    move-object/from16 v0, p0

    iput v13, v0, Lc8/PIb;->bp:I

    .line 3411
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    goto :goto_9

    .line 3412
    :cond_10
    const/16 v13, 0x1a

    if-ne v2, v13, :cond_11

    .line 3413
    move-object/from16 v0, p0

    iget v13, v0, Lc8/PIb;->bp:I

    add-int/lit8 v16, v8, -0x1

    add-int v13, v13, v16

    move-object/from16 v0, p0

    iput v13, v0, Lc8/PIb;->bp:I

    .line 3414
    const/16 v13, 0x14

    move-object/from16 v0, p0

    iput v13, v0, Lc8/PIb;->token:I

    .line 3415
    const/16 v13, 0x1a

    move-object/from16 v0, p0

    iput-char v13, v0, Lc8/PIb;->ch:C

    goto :goto_9

    .line 3417
    :cond_11
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lc8/PIb;->matchStat:I

    .line 3418
    const-wide/16 v14, 0x0

    move v7, v8

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    goto/16 :goto_0

    .line 3422
    :cond_12
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lc8/PIb;->matchStat:I

    .line 3423
    const-wide/16 v14, 0x0

    goto/16 :goto_0

    .end local v3    # "count":I
    .end local v14    # "value":D
    :cond_13
    move v8, v7

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_7

    .end local v4    # "exp":Z
    .end local v5    # "intVal":I
    .end local v9    # "power":I
    .end local v10    # "small":Z
    :cond_14
    move v7, v8

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    goto/16 :goto_2
.end method

.method public final scanFieldDoubleArray(J)[D
    .locals 27
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 3430
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    .line 3432
    invoke-direct/range {p0 .. p2}, Lc8/PIb;->matchFieldHash(J)I

    move-result v13

    .line 3433
    .local v13, "offset":I
    if-nez v13, :cond_0

    .line 3434
    const/4 v4, 0x0

    .line 3627
    :goto_0
    return-object v4

    .line 3436
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .local v14, "offset":I
    add-int v8, v22, v13

    .line 3437
    .local v8, "charIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_1

    const/16 v7, 0x1a

    .line 3440
    .local v7, "chLocal":C
    :goto_1
    const/16 v22, 0x5b

    move/from16 v0, v22

    if-eq v7, v0, :cond_2

    .line 3441
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    .line 3442
    const/4 v4, 0x0

    move v13, v14

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    goto :goto_0

    .line 3437
    .end local v7    # "chLocal":C
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3439
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_1

    .line 3445
    .restart local v7    # "chLocal":C
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    add-int v8, v22, v14

    .line 3446
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_4

    const/16 v7, 0x1a

    .line 3450
    :goto_2
    const/16 v22, 0x10

    move/from16 v0, v22

    new-array v4, v0, [D

    .line 3451
    .local v4, "array":[D
    const/4 v5, 0x0

    .line 3454
    .local v5, "arrayIndex":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int v22, v22, v13

    add-int/lit8 v17, v22, -0x1

    .line 3456
    .local v17, "start":I
    const/16 v22, 0x2d

    move/from16 v0, v22

    if-ne v7, v0, :cond_5

    const/4 v12, 0x1

    .line 3457
    .local v12, "negative":Z
    :goto_4
    if-eqz v12, :cond_3

    .line 3459
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    add-int v8, v22, v13

    .line 3460
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_6

    const/16 v7, 0x1a

    :goto_5
    move v13, v14

    .line 3465
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    :cond_3
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v7, v0, :cond_1d

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v7, v0, :cond_1d

    .line 3466
    add-int/lit8 v11, v7, -0x30

    .line 3469
    .local v11, "intVal":I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    add-int v8, v22, v13

    .line 3470
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_7

    const/16 v7, 0x1a

    .line 3473
    :goto_7
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v7, v0, :cond_8

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v7, v0, :cond_8

    .line 3474
    mul-int/lit8 v22, v11, 0xa

    add-int/lit8 v23, v7, -0x30

    add-int v11, v22, v23

    move v13, v14

    .line 3475
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    goto :goto_6

    .line 3446
    .end local v4    # "array":[D
    .end local v5    # "arrayIndex":I
    .end local v11    # "intVal":I
    .end local v12    # "negative":Z
    .end local v17    # "start":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3448
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_2

    .line 3456
    .restart local v4    # "array":[D
    .restart local v5    # "arrayIndex":I
    .restart local v17    # "start":I
    :cond_5
    const/4 v12, 0x0

    goto :goto_4

    .line 3460
    .end local v13    # "offset":I
    .restart local v12    # "negative":Z
    .restart local v14    # "offset":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3462
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_5

    .line 3470
    .restart local v11    # "intVal":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3472
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_7

    .line 3481
    :cond_8
    const/4 v15, 0x1

    .line 3482
    .local v15, "power":I
    const/16 v22, 0x2e

    move/from16 v0, v22

    if-ne v7, v0, :cond_9

    const/16 v16, 0x1

    .line 3483
    .local v16, "small":Z
    :goto_8
    if-eqz v16, :cond_d

    .line 3485
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    add-int v8, v22, v14

    .line 3486
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_a

    const/16 v7, 0x1a

    .line 3489
    :goto_9
    mul-int/lit8 v15, v15, 0xa

    .line 3490
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v7, v0, :cond_c

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v7, v0, :cond_c

    .line 3491
    mul-int/lit8 v22, v11, 0xa

    add-int/lit8 v23, v7, -0x30

    add-int v11, v22, v23

    .line 3494
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    add-int v8, v22, v13

    .line 3495
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_b

    const/16 v7, 0x1a

    .line 3499
    :goto_b
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v7, v0, :cond_d

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v7, v0, :cond_d

    .line 3500
    mul-int/lit8 v22, v11, 0xa

    add-int/lit8 v23, v7, -0x30

    add-int v11, v22, v23

    .line 3501
    mul-int/lit8 v15, v15, 0xa

    move v13, v14

    .line 3502
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    goto :goto_a

    .line 3482
    .end local v13    # "offset":I
    .end local v16    # "small":Z
    .restart local v14    # "offset":I
    :cond_9
    const/16 v16, 0x0

    goto :goto_8

    .line 3486
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    .restart local v16    # "small":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3488
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_9

    .line 3495
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3497
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_b

    .line 3508
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    :cond_c
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    .line 3509
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3513
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_d
    const/16 v22, 0x65

    move/from16 v0, v22

    if-eq v7, v0, :cond_e

    const/16 v22, 0x45

    move/from16 v0, v22

    if-ne v7, v0, :cond_10

    :cond_e
    const/4 v10, 0x1

    .line 3514
    .local v10, "exp":Z
    :goto_c
    if-eqz v10, :cond_14

    .line 3516
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    add-int v8, v22, v14

    .line 3517
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_11

    const/16 v7, 0x1a

    .line 3520
    :goto_d
    const/16 v22, 0x2b

    move/from16 v0, v22

    if-eq v7, v0, :cond_f

    const/16 v22, 0x2d

    move/from16 v0, v22

    if-ne v7, v0, :cond_25

    .line 3522
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    add-int v8, v22, v13

    .line 3523
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_12

    const/16 v7, 0x1a

    .line 3528
    :goto_e
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v7, v0, :cond_14

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v7, v0, :cond_14

    .line 3530
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    add-int v8, v22, v14

    .line 3531
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_13

    const/16 v7, 0x1a

    :goto_f
    move v14, v13

    .line 3533
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    goto :goto_e

    .line 3513
    .end local v10    # "exp":Z
    :cond_10
    const/4 v10, 0x0

    goto :goto_c

    .line 3517
    .end local v14    # "offset":I
    .restart local v10    # "exp":Z
    .restart local v13    # "offset":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3519
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_d

    .line 3523
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3525
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_e

    .line 3531
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3533
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_f

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_14
    move v13, v14

    .line 3540
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int v22, v22, v13

    sub-int v22, v22, v17

    add-int/lit8 v9, v22, -0x1

    .line 3543
    .local v9, "count":I
    if-nez v10, :cond_17

    const/16 v22, 0xa

    move/from16 v0, v22

    if-ge v9, v0, :cond_17

    .line 3544
    int-to-double v0, v11

    move-wide/from16 v22, v0

    int-to-double v0, v15

    move-wide/from16 v24, v0

    div-double v20, v22, v24

    .line 3545
    .local v20, "value":D
    if-eqz v12, :cond_15

    .line 3546
    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    .line 3553
    :cond_15
    :goto_10
    array-length v0, v4

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v5, v0, :cond_16

    .line 3554
    array-length v0, v4

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x3

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [D

    move-object/from16 v19, v0

    .line 3555
    .local v19, "tmp":[D
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-static {v4, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3556
    move-object/from16 v4, v19

    .line 3558
    .end local v19    # "tmp":[D
    :cond_16
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "arrayIndex":I
    .local v6, "arrayIndex":I
    aput-wide v20, v4, v5

    .line 3560
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v7, v0, :cond_19

    .line 3562
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    add-int v8, v22, v13

    .line 3563
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_18

    const/16 v7, 0x1a

    :goto_11
    move v5, v6

    .end local v6    # "arrayIndex":I
    .restart local v5    # "arrayIndex":I
    move v13, v14

    .line 3578
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    goto/16 :goto_3

    .line 3549
    .end local v20    # "value":D
    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v9}, Lc8/PIb;->subString(II)Ljava/lang/String;

    move-result-object v18

    .line 3550
    .local v18, "text":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    .restart local v20    # "value":D
    goto :goto_10

    .line 3563
    .end local v5    # "arrayIndex":I
    .end local v13    # "offset":I
    .end local v18    # "text":Ljava/lang/String;
    .restart local v6    # "arrayIndex":I
    .restart local v14    # "offset":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3565
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_11

    .line 3566
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    :cond_19
    const/16 v22, 0x5d

    move/from16 v0, v22

    if-ne v7, v0, :cond_1c

    .line 3568
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    add-int v8, v22, v13

    .line 3569
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_1b

    const/16 v7, 0x1a

    .line 3581
    :goto_12
    array-length v0, v4

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v6, v0, :cond_1a

    .line 3582
    new-array v0, v6, [D

    move-object/from16 v19, v0

    .line 3583
    .restart local v19    # "tmp":[D
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-static {v4, v0, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3584
    move-object/from16 v4, v19

    .line 3587
    .end local v19    # "tmp":[D
    :cond_1a
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v7, v0, :cond_1e

    .line 3588
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v14, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 3589
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    .line 3590
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    .line 3591
    const/16 v22, 0x10

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->token:I

    move v13, v14

    .line 3592
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    goto/16 :goto_0

    .line 3569
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3571
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_12

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    :cond_1c
    move v5, v6

    .line 3574
    .end local v6    # "arrayIndex":I
    .restart local v5    # "arrayIndex":I
    goto/16 :goto_3

    .line 3575
    .end local v9    # "count":I
    .end local v10    # "exp":Z
    .end local v11    # "intVal":I
    .end local v15    # "power":I
    .end local v16    # "small":Z
    .end local v20    # "value":D
    :cond_1d
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    .line 3576
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3595
    .end local v5    # "arrayIndex":I
    .end local v13    # "offset":I
    .restart local v6    # "arrayIndex":I
    .restart local v9    # "count":I
    .restart local v10    # "exp":Z
    .restart local v11    # "intVal":I
    .restart local v14    # "offset":I
    .restart local v15    # "power":I
    .restart local v16    # "small":Z
    .restart local v20    # "value":D
    :cond_1e
    const/16 v22, 0x7d

    move/from16 v0, v22

    if-ne v7, v0, :cond_24

    .line 3597
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    add-int v8, v22, v14

    .line 3598
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_1f

    const/16 v7, 0x1a

    .line 3601
    :goto_13
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v7, v0, :cond_20

    .line 3602
    const/16 v22, 0x10

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->token:I

    .line 3603
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v13, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 3604
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    .line 3621
    :goto_14
    const/16 v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    goto/16 :goto_0

    .line 3598
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3600
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_13

    .line 3605
    :cond_20
    const/16 v22, 0x5d

    move/from16 v0, v22

    if-ne v7, v0, :cond_21

    .line 3606
    const/16 v22, 0xf

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->token:I

    .line 3607
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v13, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 3608
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    goto :goto_14

    .line 3609
    :cond_21
    const/16 v22, 0x7d

    move/from16 v0, v22

    if-ne v7, v0, :cond_22

    .line 3610
    const/16 v22, 0xd

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->token:I

    .line 3611
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v13, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 3612
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    goto :goto_14

    .line 3613
    :cond_22
    const/16 v22, 0x1a

    move/from16 v0, v22

    if-ne v7, v0, :cond_23

    .line 3614
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v13, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 3615
    const/16 v22, 0x14

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->token:I

    .line 3616
    const/16 v22, 0x1a

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-char v0, v1, Lc8/PIb;->ch:C

    goto/16 :goto_14

    .line 3618
    :cond_23
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    .line 3619
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3623
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_24
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    .line 3624
    const/4 v4, 0x0

    move v13, v14

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    goto/16 :goto_0

    .end local v6    # "arrayIndex":I
    .end local v9    # "count":I
    .end local v20    # "value":D
    .restart local v5    # "arrayIndex":I
    :cond_25
    move v14, v13

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    goto/16 :goto_e
.end method

.method public final scanFieldDoubleArray2(J)[[D
    .locals 29
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 3631
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    .line 3633
    invoke-direct/range {p0 .. p2}, Lc8/PIb;->matchFieldHash(J)I

    move-result v16

    .line 3634
    .local v16, "offset":I
    if-nez v16, :cond_0

    .line 3635
    const/16 v24, 0x0

    check-cast v24, [[D

    .line 3866
    :goto_0
    return-object v24

    .line 3637
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .local v17, "offset":I
    add-int v11, v24, v16

    .line 3638
    .local v11, "charIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_1

    const/16 v10, 0x1a

    .line 3642
    .local v10, "chLocal":C
    :goto_1
    const/16 v24, 0x5b

    move/from16 v0, v24

    if-eq v10, v0, :cond_2

    .line 3643
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    .line 3644
    const/16 v24, 0x0

    check-cast v24, [[D

    move/from16 v16, v17

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    goto :goto_0

    .line 3638
    .end local v10    # "chLocal":C
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3640
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_1

    .line 3647
    .restart local v10    # "chLocal":C
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    add-int v11, v24, v17

    .line 3648
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3650
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 3652
    :cond_3
    const/16 v24, 0x10

    move/from16 v0, v24

    new-array v7, v0, [[D

    .line 3653
    .local v7, "arrayarray":[[D
    const/4 v8, 0x0

    .line 3658
    .local v8, "arrayarrayIndex":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v11, v24, v16

    .line 3659
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_5

    const/16 v10, 0x1a

    .line 3663
    :goto_3
    const/16 v24, 0x10

    move/from16 v0, v24

    new-array v4, v0, [D

    .line 3664
    .local v4, "array":[D
    const/4 v5, 0x0

    .local v5, "arrayIndex":I
    move/from16 v16, v17

    .line 3667
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v24, v0

    add-int v24, v24, v16

    add-int/lit8 v19, v24, -0x1

    .line 3668
    .local v19, "start":I
    const/16 v24, 0x2d

    move/from16 v0, v24

    if-ne v10, v0, :cond_6

    const/4 v15, 0x1

    .line 3669
    .local v15, "negative":Z
    :goto_5
    if-eqz v15, :cond_4

    .line 3671
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v11, v24, v16

    .line 3672
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_7

    const/16 v10, 0x1a

    :goto_6
    move/from16 v16, v17

    .line 3677
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    :cond_4
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v10, v0, :cond_1f

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v10, v0, :cond_1f

    .line 3678
    add-int/lit8 v14, v10, -0x30

    .line 3681
    .local v14, "intVal":I
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v11, v24, v16

    .line 3682
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_8

    const/16 v10, 0x1a

    .line 3686
    :goto_8
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v10, v0, :cond_9

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v10, v0, :cond_9

    .line 3687
    mul-int/lit8 v24, v14, 0xa

    add-int/lit8 v25, v10, -0x30

    add-int v14, v24, v25

    move/from16 v16, v17

    .line 3688
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    goto :goto_7

    .line 3659
    .end local v4    # "array":[D
    .end local v5    # "arrayIndex":I
    .end local v14    # "intVal":I
    .end local v15    # "negative":Z
    .end local v16    # "offset":I
    .end local v19    # "start":I
    .restart local v17    # "offset":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3661
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_3

    .line 3668
    .end local v17    # "offset":I
    .restart local v4    # "array":[D
    .restart local v5    # "arrayIndex":I
    .restart local v16    # "offset":I
    .restart local v19    # "start":I
    :cond_6
    const/4 v15, 0x0

    goto :goto_5

    .line 3672
    .end local v16    # "offset":I
    .restart local v15    # "negative":Z
    .restart local v17    # "offset":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3674
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_6

    .line 3682
    .restart local v14    # "intVal":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3684
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_8

    .line 3694
    :cond_9
    const/16 v18, 0x1

    .line 3695
    .local v18, "power":I
    const/16 v24, 0x2e

    move/from16 v0, v24

    if-ne v10, v0, :cond_d

    .line 3697
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    add-int v11, v24, v17

    .line 3698
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_a

    const/16 v10, 0x1a

    .line 3702
    :goto_9
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v10, v0, :cond_c

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v10, v0, :cond_c

    .line 3703
    mul-int/lit8 v24, v14, 0xa

    add-int/lit8 v25, v10, -0x30

    add-int v14, v24, v25

    .line 3704
    mul-int/lit8 v18, v18, 0xa

    .line 3707
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v11, v24, v16

    .line 3708
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_b

    const/16 v10, 0x1a

    .line 3712
    :goto_b
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v10, v0, :cond_d

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v10, v0, :cond_d

    .line 3713
    mul-int/lit8 v24, v14, 0xa

    add-int/lit8 v25, v10, -0x30

    add-int v14, v24, v25

    .line 3714
    mul-int/lit8 v18, v18, 0xa

    move/from16 v16, v17

    .line 3715
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    goto :goto_a

    .line 3698
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3700
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_9

    .line 3708
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3710
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_b

    .line 3721
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    :cond_c
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    .line 3722
    const/16 v24, 0x0

    check-cast v24, [[D

    goto/16 :goto_0

    .line 3726
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_d
    const/16 v24, 0x65

    move/from16 v0, v24

    if-eq v10, v0, :cond_e

    const/16 v24, 0x45

    move/from16 v0, v24

    if-ne v10, v0, :cond_10

    :cond_e
    const/4 v13, 0x1

    .line 3727
    .local v13, "exp":Z
    :goto_c
    if-eqz v13, :cond_14

    .line 3729
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    add-int v11, v24, v17

    .line 3730
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_11

    const/16 v10, 0x1a

    .line 3733
    :goto_d
    const/16 v24, 0x2b

    move/from16 v0, v24

    if-eq v10, v0, :cond_f

    const/16 v24, 0x2d

    move/from16 v0, v24

    if-ne v10, v0, :cond_2a

    .line 3735
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v11, v24, v16

    .line 3736
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_12

    const/16 v10, 0x1a

    .line 3741
    :goto_e
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v10, v0, :cond_14

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v10, v0, :cond_14

    .line 3743
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    add-int v11, v24, v17

    .line 3744
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_13

    const/16 v10, 0x1a

    :goto_f
    move/from16 v17, v16

    .line 3746
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    goto :goto_e

    .line 3726
    .end local v13    # "exp":Z
    :cond_10
    const/4 v13, 0x0

    goto :goto_c

    .line 3730
    .end local v17    # "offset":I
    .restart local v13    # "exp":Z
    .restart local v16    # "offset":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3732
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_d

    .line 3736
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3738
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_e

    .line 3744
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3746
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_f

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_14
    move/from16 v16, v17

    .line 3753
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v24, v0

    add-int v24, v24, v16

    sub-int v24, v24, v19

    add-int/lit8 v12, v24, -0x1

    .line 3755
    .local v12, "count":I
    if-nez v13, :cond_17

    const/16 v24, 0xa

    move/from16 v0, v24

    if-ge v12, v0, :cond_17

    .line 3756
    int-to-double v0, v14

    move-wide/from16 v24, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v22, v24, v26

    .line 3757
    .local v22, "value":D
    if-eqz v15, :cond_15

    .line 3758
    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    .line 3765
    :cond_15
    :goto_10
    array-length v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v5, v0, :cond_16

    .line 3766
    array-length v0, v4

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x3

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [D

    move-object/from16 v21, v0

    .line 3767
    .local v21, "tmp":[D
    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v4, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3768
    move-object/from16 v4, v21

    .line 3770
    .end local v21    # "tmp":[D
    :cond_16
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "arrayIndex":I
    .local v6, "arrayIndex":I
    aput-wide v22, v4, v5

    .line 3772
    const/16 v24, 0x2c

    move/from16 v0, v24

    if-ne v10, v0, :cond_19

    .line 3774
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v11, v24, v16

    .line 3775
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_18

    const/16 v10, 0x1a

    :goto_11
    move v5, v6

    .end local v6    # "arrayIndex":I
    .restart local v5    # "arrayIndex":I
    move/from16 v16, v17

    .line 3790
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    goto/16 :goto_4

    .line 3761
    .end local v22    # "value":D
    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v12}, Lc8/PIb;->subString(II)Ljava/lang/String;

    move-result-object v20

    .line 3762
    .local v20, "text":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v22

    .restart local v22    # "value":D
    goto :goto_10

    .line 3775
    .end local v5    # "arrayIndex":I
    .end local v16    # "offset":I
    .end local v20    # "text":Ljava/lang/String;
    .restart local v6    # "arrayIndex":I
    .restart local v17    # "offset":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3777
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_11

    .line 3778
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    :cond_19
    const/16 v24, 0x5d

    move/from16 v0, v24

    if-ne v10, v0, :cond_1e

    .line 3780
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v11, v24, v16

    .line 3781
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_1d

    const/16 v10, 0x1a

    .line 3793
    :goto_12
    array-length v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v6, v0, :cond_1a

    .line 3794
    new-array v0, v6, [D

    move-object/from16 v21, v0

    .line 3795
    .restart local v21    # "tmp":[D
    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v4, v0, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3796
    move-object/from16 v4, v21

    .line 3799
    .end local v21    # "tmp":[D
    :cond_1a
    array-length v0, v7

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v8, v0, :cond_1b

    .line 3800
    array-length v0, v7

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x3

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [[D

    move-object/from16 v21, v0

    .line 3801
    .local v21, "tmp":[[D
    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v4, v0, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3802
    move-object/from16 v7, v21

    .line 3804
    .end local v21    # "tmp":[[D
    :cond_1b
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "arrayarrayIndex":I
    .local v9, "arrayarrayIndex":I
    aput-object v4, v7, v8

    .line 3806
    const/16 v24, 0x2c

    move/from16 v0, v24

    if-ne v10, v0, :cond_20

    .line 3808
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    add-int v11, v24, v17

    .line 3809
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3811
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    :cond_1c
    move v8, v9

    .end local v9    # "arrayarrayIndex":I
    .restart local v8    # "arrayarrayIndex":I
    goto/16 :goto_2

    .line 3781
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3783
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_12

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    :cond_1e
    move v5, v6

    .line 3786
    .end local v6    # "arrayIndex":I
    .restart local v5    # "arrayIndex":I
    goto/16 :goto_4

    .line 3787
    .end local v12    # "count":I
    .end local v13    # "exp":Z
    .end local v14    # "intVal":I
    .end local v18    # "power":I
    .end local v22    # "value":D
    :cond_1f
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    .line 3788
    const/16 v24, 0x0

    check-cast v24, [[D

    goto/16 :goto_0

    .line 3812
    .end local v5    # "arrayIndex":I
    .end local v8    # "arrayarrayIndex":I
    .end local v16    # "offset":I
    .restart local v6    # "arrayIndex":I
    .restart local v9    # "arrayarrayIndex":I
    .restart local v12    # "count":I
    .restart local v13    # "exp":Z
    .restart local v14    # "intVal":I
    .restart local v17    # "offset":I
    .restart local v18    # "power":I
    .restart local v22    # "value":D
    :cond_20
    const/16 v24, 0x5d

    move/from16 v0, v24

    if-ne v10, v0, :cond_23

    .line 3814
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    add-int v11, v24, v17

    .line 3815
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_22

    const/16 v10, 0x1a

    .line 3824
    :goto_13
    array-length v0, v7

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v9, v0, :cond_21

    .line 3825
    new-array v0, v9, [[D

    move-object/from16 v21, v0

    .line 3826
    .restart local v21    # "tmp":[[D
    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v7, v0, v1, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3827
    move-object/from16 v7, v21

    .line 3830
    .end local v21    # "tmp":[[D
    :cond_21
    const/16 v24, 0x2c

    move/from16 v0, v24

    if-ne v10, v0, :cond_24

    .line 3831
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v24, v0

    add-int/lit8 v25, v16, -0x1

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 3832
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    .line 3833
    const/16 v24, 0x3

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    .line 3834
    const/16 v24, 0x10

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->token:I

    move-object/from16 v24, v7

    .line 3835
    goto/16 :goto_0

    .line 3815
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3817
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_13

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_23
    move v8, v9

    .end local v9    # "arrayarrayIndex":I
    .restart local v8    # "arrayarrayIndex":I
    move/from16 v16, v17

    .line 3820
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    goto/16 :goto_2

    .line 3838
    .end local v8    # "arrayarrayIndex":I
    .restart local v9    # "arrayarrayIndex":I
    :cond_24
    const/16 v24, 0x7d

    move/from16 v0, v24

    if-ne v10, v0, :cond_29

    .line 3839
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v24, v24, v16

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v10

    .line 3840
    const/16 v24, 0x2c

    move/from16 v0, v24

    if-ne v10, v0, :cond_25

    .line 3841
    const/16 v24, 0x10

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->token:I

    .line 3842
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v24, v0

    add-int/lit8 v25, v17, -0x1

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 3843
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    .line 3860
    :goto_14
    const/16 v24, 0x4

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    move/from16 v16, v17

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    move-object/from16 v24, v7

    .line 3866
    goto/16 :goto_0

    .line 3844
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_25
    const/16 v24, 0x5d

    move/from16 v0, v24

    if-ne v10, v0, :cond_26

    .line 3845
    const/16 v24, 0xf

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->token:I

    .line 3846
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v24, v0

    add-int/lit8 v25, v17, -0x1

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 3847
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    goto :goto_14

    .line 3848
    :cond_26
    const/16 v24, 0x7d

    move/from16 v0, v24

    if-ne v10, v0, :cond_27

    .line 3849
    const/16 v24, 0xd

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->token:I

    .line 3850
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v24, v0

    add-int/lit8 v25, v17, -0x1

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 3851
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    goto :goto_14

    .line 3852
    :cond_27
    const/16 v24, 0x1a

    move/from16 v0, v24

    if-ne v10, v0, :cond_28

    .line 3853
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v24, v0

    add-int/lit8 v25, v17, -0x1

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 3854
    const/16 v24, 0x14

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->token:I

    .line 3855
    const/16 v24, 0x1a

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-char v0, v1, Lc8/PIb;->ch:C

    goto :goto_14

    .line 3857
    :cond_28
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    .line 3858
    const/16 v24, 0x0

    check-cast v24, [[D

    move/from16 v16, v17

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    goto/16 :goto_0

    .line 3862
    :cond_29
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    .line 3863
    const/16 v24, 0x0

    check-cast v24, [[D

    goto/16 :goto_0

    .end local v6    # "arrayIndex":I
    .end local v9    # "arrayarrayIndex":I
    .end local v12    # "count":I
    .end local v22    # "value":D
    .restart local v5    # "arrayIndex":I
    .restart local v8    # "arrayarrayIndex":I
    :cond_2a
    move/from16 v17, v16

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    goto/16 :goto_e
.end method

.method public final scanFieldFloat(J)F
    .locals 15
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2748
    const/4 v12, 0x0

    iput v12, p0, Lc8/PIb;->matchStat:I

    .line 2750
    invoke-direct/range {p0 .. p2}, Lc8/PIb;->matchFieldHash(J)I

    move-result v5

    .line 2751
    .local v5, "offset":I
    if-nez v5, :cond_0

    .line 2752
    const/4 v11, 0x0

    .line 2865
    :goto_0
    return v11

    .line 2755
    :cond_0
    iget v12, p0, Lc8/PIb;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    add-int/2addr v12, v5

    invoke-virtual {p0, v12}, Lc8/PIb;->charAt(I)C

    move-result v0

    .line 2757
    .local v0, "chLocal":C
    iget v12, p0, Lc8/PIb;->bp:I

    add-int/2addr v12, v6

    add-int/lit8 v9, v12, -0x1

    .line 2758
    .local v9, "start":I
    const/16 v12, 0x2d

    if-ne v0, v12, :cond_1

    const/4 v4, 0x1

    .line 2759
    .local v4, "negative":Z
    :goto_1
    if-eqz v4, :cond_14

    .line 2760
    iget v12, p0, Lc8/PIb;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v12, v6

    invoke-virtual {p0, v12}, Lc8/PIb;->charAt(I)C

    move-result v0

    .line 2764
    :goto_2
    const/16 v12, 0x30

    if-lt v0, v12, :cond_c

    const/16 v12, 0x39

    if-gt v0, v12, :cond_c

    .line 2765
    add-int/lit8 v3, v0, -0x30

    .line 2767
    .local v3, "intVal":I
    :goto_3
    iget v12, p0, Lc8/PIb;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v12, v5

    invoke-virtual {p0, v12}, Lc8/PIb;->charAt(I)C

    move-result v0

    .line 2768
    const/16 v12, 0x30

    if-lt v0, v12, :cond_2

    const/16 v12, 0x39

    if-gt v0, v12, :cond_2

    .line 2769
    mul-int/lit8 v12, v3, 0xa

    add-int/lit8 v13, v0, -0x30

    add-int v3, v12, v13

    move v5, v6

    .line 2770
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_3

    .line 2758
    .end local v3    # "intVal":I
    .end local v4    # "negative":Z
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 2776
    .restart local v3    # "intVal":I
    .restart local v4    # "negative":Z
    :cond_2
    const/4 v7, 0x1

    .line 2777
    .local v7, "power":I
    const/16 v12, 0x2e

    if-ne v0, v12, :cond_3

    const/4 v8, 0x1

    .line 2778
    .local v8, "small":Z
    :goto_4
    if-eqz v8, :cond_5

    .line 2779
    iget v12, p0, Lc8/PIb;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v12, v6

    invoke-virtual {p0, v12}, Lc8/PIb;->charAt(I)C

    move-result v0

    .line 2780
    const/16 v12, 0x30

    if-lt v0, v12, :cond_4

    const/16 v12, 0x39

    if-gt v0, v12, :cond_4

    .line 2781
    mul-int/lit8 v12, v3, 0xa

    add-int/lit8 v13, v0, -0x30

    add-int v3, v12, v13

    .line 2782
    mul-int/lit8 v7, v7, 0xa

    .line 2784
    :goto_5
    iget v12, p0, Lc8/PIb;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v12, v5

    invoke-virtual {p0, v12}, Lc8/PIb;->charAt(I)C

    move-result v0

    .line 2785
    const/16 v12, 0x30

    if-lt v0, v12, :cond_5

    const/16 v12, 0x39

    if-gt v0, v12, :cond_5

    .line 2786
    mul-int/lit8 v12, v3, 0xa

    add-int/lit8 v13, v0, -0x30

    add-int v3, v12, v13

    .line 2787
    mul-int/lit8 v7, v7, 0xa

    move v5, v6

    .line 2788
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_5

    .line 2777
    .end local v5    # "offset":I
    .end local v8    # "small":Z
    .restart local v6    # "offset":I
    :cond_3
    const/4 v8, 0x0

    goto :goto_4

    .line 2794
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    .restart local v8    # "small":Z
    :cond_4
    const/4 v12, -0x1

    iput v12, p0, Lc8/PIb;->matchStat:I

    .line 2795
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2799
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_5
    const/16 v12, 0x65

    if-eq v0, v12, :cond_6

    const/16 v12, 0x45

    if-ne v0, v12, :cond_8

    :cond_6
    const/4 v2, 0x1

    .line 2800
    .local v2, "exp":Z
    :goto_6
    if-eqz v2, :cond_9

    .line 2801
    iget v12, p0, Lc8/PIb;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v12, v6

    invoke-virtual {p0, v12}, Lc8/PIb;->charAt(I)C

    move-result v0

    .line 2802
    const/16 v12, 0x2b

    if-eq v0, v12, :cond_7

    const/16 v12, 0x2d

    if-ne v0, v12, :cond_13

    .line 2803
    :cond_7
    iget v12, p0, Lc8/PIb;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v12, v5

    invoke-virtual {p0, v12}, Lc8/PIb;->charAt(I)C

    move-result v0

    .line 2806
    :goto_7
    const/16 v12, 0x30

    if-lt v0, v12, :cond_9

    const/16 v12, 0x39

    if-gt v0, v12, :cond_9

    .line 2807
    iget v12, p0, Lc8/PIb;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v12, v6

    invoke-virtual {p0, v12}, Lc8/PIb;->charAt(I)C

    move-result v0

    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_7

    .line 2799
    .end local v2    # "exp":Z
    :cond_8
    const/4 v2, 0x0

    goto :goto_6

    .restart local v2    # "exp":Z
    :cond_9
    move v5, v6

    .line 2814
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    iget v12, p0, Lc8/PIb;->bp:I

    add-int/2addr v12, v5

    sub-int/2addr v12, v9

    add-int/lit8 v1, v12, -0x1

    .line 2815
    .local v1, "count":I
    if-nez v2, :cond_b

    const/16 v12, 0xa

    if-ge v1, v12, :cond_b

    .line 2816
    int-to-float v12, v3

    int-to-float v13, v7

    div-float v11, v12, v13

    .line 2817
    .local v11, "value":F
    if-eqz v4, :cond_a

    .line 2818
    neg-float v11, v11

    .line 2829
    :cond_a
    :goto_8
    const/16 v12, 0x2c

    if-ne v0, v12, :cond_d

    .line 2830
    iget v12, p0, Lc8/PIb;->bp:I

    add-int/lit8 v13, v5, -0x1

    add-int/2addr v12, v13

    iput v12, p0, Lc8/PIb;->bp:I

    .line 2831
    invoke-virtual {p0}, Lc8/PIb;->next()C

    .line 2832
    const/4 v12, 0x3

    iput v12, p0, Lc8/PIb;->matchStat:I

    .line 2833
    const/16 v12, 0x10

    iput v12, p0, Lc8/PIb;->token:I

    goto/16 :goto_0

    .line 2821
    .end local v11    # "value":F
    :cond_b
    invoke-direct {p0, v9, v1}, Lc8/PIb;->subString(II)Ljava/lang/String;

    move-result-object v10

    .line 2822
    .local v10, "text":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .restart local v11    # "value":F
    goto :goto_8

    .line 2825
    .end local v1    # "count":I
    .end local v2    # "exp":Z
    .end local v3    # "intVal":I
    .end local v7    # "power":I
    .end local v8    # "small":Z
    .end local v10    # "text":Ljava/lang/String;
    .end local v11    # "value":F
    :cond_c
    const/4 v12, -0x1

    iput v12, p0, Lc8/PIb;->matchStat:I

    .line 2826
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2837
    .restart local v1    # "count":I
    .restart local v2    # "exp":Z
    .restart local v3    # "intVal":I
    .restart local v7    # "power":I
    .restart local v8    # "small":Z
    .restart local v11    # "value":F
    :cond_d
    const/16 v12, 0x7d

    if-ne v0, v12, :cond_12

    .line 2838
    iget v12, p0, Lc8/PIb;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v12, v5

    invoke-virtual {p0, v12}, Lc8/PIb;->charAt(I)C

    move-result v0

    .line 2839
    const/16 v12, 0x2c

    if-ne v0, v12, :cond_e

    .line 2840
    const/16 v12, 0x10

    iput v12, p0, Lc8/PIb;->token:I

    .line 2841
    iget v12, p0, Lc8/PIb;->bp:I

    add-int/lit8 v13, v6, -0x1

    add-int/2addr v12, v13

    iput v12, p0, Lc8/PIb;->bp:I

    .line 2842
    invoke-virtual {p0}, Lc8/PIb;->next()C

    .line 2859
    :goto_9
    const/4 v12, 0x4

    iput v12, p0, Lc8/PIb;->matchStat:I

    move v5, v6

    .line 2865
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_0

    .line 2843
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_e
    const/16 v12, 0x5d

    if-ne v0, v12, :cond_f

    .line 2844
    const/16 v12, 0xf

    iput v12, p0, Lc8/PIb;->token:I

    .line 2845
    iget v12, p0, Lc8/PIb;->bp:I

    add-int/lit8 v13, v6, -0x1

    add-int/2addr v12, v13

    iput v12, p0, Lc8/PIb;->bp:I

    .line 2846
    invoke-virtual {p0}, Lc8/PIb;->next()C

    goto :goto_9

    .line 2847
    :cond_f
    const/16 v12, 0x7d

    if-ne v0, v12, :cond_10

    .line 2848
    const/16 v12, 0xd

    iput v12, p0, Lc8/PIb;->token:I

    .line 2849
    iget v12, p0, Lc8/PIb;->bp:I

    add-int/lit8 v13, v6, -0x1

    add-int/2addr v12, v13

    iput v12, p0, Lc8/PIb;->bp:I

    .line 2850
    invoke-virtual {p0}, Lc8/PIb;->next()C

    goto :goto_9

    .line 2851
    :cond_10
    const/16 v12, 0x1a

    if-ne v0, v12, :cond_11

    .line 2852
    iget v12, p0, Lc8/PIb;->bp:I

    add-int/lit8 v13, v6, -0x1

    add-int/2addr v12, v13

    iput v12, p0, Lc8/PIb;->bp:I

    .line 2853
    const/16 v12, 0x14

    iput v12, p0, Lc8/PIb;->token:I

    .line 2854
    const/16 v12, 0x1a

    iput-char v12, p0, Lc8/PIb;->ch:C

    goto :goto_9

    .line 2856
    :cond_11
    const/4 v12, -0x1

    iput v12, p0, Lc8/PIb;->matchStat:I

    .line 2857
    const/4 v11, 0x0

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_0

    .line 2861
    :cond_12
    const/4 v12, -0x1

    iput v12, p0, Lc8/PIb;->matchStat:I

    .line 2862
    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v1    # "count":I
    .end local v11    # "value":F
    :cond_13
    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_7

    .end local v2    # "exp":Z
    .end local v3    # "intVal":I
    .end local v7    # "power":I
    .end local v8    # "small":Z
    :cond_14
    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_2
.end method

.method public final scanFieldFloatArray(J)[F
    .locals 23
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2869
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    .line 2871
    invoke-direct/range {p0 .. p2}, Lc8/PIb;->matchFieldHash(J)I

    move-result v12

    .line 2872
    .local v12, "offset":I
    if-nez v12, :cond_0

    .line 2873
    const/4 v3, 0x0

    .line 3066
    :goto_0
    return-object v3

    .line 2875
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .local v13, "offset":I
    add-int v7, v20, v12

    .line 2876
    .local v7, "charIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_1

    const/16 v6, 0x1a

    .line 2879
    .local v6, "chLocal":C
    :goto_1
    const/16 v20, 0x5b

    move/from16 v0, v20

    if-eq v6, v0, :cond_2

    .line 2880
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    .line 2881
    const/4 v3, 0x0

    move v12, v13

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto :goto_0

    .line 2876
    .end local v6    # "chLocal":C
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2878
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_1

    .line 2884
    .restart local v6    # "chLocal":C
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v20, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    add-int v7, v20, v13

    .line 2885
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_4

    const/16 v6, 0x1a

    .line 2889
    :goto_2
    const/16 v20, 0x10

    move/from16 v0, v20

    new-array v3, v0, [F

    .line 2890
    .local v3, "array":[F
    const/4 v4, 0x0

    .line 2893
    .local v4, "arrayIndex":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v20, v0

    add-int v20, v20, v12

    add-int/lit8 v16, v20, -0x1

    .line 2895
    .local v16, "start":I
    const/16 v20, 0x2d

    move/from16 v0, v20

    if-ne v6, v0, :cond_5

    const/4 v11, 0x1

    .line 2896
    .local v11, "negative":Z
    :goto_4
    if-eqz v11, :cond_3

    .line 2898
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v7, v20, v12

    .line 2899
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_6

    const/16 v6, 0x1a

    :goto_5
    move v12, v13

    .line 2904
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :cond_3
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v6, v0, :cond_1d

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v6, v0, :cond_1d

    .line 2905
    add-int/lit8 v10, v6, -0x30

    .line 2908
    .local v10, "intVal":I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v7, v20, v12

    .line 2909
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_7

    const/16 v6, 0x1a

    .line 2912
    :goto_7
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v6, v0, :cond_8

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v6, v0, :cond_8

    .line 2913
    mul-int/lit8 v20, v10, 0xa

    add-int/lit8 v21, v6, -0x30

    add-int v10, v20, v21

    move v12, v13

    .line 2914
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto :goto_6

    .line 2885
    .end local v3    # "array":[F
    .end local v4    # "arrayIndex":I
    .end local v10    # "intVal":I
    .end local v11    # "negative":Z
    .end local v16    # "start":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2887
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_2

    .line 2895
    .restart local v3    # "array":[F
    .restart local v4    # "arrayIndex":I
    .restart local v16    # "start":I
    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    .line 2899
    .end local v12    # "offset":I
    .restart local v11    # "negative":Z
    .restart local v13    # "offset":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2901
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_5

    .line 2909
    .restart local v10    # "intVal":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2911
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_7

    .line 2920
    :cond_8
    const/4 v14, 0x1

    .line 2921
    .local v14, "power":I
    const/16 v20, 0x2e

    move/from16 v0, v20

    if-ne v6, v0, :cond_9

    const/4 v15, 0x1

    .line 2922
    .local v15, "small":Z
    :goto_8
    if-eqz v15, :cond_d

    .line 2924
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v20, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    add-int v7, v20, v13

    .line 2925
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_a

    const/16 v6, 0x1a

    .line 2928
    :goto_9
    mul-int/lit8 v14, v14, 0xa

    .line 2929
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v6, v0, :cond_c

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v6, v0, :cond_c

    .line 2930
    mul-int/lit8 v20, v10, 0xa

    add-int/lit8 v21, v6, -0x30

    add-int v10, v20, v21

    .line 2933
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v7, v20, v12

    .line 2934
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_b

    const/16 v6, 0x1a

    .line 2938
    :goto_b
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v6, v0, :cond_d

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v6, v0, :cond_d

    .line 2939
    mul-int/lit8 v20, v10, 0xa

    add-int/lit8 v21, v6, -0x30

    add-int v10, v20, v21

    .line 2940
    mul-int/lit8 v14, v14, 0xa

    move v12, v13

    .line 2941
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto :goto_a

    .line 2921
    .end local v12    # "offset":I
    .end local v15    # "small":Z
    .restart local v13    # "offset":I
    :cond_9
    const/4 v15, 0x0

    goto :goto_8

    .line 2925
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    .restart local v15    # "small":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2927
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_9

    .line 2934
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2936
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_b

    .line 2947
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :cond_c
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    .line 2948
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2952
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_d
    const/16 v20, 0x65

    move/from16 v0, v20

    if-eq v6, v0, :cond_e

    const/16 v20, 0x45

    move/from16 v0, v20

    if-ne v6, v0, :cond_10

    :cond_e
    const/4 v9, 0x1

    .line 2953
    .local v9, "exp":Z
    :goto_c
    if-eqz v9, :cond_14

    .line 2955
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v20, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    add-int v7, v20, v13

    .line 2956
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_11

    const/16 v6, 0x1a

    .line 2959
    :goto_d
    const/16 v20, 0x2b

    move/from16 v0, v20

    if-eq v6, v0, :cond_f

    const/16 v20, 0x2d

    move/from16 v0, v20

    if-ne v6, v0, :cond_25

    .line 2961
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v7, v20, v12

    .line 2962
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_12

    const/16 v6, 0x1a

    .line 2967
    :goto_e
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v6, v0, :cond_14

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v6, v0, :cond_14

    .line 2969
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v20, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    add-int v7, v20, v13

    .line 2970
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_13

    const/16 v6, 0x1a

    :goto_f
    move v13, v12

    .line 2972
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    goto :goto_e

    .line 2952
    .end local v9    # "exp":Z
    :cond_10
    const/4 v9, 0x0

    goto :goto_c

    .line 2956
    .end local v13    # "offset":I
    .restart local v9    # "exp":Z
    .restart local v12    # "offset":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2958
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_d

    .line 2962
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2964
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_e

    .line 2970
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2972
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_f

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_14
    move v12, v13

    .line 2979
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v20, v0

    add-int v20, v20, v12

    sub-int v20, v20, v16

    add-int/lit8 v8, v20, -0x1

    .line 2982
    .local v8, "count":I
    if-nez v9, :cond_17

    const/16 v20, 0xa

    move/from16 v0, v20

    if-ge v8, v0, :cond_17

    .line 2983
    int-to-float v0, v10

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v19, v20, v21

    .line 2984
    .local v19, "value":F
    if-eqz v11, :cond_15

    .line 2985
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    .line 2992
    :cond_15
    :goto_10
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v4, v0, :cond_16

    .line 2993
    array-length v0, v3

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x3

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v18, v0

    .line 2994
    .local v18, "tmp":[F
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-static {v3, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2995
    move-object/from16 v3, v18

    .line 2997
    .end local v18    # "tmp":[F
    :cond_16
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "arrayIndex":I
    .local v5, "arrayIndex":I
    aput v19, v3, v4

    .line 2999
    const/16 v20, 0x2c

    move/from16 v0, v20

    if-ne v6, v0, :cond_19

    .line 3001
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v7, v20, v12

    .line 3002
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_18

    const/16 v6, 0x1a

    :goto_11
    move v4, v5

    .end local v5    # "arrayIndex":I
    .restart local v4    # "arrayIndex":I
    move v12, v13

    .line 3017
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto/16 :goto_3

    .line 2988
    .end local v19    # "value":F
    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v8}, Lc8/PIb;->subString(II)Ljava/lang/String;

    move-result-object v17

    .line 2989
    .local v17, "text":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    .restart local v19    # "value":F
    goto :goto_10

    .line 3002
    .end local v4    # "arrayIndex":I
    .end local v12    # "offset":I
    .end local v17    # "text":Ljava/lang/String;
    .restart local v5    # "arrayIndex":I
    .restart local v13    # "offset":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3004
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_11

    .line 3005
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :cond_19
    const/16 v20, 0x5d

    move/from16 v0, v20

    if-ne v6, v0, :cond_1c

    .line 3007
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v7, v20, v12

    .line 3008
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_1b

    const/16 v6, 0x1a

    .line 3020
    :goto_12
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v5, v0, :cond_1a

    .line 3021
    new-array v0, v5, [F

    move-object/from16 v18, v0

    .line 3022
    .restart local v18    # "tmp":[F
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-static {v3, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3023
    move-object/from16 v3, v18

    .line 3026
    .end local v18    # "tmp":[F
    :cond_1a
    const/16 v20, 0x2c

    move/from16 v0, v20

    if-ne v6, v0, :cond_1e

    .line 3027
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v20, v0

    add-int/lit8 v21, v13, -0x1

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 3028
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    .line 3029
    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    .line 3030
    const/16 v20, 0x10

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->token:I

    move v12, v13

    .line 3031
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto/16 :goto_0

    .line 3008
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3010
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_12

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :cond_1c
    move v4, v5

    .line 3013
    .end local v5    # "arrayIndex":I
    .restart local v4    # "arrayIndex":I
    goto/16 :goto_3

    .line 3014
    .end local v8    # "count":I
    .end local v9    # "exp":Z
    .end local v10    # "intVal":I
    .end local v14    # "power":I
    .end local v15    # "small":Z
    .end local v19    # "value":F
    :cond_1d
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    .line 3015
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3034
    .end local v4    # "arrayIndex":I
    .end local v12    # "offset":I
    .restart local v5    # "arrayIndex":I
    .restart local v8    # "count":I
    .restart local v9    # "exp":Z
    .restart local v10    # "intVal":I
    .restart local v13    # "offset":I
    .restart local v14    # "power":I
    .restart local v15    # "small":Z
    .restart local v19    # "value":F
    :cond_1e
    const/16 v20, 0x7d

    move/from16 v0, v20

    if-ne v6, v0, :cond_24

    .line 3036
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v20, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    add-int v7, v20, v13

    .line 3037
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_1f

    const/16 v6, 0x1a

    .line 3040
    :goto_13
    const/16 v20, 0x2c

    move/from16 v0, v20

    if-ne v6, v0, :cond_20

    .line 3041
    const/16 v20, 0x10

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->token:I

    .line 3042
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v20, v0

    add-int/lit8 v21, v12, -0x1

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 3043
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    .line 3060
    :goto_14
    const/16 v20, 0x4

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    goto/16 :goto_0

    .line 3037
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3039
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_13

    .line 3044
    :cond_20
    const/16 v20, 0x5d

    move/from16 v0, v20

    if-ne v6, v0, :cond_21

    .line 3045
    const/16 v20, 0xf

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->token:I

    .line 3046
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v20, v0

    add-int/lit8 v21, v12, -0x1

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 3047
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    goto :goto_14

    .line 3048
    :cond_21
    const/16 v20, 0x7d

    move/from16 v0, v20

    if-ne v6, v0, :cond_22

    .line 3049
    const/16 v20, 0xd

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->token:I

    .line 3050
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v20, v0

    add-int/lit8 v21, v12, -0x1

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 3051
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    goto :goto_14

    .line 3052
    :cond_22
    const/16 v20, 0x1a

    move/from16 v0, v20

    if-ne v6, v0, :cond_23

    .line 3053
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v20, v0

    add-int/lit8 v21, v12, -0x1

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 3054
    const/16 v20, 0x14

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->token:I

    .line 3055
    const/16 v20, 0x1a

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Lc8/PIb;->ch:C

    goto/16 :goto_14

    .line 3057
    :cond_23
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    .line 3058
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3062
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_24
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    .line 3063
    const/4 v3, 0x0

    move v12, v13

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto/16 :goto_0

    .end local v5    # "arrayIndex":I
    .end local v8    # "count":I
    .end local v19    # "value":F
    .restart local v4    # "arrayIndex":I
    :cond_25
    move v13, v12

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    goto/16 :goto_e
.end method

.method public final scanFieldFloatArray2(J)[[F
    .locals 25
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 3070
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    .line 3072
    invoke-direct/range {p0 .. p2}, Lc8/PIb;->matchFieldHash(J)I

    move-result v15

    .line 3073
    .local v15, "offset":I
    if-nez v15, :cond_0

    .line 3074
    const/16 v22, 0x0

    check-cast v22, [[F

    .line 3305
    :goto_0
    return-object v22

    .line 3076
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .local v16, "offset":I
    add-int v10, v22, v15

    .line 3077
    .local v10, "charIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_1

    const/16 v9, 0x1a

    .line 3081
    .local v9, "chLocal":C
    :goto_1
    const/16 v22, 0x5b

    move/from16 v0, v22

    if-eq v9, v0, :cond_2

    .line 3082
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    .line 3083
    const/16 v22, 0x0

    check-cast v22, [[F

    move/from16 v15, v16

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto :goto_0

    .line 3077
    .end local v9    # "chLocal":C
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3079
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_1

    .line 3086
    .restart local v9    # "chLocal":C
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v10, v22, v16

    .line 3087
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3089
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 3091
    :cond_3
    const/16 v22, 0x10

    move/from16 v0, v22

    new-array v6, v0, [[F

    .line 3092
    .local v6, "arrayarray":[[F
    const/4 v7, 0x0

    .line 3097
    .local v7, "arrayarrayIndex":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v10, v22, v15

    .line 3098
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_5

    const/16 v9, 0x1a

    .line 3102
    :goto_3
    const/16 v22, 0x10

    move/from16 v0, v22

    new-array v3, v0, [F

    .line 3103
    .local v3, "array":[F
    const/4 v4, 0x0

    .local v4, "arrayIndex":I
    move/from16 v15, v16

    .line 3106
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int v22, v22, v15

    add-int/lit8 v18, v22, -0x1

    .line 3107
    .local v18, "start":I
    const/16 v22, 0x2d

    move/from16 v0, v22

    if-ne v9, v0, :cond_6

    const/4 v14, 0x1

    .line 3108
    .local v14, "negative":Z
    :goto_5
    if-eqz v14, :cond_4

    .line 3110
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v10, v22, v15

    .line 3111
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_7

    const/16 v9, 0x1a

    :goto_6
    move/from16 v15, v16

    .line 3116
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :cond_4
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v9, v0, :cond_1f

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v9, v0, :cond_1f

    .line 3117
    add-int/lit8 v13, v9, -0x30

    .line 3120
    .local v13, "intVal":I
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v10, v22, v15

    .line 3121
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_8

    const/16 v9, 0x1a

    .line 3125
    :goto_8
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v9, v0, :cond_9

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v9, v0, :cond_9

    .line 3126
    mul-int/lit8 v22, v13, 0xa

    add-int/lit8 v23, v9, -0x30

    add-int v13, v22, v23

    move/from16 v15, v16

    .line 3127
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto :goto_7

    .line 3098
    .end local v3    # "array":[F
    .end local v4    # "arrayIndex":I
    .end local v13    # "intVal":I
    .end local v14    # "negative":Z
    .end local v15    # "offset":I
    .end local v18    # "start":I
    .restart local v16    # "offset":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3100
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_3

    .line 3107
    .end local v16    # "offset":I
    .restart local v3    # "array":[F
    .restart local v4    # "arrayIndex":I
    .restart local v15    # "offset":I
    .restart local v18    # "start":I
    :cond_6
    const/4 v14, 0x0

    goto :goto_5

    .line 3111
    .end local v15    # "offset":I
    .restart local v14    # "negative":Z
    .restart local v16    # "offset":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3113
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_6

    .line 3121
    .restart local v13    # "intVal":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3123
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_8

    .line 3133
    :cond_9
    const/16 v17, 0x1

    .line 3134
    .local v17, "power":I
    const/16 v22, 0x2e

    move/from16 v0, v22

    if-ne v9, v0, :cond_d

    .line 3136
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v10, v22, v16

    .line 3137
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_a

    const/16 v9, 0x1a

    .line 3141
    :goto_9
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v9, v0, :cond_c

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v9, v0, :cond_c

    .line 3142
    mul-int/lit8 v22, v13, 0xa

    add-int/lit8 v23, v9, -0x30

    add-int v13, v22, v23

    .line 3143
    mul-int/lit8 v17, v17, 0xa

    .line 3146
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v10, v22, v15

    .line 3147
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_b

    const/16 v9, 0x1a

    .line 3151
    :goto_b
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v9, v0, :cond_d

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v9, v0, :cond_d

    .line 3152
    mul-int/lit8 v22, v13, 0xa

    add-int/lit8 v23, v9, -0x30

    add-int v13, v22, v23

    .line 3153
    mul-int/lit8 v17, v17, 0xa

    move/from16 v15, v16

    .line 3154
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto :goto_a

    .line 3137
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3139
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_9

    .line 3147
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3149
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_b

    .line 3160
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :cond_c
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    .line 3161
    const/16 v22, 0x0

    check-cast v22, [[F

    goto/16 :goto_0

    .line 3165
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_d
    const/16 v22, 0x65

    move/from16 v0, v22

    if-eq v9, v0, :cond_e

    const/16 v22, 0x45

    move/from16 v0, v22

    if-ne v9, v0, :cond_10

    :cond_e
    const/4 v12, 0x1

    .line 3166
    .local v12, "exp":Z
    :goto_c
    if-eqz v12, :cond_14

    .line 3168
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v10, v22, v16

    .line 3169
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_11

    const/16 v9, 0x1a

    .line 3172
    :goto_d
    const/16 v22, 0x2b

    move/from16 v0, v22

    if-eq v9, v0, :cond_f

    const/16 v22, 0x2d

    move/from16 v0, v22

    if-ne v9, v0, :cond_2a

    .line 3174
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v10, v22, v15

    .line 3175
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_12

    const/16 v9, 0x1a

    .line 3180
    :goto_e
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v9, v0, :cond_14

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v9, v0, :cond_14

    .line 3182
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v10, v22, v16

    .line 3183
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_13

    const/16 v9, 0x1a

    :goto_f
    move/from16 v16, v15

    .line 3185
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    goto :goto_e

    .line 3165
    .end local v12    # "exp":Z
    :cond_10
    const/4 v12, 0x0

    goto :goto_c

    .line 3169
    .end local v16    # "offset":I
    .restart local v12    # "exp":Z
    .restart local v15    # "offset":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3171
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_d

    .line 3175
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3177
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_e

    .line 3183
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3185
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_f

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_14
    move/from16 v15, v16

    .line 3192
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int v22, v22, v15

    sub-int v22, v22, v18

    add-int/lit8 v11, v22, -0x1

    .line 3194
    .local v11, "count":I
    if-nez v12, :cond_17

    const/16 v22, 0xa

    move/from16 v0, v22

    if-ge v11, v0, :cond_17

    .line 3195
    int-to-float v0, v13

    move/from16 v22, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v21, v22, v23

    .line 3196
    .local v21, "value":F
    if-eqz v14, :cond_15

    .line 3197
    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    .line 3204
    :cond_15
    :goto_10
    array-length v0, v3

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v4, v0, :cond_16

    .line 3205
    array-length v0, v3

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x3

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v20, v0

    .line 3206
    .local v20, "tmp":[F
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-static {v3, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3207
    move-object/from16 v3, v20

    .line 3209
    .end local v20    # "tmp":[F
    :cond_16
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "arrayIndex":I
    .local v5, "arrayIndex":I
    aput v21, v3, v4

    .line 3211
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v9, v0, :cond_19

    .line 3213
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v10, v22, v15

    .line 3214
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_18

    const/16 v9, 0x1a

    :goto_11
    move v4, v5

    .end local v5    # "arrayIndex":I
    .restart local v4    # "arrayIndex":I
    move/from16 v15, v16

    .line 3229
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_4

    .line 3200
    .end local v21    # "value":F
    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v11}, Lc8/PIb;->subString(II)Ljava/lang/String;

    move-result-object v19

    .line 3201
    .local v19, "text":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    .restart local v21    # "value":F
    goto :goto_10

    .line 3214
    .end local v4    # "arrayIndex":I
    .end local v15    # "offset":I
    .end local v19    # "text":Ljava/lang/String;
    .restart local v5    # "arrayIndex":I
    .restart local v16    # "offset":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3216
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_11

    .line 3217
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :cond_19
    const/16 v22, 0x5d

    move/from16 v0, v22

    if-ne v9, v0, :cond_1e

    .line 3219
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v10, v22, v15

    .line 3220
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_1d

    const/16 v9, 0x1a

    .line 3232
    :goto_12
    array-length v0, v3

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v5, v0, :cond_1a

    .line 3233
    new-array v0, v5, [F

    move-object/from16 v20, v0

    .line 3234
    .restart local v20    # "tmp":[F
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-static {v3, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3235
    move-object/from16 v3, v20

    .line 3238
    .end local v20    # "tmp":[F
    :cond_1a
    array-length v0, v6

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v7, v0, :cond_1b

    .line 3239
    array-length v0, v6

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x3

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [[F

    move-object/from16 v20, v0

    .line 3240
    .local v20, "tmp":[[F
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-static {v3, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3241
    move-object/from16 v6, v20

    .line 3243
    .end local v20    # "tmp":[[F
    :cond_1b
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "arrayarrayIndex":I
    .local v8, "arrayarrayIndex":I
    aput-object v3, v6, v7

    .line 3245
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v9, v0, :cond_20

    .line 3247
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v10, v22, v16

    .line 3248
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3250
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    :cond_1c
    move v7, v8

    .end local v8    # "arrayarrayIndex":I
    .restart local v7    # "arrayarrayIndex":I
    goto/16 :goto_2

    .line 3220
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3222
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_12

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :cond_1e
    move v4, v5

    .line 3225
    .end local v5    # "arrayIndex":I
    .restart local v4    # "arrayIndex":I
    goto/16 :goto_4

    .line 3226
    .end local v11    # "count":I
    .end local v12    # "exp":Z
    .end local v13    # "intVal":I
    .end local v17    # "power":I
    .end local v21    # "value":F
    :cond_1f
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    .line 3227
    const/16 v22, 0x0

    check-cast v22, [[F

    goto/16 :goto_0

    .line 3251
    .end local v4    # "arrayIndex":I
    .end local v7    # "arrayarrayIndex":I
    .end local v15    # "offset":I
    .restart local v5    # "arrayIndex":I
    .restart local v8    # "arrayarrayIndex":I
    .restart local v11    # "count":I
    .restart local v12    # "exp":Z
    .restart local v13    # "intVal":I
    .restart local v16    # "offset":I
    .restart local v17    # "power":I
    .restart local v21    # "value":F
    :cond_20
    const/16 v22, 0x5d

    move/from16 v0, v22

    if-ne v9, v0, :cond_23

    .line 3253
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v10, v22, v16

    .line 3254
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_22

    const/16 v9, 0x1a

    .line 3263
    :goto_13
    array-length v0, v6

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v8, v0, :cond_21

    .line 3264
    new-array v0, v8, [[F

    move-object/from16 v20, v0

    .line 3265
    .restart local v20    # "tmp":[[F
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-static {v6, v0, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3266
    move-object/from16 v6, v20

    .line 3269
    .end local v20    # "tmp":[[F
    :cond_21
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v9, v0, :cond_24

    .line 3270
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v15, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 3271
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    .line 3272
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    .line 3273
    const/16 v22, 0x10

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->token:I

    move-object/from16 v22, v6

    .line 3274
    goto/16 :goto_0

    .line 3254
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3256
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_13

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_23
    move v7, v8

    .end local v8    # "arrayarrayIndex":I
    .restart local v7    # "arrayarrayIndex":I
    move/from16 v15, v16

    .line 3259
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_2

    .line 3277
    .end local v7    # "arrayarrayIndex":I
    .restart local v8    # "arrayarrayIndex":I
    :cond_24
    const/16 v22, 0x7d

    move/from16 v0, v22

    if-ne v9, v0, :cond_29

    .line 3278
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v22, v22, v15

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v9

    .line 3279
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v9, v0, :cond_25

    .line 3280
    const/16 v22, 0x10

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->token:I

    .line 3281
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v16, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 3282
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    .line 3299
    :goto_14
    const/16 v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    move/from16 v15, v16

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    move-object/from16 v22, v6

    .line 3305
    goto/16 :goto_0

    .line 3283
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_25
    const/16 v22, 0x5d

    move/from16 v0, v22

    if-ne v9, v0, :cond_26

    .line 3284
    const/16 v22, 0xf

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->token:I

    .line 3285
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v16, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 3286
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    goto :goto_14

    .line 3287
    :cond_26
    const/16 v22, 0x7d

    move/from16 v0, v22

    if-ne v9, v0, :cond_27

    .line 3288
    const/16 v22, 0xd

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->token:I

    .line 3289
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v16, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 3290
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    goto :goto_14

    .line 3291
    :cond_27
    const/16 v22, 0x1a

    move/from16 v0, v22

    if-ne v9, v0, :cond_28

    .line 3292
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v16, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 3293
    const/16 v22, 0x14

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->token:I

    .line 3294
    const/16 v22, 0x1a

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-char v0, v1, Lc8/PIb;->ch:C

    goto :goto_14

    .line 3296
    :cond_28
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    .line 3297
    const/16 v22, 0x0

    check-cast v22, [[F

    move/from16 v15, v16

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_0

    .line 3301
    :cond_29
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->matchStat:I

    .line 3302
    const/16 v22, 0x0

    check-cast v22, [[F

    goto/16 :goto_0

    .end local v5    # "arrayIndex":I
    .end local v8    # "arrayarrayIndex":I
    .end local v11    # "count":I
    .end local v21    # "value":F
    .restart local v4    # "arrayIndex":I
    .restart local v7    # "arrayarrayIndex":I
    :cond_2a
    move/from16 v16, v15

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    goto/16 :goto_e
.end method

.method public scanFieldInt(J)I
    .locals 9
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2133
    const/4 v7, 0x0

    iput v7, p0, Lc8/PIb;->matchStat:I

    .line 2135
    invoke-direct {p0, p1, p2}, Lc8/PIb;->matchFieldHash(J)I

    move-result v3

    .line 2136
    .local v3, "offset":I
    if-nez v3, :cond_0

    .line 2137
    const/4 v6, 0x0

    .line 2253
    :goto_0
    return v6

    .line 2141
    :cond_0
    iget v7, p0, Lc8/PIb;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    add-int v1, v7, v3

    .line 2142
    .local v1, "charIndex":I
    iget v7, p0, Lc8/PIb;->len:I

    if-lt v1, v7, :cond_1

    const/16 v0, 0x1a

    .line 2146
    .local v0, "chLocal":C
    :goto_1
    const/4 v5, 0x0

    .line 2147
    .local v5, "quote":Z
    const/16 v7, 0x22

    if-ne v0, v7, :cond_15

    .line 2148
    const/4 v5, 0x1

    .line 2150
    iget v7, p0, Lc8/PIb;->bp:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int v1, v7, v4

    .line 2151
    iget v7, p0, Lc8/PIb;->len:I

    if-lt v1, v7, :cond_2

    const/16 v0, 0x1a

    .line 2157
    :goto_2
    const/16 v7, 0x30

    if-lt v0, v7, :cond_9

    const/16 v7, 0x39

    if-gt v0, v7, :cond_9

    .line 2158
    add-int/lit8 v6, v0, -0x30

    .line 2161
    .local v6, "value":I
    :goto_3
    iget v7, p0, Lc8/PIb;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    add-int v1, v7, v3

    .line 2162
    iget v7, p0, Lc8/PIb;->len:I

    if-lt v1, v7, :cond_3

    const/16 v0, 0x1a

    .line 2165
    :goto_4
    const/16 v7, 0x30

    if-lt v0, v7, :cond_4

    const/16 v7, 0x39

    if-gt v0, v7, :cond_4

    .line 2166
    mul-int/lit8 v7, v6, 0xa

    add-int/lit8 v8, v0, -0x30

    add-int v6, v7, v8

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_3

    .line 2142
    .end local v0    # "chLocal":C
    .end local v3    # "offset":I
    .end local v5    # "quote":Z
    .end local v6    # "value":I
    .restart local v4    # "offset":I
    :cond_1
    iget-object v7, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2144
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 2151
    .end local v4    # "offset":I
    .restart local v0    # "chLocal":C
    .restart local v3    # "offset":I
    .restart local v5    # "quote":Z
    :cond_2
    iget-object v7, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2153
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_2

    .line 2162
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    .restart local v6    # "value":I
    :cond_3
    iget-object v7, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2164
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    .line 2167
    :cond_4
    const/16 v7, 0x2e

    if-ne v0, v7, :cond_5

    .line 2168
    const/4 v7, -0x1

    iput v7, p0, Lc8/PIb;->matchStat:I

    .line 2169
    const/4 v6, 0x0

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 2170
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_5
    const/16 v7, 0x22

    if-ne v0, v7, :cond_7

    .line 2171
    if-nez v5, :cond_6

    .line 2172
    const/4 v7, -0x1

    iput v7, p0, Lc8/PIb;->matchStat:I

    .line 2173
    const/4 v6, 0x0

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 2175
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_6
    iget v7, p0, Lc8/PIb;->bp:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int v2, v7, v4

    .line 2176
    .local v2, "index":I
    iget v7, p0, Lc8/PIb;->len:I

    if-lt v2, v7, :cond_8

    const/16 v0, 0x1a

    :goto_5
    move v4, v3

    .line 2184
    .end local v2    # "index":I
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_7
    if-gez v6, :cond_a

    .line 2185
    const/4 v7, -0x1

    iput v7, p0, Lc8/PIb;->matchStat:I

    .line 2186
    const/4 v6, 0x0

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_0

    .line 2176
    .restart local v2    # "index":I
    :cond_8
    iget-object v7, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2178
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_5

    .line 2189
    .end local v2    # "index":I
    .end local v6    # "value":I
    :cond_9
    const/4 v7, -0x1

    iput v7, p0, Lc8/PIb;->matchStat:I

    .line 2190
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2193
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    .restart local v6    # "value":I
    :cond_a
    const/16 v7, 0x2c

    if-ne v0, v7, :cond_c

    .line 2194
    iget v7, p0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v4, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lc8/PIb;->bp:I

    .line 2197
    iget v7, p0, Lc8/PIb;->bp:I

    add-int/lit8 v2, v7, 0x1

    iput v2, p0, Lc8/PIb;->bp:I

    .line 2198
    .restart local v2    # "index":I
    iget v7, p0, Lc8/PIb;->len:I

    if-lt v2, v7, :cond_b

    const/16 v7, 0x1a

    .line 2200
    :goto_6
    iput-char v7, p0, Lc8/PIb;->ch:C

    .line 2202
    const/4 v7, 0x3

    iput v7, p0, Lc8/PIb;->matchStat:I

    .line 2203
    const/16 v7, 0x10

    iput v7, p0, Lc8/PIb;->token:I

    move v3, v4

    .line 2204
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_0

    .line 2198
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_b
    iget-object v7, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2200
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_6

    .line 2207
    .end local v2    # "index":I
    :cond_c
    const/16 v7, 0x7d

    if-ne v0, v7, :cond_14

    .line 2208
    iget v7, p0, Lc8/PIb;->bp:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v7, v4

    invoke-virtual {p0, v7}, Lc8/PIb;->charAt(I)C

    move-result v0

    .line 2209
    const/16 v7, 0x2c

    if-ne v0, v7, :cond_e

    .line 2210
    const/16 v7, 0x10

    iput v7, p0, Lc8/PIb;->token:I

    .line 2211
    iget v7, p0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v3, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lc8/PIb;->bp:I

    .line 2214
    iget v7, p0, Lc8/PIb;->bp:I

    add-int/lit8 v2, v7, 0x1

    iput v2, p0, Lc8/PIb;->bp:I

    .line 2215
    .restart local v2    # "index":I
    iget v7, p0, Lc8/PIb;->len:I

    if-lt v2, v7, :cond_d

    const/16 v7, 0x1a

    .line 2217
    :goto_7
    iput-char v7, p0, Lc8/PIb;->ch:C

    .line 2247
    .end local v2    # "index":I
    :goto_8
    const/4 v7, 0x4

    iput v7, p0, Lc8/PIb;->matchStat:I

    goto/16 :goto_0

    .line 2215
    .restart local v2    # "index":I
    :cond_d
    iget-object v7, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2217
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_7

    .line 2219
    .end local v2    # "index":I
    :cond_e
    const/16 v7, 0x5d

    if-ne v0, v7, :cond_10

    .line 2220
    const/16 v7, 0xf

    iput v7, p0, Lc8/PIb;->token:I

    .line 2221
    iget v7, p0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v3, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lc8/PIb;->bp:I

    .line 2224
    iget v7, p0, Lc8/PIb;->bp:I

    add-int/lit8 v2, v7, 0x1

    iput v2, p0, Lc8/PIb;->bp:I

    .line 2225
    .restart local v2    # "index":I
    iget v7, p0, Lc8/PIb;->len:I

    if-lt v2, v7, :cond_f

    const/16 v7, 0x1a

    .line 2227
    :goto_9
    iput-char v7, p0, Lc8/PIb;->ch:C

    goto :goto_8

    .line 2225
    :cond_f
    iget-object v7, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2227
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_9

    .line 2229
    .end local v2    # "index":I
    :cond_10
    const/16 v7, 0x7d

    if-ne v0, v7, :cond_12

    .line 2230
    const/16 v7, 0xd

    iput v7, p0, Lc8/PIb;->token:I

    .line 2231
    iget v7, p0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v3, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lc8/PIb;->bp:I

    .line 2234
    iget v7, p0, Lc8/PIb;->bp:I

    add-int/lit8 v2, v7, 0x1

    iput v2, p0, Lc8/PIb;->bp:I

    .line 2235
    .restart local v2    # "index":I
    iget v7, p0, Lc8/PIb;->len:I

    if-lt v2, v7, :cond_11

    const/16 v7, 0x1a

    .line 2237
    :goto_a
    iput-char v7, p0, Lc8/PIb;->ch:C

    goto :goto_8

    .line 2235
    :cond_11
    iget-object v7, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2237
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_a

    .line 2239
    .end local v2    # "index":I
    :cond_12
    const/16 v7, 0x1a

    if-ne v0, v7, :cond_13

    .line 2240
    const/16 v7, 0x14

    iput v7, p0, Lc8/PIb;->token:I

    .line 2241
    iget v7, p0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v3, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lc8/PIb;->bp:I

    .line 2242
    const/16 v7, 0x1a

    iput-char v7, p0, Lc8/PIb;->ch:C

    goto :goto_8

    .line 2244
    :cond_13
    const/4 v7, -0x1

    iput v7, p0, Lc8/PIb;->matchStat:I

    .line 2245
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2249
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_14
    const/4 v7, -0x1

    iput v7, p0, Lc8/PIb;->matchStat:I

    .line 2250
    const/4 v6, 0x0

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_0

    .end local v3    # "offset":I
    .end local v6    # "value":I
    .restart local v4    # "offset":I
    :cond_15
    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_2
.end method

.method public final scanFieldIntArray(J)[I
    .locals 13
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2257
    const/4 v10, 0x0

    iput v10, p0, Lc8/PIb;->matchStat:I

    .line 2259
    invoke-direct {p0, p1, p2}, Lc8/PIb;->matchFieldHash(J)I

    move-result v6

    .line 2260
    .local v6, "offset":I
    if-nez v6, :cond_0

    .line 2261
    const/4 v0, 0x0

    .line 2386
    :goto_0
    return-object v0

    .line 2264
    :cond_0
    iget v10, p0, Lc8/PIb;->bp:I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .local v7, "offset":I
    add-int v4, v10, v6

    .line 2265
    .local v4, "charIndex":I
    iget v10, p0, Lc8/PIb;->len:I

    if-lt v4, v10, :cond_1

    const/16 v3, 0x1a

    .line 2268
    .local v3, "chLocal":C
    :goto_1
    const/16 v10, 0x5b

    if-eq v3, v10, :cond_2

    .line 2269
    const/4 v10, -0x1

    iput v10, p0, Lc8/PIb;->matchStat:I

    .line 2270
    const/4 v0, 0x0

    move v6, v7

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_0

    .line 2265
    .end local v3    # "chLocal":C
    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    :cond_1
    iget-object v10, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2267
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_1

    .line 2273
    .restart local v3    # "chLocal":C
    :cond_2
    iget v10, p0, Lc8/PIb;->bp:I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int v4, v10, v7

    .line 2274
    iget v10, p0, Lc8/PIb;->len:I

    if-lt v4, v10, :cond_4

    const/16 v3, 0x1a

    .line 2279
    :goto_2
    const/16 v10, 0x10

    new-array v0, v10, [I

    .line 2280
    .local v0, "array":[I
    const/4 v1, 0x0

    .line 2282
    .local v1, "arrayIndex":I
    const/16 v10, 0x5d

    if-ne v3, v10, :cond_17

    .line 2284
    iget v10, p0, Lc8/PIb;->bp:I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    add-int v4, v10, v6

    .line 2285
    iget v10, p0, Lc8/PIb;->len:I

    if-lt v4, v10, :cond_5

    const/16 v3, 0x1a

    :goto_3
    move v6, v7

    .line 2344
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    :goto_4
    array-length v10, v0

    if-eq v1, v10, :cond_3

    .line 2345
    new-array v8, v1, [I

    .line 2346
    .local v8, "tmp":[I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v0, v10, v8, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2347
    move-object v0, v8

    .line 2350
    .end local v8    # "tmp":[I
    :cond_3
    const/16 v10, 0x2c

    if-ne v3, v10, :cond_10

    .line 2351
    iget v10, p0, Lc8/PIb;->bp:I

    add-int/lit8 v11, v6, -0x1

    add-int/2addr v10, v11

    iput v10, p0, Lc8/PIb;->bp:I

    .line 2352
    invoke-virtual {p0}, Lc8/PIb;->next()C

    .line 2353
    const/4 v10, 0x3

    iput v10, p0, Lc8/PIb;->matchStat:I

    .line 2354
    const/16 v10, 0x10

    iput v10, p0, Lc8/PIb;->token:I

    goto :goto_0

    .line 2274
    .end local v0    # "array":[I
    .end local v1    # "arrayIndex":I
    :cond_4
    iget-object v10, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2276
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_2

    .line 2285
    .end local v6    # "offset":I
    .restart local v0    # "array":[I
    .restart local v1    # "arrayIndex":I
    .restart local v7    # "offset":I
    :cond_5
    iget-object v10, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2287
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_3

    .local v5, "nagative":Z
    :cond_6
    move v2, v1

    .line 2290
    .end local v1    # "arrayIndex":I
    .end local v5    # "nagative":Z
    .local v2, "arrayIndex":I
    :goto_5
    const/4 v5, 0x0

    .line 2291
    .restart local v5    # "nagative":Z
    const/16 v10, 0x2d

    if-ne v3, v10, :cond_16

    .line 2293
    iget v10, p0, Lc8/PIb;->bp:I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int v4, v10, v7

    .line 2294
    iget v10, p0, Lc8/PIb;->len:I

    if-lt v4, v10, :cond_7

    const/16 v3, 0x1a

    .line 2297
    :goto_6
    const/4 v5, 0x1

    .line 2299
    :goto_7
    const/16 v10, 0x30

    if-lt v3, v10, :cond_f

    const/16 v10, 0x39

    if-gt v3, v10, :cond_f

    .line 2300
    add-int/lit8 v9, v3, -0x30

    .line 2303
    .local v9, "value":I
    :goto_8
    iget v10, p0, Lc8/PIb;->bp:I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    add-int v4, v10, v6

    .line 2304
    iget v10, p0, Lc8/PIb;->len:I

    if-lt v4, v10, :cond_8

    const/16 v3, 0x1a

    .line 2308
    :goto_9
    const/16 v10, 0x30

    if-lt v3, v10, :cond_9

    const/16 v10, 0x39

    if-gt v3, v10, :cond_9

    .line 2309
    mul-int/lit8 v10, v9, 0xa

    add-int/lit8 v11, v3, -0x30

    add-int v9, v10, v11

    move v6, v7

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_8

    .line 2294
    .end local v9    # "value":I
    :cond_7
    iget-object v10, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2296
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_6

    .line 2304
    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    .restart local v9    # "value":I
    :cond_8
    iget-object v10, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2306
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_9

    .line 2315
    :cond_9
    array-length v10, v0

    if-lt v2, v10, :cond_a

    .line 2316
    array-length v10, v0

    mul-int/lit8 v10, v10, 0x3

    div-int/lit8 v10, v10, 0x2

    new-array v8, v10, [I

    .line 2317
    .restart local v8    # "tmp":[I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v0, v10, v8, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2318
    move-object v0, v8

    .line 2320
    .end local v8    # "tmp":[I
    :cond_a
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "arrayIndex":I
    .restart local v1    # "arrayIndex":I
    if-eqz v5, :cond_b

    neg-int v9, v9

    .end local v9    # "value":I
    :cond_b
    aput v9, v0, v2

    .line 2322
    const/16 v10, 0x2c

    if-ne v3, v10, :cond_d

    .line 2324
    iget v10, p0, Lc8/PIb;->bp:I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int v4, v10, v7

    .line 2325
    iget v10, p0, Lc8/PIb;->len:I

    if-lt v4, v10, :cond_c

    const/16 v3, 0x1a

    :goto_a
    move v2, v1

    .end local v1    # "arrayIndex":I
    .restart local v2    # "arrayIndex":I
    move v7, v6

    .line 2340
    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    goto :goto_5

    .line 2325
    .end local v2    # "arrayIndex":I
    .end local v7    # "offset":I
    .restart local v1    # "arrayIndex":I
    .restart local v6    # "offset":I
    :cond_c
    iget-object v10, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2327
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_a

    .line 2328
    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    :cond_d
    const/16 v10, 0x5d

    if-ne v3, v10, :cond_6

    .line 2330
    iget v10, p0, Lc8/PIb;->bp:I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int v4, v10, v7

    .line 2331
    iget v10, p0, Lc8/PIb;->len:I

    if-lt v4, v10, :cond_e

    const/16 v3, 0x1a

    .line 2334
    :goto_b
    goto/16 :goto_4

    .line 2331
    :cond_e
    iget-object v10, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2333
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_b

    .line 2337
    .end local v1    # "arrayIndex":I
    .restart local v2    # "arrayIndex":I
    :cond_f
    const/4 v10, -0x1

    iput v10, p0, Lc8/PIb;->matchStat:I

    .line 2338
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2358
    .end local v2    # "arrayIndex":I
    .end local v5    # "nagative":Z
    .restart local v1    # "arrayIndex":I
    :cond_10
    const/16 v10, 0x7d

    if-ne v3, v10, :cond_15

    .line 2359
    iget v10, p0, Lc8/PIb;->bp:I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v10, v6

    invoke-virtual {p0, v10}, Lc8/PIb;->charAt(I)C

    move-result v3

    .line 2360
    const/16 v10, 0x2c

    if-ne v3, v10, :cond_11

    .line 2361
    const/16 v10, 0x10

    iput v10, p0, Lc8/PIb;->token:I

    .line 2362
    iget v10, p0, Lc8/PIb;->bp:I

    add-int/lit8 v11, v7, -0x1

    add-int/2addr v10, v11

    iput v10, p0, Lc8/PIb;->bp:I

    .line 2363
    invoke-virtual {p0}, Lc8/PIb;->next()C

    .line 2380
    :goto_c
    const/4 v10, 0x4

    iput v10, p0, Lc8/PIb;->matchStat:I

    move v6, v7

    .line 2386
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_0

    .line 2364
    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    :cond_11
    const/16 v10, 0x5d

    if-ne v3, v10, :cond_12

    .line 2365
    const/16 v10, 0xf

    iput v10, p0, Lc8/PIb;->token:I

    .line 2366
    iget v10, p0, Lc8/PIb;->bp:I

    add-int/lit8 v11, v7, -0x1

    add-int/2addr v10, v11

    iput v10, p0, Lc8/PIb;->bp:I

    .line 2367
    invoke-virtual {p0}, Lc8/PIb;->next()C

    goto :goto_c

    .line 2368
    :cond_12
    const/16 v10, 0x7d

    if-ne v3, v10, :cond_13

    .line 2369
    const/16 v10, 0xd

    iput v10, p0, Lc8/PIb;->token:I

    .line 2370
    iget v10, p0, Lc8/PIb;->bp:I

    add-int/lit8 v11, v7, -0x1

    add-int/2addr v10, v11

    iput v10, p0, Lc8/PIb;->bp:I

    .line 2371
    invoke-virtual {p0}, Lc8/PIb;->next()C

    goto :goto_c

    .line 2372
    :cond_13
    const/16 v10, 0x1a

    if-ne v3, v10, :cond_14

    .line 2373
    iget v10, p0, Lc8/PIb;->bp:I

    add-int/lit8 v11, v7, -0x1

    add-int/2addr v10, v11

    iput v10, p0, Lc8/PIb;->bp:I

    .line 2374
    const/16 v10, 0x14

    iput v10, p0, Lc8/PIb;->token:I

    .line 2375
    const/16 v10, 0x1a

    iput-char v10, p0, Lc8/PIb;->ch:C

    goto :goto_c

    .line 2377
    :cond_14
    const/4 v10, -0x1

    iput v10, p0, Lc8/PIb;->matchStat:I

    .line 2378
    const/4 v0, 0x0

    move v6, v7

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_0

    .line 2382
    :cond_15
    const/4 v10, -0x1

    iput v10, p0, Lc8/PIb;->matchStat:I

    .line 2383
    const/4 v0, 0x0

    goto/16 :goto_0

    .end local v1    # "arrayIndex":I
    .end local v6    # "offset":I
    .restart local v2    # "arrayIndex":I
    .restart local v5    # "nagative":Z
    .restart local v7    # "offset":I
    :cond_16
    move v6, v7

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_7

    .end local v2    # "arrayIndex":I
    .end local v5    # "nagative":Z
    .restart local v1    # "arrayIndex":I
    :cond_17
    move v2, v1

    .end local v1    # "arrayIndex":I
    .restart local v2    # "arrayIndex":I
    move v7, v6

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    goto/16 :goto_5
.end method

.method public scanFieldLong(J)J
    .locals 13
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2390
    const/4 v5, 0x0

    iput v5, p0, Lc8/PIb;->matchStat:I

    .line 2392
    invoke-direct {p0, p1, p2}, Lc8/PIb;->matchFieldHash(J)I

    move-result v2

    .line 2393
    .local v2, "offset":I
    if-nez v2, :cond_0

    .line 2394
    const-wide/16 v6, 0x0

    .line 2519
    :goto_0
    return-wide v6

    .line 2400
    :cond_0
    iget v5, p0, Lc8/PIb;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    add-int v1, v5, v2

    .line 2401
    .local v1, "index":I
    iget v5, p0, Lc8/PIb;->len:I

    if-lt v1, v5, :cond_1

    const/16 v0, 0x1a

    .line 2408
    .local v0, "chLocal":C
    :goto_1
    const/4 v4, 0x0

    .line 2409
    .local v4, "quote":Z
    const/16 v5, 0x22

    if-ne v0, v5, :cond_15

    .line 2410
    const/4 v4, 0x1

    .line 2413
    iget v5, p0, Lc8/PIb;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int v1, v5, v3

    .line 2414
    iget v5, p0, Lc8/PIb;->len:I

    if-lt v1, v5, :cond_2

    const/16 v0, 0x1a

    .line 2420
    :goto_2
    const/16 v5, 0x30

    if-lt v0, v5, :cond_9

    const/16 v5, 0x39

    if-gt v0, v5, :cond_9

    .line 2422
    add-int/lit8 v5, v0, -0x30

    int-to-long v6, v5

    .line 2426
    .local v6, "value":J
    :goto_3
    iget v5, p0, Lc8/PIb;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int v1, v5, v2

    .line 2427
    iget v5, p0, Lc8/PIb;->len:I

    if-lt v1, v5, :cond_3

    const/16 v0, 0x1a

    .line 2431
    :goto_4
    const/16 v5, 0x30

    if-lt v0, v5, :cond_4

    const/16 v5, 0x39

    if-gt v0, v5, :cond_4

    .line 2432
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    add-int/lit8 v5, v0, -0x30

    int-to-long v10, v5

    add-long v6, v8, v10

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_3

    .line 2401
    .end local v0    # "chLocal":C
    .end local v2    # "offset":I
    .end local v4    # "quote":Z
    .end local v6    # "value":J
    .restart local v3    # "offset":I
    :cond_1
    iget-object v5, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2403
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 2414
    .end local v3    # "offset":I
    .restart local v0    # "chLocal":C
    .restart local v2    # "offset":I
    .restart local v4    # "quote":Z
    :cond_2
    iget-object v5, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2416
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_2

    .line 2427
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v6    # "value":J
    :cond_3
    iget-object v5, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2429
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    .line 2433
    :cond_4
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_5

    .line 2434
    const/4 v5, -0x1

    iput v5, p0, Lc8/PIb;->matchStat:I

    .line 2435
    const-wide/16 v6, 0x0

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_0

    .line 2436
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_5
    const/16 v5, 0x22

    if-ne v0, v5, :cond_7

    .line 2437
    if-nez v4, :cond_6

    .line 2438
    const/4 v5, -0x1

    iput v5, p0, Lc8/PIb;->matchStat:I

    .line 2439
    const-wide/16 v6, 0x0

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_0

    .line 2441
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_6
    iget v5, p0, Lc8/PIb;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int v1, v5, v3

    .line 2442
    iget v5, p0, Lc8/PIb;->len:I

    if-lt v1, v5, :cond_8

    const/16 v0, 0x1a

    :goto_5
    move v3, v2

    .line 2450
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_7
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_a

    .line 2451
    const/4 v5, -0x1

    iput v5, p0, Lc8/PIb;->matchStat:I

    .line 2452
    const-wide/16 v6, 0x0

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_0

    .line 2442
    :cond_8
    iget-object v5, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2444
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_5

    .line 2455
    .end local v6    # "value":J
    :cond_9
    const/4 v5, -0x1

    iput v5, p0, Lc8/PIb;->matchStat:I

    .line 2456
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .line 2459
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v6    # "value":J
    :cond_a
    const/16 v5, 0x2c

    if-ne v0, v5, :cond_c

    .line 2460
    iget v5, p0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v3, -0x1

    add-int/2addr v5, v8

    iput v5, p0, Lc8/PIb;->bp:I

    .line 2463
    iget v5, p0, Lc8/PIb;->bp:I

    add-int/lit8 v1, v5, 0x1

    iput v1, p0, Lc8/PIb;->bp:I

    .line 2464
    iget v5, p0, Lc8/PIb;->len:I

    if-lt v1, v5, :cond_b

    const/16 v5, 0x1a

    .line 2466
    :goto_6
    iput-char v5, p0, Lc8/PIb;->ch:C

    .line 2468
    const/4 v5, 0x3

    iput v5, p0, Lc8/PIb;->matchStat:I

    .line 2469
    const/16 v5, 0x10

    iput v5, p0, Lc8/PIb;->token:I

    move v2, v3

    .line 2470
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_0

    .line 2464
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_b
    iget-object v5, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2466
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_6

    .line 2473
    :cond_c
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_14

    .line 2474
    iget v5, p0, Lc8/PIb;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v5, v3

    invoke-virtual {p0, v5}, Lc8/PIb;->charAt(I)C

    move-result v0

    .line 2475
    const/16 v5, 0x2c

    if-ne v0, v5, :cond_e

    .line 2476
    const/16 v5, 0x10

    iput v5, p0, Lc8/PIb;->token:I

    .line 2477
    iget v5, p0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v2, -0x1

    add-int/2addr v5, v8

    iput v5, p0, Lc8/PIb;->bp:I

    .line 2480
    iget v5, p0, Lc8/PIb;->bp:I

    add-int/lit8 v1, v5, 0x1

    iput v1, p0, Lc8/PIb;->bp:I

    .line 2481
    iget v5, p0, Lc8/PIb;->len:I

    if-lt v1, v5, :cond_d

    const/16 v5, 0x1a

    .line 2483
    :goto_7
    iput-char v5, p0, Lc8/PIb;->ch:C

    .line 2513
    :goto_8
    const/4 v5, 0x4

    iput v5, p0, Lc8/PIb;->matchStat:I

    goto/16 :goto_0

    .line 2481
    :cond_d
    iget-object v5, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2483
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_7

    .line 2485
    :cond_e
    const/16 v5, 0x5d

    if-ne v0, v5, :cond_10

    .line 2486
    const/16 v5, 0xf

    iput v5, p0, Lc8/PIb;->token:I

    .line 2487
    iget v5, p0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v2, -0x1

    add-int/2addr v5, v8

    iput v5, p0, Lc8/PIb;->bp:I

    .line 2490
    iget v5, p0, Lc8/PIb;->bp:I

    add-int/lit8 v1, v5, 0x1

    iput v1, p0, Lc8/PIb;->bp:I

    .line 2491
    iget v5, p0, Lc8/PIb;->len:I

    if-lt v1, v5, :cond_f

    const/16 v5, 0x1a

    .line 2493
    :goto_9
    iput-char v5, p0, Lc8/PIb;->ch:C

    goto :goto_8

    .line 2491
    :cond_f
    iget-object v5, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2493
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_9

    .line 2495
    :cond_10
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_12

    .line 2496
    const/16 v5, 0xd

    iput v5, p0, Lc8/PIb;->token:I

    .line 2497
    iget v5, p0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v2, -0x1

    add-int/2addr v5, v8

    iput v5, p0, Lc8/PIb;->bp:I

    .line 2500
    iget v5, p0, Lc8/PIb;->bp:I

    add-int/lit8 v1, v5, 0x1

    iput v1, p0, Lc8/PIb;->bp:I

    .line 2501
    iget v5, p0, Lc8/PIb;->len:I

    if-lt v1, v5, :cond_11

    const/16 v5, 0x1a

    .line 2503
    :goto_a
    iput-char v5, p0, Lc8/PIb;->ch:C

    goto :goto_8

    .line 2501
    :cond_11
    iget-object v5, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2503
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_a

    .line 2505
    :cond_12
    const/16 v5, 0x1a

    if-ne v0, v5, :cond_13

    .line 2506
    const/16 v5, 0x14

    iput v5, p0, Lc8/PIb;->token:I

    .line 2507
    iget v5, p0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v2, -0x1

    add-int/2addr v5, v8

    iput v5, p0, Lc8/PIb;->bp:I

    .line 2508
    const/16 v5, 0x1a

    iput-char v5, p0, Lc8/PIb;->ch:C

    goto :goto_8

    .line 2510
    :cond_13
    const/4 v5, -0x1

    iput v5, p0, Lc8/PIb;->matchStat:I

    .line 2511
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .line 2515
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_14
    const/4 v5, -0x1

    iput v5, p0, Lc8/PIb;->matchStat:I

    .line 2516
    const-wide/16 v6, 0x0

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_0

    .end local v2    # "offset":I
    .end local v6    # "value":J
    .restart local v3    # "offset":I
    :cond_15
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_2
.end method

.method public scanFieldString(J)Ljava/lang/String;
    .locals 17
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2523
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lc8/PIb;->matchStat:I

    .line 2525
    invoke-direct/range {p0 .. p2}, Lc8/PIb;->matchFieldHash(J)I

    move-result v9

    .line 2526
    .local v9, "offset":I
    if-nez v9, :cond_0

    .line 2527
    const/4 v13, 0x0

    .line 2648
    :goto_0
    return-object v13

    .line 2532
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lc8/PIb;->bp:I

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "offset":I
    .local v10, "offset":I
    add-int v8, v14, v9

    .line 2533
    .local v8, "index":I
    move-object/from16 v0, p0

    iget v14, v0, Lc8/PIb;->len:I

    if-lt v8, v14, :cond_1

    .line 2534
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "unclosed str, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2536
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/PIb;->text:Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2540
    .local v1, "chLocal":C
    const/16 v14, 0x22

    if-eq v1, v14, :cond_2

    .line 2541
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lc8/PIb;->matchStat:I

    .line 2543
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/PIb;->stringDefaultValue:Ljava/lang/String;

    move v9, v10

    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_0

    .line 2547
    .end local v9    # "offset":I
    .restart local v10    # "offset":I
    :cond_2
    const/4 v6, 0x0

    .line 2548
    .local v6, "hasSpecial":Z
    move-object/from16 v0, p0

    iget v14, v0, Lc8/PIb;->bp:I

    add-int v12, v14, v10

    .line 2549
    .local v12, "startIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/PIb;->text:Ljava/lang/String;

    const/16 v15, 0x22

    invoke-virtual {v14, v15, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 2550
    .local v5, "endIndex":I
    const/4 v14, -0x1

    if-ne v5, v14, :cond_3

    .line 2551
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "unclosed str, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2555
    :cond_3
    sget-boolean v14, Lc8/PIb;->V6:Z

    if-eqz v14, :cond_4

    .line 2556
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/PIb;->text:Ljava/lang/String;

    invoke-virtual {v14, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 2563
    .local v13, "strVal":Ljava/lang/String;
    :goto_1
    const/16 v14, 0x5c

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_7

    .line 2565
    :goto_2
    const/4 v11, 0x0

    .line 2566
    .local v11, "slashCount":I
    add-int/lit8 v7, v5, -0x1

    .local v7, "i":I
    :goto_3
    if-ltz v7, :cond_5

    .line 2567
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/PIb;->text:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x5c

    if-ne v14, v15, :cond_5

    .line 2568
    const/4 v6, 0x1

    .line 2569
    add-int/lit8 v11, v11, 0x1

    .line 2566
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 2558
    .end local v7    # "i":I
    .end local v11    # "slashCount":I
    .end local v13    # "strVal":Ljava/lang/String;
    :cond_4
    sub-int v4, v5, v12

    .line 2559
    .local v4, "chars_len":I
    move-object/from16 v0, p0

    iget v14, v0, Lc8/PIb;->bp:I

    add-int/2addr v14, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Lc8/PIb;->sub_chars(II)[C

    move-result-object v3

    .line 2560
    .local v3, "chars":[C
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v13, v3, v14, v4}, Ljava/lang/String;-><init>([CII)V

    .restart local v13    # "strVal":Ljava/lang/String;
    goto :goto_1

    .line 2574
    .end local v3    # "chars":[C
    .end local v4    # "chars_len":I
    .restart local v7    # "i":I
    .restart local v11    # "slashCount":I
    :cond_5
    rem-int/lit8 v14, v11, 0x2

    if-eqz v14, :cond_6

    .line 2577
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/PIb;->text:Ljava/lang/String;

    const/16 v15, 0x22

    add-int/lit8 v16, v5, 0x1

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 2578
    goto :goto_2

    .line 2580
    :cond_6
    sub-int v4, v5, v12

    .line 2581
    .restart local v4    # "chars_len":I
    move-object/from16 v0, p0

    iget v14, v0, Lc8/PIb;->bp:I

    add-int/2addr v14, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Lc8/PIb;->sub_chars(II)[C

    move-result-object v3

    .line 2582
    .restart local v3    # "chars":[C
    if-eqz v6, :cond_8

    .line 2583
    invoke-static {v3, v4}, Lc8/PIb;->readString([CI)Ljava/lang/String;

    move-result-object v13

    .line 2595
    .end local v3    # "chars":[C
    .end local v4    # "chars_len":I
    .end local v7    # "i":I
    .end local v11    # "slashCount":I
    :cond_7
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 2596
    move v8, v5

    move-object/from16 v0, p0

    iget v14, v0, Lc8/PIb;->len:I

    if-lt v5, v14, :cond_9

    const/16 v1, 0x1a

    .line 2601
    :goto_5
    const/16 v14, 0x2c

    if-ne v1, v14, :cond_b

    .line 2602
    move-object/from16 v0, p0

    iput v5, v0, Lc8/PIb;->bp:I

    .line 2605
    move-object/from16 v0, p0

    iget v14, v0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v14, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lc8/PIb;->bp:I

    .line 2606
    move-object/from16 v0, p0

    iget v14, v0, Lc8/PIb;->len:I

    if-lt v8, v14, :cond_a

    const/16 v14, 0x1a

    .line 2608
    :goto_6
    move-object/from16 v0, p0

    iput-char v14, v0, Lc8/PIb;->ch:C

    .line 2610
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lc8/PIb;->matchStat:I

    .line 2611
    const/16 v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lc8/PIb;->token:I

    move v9, v10

    .line 2612
    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_0

    .line 2585
    .end local v9    # "offset":I
    .restart local v3    # "chars":[C
    .restart local v4    # "chars_len":I
    .restart local v7    # "i":I
    .restart local v10    # "offset":I
    .restart local v11    # "slashCount":I
    :cond_8
    new-instance v13, Ljava/lang/String;

    .end local v13    # "strVal":Ljava/lang/String;
    const/4 v14, 0x0

    invoke-direct {v13, v3, v14, v4}, Ljava/lang/String;-><init>([CII)V

    .line 2586
    .restart local v13    # "strVal":Ljava/lang/String;
    const/16 v14, 0x5c

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_7

    .line 2587
    invoke-static {v3, v4}, Lc8/PIb;->readString([CI)Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    .line 2596
    .end local v3    # "chars":[C
    .end local v4    # "chars_len":I
    .end local v7    # "i":I
    .end local v11    # "slashCount":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2598
    invoke-virtual {v14, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_5

    .line 2606
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2608
    invoke-virtual {v14, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    goto :goto_6

    .line 2615
    :cond_b
    const/16 v14, 0x7d

    if-ne v1, v14, :cond_11

    .line 2617
    add-int/lit8 v5, v5, 0x1

    .line 2618
    move v2, v5

    .local v2, "charIndex":I
    move-object/from16 v0, p0

    iget v14, v0, Lc8/PIb;->len:I

    if-lt v5, v14, :cond_c

    const/16 v1, 0x1a

    .line 2622
    :goto_7
    const/16 v14, 0x2c

    if-ne v1, v14, :cond_d

    .line 2623
    const/16 v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lc8/PIb;->token:I

    .line 2624
    move-object/from16 v0, p0

    iput v5, v0, Lc8/PIb;->bp:I

    .line 2625
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    .line 2642
    :goto_8
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lc8/PIb;->matchStat:I

    move v9, v10

    .line 2648
    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_0

    .line 2618
    .end local v9    # "offset":I
    .restart local v10    # "offset":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/PIb;->text:Ljava/lang/String;

    .line 2620
    invoke-virtual {v14, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_7

    .line 2626
    :cond_d
    const/16 v14, 0x5d

    if-ne v1, v14, :cond_e

    .line 2627
    const/16 v14, 0xf

    move-object/from16 v0, p0

    iput v14, v0, Lc8/PIb;->token:I

    .line 2628
    move-object/from16 v0, p0

    iput v5, v0, Lc8/PIb;->bp:I

    .line 2629
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    goto :goto_8

    .line 2630
    :cond_e
    const/16 v14, 0x7d

    if-ne v1, v14, :cond_f

    .line 2631
    const/16 v14, 0xd

    move-object/from16 v0, p0

    iput v14, v0, Lc8/PIb;->token:I

    .line 2632
    move-object/from16 v0, p0

    iput v5, v0, Lc8/PIb;->bp:I

    .line 2633
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    goto :goto_8

    .line 2634
    :cond_f
    const/16 v14, 0x1a

    if-ne v1, v14, :cond_10

    .line 2635
    const/16 v14, 0x14

    move-object/from16 v0, p0

    iput v14, v0, Lc8/PIb;->token:I

    .line 2636
    move-object/from16 v0, p0

    iput v5, v0, Lc8/PIb;->bp:I

    .line 2637
    const/16 v14, 0x1a

    move-object/from16 v0, p0

    iput-char v14, v0, Lc8/PIb;->ch:C

    goto :goto_8

    .line 2639
    :cond_10
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lc8/PIb;->matchStat:I

    .line 2640
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/PIb;->stringDefaultValue:Ljava/lang/String;

    .end local v13    # "strVal":Ljava/lang/String;
    move v9, v10

    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_0

    .line 2644
    .end local v2    # "charIndex":I
    .end local v9    # "offset":I
    .restart local v10    # "offset":I
    .restart local v13    # "strVal":Ljava/lang/String;
    :cond_11
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lc8/PIb;->matchStat:I

    .line 2645
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/PIb;->stringDefaultValue:Ljava/lang/String;

    .end local v13    # "strVal":Ljava/lang/String;
    move v9, v10

    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_0
.end method

.method public scanFieldSymbol(J)J
    .locals 11
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 3870
    const/4 v7, 0x0

    iput v7, p0, Lc8/PIb;->matchStat:I

    .line 3872
    invoke-direct {p0, p1, p2}, Lc8/PIb;->matchFieldHash(J)I

    move-result v5

    .line 3873
    .local v5, "offset":I
    if-nez v5, :cond_0

    .line 3874
    const-wide/16 v2, 0x0

    .line 3956
    :goto_0
    return-wide v2

    .line 3877
    :cond_0
    iget v7, p0, Lc8/PIb;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    add-int v1, v7, v5

    .line 3878
    .local v1, "charIndex":I
    iget v7, p0, Lc8/PIb;->len:I

    if-lt v1, v7, :cond_1

    const/16 v0, 0x1a

    .line 3882
    .local v0, "chLocal":C
    :goto_1
    const/16 v7, 0x22

    if-eq v0, v7, :cond_2

    .line 3883
    const/4 v7, -0x1

    iput v7, p0, Lc8/PIb;->matchStat:I

    .line 3884
    const-wide/16 v2, 0x0

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_0

    .line 3878
    .end local v0    # "chLocal":C
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_1
    iget-object v7, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 3880
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 3887
    .restart local v0    # "chLocal":C
    :cond_2
    const-wide/32 v2, -0x7ee3623b

    .local v2, "hash":J
    move v5, v6

    .line 3890
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :goto_2
    iget v7, p0, Lc8/PIb;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int v1, v7, v5

    .line 3891
    iget v7, p0, Lc8/PIb;->len:I

    if-lt v1, v7, :cond_3

    const/16 v0, 0x1a

    .line 3895
    :goto_3
    const/16 v7, 0x22

    if-ne v0, v7, :cond_5

    .line 3896
    iget v7, p0, Lc8/PIb;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int v1, v7, v6

    .line 3897
    iget v7, p0, Lc8/PIb;->len:I

    if-lt v1, v7, :cond_4

    const/16 v0, 0x1a

    .line 3912
    :goto_4
    const/16 v7, 0x2c

    if-ne v0, v7, :cond_7

    .line 3913
    iget v7, p0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v5, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lc8/PIb;->bp:I

    .line 3916
    iget v7, p0, Lc8/PIb;->bp:I

    add-int/lit8 v4, v7, 0x1

    iput v4, p0, Lc8/PIb;->bp:I

    .line 3917
    .local v4, "index":I
    iget v7, p0, Lc8/PIb;->len:I

    if-lt v4, v7, :cond_6

    const/16 v7, 0x1a

    .line 3919
    :goto_5
    iput-char v7, p0, Lc8/PIb;->ch:C

    .line 3921
    const/4 v7, 0x3

    iput v7, p0, Lc8/PIb;->matchStat:I

    goto :goto_0

    .line 3891
    .end local v4    # "index":I
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_3
    iget-object v7, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 3893
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3

    .line 3897
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :cond_4
    iget-object v7, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 3899
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    .line 3903
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_5
    int-to-long v8, v0

    xor-long/2addr v2, v8

    .line 3904
    const-wide/32 v8, 0x1000193

    mul-long/2addr v2, v8

    .line 3906
    const/16 v7, 0x5c

    if-ne v0, v7, :cond_e

    .line 3907
    const/4 v7, -0x1

    iput v7, p0, Lc8/PIb;->matchStat:I

    .line 3908
    const-wide/16 v2, 0x0

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_0

    .line 3917
    .restart local v4    # "index":I
    :cond_6
    iget-object v7, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 3919
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_5

    .line 3925
    .end local v4    # "index":I
    :cond_7
    const/16 v7, 0x7d

    if-ne v0, v7, :cond_d

    .line 3926
    iget v7, p0, Lc8/PIb;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int v1, v7, v5

    .line 3927
    iget v7, p0, Lc8/PIb;->len:I

    if-lt v1, v7, :cond_8

    const/16 v0, 0x1a

    .line 3930
    :goto_6
    const/16 v7, 0x2c

    if-ne v0, v7, :cond_9

    .line 3931
    const/16 v7, 0x10

    iput v7, p0, Lc8/PIb;->token:I

    .line 3932
    iget v7, p0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v6, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lc8/PIb;->bp:I

    .line 3933
    invoke-virtual {p0}, Lc8/PIb;->next()C

    .line 3950
    :goto_7
    const/4 v7, 0x4

    iput v7, p0, Lc8/PIb;->matchStat:I

    move v5, v6

    .line 3956
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_0

    .line 3927
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_8
    iget-object v7, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 3929
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_6

    .line 3934
    :cond_9
    const/16 v7, 0x5d

    if-ne v0, v7, :cond_a

    .line 3935
    const/16 v7, 0xf

    iput v7, p0, Lc8/PIb;->token:I

    .line 3936
    iget v7, p0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v6, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lc8/PIb;->bp:I

    .line 3937
    invoke-virtual {p0}, Lc8/PIb;->next()C

    goto :goto_7

    .line 3938
    :cond_a
    const/16 v7, 0x7d

    if-ne v0, v7, :cond_b

    .line 3939
    const/16 v7, 0xd

    iput v7, p0, Lc8/PIb;->token:I

    .line 3940
    iget v7, p0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v6, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lc8/PIb;->bp:I

    .line 3941
    invoke-virtual {p0}, Lc8/PIb;->next()C

    goto :goto_7

    .line 3942
    :cond_b
    const/16 v7, 0x1a

    if-ne v0, v7, :cond_c

    .line 3943
    const/16 v7, 0x14

    iput v7, p0, Lc8/PIb;->token:I

    .line 3944
    iget v7, p0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v6, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lc8/PIb;->bp:I

    .line 3945
    const/16 v7, 0x1a

    iput-char v7, p0, Lc8/PIb;->ch:C

    goto :goto_7

    .line 3947
    :cond_c
    const/4 v7, -0x1

    iput v7, p0, Lc8/PIb;->matchStat:I

    .line 3948
    const-wide/16 v2, 0x0

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_0

    .line 3952
    :cond_d
    const/4 v7, -0x1

    iput v7, p0, Lc8/PIb;->matchStat:I

    .line 3953
    const-wide/16 v2, 0x0

    goto/16 :goto_0

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_e
    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_2
.end method

.method public scanISO8601DateIfMatch(Z)Z
    .locals 55
    .param p1, "strict"    # Z

    .prologue
    .line 3960
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v19, v0

    sub-int v42, v18, v19

    .line 3962
    .local v42, "rest":I
    if-nez p1, :cond_4

    const/16 v18, 0xd

    move/from16 v0, v42

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 3963
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "/Date("

    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v42

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v18

    const/16 v19, 0x2f

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v42

    add-int/lit8 v18, v18, -0x2

    .line 3964
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v18

    const/16 v19, 0x29

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 3966
    const/16 v41, -0x1

    .line 3967
    .local v41, "plusIndex":I
    const/16 v34, 0x6

    .local v34, "i":I
    :goto_0
    move/from16 v0, v34

    move/from16 v1, v42

    if-ge v0, v1, :cond_2

    .line 3968
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v34

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v30

    .line 3969
    .local v30, "c":C
    const/16 v18, 0x2b

    move/from16 v0, v30

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 3970
    move/from16 v41, v34

    .line 3967
    :cond_0
    add-int/lit8 v34, v34, 0x1

    goto :goto_0

    .line 3971
    :cond_1
    const/16 v18, 0x30

    move/from16 v0, v30

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    const/16 v18, 0x39

    move/from16 v0, v30

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 3975
    .end local v30    # "c":C
    :cond_2
    const/16 v18, -0x1

    move/from16 v0, v41

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 3976
    const/16 v18, 0x0

    .line 4245
    .end local v34    # "i":I
    .end local v41    # "plusIndex":I
    :goto_1
    return v18

    .line 3978
    .restart local v34    # "i":I
    .restart local v41    # "plusIndex":I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v40, v18, 0x6

    .line 3979
    .local v40, "offset":I
    sub-int v18, v41, v40

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lc8/PIb;->subString(II)Ljava/lang/String;

    move-result-object v39

    .line 3980
    .local v39, "numberText":Ljava/lang/String;
    const/16 v18, 0xa

    move-object/from16 v0, v39

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v36

    .line 3982
    .local v36, "millis":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->timeZone:Ljava/util/TimeZone;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/PIb;->calendar:Ljava/util/Calendar;

    .line 3983
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3985
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->token:I

    .line 3986
    const/16 v18, 0x1

    goto :goto_1

    .line 3990
    .end local v34    # "i":I
    .end local v36    # "millis":J
    .end local v39    # "numberText":Ljava/lang/String;
    .end local v40    # "offset":I
    .end local v41    # "plusIndex":I
    :cond_4
    const/16 v18, 0x8

    move/from16 v0, v42

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    const/16 v18, 0xe

    move/from16 v0, v42

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    const/16 v18, 0x11

    move/from16 v0, v42

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 3993
    :cond_5
    if-eqz p1, :cond_6

    .line 3994
    const/16 v18, 0x0

    goto :goto_1

    .line 3997
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v4

    .line 3998
    .local v4, "y0":C
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v5

    .line 3999
    .local v5, "y1":C
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v6

    .line 4000
    .local v6, "y2":C
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v7

    .line 4001
    .local v7, "y3":C
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v8

    .line 4002
    .local v8, "M0":C
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v9

    .line 4003
    .local v9, "M1":C
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v10

    .line 4004
    .local v10, "d0":C
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v11

    .line 4006
    .local v11, "d1":C
    invoke-static/range {v4 .. v11}, Lc8/PIb;->checkDate(CCCCCCII)Z

    move-result v18

    if-nez v18, :cond_7

    .line 4007
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v12, p0

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    .line 4010
    invoke-direct/range {v12 .. v20}, Lc8/PIb;->setCalendar(CCCCCCCC)V

    .line 4013
    const/16 v18, 0x8

    move/from16 v0, v42

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    .line 4014
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v12

    .line 4015
    .local v12, "h0":C
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v13

    .line 4016
    .local v13, "h1":C
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v14

    .line 4017
    .local v14, "m0":C
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v15

    .line 4018
    .local v15, "m1":C
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v16

    .line 4019
    .local v16, "s0":C
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v17

    .line 4021
    .local v17, "s1":C
    invoke-static/range {v12 .. v17}, Lc8/PIb;->checkTime(CCCCCC)Z

    move-result v18

    if-nez v18, :cond_8

    .line 4022
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4025
    :cond_8
    const/16 v18, 0x11

    move/from16 v0, v42

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 4026
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v27

    .line 4027
    .local v27, "S0":C
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v28

    .line 4028
    .local v28, "S1":C
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v29

    .line 4029
    .local v29, "S2":C
    const/16 v18, 0x30

    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_9

    const/16 v18, 0x39

    move/from16 v0, v27

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    .line 4030
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4032
    :cond_a
    const/16 v18, 0x30

    move/from16 v0, v28

    move/from16 v1, v18

    if-lt v0, v1, :cond_b

    const/16 v18, 0x39

    move/from16 v0, v28

    move/from16 v1, v18

    if-le v0, v1, :cond_c

    .line 4033
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4035
    :cond_c
    const/16 v18, 0x30

    move/from16 v0, v29

    move/from16 v1, v18

    if-lt v0, v1, :cond_d

    const/16 v18, 0x39

    move/from16 v0, v29

    move/from16 v1, v18

    if-le v0, v1, :cond_e

    .line 4036
    :cond_d
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4039
    :cond_e
    add-int/lit8 v18, v27, -0x30

    mul-int/lit8 v18, v18, 0x64

    add-int/lit8 v19, v28, -0x30

    mul-int/lit8 v19, v19, 0xa

    add-int v18, v18, v19

    add-int/lit8 v19, v29, -0x30

    add-int v36, v18, v19

    .line 4044
    .end local v27    # "S0":C
    .end local v28    # "S1":C
    .end local v29    # "S2":C
    .local v36, "millis":I
    :goto_2
    add-int/lit8 v18, v12, -0x30

    mul-int/lit8 v18, v18, 0xa

    add-int/lit8 v19, v13, -0x30

    add-int v33, v18, v19

    .line 4045
    .local v33, "hour":I
    add-int/lit8 v18, v14, -0x30

    mul-int/lit8 v18, v18, 0xa

    add-int/lit8 v19, v15, -0x30

    add-int v38, v18, v19

    .line 4046
    .local v38, "minute":I
    add-int/lit8 v18, v16, -0x30

    mul-int/lit8 v18, v18, 0xa

    add-int/lit8 v19, v17, -0x30

    add-int v43, v18, v19

    .line 4051
    .end local v12    # "h0":C
    .end local v13    # "h1":C
    .end local v14    # "m0":C
    .end local v15    # "m1":C
    .end local v16    # "s0":C
    .end local v17    # "s1":C
    .local v43, "seconds":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xb

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 4052
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xc

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 4053
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xd

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 4054
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xe

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 4056
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->token:I

    .line 4057
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 4041
    .end local v33    # "hour":I
    .end local v36    # "millis":I
    .end local v38    # "minute":I
    .end local v43    # "seconds":I
    .restart local v12    # "h0":C
    .restart local v13    # "h1":C
    .restart local v14    # "m0":C
    .restart local v15    # "m1":C
    .restart local v16    # "s0":C
    .restart local v17    # "s1":C
    :cond_f
    const/16 v36, 0x0

    .restart local v36    # "millis":I
    goto :goto_2

    .line 4048
    .end local v12    # "h0":C
    .end local v13    # "h1":C
    .end local v14    # "m0":C
    .end local v15    # "m1":C
    .end local v16    # "s0":C
    .end local v17    # "s1":C
    .end local v36    # "millis":I
    :cond_10
    const/16 v36, 0x0

    .restart local v36    # "millis":I
    move/from16 v43, v36

    .restart local v43    # "seconds":I
    move/from16 v38, v36

    .restart local v38    # "minute":I
    move/from16 v33, v36

    .restart local v33    # "hour":I
    goto :goto_3

    .line 4060
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    .end local v33    # "hour":I
    .end local v36    # "millis":I
    .end local v38    # "minute":I
    .end local v43    # "seconds":I
    :cond_11
    const/16 v18, 0xa

    move/from16 v0, v42

    move/from16 v1, v18

    if-ge v0, v1, :cond_12

    .line 4061
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4064
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v18

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_13

    .line 4065
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4067
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v18

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_14

    .line 4068
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4071
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v4

    .line 4072
    .restart local v4    # "y0":C
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v5

    .line 4073
    .restart local v5    # "y1":C
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v6

    .line 4074
    .restart local v6    # "y2":C
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v7

    .line 4075
    .restart local v7    # "y3":C
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v8

    .line 4076
    .restart local v8    # "M0":C
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v9

    .line 4077
    .restart local v9    # "M1":C
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v10

    .line 4078
    .restart local v10    # "d0":C
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v11

    .line 4079
    .restart local v11    # "d1":C
    invoke-static/range {v4 .. v11}, Lc8/PIb;->checkDate(CCCCCCII)Z

    move-result v18

    if-nez v18, :cond_15

    .line 4080
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_15
    move-object/from16 v18, p0

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    .line 4083
    invoke-direct/range {v18 .. v26}, Lc8/PIb;->setCalendar(CCCCCCCC)V

    .line 4085
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v44

    .line 4086
    .local v44, "t":C
    const/16 v18, 0x54

    move/from16 v0, v44

    move/from16 v1, v18

    if-eq v0, v1, :cond_16

    const/16 v18, 0x20

    move/from16 v0, v44

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    if-nez p1, :cond_17

    .line 4087
    :cond_16
    const/16 v18, 0x13

    move/from16 v0, v42

    move/from16 v1, v18

    if-ge v0, v1, :cond_1a

    .line 4088
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4090
    :cond_17
    const/16 v18, 0x22

    move/from16 v0, v44

    move/from16 v1, v18

    if-eq v0, v1, :cond_18

    const/16 v18, 0x1a

    move/from16 v0, v44

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    .line 4091
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xb

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->set(II)V

    .line 4092
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xc

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->set(II)V

    .line 4093
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xd

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->set(II)V

    .line 4094
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xe

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->set(II)V

    .line 4096
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xa

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lc8/PIb;->ch:C

    .line 4098
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->token:I

    .line 4099
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 4101
    :cond_19
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4104
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v18

    const/16 v19, 0x3a

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1b

    .line 4105
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4107
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v18

    const/16 v19, 0x3a

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1c

    .line 4108
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4111
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v12

    .line 4112
    .restart local v12    # "h0":C
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v13

    .line 4113
    .restart local v13    # "h1":C
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v14

    .line 4114
    .restart local v14    # "m0":C
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v15

    .line 4115
    .restart local v15    # "m1":C
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x11

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v16

    .line 4116
    .restart local v16    # "s0":C
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v17

    .line 4118
    .restart local v17    # "s1":C
    invoke-static/range {v12 .. v17}, Lc8/PIb;->checkTime(CCCCCC)Z

    move-result v18

    if-nez v18, :cond_1d

    .line 4119
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4122
    :cond_1d
    add-int/lit8 v18, v12, -0x30

    mul-int/lit8 v18, v18, 0xa

    add-int/lit8 v19, v13, -0x30

    add-int v33, v18, v19

    .line 4123
    .restart local v33    # "hour":I
    add-int/lit8 v18, v14, -0x30

    mul-int/lit8 v18, v18, 0xa

    add-int/lit8 v19, v15, -0x30

    add-int v38, v18, v19

    .line 4124
    .restart local v38    # "minute":I
    add-int/lit8 v18, v16, -0x30

    mul-int/lit8 v18, v18, 0xa

    add-int/lit8 v19, v17, -0x30

    add-int v43, v18, v19

    .line 4125
    .restart local v43    # "seconds":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xb

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 4126
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xc

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 4127
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xd

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 4129
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v31

    .line 4130
    .local v31, "dot":C
    const/16 v18, 0x2e

    move/from16 v0, v31

    move/from16 v1, v18

    if-ne v0, v1, :cond_1e

    .line 4131
    const/16 v18, 0x15

    move/from16 v0, v42

    move/from16 v1, v18

    if-ge v0, v1, :cond_20

    .line 4132
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4135
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xe

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->set(II)V

    .line 4137
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x13

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lc8/PIb;->ch:C

    .line 4139
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->token:I

    .line 4141
    const/16 v18, 0x5a

    move/from16 v0, v31

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    .line 4143
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v18

    if-eqz v18, :cond_1f

    .line 4144
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v52

    .line 4145
    .local v52, "timeZoneIDs":[Ljava/lang/String;
    move-object/from16 v0, v52

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_1f

    .line 4146
    const/16 v18, 0x0

    aget-object v18, v52, v18

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v50

    .line 4147
    .local v50, "timeZone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4151
    .end local v50    # "timeZone":Ljava/util/TimeZone;
    .end local v52    # "timeZoneIDs":[Ljava/lang/String;
    :cond_1f
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 4154
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v27

    .line 4155
    .restart local v27    # "S0":C
    const/16 v18, 0x30

    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_21

    const/16 v18, 0x39

    move/from16 v0, v27

    move/from16 v1, v18

    if-le v0, v1, :cond_22

    .line 4156
    :cond_21
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4158
    :cond_22
    sget-object v18, Lc8/PIb;->digits:[I

    aget v36, v18, v27

    .line 4159
    .restart local v36    # "millis":I
    const/16 v35, 0x1

    .line 4161
    .local v35, "millisLen":I
    const/16 v18, 0x15

    move/from16 v0, v42

    move/from16 v1, v18

    if-le v0, v1, :cond_23

    .line 4162
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v28

    .line 4163
    .restart local v28    # "S1":C
    const/16 v18, 0x30

    move/from16 v0, v28

    move/from16 v1, v18

    if-lt v0, v1, :cond_23

    const/16 v18, 0x39

    move/from16 v0, v28

    move/from16 v1, v18

    if-gt v0, v1, :cond_23

    .line 4164
    mul-int/lit8 v18, v36, 0xa

    sget-object v19, Lc8/PIb;->digits:[I

    aget v19, v19, v28

    add-int v36, v18, v19

    .line 4165
    const/16 v35, 0x2

    .line 4169
    .end local v28    # "S1":C
    :cond_23
    const/16 v18, 0x2

    move/from16 v0, v35

    move/from16 v1, v18

    if-ne v0, v1, :cond_24

    .line 4170
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v29

    .line 4171
    .restart local v29    # "S2":C
    const/16 v18, 0x30

    move/from16 v0, v29

    move/from16 v1, v18

    if-lt v0, v1, :cond_24

    const/16 v18, 0x39

    move/from16 v0, v29

    move/from16 v1, v18

    if-gt v0, v1, :cond_24

    .line 4172
    mul-int/lit8 v18, v36, 0xa

    sget-object v19, Lc8/PIb;->digits:[I

    aget v19, v19, v29

    add-int v36, v18, v19

    .line 4173
    const/16 v35, 0x3

    .line 4177
    .end local v29    # "S2":C
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xe

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 4179
    const/16 v54, 0x0

    .line 4180
    .local v54, "timzeZoneLength":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x14

    add-int v18, v18, v35

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v51

    .line 4181
    .local v51, "timeZoneFlag":C
    const/16 v18, 0x2b

    move/from16 v0, v51

    move/from16 v1, v18

    if-eq v0, v1, :cond_25

    const/16 v18, 0x2d

    move/from16 v0, v51

    move/from16 v1, v18

    if-ne v0, v1, :cond_31

    .line 4182
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x14

    add-int v18, v18, v35

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v45

    .line 4183
    .local v45, "t0":C
    const/16 v18, 0x30

    move/from16 v0, v45

    move/from16 v1, v18

    if-lt v0, v1, :cond_26

    const/16 v18, 0x31

    move/from16 v0, v45

    move/from16 v1, v18

    if-le v0, v1, :cond_27

    .line 4184
    :cond_26
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4187
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x14

    add-int v18, v18, v35

    add-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v46

    .line 4188
    .local v46, "t1":C
    const/16 v18, 0x30

    move/from16 v0, v46

    move/from16 v1, v18

    if-lt v0, v1, :cond_28

    const/16 v18, 0x39

    move/from16 v0, v46

    move/from16 v1, v18

    if-le v0, v1, :cond_29

    .line 4189
    :cond_28
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4192
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x14

    add-int v18, v18, v35

    add-int/lit8 v18, v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v47

    .line 4193
    .local v47, "t2":C
    const/16 v18, 0x3a

    move/from16 v0, v47

    move/from16 v1, v18

    if-ne v0, v1, :cond_2e

    .line 4194
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x14

    add-int v18, v18, v35

    add-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v48

    .line 4195
    .local v48, "t3":C
    const/16 v18, 0x30

    move/from16 v0, v48

    move/from16 v1, v18

    if-eq v0, v1, :cond_2a

    .line 4196
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4199
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x14

    add-int v18, v18, v35

    add-int/lit8 v18, v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v49

    .line 4200
    .local v49, "t4":C
    const/16 v18, 0x30

    move/from16 v0, v49

    move/from16 v1, v18

    if-eq v0, v1, :cond_2b

    .line 4201
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4203
    :cond_2b
    const/16 v54, 0x6

    .line 4214
    .end local v48    # "t3":C
    .end local v49    # "t4":C
    :goto_4
    sget-object v18, Lc8/PIb;->digits:[I

    aget v18, v18, v45

    mul-int/lit8 v18, v18, 0xa

    sget-object v19, Lc8/PIb;->digits:[I

    aget v19, v19, v46

    add-int v18, v18, v19

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0xe10

    move/from16 v18, v0

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v53, v0

    .line 4215
    .local v53, "timeZoneOffset":I
    const/16 v18, 0x2d

    move/from16 v0, v51

    move/from16 v1, v18

    if-ne v0, v1, :cond_2c

    .line 4216
    move/from16 v0, v53

    neg-int v0, v0

    move/from16 v53, v0

    .line 4219
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v53

    if-eq v0, v1, :cond_2d

    .line 4220
    invoke-static/range {v53 .. v53}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v52

    .line 4221
    .restart local v52    # "timeZoneIDs":[Ljava/lang/String;
    move-object/from16 v0, v52

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_2d

    .line 4222
    const/16 v18, 0x0

    aget-object v18, v52, v18

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v50

    .line 4223
    .restart local v50    # "timeZone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4238
    .end local v45    # "t0":C
    .end local v46    # "t1":C
    .end local v47    # "t2":C
    .end local v50    # "timeZone":Ljava/util/TimeZone;
    .end local v52    # "timeZoneIDs":[Ljava/lang/String;
    .end local v53    # "timeZoneOffset":I
    :cond_2d
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v19, v35, 0x14

    add-int v19, v19, v54

    add-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v32

    .line 4239
    .local v32, "end":C
    const/16 v18, 0x1a

    move/from16 v0, v32

    move/from16 v1, v18

    if-eq v0, v1, :cond_32

    const/16 v18, 0x22

    move/from16 v0, v32

    move/from16 v1, v18

    if-eq v0, v1, :cond_32

    .line 4240
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4204
    .end local v32    # "end":C
    .restart local v45    # "t0":C
    .restart local v46    # "t1":C
    .restart local v47    # "t2":C
    :cond_2e
    const/16 v18, 0x30

    move/from16 v0, v47

    move/from16 v1, v18

    if-ne v0, v1, :cond_30

    .line 4205
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x14

    add-int v18, v18, v35

    add-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v48

    .line 4206
    .restart local v48    # "t3":C
    const/16 v18, 0x30

    move/from16 v0, v48

    move/from16 v1, v18

    if-eq v0, v1, :cond_2f

    .line 4207
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4209
    :cond_2f
    const/16 v54, 0x5

    .line 4210
    goto/16 :goto_4

    .line 4211
    .end local v48    # "t3":C
    :cond_30
    const/16 v54, 0x3

    goto/16 :goto_4

    .line 4227
    .end local v45    # "t0":C
    .end local v46    # "t1":C
    .end local v47    # "t2":C
    :cond_31
    const/16 v18, 0x5a

    move/from16 v0, v51

    move/from16 v1, v18

    if-ne v0, v1, :cond_2d

    .line 4228
    const/16 v54, 0x1

    .line 4229
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v18

    if-eqz v18, :cond_2d

    .line 4230
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v52

    .line 4231
    .restart local v52    # "timeZoneIDs":[Ljava/lang/String;
    move-object/from16 v0, v52

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_2d

    .line 4232
    const/16 v18, 0x0

    aget-object v18, v52, v18

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v50

    .line 4233
    .restart local v50    # "timeZone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_5

    .line 4242
    .end local v50    # "timeZone":Ljava/util/TimeZone;
    .end local v52    # "timeZoneIDs":[Ljava/lang/String;
    .restart local v32    # "end":C
    :cond_32
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v19, v35, 0x14

    add-int v19, v19, v54

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/PIb;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lc8/PIb;->ch:C

    .line 4244
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->token:I

    .line 4245
    const/16 v18, 0x1

    goto/16 :goto_1
.end method

.method public final scanLongValue()J
    .locals 10

    .prologue
    .line 1708
    const/4 v7, 0x0

    iput v7, p0, Lc8/PIb;->np:I

    .line 1712
    iget-char v7, p0, Lc8/PIb;->ch:C

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_1

    .line 1713
    const/4 v6, 0x1

    .line 1714
    .local v6, "negative":Z
    const-wide/high16 v2, -0x8000000000000000L

    .line 1716
    .local v2, "limit":J
    iget v7, p0, Lc8/PIb;->np:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lc8/PIb;->np:I

    .line 1719
    iget v7, p0, Lc8/PIb;->bp:I

    add-int/lit8 v1, v7, 0x1

    iput v1, p0, Lc8/PIb;->bp:I

    .line 1720
    .local v1, "index":I
    iget v7, p0, Lc8/PIb;->len:I

    if-lt v1, v7, :cond_0

    .line 1721
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "syntax error, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1723
    :cond_0
    iget-object v7, p0, Lc8/PIb;->text:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lc8/PIb;->ch:C

    .line 1730
    .end local v1    # "index":I
    :goto_0
    const-wide/16 v4, 0x0

    .line 1732
    .local v4, "longValue":J
    :goto_1
    iget-char v7, p0, Lc8/PIb;->ch:C

    const/16 v8, 0x30

    if-lt v7, v8, :cond_5

    iget-char v7, p0, Lc8/PIb;->ch:C

    const/16 v8, 0x39

    if-gt v7, v8, :cond_5

    .line 1734
    iget-char v7, p0, Lc8/PIb;->ch:C

    add-int/lit8 v0, v7, -0x30

    .line 1735
    .local v0, "digit":I
    const-wide v8, -0xcccccccccccccccL

    cmp-long v7, v4, v8

    if-gez v7, :cond_2

    .line 1736
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "error long value, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1726
    .end local v0    # "digit":I
    .end local v2    # "limit":J
    .end local v4    # "longValue":J
    .end local v6    # "negative":Z
    :cond_1
    const/4 v6, 0x0

    .line 1727
    .restart local v6    # "negative":Z
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .restart local v2    # "limit":J
    goto :goto_0

    .line 1739
    .restart local v0    # "digit":I
    .restart local v4    # "longValue":J
    :cond_2
    const-wide/16 v8, 0xa

    mul-long/2addr v4, v8

    .line 1740
    int-to-long v8, v0

    add-long/2addr v8, v2

    cmp-long v7, v4, v8

    if-gez v7, :cond_3

    .line 1741
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "error long value, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1743
    :cond_3
    int-to-long v8, v0

    sub-long/2addr v4, v8

    .line 1748
    iget v7, p0, Lc8/PIb;->np:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lc8/PIb;->np:I

    .line 1751
    iget v7, p0, Lc8/PIb;->bp:I

    add-int/lit8 v1, v7, 0x1

    iput v1, p0, Lc8/PIb;->bp:I

    .line 1752
    .restart local v1    # "index":I
    iget v7, p0, Lc8/PIb;->len:I

    if-lt v1, v7, :cond_4

    const/16 v7, 0x1a

    .line 1754
    :goto_2
    iput-char v7, p0, Lc8/PIb;->ch:C

    goto/16 :goto_1

    .line 1752
    :cond_4
    iget-object v7, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 1754
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_2

    .line 1758
    .end local v0    # "digit":I
    .end local v1    # "index":I
    :cond_5
    if-nez v6, :cond_6

    .line 1759
    neg-long v4, v4

    .line 1762
    :cond_6
    return-wide v4
.end method

.method public final scanNumber()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x39

    const/16 v5, 0x30

    const/4 v4, 0x1

    const/16 v2, 0x1a

    .line 1292
    iget v1, p0, Lc8/PIb;->bp:I

    iput v1, p0, Lc8/PIb;->np:I

    .line 1293
    iput-boolean v7, p0, Lc8/PIb;->exp:Z

    .line 1295
    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_0

    .line 1296
    iget v1, p0, Lc8/PIb;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/PIb;->sp:I

    .line 1299
    iget v1, p0, Lc8/PIb;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lc8/PIb;->bp:I

    .line 1300
    .local v0, "index":I
    iget v1, p0, Lc8/PIb;->len:I

    if-lt v0, v1, :cond_1

    move v1, v2

    .line 1302
    :goto_0
    iput-char v1, p0, Lc8/PIb;->ch:C

    .line 1307
    .end local v0    # "index":I
    :cond_0
    :goto_1
    iget-char v1, p0, Lc8/PIb;->ch:C

    if-lt v1, v5, :cond_3

    iget-char v1, p0, Lc8/PIb;->ch:C

    if-gt v1, v6, :cond_3

    .line 1309
    iget v1, p0, Lc8/PIb;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/PIb;->sp:I

    .line 1315
    iget v1, p0, Lc8/PIb;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lc8/PIb;->bp:I

    .line 1316
    .restart local v0    # "index":I
    iget v1, p0, Lc8/PIb;->len:I

    if-lt v0, v1, :cond_2

    move v1, v2

    .line 1318
    :goto_2
    iput-char v1, p0, Lc8/PIb;->ch:C

    goto :goto_1

    .line 1300
    :cond_1
    iget-object v1, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 1302
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 1316
    :cond_2
    iget-object v1, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 1318
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_2

    .line 1322
    .end local v0    # "index":I
    :cond_3
    iput-boolean v7, p0, Lc8/PIb;->isDouble:Z

    .line 1324
    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_6

    .line 1325
    iget v1, p0, Lc8/PIb;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/PIb;->sp:I

    .line 1328
    iget v1, p0, Lc8/PIb;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lc8/PIb;->bp:I

    .line 1329
    .restart local v0    # "index":I
    iget v1, p0, Lc8/PIb;->len:I

    if-lt v0, v1, :cond_4

    move v1, v2

    .line 1331
    :goto_3
    iput-char v1, p0, Lc8/PIb;->ch:C

    .line 1333
    iput-boolean v4, p0, Lc8/PIb;->isDouble:Z

    .line 1336
    :goto_4
    iget-char v1, p0, Lc8/PIb;->ch:C

    if-lt v1, v5, :cond_6

    iget-char v1, p0, Lc8/PIb;->ch:C

    if-gt v1, v6, :cond_6

    .line 1338
    iget v1, p0, Lc8/PIb;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/PIb;->sp:I

    .line 1344
    iget v1, p0, Lc8/PIb;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lc8/PIb;->bp:I

    .line 1345
    iget v1, p0, Lc8/PIb;->len:I

    if-lt v0, v1, :cond_5

    move v1, v2

    .line 1347
    :goto_5
    iput-char v1, p0, Lc8/PIb;->ch:C

    goto :goto_4

    .line 1329
    :cond_4
    iget-object v1, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 1331
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_3

    .line 1345
    :cond_5
    iget-object v1, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 1347
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_5

    .line 1352
    .end local v0    # "index":I
    :cond_6
    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v3, 0x4c

    if-ne v1, v3, :cond_8

    .line 1353
    iget v1, p0, Lc8/PIb;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/PIb;->sp:I

    .line 1354
    invoke-virtual {p0}, Lc8/PIb;->next()C

    .line 1418
    :cond_7
    :goto_6
    iget-boolean v1, p0, Lc8/PIb;->isDouble:Z

    if-eqz v1, :cond_16

    .line 1419
    const/4 v1, 0x3

    iput v1, p0, Lc8/PIb;->token:I

    .line 1423
    :goto_7
    return-void

    .line 1355
    :cond_8
    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v3, 0x53

    if-ne v1, v3, :cond_9

    .line 1356
    iget v1, p0, Lc8/PIb;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/PIb;->sp:I

    .line 1357
    invoke-virtual {p0}, Lc8/PIb;->next()C

    goto :goto_6

    .line 1358
    :cond_9
    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v3, 0x42

    if-ne v1, v3, :cond_a

    .line 1359
    iget v1, p0, Lc8/PIb;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/PIb;->sp:I

    .line 1360
    invoke-virtual {p0}, Lc8/PIb;->next()C

    goto :goto_6

    .line 1361
    :cond_a
    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v3, 0x46

    if-ne v1, v3, :cond_b

    .line 1362
    iget v1, p0, Lc8/PIb;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/PIb;->sp:I

    .line 1363
    invoke-virtual {p0}, Lc8/PIb;->next()C

    .line 1364
    iput-boolean v4, p0, Lc8/PIb;->isDouble:Z

    goto :goto_6

    .line 1365
    :cond_b
    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v3, 0x44

    if-ne v1, v3, :cond_c

    .line 1366
    iget v1, p0, Lc8/PIb;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/PIb;->sp:I

    .line 1367
    invoke-virtual {p0}, Lc8/PIb;->next()C

    .line 1368
    iput-boolean v4, p0, Lc8/PIb;->isDouble:Z

    goto :goto_6

    .line 1369
    :cond_c
    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v3, 0x65

    if-eq v1, v3, :cond_d

    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v3, 0x45

    if-ne v1, v3, :cond_7

    .line 1371
    :cond_d
    iget v1, p0, Lc8/PIb;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/PIb;->sp:I

    .line 1374
    iget v1, p0, Lc8/PIb;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lc8/PIb;->bp:I

    .line 1375
    .restart local v0    # "index":I
    iget v1, p0, Lc8/PIb;->len:I

    if-lt v0, v1, :cond_10

    move v1, v2

    .line 1377
    :goto_8
    iput-char v1, p0, Lc8/PIb;->ch:C

    .line 1380
    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v3, 0x2b

    if-eq v1, v3, :cond_e

    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_f

    .line 1382
    :cond_e
    iget v1, p0, Lc8/PIb;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/PIb;->sp:I

    .line 1385
    iget v1, p0, Lc8/PIb;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lc8/PIb;->bp:I

    .line 1386
    iget v1, p0, Lc8/PIb;->len:I

    if-lt v0, v1, :cond_11

    move v1, v2

    .line 1388
    :goto_9
    iput-char v1, p0, Lc8/PIb;->ch:C

    .line 1393
    :cond_f
    :goto_a
    iget-char v1, p0, Lc8/PIb;->ch:C

    if-lt v1, v5, :cond_13

    iget-char v1, p0, Lc8/PIb;->ch:C

    if-gt v1, v6, :cond_13

    .line 1395
    iget v1, p0, Lc8/PIb;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/PIb;->sp:I

    .line 1401
    iget v1, p0, Lc8/PIb;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lc8/PIb;->bp:I

    .line 1402
    iget v1, p0, Lc8/PIb;->len:I

    if-lt v0, v1, :cond_12

    move v1, v2

    .line 1404
    :goto_b
    iput-char v1, p0, Lc8/PIb;->ch:C

    goto :goto_a

    .line 1375
    :cond_10
    iget-object v1, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 1377
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_8

    .line 1386
    :cond_11
    iget-object v1, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 1388
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_9

    .line 1402
    :cond_12
    iget-object v1, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 1404
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_b

    .line 1408
    :cond_13
    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v2, 0x44

    if-eq v1, v2, :cond_14

    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v2, 0x46

    if-ne v1, v2, :cond_15

    .line 1410
    :cond_14
    iget v1, p0, Lc8/PIb;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/PIb;->sp:I

    .line 1411
    invoke-virtual {p0}, Lc8/PIb;->next()C

    .line 1414
    :cond_15
    iput-boolean v4, p0, Lc8/PIb;->exp:Z

    .line 1415
    iput-boolean v4, p0, Lc8/PIb;->isDouble:Z

    goto/16 :goto_6

    .line 1421
    .end local v0    # "index":I
    :cond_16
    const/4 v1, 0x2

    iput v1, p0, Lc8/PIb;->token:I

    goto/16 :goto_7
.end method

.method public final scanNumberValue()Ljava/lang/Number;
    .locals 36

    .prologue
    .line 1452
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v28, v0

    .line 1454
    .local v28, "start":I
    const/16 v26, 0x0

    .line 1455
    .local v26, "overflow":Z
    const/16 v25, 0x0

    .line 1456
    .local v25, "number":Ljava/lang/Number;
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->np:I

    .line 1460
    move-object/from16 v0, p0

    iget-char v0, v0, Lc8/PIb;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x2d

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 1461
    const/16 v24, 0x1

    .line 1462
    .local v24, "negative":Z
    const-wide/high16 v20, -0x8000000000000000L

    .line 1464
    .local v20, "limit":J
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->np:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->np:I

    .line 1467
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v31, v0

    add-int/lit8 v16, v31, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 1468
    .local v16, "index":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v31, v0

    move/from16 v0, v16

    move/from16 v1, v31

    if-lt v0, v1, :cond_2

    const/16 v31, 0x1a

    .line 1470
    :goto_0
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-char v0, v1, Lc8/PIb;->ch:C

    .line 1477
    .end local v16    # "index":I
    :goto_1
    const-wide/16 v22, 0x0

    .line 1479
    .local v22, "longValue":J
    :goto_2
    move-object/from16 v0, p0

    iget-char v0, v0, Lc8/PIb;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x30

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-char v0, v0, Lc8/PIb;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x39

    move/from16 v0, v31

    move/from16 v1, v32

    if-gt v0, v1, :cond_5

    .line 1481
    move-object/from16 v0, p0

    iget-char v0, v0, Lc8/PIb;->ch:C

    move/from16 v31, v0

    add-int/lit8 v8, v31, -0x30

    .line 1482
    .local v8, "digit":I
    const-wide v32, -0xcccccccccccccccL

    cmp-long v31, v22, v32

    if-gez v31, :cond_0

    .line 1483
    const/16 v26, 0x1

    .line 1486
    :cond_0
    const-wide/16 v32, 0xa

    mul-long v22, v22, v32

    .line 1487
    int-to-long v0, v8

    move-wide/from16 v32, v0

    add-long v32, v32, v20

    cmp-long v31, v22, v32

    if-gez v31, :cond_1

    .line 1488
    const/16 v26, 0x1

    .line 1490
    :cond_1
    int-to-long v0, v8

    move-wide/from16 v32, v0

    sub-long v22, v22, v32

    .line 1495
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->np:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->np:I

    .line 1498
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v31, v0

    add-int/lit8 v16, v31, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 1499
    .restart local v16    # "index":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v31, v0

    move/from16 v0, v16

    move/from16 v1, v31

    if-lt v0, v1, :cond_4

    const/16 v31, 0x1a

    .line 1501
    :goto_3
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-char v0, v1, Lc8/PIb;->ch:C

    goto :goto_2

    .line 1468
    .end local v8    # "digit":I
    .end local v22    # "longValue":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 1470
    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v31

    goto/16 :goto_0

    .line 1473
    .end local v16    # "index":I
    .end local v20    # "limit":J
    .end local v24    # "negative":Z
    :cond_3
    const/16 v24, 0x0

    .line 1474
    .restart local v24    # "negative":Z
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .restart local v20    # "limit":J
    goto/16 :goto_1

    .line 1499
    .restart local v8    # "digit":I
    .restart local v16    # "index":I
    .restart local v22    # "longValue":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 1501
    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v31

    goto :goto_3

    .line 1505
    .end local v8    # "digit":I
    .end local v16    # "index":I
    :cond_5
    if-nez v24, :cond_6

    .line 1506
    move-wide/from16 v0, v22

    neg-long v0, v0

    move-wide/from16 v22, v0

    .line 1509
    :cond_6
    move-object/from16 v0, p0

    iget-char v0, v0, Lc8/PIb;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x4c

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    .line 1510
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->np:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->np:I

    .line 1511
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    .line 1512
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    .line 1531
    :cond_7
    :goto_4
    const/16 v18, 0x0

    .local v18, "isDouble":Z
    const/4 v12, 0x0

    .line 1532
    .local v12, "exp":Z
    move-object/from16 v0, p0

    iget-char v0, v0, Lc8/PIb;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x2e

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_e

    .line 1533
    const/16 v18, 0x1

    .line 1535
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->np:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->np:I

    .line 1538
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v31, v0

    add-int/lit8 v16, v31, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 1539
    .restart local v16    # "index":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v31, v0

    move/from16 v0, v16

    move/from16 v1, v31

    if-lt v0, v1, :cond_c

    const/16 v31, 0x1a

    .line 1541
    :goto_5
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-char v0, v1, Lc8/PIb;->ch:C

    .line 1545
    :goto_6
    move-object/from16 v0, p0

    iget-char v0, v0, Lc8/PIb;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x30

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-char v0, v0, Lc8/PIb;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x39

    move/from16 v0, v31

    move/from16 v1, v32

    if-gt v0, v1, :cond_e

    .line 1547
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->np:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->np:I

    .line 1553
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v31, v0

    add-int/lit8 v16, v31, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 1554
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v31, v0

    move/from16 v0, v16

    move/from16 v1, v31

    if-lt v0, v1, :cond_d

    const/16 v31, 0x1a

    .line 1556
    :goto_7
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-char v0, v1, Lc8/PIb;->ch:C

    goto :goto_6

    .line 1513
    .end local v12    # "exp":Z
    .end local v16    # "index":I
    .end local v18    # "isDouble":Z
    :cond_8
    move-object/from16 v0, p0

    iget-char v0, v0, Lc8/PIb;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x53

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    .line 1514
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->np:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->np:I

    .line 1515
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    .line 1516
    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-short v0, v0

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v25

    goto/16 :goto_4

    .line 1517
    :cond_9
    move-object/from16 v0, p0

    iget-char v0, v0, Lc8/PIb;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x42

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    .line 1518
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->np:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->np:I

    .line 1519
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    .line 1520
    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-byte v0, v0

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v25

    goto/16 :goto_4

    .line 1521
    :cond_a
    move-object/from16 v0, p0

    iget-char v0, v0, Lc8/PIb;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x46

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_b

    .line 1522
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->np:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->np:I

    .line 1523
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    .line 1524
    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    goto/16 :goto_4

    .line 1525
    :cond_b
    move-object/from16 v0, p0

    iget-char v0, v0, Lc8/PIb;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x44

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_7

    .line 1526
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->np:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->np:I

    .line 1527
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    .line 1528
    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    goto/16 :goto_4

    .line 1539
    .restart local v12    # "exp":Z
    .restart local v16    # "index":I
    .restart local v18    # "isDouble":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 1541
    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v31

    goto/16 :goto_5

    .line 1554
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 1556
    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v31

    goto/16 :goto_7

    .line 1561
    .end local v16    # "index":I
    :cond_e
    const/16 v30, 0x0

    .line 1562
    .local v30, "type":C
    move-object/from16 v0, p0

    iget-char v0, v0, Lc8/PIb;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x65

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-char v0, v0, Lc8/PIb;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x45

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_18

    .line 1564
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->np:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->np:I

    .line 1567
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v31, v0

    add-int/lit8 v16, v31, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 1568
    .restart local v16    # "index":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v31, v0

    move/from16 v0, v16

    move/from16 v1, v31

    if-lt v0, v1, :cond_12

    const/16 v31, 0x1a

    .line 1570
    :goto_8
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-char v0, v1, Lc8/PIb;->ch:C

    .line 1573
    move-object/from16 v0, p0

    iget-char v0, v0, Lc8/PIb;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x2b

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-char v0, v0, Lc8/PIb;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x2d

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_11

    .line 1575
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->np:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->np:I

    .line 1578
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v31, v0

    add-int/lit8 v16, v31, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 1579
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v31, v0

    move/from16 v0, v16

    move/from16 v1, v31

    if-lt v0, v1, :cond_13

    const/16 v31, 0x1a

    .line 1581
    :goto_9
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-char v0, v1, Lc8/PIb;->ch:C

    .line 1586
    :cond_11
    :goto_a
    move-object/from16 v0, p0

    iget-char v0, v0, Lc8/PIb;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x30

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-char v0, v0, Lc8/PIb;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x39

    move/from16 v0, v31

    move/from16 v1, v32

    if-gt v0, v1, :cond_15

    .line 1588
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->np:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->np:I

    .line 1594
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v31, v0

    add-int/lit8 v16, v31, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 1595
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v31, v0

    move/from16 v0, v16

    move/from16 v1, v31

    if-lt v0, v1, :cond_14

    const/16 v31, 0x1a

    .line 1597
    :goto_b
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-char v0, v1, Lc8/PIb;->ch:C

    goto :goto_a

    .line 1568
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 1570
    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v31

    goto/16 :goto_8

    .line 1579
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 1581
    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v31

    goto :goto_9

    .line 1595
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 1597
    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v31

    goto :goto_b

    .line 1601
    :cond_15
    move-object/from16 v0, p0

    iget-char v0, v0, Lc8/PIb;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x44

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-char v0, v0, Lc8/PIb;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x46

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_17

    .line 1603
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->np:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->np:I

    .line 1604
    move-object/from16 v0, p0

    iget-char v0, v0, Lc8/PIb;->ch:C

    move/from16 v30, v0

    .line 1605
    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->next()C

    .line 1608
    :cond_17
    const/4 v12, 0x1

    .line 1611
    .end local v16    # "index":I
    :cond_18
    if-nez v18, :cond_1c

    if-nez v12, :cond_1c

    .line 1613
    if-eqz v26, :cond_19

    .line 1614
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v31, v0

    sub-int v19, v31, v28

    .line 1615
    .local v19, "len":I
    move/from16 v0, v19

    new-array v7, v0, [C

    .line 1616
    .local v7, "chars":[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v28

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v7, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1617
    new-instance v29, Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([C)V

    .line 1618
    .local v29, "strVal":Ljava/lang/String;
    new-instance v25, Ljava/math/BigInteger;

    .end local v25    # "number":Ljava/lang/Number;
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1620
    .end local v7    # "chars":[C
    .end local v19    # "len":I
    .end local v29    # "strVal":Ljava/lang/String;
    .restart local v25    # "number":Ljava/lang/Number;
    :cond_19
    if-nez v25, :cond_1a

    .line 1621
    const-wide/32 v32, -0x80000000

    cmp-long v31, v22, v32

    if-lez v31, :cond_1b

    const-wide/32 v32, 0x7fffffff

    cmp-long v31, v22, v32

    if-gez v31, :cond_1b

    .line 1622
    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    :cond_1a
    :goto_c
    move-object/from16 v31, v25

    .line 1704
    :goto_d
    return-object v31

    .line 1624
    :cond_1b
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    goto :goto_c

    .line 1630
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v31, v0

    sub-int v19, v31, v28

    .line 1631
    .restart local v19    # "len":I
    if-eqz v30, :cond_1d

    .line 1632
    add-int/lit8 v19, v19, -0x1

    .line 1636
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->sbuf:[C

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v19

    move/from16 v1, v31

    if-ge v0, v1, :cond_1e

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v31, v0

    add-int v32, v28, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->sbuf:[C

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v28

    move/from16 v2, v32

    move-object/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1638
    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/PIb;->sbuf:[C

    .line 1646
    .restart local v7    # "chars":[C
    :goto_e
    if-nez v12, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->features:I

    move/from16 v31, v0

    sget-object v32, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v32

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v32, v0

    and-int v31, v31, v32

    if-eqz v31, :cond_1f

    .line 1648
    new-instance v25, Ljava/math/BigDecimal;

    .end local v25    # "number":Ljava/lang/Number;
    const/16 v31, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v31

    move/from16 v2, v19

    invoke-direct {v0, v7, v1, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    .restart local v25    # "number":Ljava/lang/Number;
    :goto_f
    move-object/from16 v31, v25

    .line 1704
    goto :goto_d

    .line 1640
    .end local v7    # "chars":[C
    :cond_1e
    move/from16 v0, v19

    new-array v7, v0, [C

    .line 1641
    .restart local v7    # "chars":[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v31, v0

    add-int v32, v28, v19

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v28

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v7, v3}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_e

    .line 1652
    :cond_1f
    const/16 v31, 0x9

    move/from16 v0, v19

    move/from16 v1, v31

    if-gt v0, v1, :cond_27

    if-nez v12, :cond_27

    .line 1653
    const/4 v14, 0x0

    .line 1654
    .local v14, "i":I
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .local v15, "i":I
    :try_start_0
    aget-char v6, v7, v14

    .line 1655
    .local v6, "c":C
    const/16 v31, 0x2d

    move/from16 v0, v31

    if-eq v6, v0, :cond_20

    const/16 v31, 0x2b

    move/from16 v0, v31

    if-ne v6, v0, :cond_29

    .line 1656
    :cond_20
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "i":I
    .restart local v14    # "i":I
    aget-char v6, v7, v15

    .line 1659
    :goto_10
    add-int/lit8 v17, v6, -0x30

    .line 1660
    .local v17, "intVal":I
    const/16 v27, 0x0

    .line 1661
    .local v27, "power":I
    :goto_11
    move/from16 v0, v19

    if-ge v14, v0, :cond_23

    .line 1662
    aget-char v6, v7, v14

    .line 1664
    const/16 v31, 0x2e

    move/from16 v0, v31

    if-ne v6, v0, :cond_22

    .line 1665
    const/16 v27, 0x1

    .line 1661
    :cond_21
    :goto_12
    add-int/lit8 v14, v14, 0x1

    goto :goto_11

    .line 1668
    :cond_22
    add-int/lit8 v8, v6, -0x30

    .line 1669
    .restart local v8    # "digit":I
    mul-int/lit8 v31, v17, 0xa

    add-int v17, v31, v8

    .line 1671
    if-eqz v27, :cond_21

    .line 1672
    mul-int/lit8 v27, v27, 0xa

    goto :goto_12

    .line 1676
    .end local v8    # "digit":I
    :cond_23
    const/16 v31, 0x46

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_25

    .line 1677
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v13, v31, v32

    .line 1678
    .local v13, "floatVal":F
    if-eqz v24, :cond_24

    .line 1679
    neg-float v13, v13

    .line 1682
    :cond_24
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v31

    goto/16 :goto_d

    .line 1685
    .end local v13    # "floatVal":F
    :cond_25
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v32, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v10, v32, v34

    .line 1686
    .local v10, "doubleVal":D
    if-eqz v24, :cond_26

    .line 1687
    neg-double v10, v10

    .line 1690
    :cond_26
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v31

    goto/16 :goto_d

    .line 1693
    .end local v6    # "c":C
    .end local v10    # "doubleVal":D
    .end local v14    # "i":I
    .end local v17    # "intVal":I
    .end local v27    # "power":I
    :cond_27
    new-instance v29, Ljava/lang/String;

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v19

    invoke-direct {v0, v7, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 1694
    .restart local v29    # "strVal":Ljava/lang/String;
    const/16 v31, 0x46

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_28

    .line 1695
    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v25

    goto/16 :goto_f

    .line 1697
    :cond_28
    invoke-static/range {v29 .. v29}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v25

    goto/16 :goto_f

    .line 1699
    .end local v29    # "strVal":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1700
    .local v9, "ex":Ljava/lang/NumberFormatException;
    new-instance v31, Lcom/alibaba/fastjson/JSONException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, ", "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v31

    .end local v9    # "ex":Ljava/lang/NumberFormatException;
    .restart local v6    # "c":C
    .restart local v15    # "i":I
    :cond_29
    move v14, v15

    .end local v15    # "i":I
    .restart local v14    # "i":I
    goto/16 :goto_10
.end method

.method public final scanString()V
    .locals 20

    .prologue
    .line 987
    move-object/from16 v0, p0

    iget-char v14, v0, Lc8/PIb;->ch:C

    .line 988
    .local v14, "quoteChar":C
    const/4 v6, 0x0

    .line 989
    .local v6, "hasSpecial":Z
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v17, v0

    add-int/lit8 v16, v17, 0x1

    .line 990
    .local v16, "startIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 991
    .local v5, "endIndex":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_0

    .line 992
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "unclosed str, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 998
    :cond_0
    sub-int v4, v5, v16

    .line 999
    .local v4, "chars_len":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lc8/PIb;->sub_chars(II)[C

    move-result-object v3

    .line 1000
    .local v3, "chars":[C
    :goto_0
    if-lez v4, :cond_4

    add-int/lit8 v17, v4, -0x1

    aget-char v17, v3, v17

    const/16 v18, 0x5c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 1003
    const/4 v15, 0x1

    .line 1004
    .local v15, "slashCount":I
    add-int/lit8 v7, v4, -0x2

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_1

    .line 1005
    aget-char v17, v3, v7

    const/16 v18, 0x5c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1006
    add-int/lit8 v15, v15, 0x1

    .line 1004
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 1011
    :cond_1
    rem-int/lit8 v17, v15, 0x2

    if-eqz v17, :cond_4

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v17, v0

    add-int/lit8 v18, v5, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    .line 1016
    .local v11, "nextIndex":I
    sub-int v12, v11, v5

    .line 1017
    .local v12, "nextLen":I
    add-int v13, v4, v12

    .line 1019
    .local v13, "next_chars_len":I
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v13, v0, :cond_3

    .line 1020
    array-length v0, v3

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x3

    div-int/lit8 v10, v17, 0x2

    .line 1021
    .local v10, "newLen":I
    if-ge v10, v13, :cond_2

    .line 1022
    move v10, v13

    .line 1024
    :cond_2
    new-array v9, v10, [C

    .line 1025
    .local v9, "newChars":[C
    const/16 v17, 0x0

    const/16 v18, 0x0

    array-length v0, v3

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v3, v0, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1026
    move-object v3, v9

    .line 1028
    .end local v9    # "newChars":[C
    .end local v10    # "newLen":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1030
    move v4, v13

    .line 1031
    move v5, v11

    .line 1032
    const/4 v6, 0x1

    .line 1033
    goto :goto_0

    .line 1035
    .end local v7    # "i":I
    .end local v11    # "nextIndex":I
    .end local v12    # "nextLen":I
    .end local v13    # "next_chars_len":I
    .end local v15    # "slashCount":I
    :cond_4
    if-nez v6, :cond_6

    .line 1036
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    if-ge v7, v4, :cond_6

    .line 1037
    aget-char v17, v3, v7

    const/16 v18, 0x5c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 1038
    const/4 v6, 0x1

    .line 1036
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1043
    .end local v7    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iput-object v3, v0, Lc8/PIb;->sbuf:[C

    .line 1044
    move-object/from16 v0, p0

    iput v4, v0, Lc8/PIb;->sp:I

    .line 1045
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->np:I

    .line 1046
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lc8/PIb;->hasSpecial:Z

    .line 1048
    add-int/lit8 v17, v5, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 1051
    move-object/from16 v0, p0

    iget v8, v0, Lc8/PIb;->bp:I

    .line 1052
    .local v8, "index":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v8, v0, :cond_7

    const/16 v17, 0x1a

    .line 1054
    :goto_3
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-char v0, v1, Lc8/PIb;->ch:C

    .line 1057
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->token:I

    .line 1058
    return-void

    .line 1052
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1054
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v17

    goto :goto_3
.end method

.method public scanStringValue(C)Ljava/lang/String;
    .locals 11
    .param p1, "quoteChar"    # C

    .prologue
    const/16 v10, 0x5c

    const/4 v9, -0x1

    .line 1061
    iget v8, p0, Lc8/PIb;->bp:I

    add-int/lit8 v6, v8, 0x1

    .line 1062
    .local v6, "startIndex":I
    iget-object v8, p0, Lc8/PIb;->text:Ljava/lang/String;

    invoke-virtual {v8, p1, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1063
    .local v2, "endIndex":I
    if-ne v2, v9, :cond_0

    .line 1064
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unclosed str, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1068
    :cond_0
    sget-boolean v8, Lc8/PIb;->V6:Z

    if-eqz v8, :cond_1

    .line 1069
    iget-object v8, p0, Lc8/PIb;->text:Ljava/lang/String;

    invoke-virtual {v8, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1076
    .local v7, "strVal":Ljava/lang/String;
    :goto_0
    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_4

    .line 1078
    :goto_1
    const/4 v5, 0x0

    .line 1079
    .local v5, "slashCount":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_2

    .line 1080
    iget-object v8, p0, Lc8/PIb;->text:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_2

    .line 1081
    add-int/lit8 v5, v5, 0x1

    .line 1079
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1071
    .end local v3    # "i":I
    .end local v5    # "slashCount":I
    .end local v7    # "strVal":Ljava/lang/String;
    :cond_1
    sub-int v1, v2, v6

    .line 1072
    .local v1, "chars_len":I
    iget v8, p0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8, v1}, Lc8/PIb;->sub_chars(II)[C

    move-result-object v0

    .line 1073
    .local v0, "chars":[C
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v1}, Ljava/lang/String;-><init>([CII)V

    .restart local v7    # "strVal":Ljava/lang/String;
    goto :goto_0

    .line 1086
    .end local v0    # "chars":[C
    .end local v1    # "chars_len":I
    .restart local v3    # "i":I
    .restart local v5    # "slashCount":I
    :cond_2
    rem-int/lit8 v8, v5, 0x2

    if-eqz v8, :cond_3

    .line 1089
    iget-object v8, p0, Lc8/PIb;->text:Ljava/lang/String;

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, p1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1090
    goto :goto_1

    .line 1092
    :cond_3
    sub-int v1, v2, v6

    .line 1093
    .restart local v1    # "chars_len":I
    iget v8, p0, Lc8/PIb;->bp:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8, v1}, Lc8/PIb;->sub_chars(II)[C

    move-result-object v0

    .line 1094
    .restart local v0    # "chars":[C
    invoke-static {v0, v1}, Lc8/PIb;->readString([CI)Ljava/lang/String;

    move-result-object v7

    .line 1097
    .end local v0    # "chars":[C
    .end local v1    # "chars_len":I
    .end local v3    # "i":I
    .end local v5    # "slashCount":I
    :cond_4
    add-int/lit8 v8, v2, 0x1

    iput v8, p0, Lc8/PIb;->bp:I

    .line 1100
    iget v4, p0, Lc8/PIb;->bp:I

    .line 1101
    .local v4, "index":I
    iget v8, p0, Lc8/PIb;->len:I

    if-lt v4, v8, :cond_5

    const/16 v8, 0x1a

    .line 1103
    :goto_3
    iput-char v8, p0, Lc8/PIb;->ch:C

    .line 1106
    return-object v7

    .line 1101
    :cond_5
    iget-object v8, p0, Lc8/PIb;->text:Ljava/lang/String;

    .line 1103
    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_3
.end method

.method public final scanSymbol(Lc8/aJb;)Ljava/lang/String;
    .locals 6
    .param p1, "symbolTable"    # Lc8/aJb;

    .prologue
    const/16 v5, 0x27

    const/16 v4, 0x22

    const/16 v3, 0xd

    const/4 v0, 0x0

    .line 703
    :goto_0
    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lc8/PIb;->ch:C

    if-eq v1, v3, :cond_0

    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 709
    :cond_0
    invoke-virtual {p0}, Lc8/PIb;->next()C

    goto :goto_0

    .line 715
    :cond_1
    iget-char v1, p0, Lc8/PIb;->ch:C

    if-ne v1, v4, :cond_2

    .line 716
    invoke-virtual {p0, p1, v4}, Lc8/PIb;->scanSymbol(Lc8/aJb;C)Ljava/lang/String;

    move-result-object v0

    .line 740
    :goto_1
    return-object v0

    .line 719
    :cond_2
    iget-char v1, p0, Lc8/PIb;->ch:C

    if-ne v1, v5, :cond_3

    .line 720
    invoke-virtual {p0, p1, v5}, Lc8/PIb;->scanSymbol(Lc8/aJb;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 723
    :cond_3
    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_4

    .line 724
    invoke-virtual {p0}, Lc8/PIb;->next()C

    .line 725
    iput v3, p0, Lc8/PIb;->token:I

    goto :goto_1

    .line 729
    :cond_4
    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_5

    .line 730
    invoke-virtual {p0}, Lc8/PIb;->next()C

    .line 731
    const/16 v1, 0x10

    iput v1, p0, Lc8/PIb;->token:I

    goto :goto_1

    .line 735
    :cond_5
    iget-char v1, p0, Lc8/PIb;->ch:C

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_6

    .line 736
    const/16 v1, 0x14

    iput v1, p0, Lc8/PIb;->token:I

    goto :goto_1

    .line 740
    :cond_6
    invoke-virtual {p0, p1}, Lc8/PIb;->scanSymbolUnQuoted(Lc8/aJb;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public scanSymbol(Lc8/aJb;C)Ljava/lang/String;
    .locals 22
    .param p1, "symbolTable"    # Lc8/aJb;
    .param p2, "quoteChar"    # C

    .prologue
    .line 744
    const/4 v8, 0x0

    .line 746
    .local v8, "hash":I
    const/4 v7, 0x0

    .line 747
    .local v7, "hasSpecial":Z
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v19, v0

    add-int/lit8 v17, v19, 0x1

    .line 748
    .local v17, "startIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 749
    .local v6, "endIndex":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_0

    .line 750
    new-instance v19, Lcom/alibaba/fastjson/JSONException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "unclosed str, "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 756
    :cond_0
    sub-int v5, v6, v17

    .line 757
    .local v5, "chars_len":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Lc8/PIb;->sub_chars(II)[C

    move-result-object v4

    .line 758
    .local v4, "chars":[C
    :goto_0
    if-lez v5, :cond_4

    add-int/lit8 v19, v5, -0x1

    aget-char v19, v4, v19

    const/16 v20, 0x5c

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 761
    const/16 v16, 0x1

    .line 762
    .local v16, "slashCount":I
    add-int/lit8 v9, v5, -0x2

    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_1

    .line 763
    aget-char v19, v4, v9

    const/16 v20, 0x5c

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 764
    add-int/lit8 v16, v16, 0x1

    .line 762
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 769
    :cond_1
    rem-int/lit8 v19, v16, 0x2

    if-eqz v19, :cond_4

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v19, v0

    add-int/lit8 v20, v6, 0x1

    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 774
    .local v13, "nextIndex":I
    sub-int v14, v13, v6

    .line 775
    .local v14, "nextLen":I
    add-int v15, v5, v14

    .line 777
    .local v15, "next_chars_len":I
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v15, v0, :cond_3

    .line 778
    array-length v0, v4

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x3

    div-int/lit8 v12, v19, 0x2

    .line 779
    .local v12, "newLen":I
    if-ge v12, v15, :cond_2

    .line 780
    move v12, v15

    .line 782
    :cond_2
    new-array v11, v12, [C

    .line 783
    .local v11, "newChars":[C
    const/16 v19, 0x0

    const/16 v20, 0x0

    array-length v0, v4

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v4, v0, v11, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 784
    move-object v4, v11

    .line 786
    .end local v11    # "newChars":[C
    .end local v12    # "newLen":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v13, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 788
    move v5, v15

    .line 789
    move v6, v13

    .line 790
    const/4 v7, 0x1

    .line 791
    goto :goto_0

    .line 794
    .end local v9    # "i":I
    .end local v13    # "nextIndex":I
    .end local v14    # "nextLen":I
    .end local v15    # "next_chars_len":I
    .end local v16    # "slashCount":I
    :cond_4
    if-nez v7, :cond_9

    .line 795
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    if-ge v9, v5, :cond_6

    .line 796
    aget-char v3, v4, v9

    .line 797
    .local v3, "ch":C
    mul-int/lit8 v19, v8, 0x1f

    add-int v8, v19, v3

    .line 798
    const/16 v19, 0x5c

    move/from16 v0, v19

    if-ne v3, v0, :cond_5

    .line 799
    const/4 v7, 0x1

    .line 795
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 803
    .end local v3    # "ch":C
    :cond_6
    if-eqz v7, :cond_7

    .line 804
    invoke-static {v4, v5}, Lc8/PIb;->readString([CI)Ljava/lang/String;

    move-result-object v18

    .line 812
    .end local v9    # "i":I
    .local v18, "strVal":Ljava/lang/String;
    :goto_3
    add-int/lit8 v19, v6, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lc8/PIb;->bp:I

    .line 815
    move-object/from16 v0, p0

    iget v10, v0, Lc8/PIb;->bp:I

    .line 816
    .local v10, "index":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v10, v0, :cond_a

    const/16 v19, 0x1a

    .line 818
    :goto_4
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-char v0, v1, Lc8/PIb;->ch:C

    .line 821
    return-object v18

    .line 804
    .end local v10    # "index":I
    .end local v18    # "strVal":Ljava/lang/String;
    .restart local v9    # "i":I
    :cond_7
    const/16 v19, 0x14

    move/from16 v0, v19

    if-ge v5, v0, :cond_8

    const/16 v19, 0x0

    .line 806
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1, v5, v8}, Lc8/aJb;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v18

    goto :goto_3

    :cond_8
    new-instance v18, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v4, v1, v5}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    .line 809
    .end local v9    # "i":I
    :cond_9
    invoke-static {v4, v5}, Lc8/PIb;->readString([CI)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "strVal":Ljava/lang/String;
    goto :goto_3

    .line 816
    .restart local v10    # "index":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 818
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v19

    goto :goto_4
.end method

.method public final scanSymbolUnQuoted(Lc8/aJb;)Ljava/lang/String;
    .locals 7
    .param p1, "symbolTable"    # Lc8/aJb;

    .prologue
    const/4 v4, 0x1

    .line 948
    iget-char v1, p0, Lc8/PIb;->ch:C

    .line 950
    .local v1, "first":C
    iget-char v5, p0, Lc8/PIb;->ch:C

    sget-object v6, Lc8/PIb;->firstIdentifierFlags:[Z

    array-length v6, v6

    if-ge v5, v6, :cond_0

    sget-object v5, Lc8/PIb;->firstIdentifierFlags:[Z

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_1

    :cond_0
    move v2, v4

    .line 951
    .local v2, "firstFlag":Z
    :goto_0
    if-nez v2, :cond_2

    .line 952
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "illegal identifier : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-char v6, p0, Lc8/PIb;->ch:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 953
    invoke-virtual {p0}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 950
    .end local v2    # "firstFlag":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 956
    .restart local v2    # "firstFlag":Z
    :cond_2
    move v3, v1

    .line 958
    .local v3, "hash":I
    iget v5, p0, Lc8/PIb;->bp:I

    iput v5, p0, Lc8/PIb;->np:I

    .line 959
    iput v4, p0, Lc8/PIb;->sp:I

    .line 961
    :goto_1
    invoke-virtual {p0}, Lc8/PIb;->next()C

    move-result v0

    .line 963
    .local v0, "ch":C
    sget-object v4, Lc8/PIb;->identifierFlags:[Z

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 964
    sget-object v4, Lc8/PIb;->identifierFlags:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_4

    .line 969
    :cond_3
    mul-int/lit8 v4, v3, 0x1f

    add-int v3, v4, v0

    .line 971
    iget v4, p0, Lc8/PIb;->sp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lc8/PIb;->sp:I

    goto :goto_1

    .line 975
    :cond_4
    iget v4, p0, Lc8/PIb;->bp:I

    invoke-virtual {p0, v4}, Lc8/PIb;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lc8/PIb;->ch:C

    .line 976
    const/16 v4, 0x12

    iput v4, p0, Lc8/PIb;->token:I

    .line 978
    iget v4, p0, Lc8/PIb;->sp:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lc8/PIb;->text:Ljava/lang/String;

    const-string/jumbo v5, "null"

    iget v6, p0, Lc8/PIb;->np:I

    .line 979
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 980
    const/4 v4, 0x0

    .line 983
    :goto_2
    return-object v4

    :cond_5
    iget-object v4, p0, Lc8/PIb;->text:Ljava/lang/String;

    iget v5, p0, Lc8/PIb;->np:I

    iget v6, p0, Lc8/PIb;->sp:I

    invoke-virtual {p1, v4, v5, v6, v3}, Lc8/aJb;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method protected skipComment()V
    .locals 4

    .prologue
    const/16 v3, 0x2f

    const/16 v2, 0x2a

    .line 918
    invoke-virtual {p0}, Lc8/PIb;->next()C

    .line 919
    iget-char v0, p0, Lc8/PIb;->ch:C

    if-ne v0, v3, :cond_2

    .line 921
    :cond_0
    invoke-virtual {p0}, Lc8/PIb;->next()C

    .line 922
    iget-char v0, p0, Lc8/PIb;->ch:C

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 923
    invoke-virtual {p0}, Lc8/PIb;->next()C

    .line 945
    :cond_1
    :goto_0
    return-void

    .line 927
    :cond_2
    iget-char v0, p0, Lc8/PIb;->ch:C

    if-ne v0, v2, :cond_5

    .line 928
    invoke-virtual {p0}, Lc8/PIb;->next()C

    .line 930
    :cond_3
    :goto_1
    iget-char v0, p0, Lc8/PIb;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    .line 931
    iget-char v0, p0, Lc8/PIb;->ch:C

    if-ne v0, v2, :cond_4

    .line 932
    invoke-virtual {p0}, Lc8/PIb;->next()C

    .line 933
    iget-char v0, p0, Lc8/PIb;->ch:C

    if-ne v0, v3, :cond_3

    .line 934
    invoke-virtual {p0}, Lc8/PIb;->next()C

    goto :goto_0

    .line 940
    :cond_4
    invoke-virtual {p0}, Lc8/PIb;->next()C

    goto :goto_1

    .line 943
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "invalid comment"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final skipWhitespace()V
    .locals 3

    .prologue
    const/16 v2, 0x2f

    .line 1270
    :goto_0
    iget-char v0, p0, Lc8/PIb;->ch:C

    if-gt v0, v2, :cond_2

    .line 1271
    iget-char v0, p0, Lc8/PIb;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lc8/PIb;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lc8/PIb;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lc8/PIb;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lc8/PIb;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lc8/PIb;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1277
    :cond_0
    invoke-virtual {p0}, Lc8/PIb;->next()C

    goto :goto_0

    .line 1279
    :cond_1
    iget-char v0, p0, Lc8/PIb;->ch:C

    if-ne v0, v2, :cond_2

    .line 1280
    invoke-virtual {p0}, Lc8/PIb;->skipComment()V

    goto :goto_0

    .line 1289
    :cond_2
    return-void
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1219
    iget-boolean v0, p0, Lc8/PIb;->hasSpecial:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/PIb;->sbuf:[C

    iget v1, p0, Lc8/PIb;->sp:I

    .line 1220
    invoke-static {v0, v1}, Lc8/PIb;->readString([CI)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lc8/PIb;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lc8/PIb;->sp:I

    .line 1221
    invoke-direct {p0, v0, v1}, Lc8/PIb;->subString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final sub_chars(II)[C
    .locals 5
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 1236
    iget-object v1, p0, Lc8/PIb;->sbuf:[C

    array-length v1, v1

    if-ge p2, v1, :cond_0

    .line 1237
    iget-object v1, p0, Lc8/PIb;->text:Ljava/lang/String;

    add-int v2, p1, p2

    iget-object v3, p0, Lc8/PIb;->sbuf:[C

    invoke-virtual {v1, p1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1238
    iget-object v0, p0, Lc8/PIb;->sbuf:[C

    .line 1242
    :goto_0
    return-object v0

    .line 1240
    :cond_0
    new-array v0, p2, [C

    iput-object v0, p0, Lc8/PIb;->sbuf:[C

    .line 1241
    .local v0, "chars":[C
    iget-object v1, p0, Lc8/PIb;->text:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0
.end method

.method public final token()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lc8/PIb;->token:I

    return v0
.end method
