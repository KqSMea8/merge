.class public Lc8/eub;
.super Ljava/lang/Object;
.source "TimingFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/cub;,
        Lc8/dub;
    }
.end annotation


# static fields
.field private static final cache:Lc8/dub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/dub",
            "<",
            "Lc8/cub;",
            ">;"
        }
    .end annotation
.end field

.field private static cubicBezier:Ljava/lang/Object;

.field private static easeInBack:Ljava/lang/Object;

.field private static easeInBounce:Ljava/lang/Object;

.field private static easeInCirc:Ljava/lang/Object;

.field private static easeInCubic:Ljava/lang/Object;

.field private static easeInElastic:Ljava/lang/Object;

.field private static easeInExpo:Ljava/lang/Object;

.field private static easeInOutBack:Ljava/lang/Object;

.field private static easeInOutBounce:Ljava/lang/Object;

.field private static easeInOutCirc:Ljava/lang/Object;

.field private static easeInOutCubic:Ljava/lang/Object;

.field private static easeInOutElastic:Ljava/lang/Object;

.field private static easeInOutExpo:Ljava/lang/Object;

.field private static easeInOutQuad:Ljava/lang/Object;

.field private static easeInOutQuart:Ljava/lang/Object;

.field private static easeInOutQuint:Ljava/lang/Object;

.field private static easeInOutSine:Ljava/lang/Object;

.field private static easeInQuad:Ljava/lang/Object;

.field private static easeInQuart:Ljava/lang/Object;

.field private static easeInQuint:Ljava/lang/Object;

.field private static easeInSine:Ljava/lang/Object;

.field private static easeOutBack:Ljava/lang/Object;

.field private static easeOutBounce:Ljava/lang/Object;

.field private static easeOutCirc:Ljava/lang/Object;

.field private static easeOutCubic:Ljava/lang/Object;

.field private static easeOutElastic:Ljava/lang/Object;

.field private static easeOutExpo:Ljava/lang/Object;

.field private static easeOutQuad:Ljava/lang/Object;

.field private static easeOutQuart:Ljava/lang/Object;

.field private static easeOutQuint:Ljava/lang/Object;

.field private static easeOutSine:Ljava/lang/Object;

.field private static linear:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lc8/Gtb;

    invoke-direct {v0}, Lc8/Gtb;-><init>()V

    sput-object v0, Lc8/eub;->linear:Ljava/lang/Object;

    .line 79
    new-instance v0, Lc8/Rtb;

    invoke-direct {v0}, Lc8/Rtb;-><init>()V

    sput-object v0, Lc8/eub;->cubicBezier:Ljava/lang/Object;

    .line 111
    new-instance v0, Lc8/dub;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lc8/dub;-><init>(I)V

    sput-object v0, Lc8/eub;->cache:Lc8/dub;

    .line 127
    new-instance v0, Lc8/Vtb;

    invoke-direct {v0}, Lc8/Vtb;-><init>()V

    sput-object v0, Lc8/eub;->easeInQuad:Ljava/lang/Object;

    .line 140
    new-instance v0, Lc8/Wtb;

    invoke-direct {v0}, Lc8/Wtb;-><init>()V

    sput-object v0, Lc8/eub;->easeOutQuad:Ljava/lang/Object;

    .line 153
    new-instance v0, Lc8/Xtb;

    invoke-direct {v0}, Lc8/Xtb;-><init>()V

    sput-object v0, Lc8/eub;->easeInOutQuad:Ljava/lang/Object;

    .line 169
    new-instance v0, Lc8/Ytb;

    invoke-direct {v0}, Lc8/Ytb;-><init>()V

    sput-object v0, Lc8/eub;->easeInCubic:Ljava/lang/Object;

    .line 182
    new-instance v0, Lc8/Ztb;

    invoke-direct {v0}, Lc8/Ztb;-><init>()V

    sput-object v0, Lc8/eub;->easeOutCubic:Ljava/lang/Object;

    .line 195
    new-instance v0, Lc8/aub;

    invoke-direct {v0}, Lc8/aub;-><init>()V

    sput-object v0, Lc8/eub;->easeInOutCubic:Ljava/lang/Object;

    .line 211
    new-instance v0, Lc8/bub;

    invoke-direct {v0}, Lc8/bub;-><init>()V

    sput-object v0, Lc8/eub;->easeInQuart:Ljava/lang/Object;

    .line 224
    new-instance v0, Lc8/wtb;

    invoke-direct {v0}, Lc8/wtb;-><init>()V

    sput-object v0, Lc8/eub;->easeOutQuart:Ljava/lang/Object;

    .line 237
    new-instance v0, Lc8/xtb;

    invoke-direct {v0}, Lc8/xtb;-><init>()V

    sput-object v0, Lc8/eub;->easeInOutQuart:Ljava/lang/Object;

    .line 253
    new-instance v0, Lc8/ytb;

    invoke-direct {v0}, Lc8/ytb;-><init>()V

    sput-object v0, Lc8/eub;->easeInQuint:Ljava/lang/Object;

    .line 266
    new-instance v0, Lc8/ztb;

    invoke-direct {v0}, Lc8/ztb;-><init>()V

    sput-object v0, Lc8/eub;->easeOutQuint:Ljava/lang/Object;

    .line 279
    new-instance v0, Lc8/Atb;

    invoke-direct {v0}, Lc8/Atb;-><init>()V

    sput-object v0, Lc8/eub;->easeInOutQuint:Ljava/lang/Object;

    .line 295
    new-instance v0, Lc8/Btb;

    invoke-direct {v0}, Lc8/Btb;-><init>()V

    sput-object v0, Lc8/eub;->easeInSine:Ljava/lang/Object;

    .line 308
    new-instance v0, Lc8/Ctb;

    invoke-direct {v0}, Lc8/Ctb;-><init>()V

    sput-object v0, Lc8/eub;->easeOutSine:Ljava/lang/Object;

    .line 321
    new-instance v0, Lc8/Dtb;

    invoke-direct {v0}, Lc8/Dtb;-><init>()V

    sput-object v0, Lc8/eub;->easeInOutSine:Ljava/lang/Object;

    .line 334
    new-instance v0, Lc8/Etb;

    invoke-direct {v0}, Lc8/Etb;-><init>()V

    sput-object v0, Lc8/eub;->easeInExpo:Ljava/lang/Object;

    .line 347
    new-instance v0, Lc8/Ftb;

    invoke-direct {v0}, Lc8/Ftb;-><init>()V

    sput-object v0, Lc8/eub;->easeOutExpo:Ljava/lang/Object;

    .line 360
    new-instance v0, Lc8/Htb;

    invoke-direct {v0}, Lc8/Htb;-><init>()V

    sput-object v0, Lc8/eub;->easeInOutExpo:Ljava/lang/Object;

    .line 382
    new-instance v0, Lc8/Itb;

    invoke-direct {v0}, Lc8/Itb;-><init>()V

    sput-object v0, Lc8/eub;->easeInCirc:Ljava/lang/Object;

    .line 395
    new-instance v0, Lc8/Jtb;

    invoke-direct {v0}, Lc8/Jtb;-><init>()V

    sput-object v0, Lc8/eub;->easeOutCirc:Ljava/lang/Object;

    .line 408
    new-instance v0, Lc8/Ktb;

    invoke-direct {v0}, Lc8/Ktb;-><init>()V

    sput-object v0, Lc8/eub;->easeInOutCirc:Ljava/lang/Object;

    .line 425
    new-instance v0, Lc8/Ltb;

    invoke-direct {v0}, Lc8/Ltb;-><init>()V

    sput-object v0, Lc8/eub;->easeInElastic:Ljava/lang/Object;

    .line 454
    new-instance v0, Lc8/Mtb;

    invoke-direct {v0}, Lc8/Mtb;-><init>()V

    sput-object v0, Lc8/eub;->easeOutElastic:Ljava/lang/Object;

    .line 482
    new-instance v0, Lc8/Ntb;

    invoke-direct {v0}, Lc8/Ntb;-><init>()V

    sput-object v0, Lc8/eub;->easeInOutElastic:Ljava/lang/Object;

    .line 513
    new-instance v0, Lc8/Otb;

    invoke-direct {v0}, Lc8/Otb;-><init>()V

    sput-object v0, Lc8/eub;->easeInBack:Ljava/lang/Object;

    .line 527
    new-instance v0, Lc8/Ptb;

    invoke-direct {v0}, Lc8/Ptb;-><init>()V

    sput-object v0, Lc8/eub;->easeOutBack:Ljava/lang/Object;

    .line 541
    new-instance v0, Lc8/Qtb;

    invoke-direct {v0}, Lc8/Qtb;-><init>()V

    sput-object v0, Lc8/eub;->easeInOutBack:Ljava/lang/Object;

    .line 558
    new-instance v0, Lc8/Stb;

    invoke-direct {v0}, Lc8/Stb;-><init>()V

    sput-object v0, Lc8/eub;->easeInBounce:Ljava/lang/Object;

    .line 571
    new-instance v0, Lc8/Ttb;

    invoke-direct {v0}, Lc8/Ttb;-><init>()V

    sput-object v0, Lc8/eub;->easeOutBounce:Ljava/lang/Object;

    .line 584
    new-instance v0, Lc8/Utb;

    invoke-direct {v0}, Lc8/Utb;-><init>()V

    sput-object v0, Lc8/eub;->easeInOutBounce:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(FFFF)Lc8/cub;
    .locals 1
    .param p0, "x0"    # F
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 23
    invoke-static {p0, p1, p2, p3}, Lc8/eub;->isCacheHit(FFFF)Lc8/cub;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lc8/dub;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lc8/eub;->cache:Lc8/dub;

    return-object v0
.end method

.method static synthetic access$200(DDDD)D
    .locals 2
    .param p0, "x0"    # D
    .param p2, "x1"    # D
    .param p4, "x2"    # D
    .param p6, "x3"    # D

    .prologue
    .line 23
    invoke-static/range {p0 .. p7}, Lc8/eub;->easeInBounce(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(DDDD)D
    .locals 2
    .param p0, "x0"    # D
    .param p2, "x1"    # D
    .param p4, "x2"    # D
    .param p6, "x3"    # D

    .prologue
    .line 23
    invoke-static/range {p0 .. p7}, Lc8/eub;->easeOutBounce(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static applyToScope(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "linear"

    sget-object v1, Lc8/eub;->linear:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string/jumbo v0, "easeInQuad"

    sget-object v1, Lc8/eub;->easeInQuad:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string/jumbo v0, "easeOutQuad"

    sget-object v1, Lc8/eub;->easeOutQuad:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string/jumbo v0, "easeInOutQuad"

    sget-object v1, Lc8/eub;->easeInOutQuad:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string/jumbo v0, "easeInCubic"

    sget-object v1, Lc8/eub;->easeInCubic:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string/jumbo v0, "easeOutCubic"

    sget-object v1, Lc8/eub;->easeOutCubic:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string/jumbo v0, "easeInOutCubic"

    sget-object v1, Lc8/eub;->easeInOutCubic:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string/jumbo v0, "easeInQuart"

    sget-object v1, Lc8/eub;->easeInQuart:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string/jumbo v0, "easeOutQuart"

    sget-object v1, Lc8/eub;->easeOutQuart:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string/jumbo v0, "easeInOutQuart"

    sget-object v1, Lc8/eub;->easeInOutQuart:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string/jumbo v0, "easeInQuint"

    sget-object v1, Lc8/eub;->easeInQuint:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string/jumbo v0, "easeOutQuint"

    sget-object v1, Lc8/eub;->easeOutQuint:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string/jumbo v0, "easeInOutQuint"

    sget-object v1, Lc8/eub;->easeInOutQuint:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string/jumbo v0, "easeInSine"

    sget-object v1, Lc8/eub;->easeInSine:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string/jumbo v0, "easeOutSine"

    sget-object v1, Lc8/eub;->easeOutSine:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string/jumbo v0, "easeInOutSine"

    sget-object v1, Lc8/eub;->easeInOutSine:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string/jumbo v0, "easeInExpo"

    sget-object v1, Lc8/eub;->easeInExpo:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string/jumbo v0, "easeOutExpo"

    sget-object v1, Lc8/eub;->easeOutExpo:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string/jumbo v0, "easeInOutExpo"

    sget-object v1, Lc8/eub;->easeInOutExpo:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string/jumbo v0, "easeInCirc"

    sget-object v1, Lc8/eub;->easeInCirc:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string/jumbo v0, "easeOutCirc"

    sget-object v1, Lc8/eub;->easeOutCirc:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string/jumbo v0, "easeInOutCirc"

    sget-object v1, Lc8/eub;->easeInOutCirc:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string/jumbo v0, "easeInElastic"

    sget-object v1, Lc8/eub;->easeInElastic:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v0, "easeOutElastic"

    sget-object v1, Lc8/eub;->easeOutElastic:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v0, "easeInOutElastic"

    sget-object v1, Lc8/eub;->easeInOutElastic:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string/jumbo v0, "easeInBack"

    sget-object v1, Lc8/eub;->easeInBack:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v0, "easeOutBack"

    sget-object v1, Lc8/eub;->easeOutBack:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string/jumbo v0, "easeInOutBack"

    sget-object v1, Lc8/eub;->easeInOutBack:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string/jumbo v0, "easeInBounce"

    sget-object v1, Lc8/eub;->easeInBounce:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string/jumbo v0, "easeOutBounce"

    sget-object v1, Lc8/eub;->easeOutBounce:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string/jumbo v0, "easeInOutBounce"

    sget-object v1, Lc8/eub;->easeInOutBounce:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string/jumbo v0, "cubicBezier"

    sget-object v1, Lc8/eub;->cubicBezier:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method private static easeInBounce(DDDD)D
    .locals 8
    .param p0, "t"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D
    .param p6, "d"    # D

    .prologue
    .line 601
    sub-double v0, p6, p0

    const-wide/16 v2, 0x0

    move-wide v4, p4

    move-wide v6, p6

    invoke-static/range {v0 .. v7}, Lc8/eub;->easeOutBounce(DDDD)D

    move-result-wide v0

    sub-double v0, p4, v0

    add-double/2addr v0, p2

    return-wide v0
.end method

.method private static easeOutBounce(DDDD)D
    .locals 4
    .param p0, "t"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D
    .param p6, "d"    # D

    .prologue
    const-wide v2, 0x401e400000000000L    # 7.5625

    .line 605
    div-double/2addr p0, p6

    const-wide v0, 0x3fd745d1745d1746L    # 0.36363636363636365

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    .line 606
    mul-double v0, p0, v2

    mul-double/2addr v0, p0

    mul-double/2addr v0, p4

    add-double/2addr v0, p2

    .line 612
    :goto_0
    return-wide v0

    .line 607
    :cond_0
    const-wide v0, 0x3fe745d1745d1746L    # 0.7272727272727273

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    .line 608
    const-wide v0, 0x3fe1745d1745d174L    # 0.5454545454545454

    sub-double/2addr p0, v0

    mul-double v0, v2, p0

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    add-double/2addr v0, v2

    mul-double/2addr v0, p4

    add-double/2addr v0, p2

    goto :goto_0

    .line 609
    :cond_1
    const-wide v0, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2

    .line 610
    const-wide v0, 0x3fea2e8ba2e8ba2fL    # 0.8181818181818182

    sub-double/2addr p0, v0

    mul-double v0, v2, p0

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x3fee000000000000L    # 0.9375

    add-double/2addr v0, v2

    mul-double/2addr v0, p4

    add-double/2addr v0, p2

    goto :goto_0

    .line 612
    :cond_2
    const-wide v0, 0x3fee8ba2e8ba2e8cL    # 0.9545454545454546

    sub-double/2addr p0, v0

    mul-double v0, v2, p0

    mul-double/2addr v0, p0

    const-wide v2, 0x3fef800000000000L    # 0.984375

    add-double/2addr v0, v2

    mul-double/2addr v0, p4

    add-double/2addr v0, p2

    goto :goto_0
.end method

.method private static isCacheHit(FFFF)Lc8/cub;
    .locals 4
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 115
    sget-object v2, Lc8/eub;->cache:Lc8/dub;

    invoke-virtual {v2}, Lc8/dub;->getAll()Ljava/util/Deque;

    move-result-object v1

    .line 116
    .local v1, "deque":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/alibaba/aliweex/adapter/module/expression/TimingFunctions$BezierInterpolatorWrapper;>;"
    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/cub;

    .line 117
    .local v0, "bezier":Lc8/cub;
    iget v3, v0, Lc8/cub;->x1:F

    invoke-static {v3, p0}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    iget v3, v0, Lc8/cub;->x2:F

    invoke-static {v3, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    iget v3, v0, Lc8/cub;->y1:F

    .line 118
    invoke-static {v3, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    iget v3, v0, Lc8/cub;->y2:F

    invoke-static {v3, p3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 123
    .end local v0    # "bezier":Lc8/cub;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
