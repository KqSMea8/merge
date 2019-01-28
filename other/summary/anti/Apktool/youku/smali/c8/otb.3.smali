.class public Lc8/otb;
.super Ljava/lang/Object;
.source "JSMath.java"


# static fields
.field public static E:Ljava/lang/Object;

.field private static PI:Ljava/lang/Object;

.field private static abs:Ljava/lang/Object;

.field private static acos:Ljava/lang/Object;

.field private static asArray:Ljava/lang/Object;

.field private static asin:Ljava/lang/Object;

.field private static atan:Ljava/lang/Object;

.field private static atan2:Ljava/lang/Object;

.field private static cbrt:Ljava/lang/Object;

.field private static ceil:Ljava/lang/Object;

.field private static cos:Ljava/lang/Object;

.field private static evaluateColor:Ljava/lang/Object;

.field private static exp:Ljava/lang/Object;

.field private static floor:Ljava/lang/Object;

.field private static log:Ljava/lang/Object;

.field private static matrix:Ljava/lang/Object;

.field private static max:Ljava/lang/Object;

.field private static min:Ljava/lang/Object;

.field private static pow:Ljava/lang/Object;

.field private static real:Ljava/lang/Object;

.field private static rgb:Ljava/lang/Object;

.field private static rgba:Ljava/lang/Object;

.field private static round:Ljava/lang/Object;

.field private static sArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private static scale:Ljava/lang/Object;

.field private static sign:Ljava/lang/Object;

.field private static sin:Ljava/lang/Object;

.field private static sqrt:Ljava/lang/Object;

.field private static tan:Ljava/lang/Object;

.field private static translate:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lc8/Xsb;

    invoke-direct {v0}, Lc8/Xsb;-><init>()V

    sput-object v0, Lc8/otb;->sin:Ljava/lang/Object;

    .line 25
    new-instance v0, Lc8/gtb;

    invoke-direct {v0}, Lc8/gtb;-><init>()V

    sput-object v0, Lc8/otb;->cos:Ljava/lang/Object;

    .line 31
    new-instance v0, Lc8/htb;

    invoke-direct {v0}, Lc8/htb;-><init>()V

    sput-object v0, Lc8/otb;->tan:Ljava/lang/Object;

    .line 37
    new-instance v0, Lc8/itb;

    invoke-direct {v0}, Lc8/itb;-><init>()V

    sput-object v0, Lc8/otb;->asin:Ljava/lang/Object;

    .line 43
    new-instance v0, Lc8/jtb;

    invoke-direct {v0}, Lc8/jtb;-><init>()V

    sput-object v0, Lc8/otb;->acos:Ljava/lang/Object;

    .line 49
    new-instance v0, Lc8/ktb;

    invoke-direct {v0}, Lc8/ktb;-><init>()V

    sput-object v0, Lc8/otb;->atan:Ljava/lang/Object;

    .line 55
    new-instance v0, Lc8/ltb;

    invoke-direct {v0}, Lc8/ltb;-><init>()V

    sput-object v0, Lc8/otb;->atan2:Ljava/lang/Object;

    .line 61
    new-instance v0, Lc8/mtb;

    invoke-direct {v0}, Lc8/mtb;-><init>()V

    sput-object v0, Lc8/otb;->pow:Ljava/lang/Object;

    .line 67
    new-instance v0, Lc8/ntb;

    invoke-direct {v0}, Lc8/ntb;-><init>()V

    sput-object v0, Lc8/otb;->exp:Ljava/lang/Object;

    .line 73
    new-instance v0, Lc8/Nsb;

    invoke-direct {v0}, Lc8/Nsb;-><init>()V

    sput-object v0, Lc8/otb;->sqrt:Ljava/lang/Object;

    .line 79
    new-instance v0, Lc8/Osb;

    invoke-direct {v0}, Lc8/Osb;-><init>()V

    sput-object v0, Lc8/otb;->cbrt:Ljava/lang/Object;

    .line 85
    new-instance v0, Lc8/Psb;

    invoke-direct {v0}, Lc8/Psb;-><init>()V

    sput-object v0, Lc8/otb;->log:Ljava/lang/Object;

    .line 91
    new-instance v0, Lc8/Qsb;

    invoke-direct {v0}, Lc8/Qsb;-><init>()V

    sput-object v0, Lc8/otb;->abs:Ljava/lang/Object;

    .line 97
    new-instance v0, Lc8/Rsb;

    invoke-direct {v0}, Lc8/Rsb;-><init>()V

    sput-object v0, Lc8/otb;->sign:Ljava/lang/Object;

    .line 110
    new-instance v0, Lc8/Ssb;

    invoke-direct {v0}, Lc8/Ssb;-><init>()V

    sput-object v0, Lc8/otb;->ceil:Ljava/lang/Object;

    .line 116
    new-instance v0, Lc8/Tsb;

    invoke-direct {v0}, Lc8/Tsb;-><init>()V

    sput-object v0, Lc8/otb;->floor:Ljava/lang/Object;

    .line 122
    new-instance v0, Lc8/Usb;

    invoke-direct {v0}, Lc8/Usb;-><init>()V

    sput-object v0, Lc8/otb;->round:Ljava/lang/Object;

    .line 128
    new-instance v0, Lc8/Vsb;

    invoke-direct {v0}, Lc8/Vsb;-><init>()V

    sput-object v0, Lc8/otb;->max:Ljava/lang/Object;

    .line 144
    new-instance v0, Lc8/Wsb;

    invoke-direct {v0}, Lc8/Wsb;-><init>()V

    sput-object v0, Lc8/otb;->min:Ljava/lang/Object;

    .line 159
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lc8/otb;->PI:Ljava/lang/Object;

    .line 160
    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lc8/otb;->E:Ljava/lang/Object;

    .line 167
    new-instance v0, Lc8/Ysb;

    invoke-direct {v0}, Lc8/Ysb;-><init>()V

    sput-object v0, Lc8/otb;->translate:Ljava/lang/Object;

    .line 177
    new-instance v0, Lc8/Zsb;

    invoke-direct {v0}, Lc8/Zsb;-><init>()V

    sput-object v0, Lc8/otb;->scale:Ljava/lang/Object;

    .line 188
    new-instance v0, Lc8/atb;

    invoke-direct {v0}, Lc8/atb;-><init>()V

    sput-object v0, Lc8/otb;->matrix:Ljava/lang/Object;

    .line 199
    new-instance v0, Lc8/btb;

    invoke-direct {v0}, Lc8/btb;-><init>()V

    sput-object v0, Lc8/otb;->real:Ljava/lang/Object;

    .line 207
    new-instance v0, Lc8/ctb;

    invoke-direct {v0}, Lc8/ctb;-><init>()V

    sput-object v0, Lc8/otb;->rgb:Ljava/lang/Object;

    .line 222
    new-instance v0, Lc8/dtb;

    invoke-direct {v0}, Lc8/dtb;-><init>()V

    sput-object v0, Lc8/otb;->rgba:Ljava/lang/Object;

    .line 238
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Lc8/otb;->sArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 240
    new-instance v0, Lc8/etb;

    invoke-direct {v0}, Lc8/etb;-><init>()V

    sput-object v0, Lc8/otb;->evaluateColor:Ljava/lang/Object;

    .line 263
    new-instance v0, Lc8/ftb;

    invoke-direct {v0}, Lc8/ftb;-><init>()V

    sput-object v0, Lc8/otb;->asArray:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-static {p0}, Lc8/otb;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Landroid/animation/ArgbEvaluator;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lc8/otb;->sArgbEvaluator:Landroid/animation/ArgbEvaluator;

    return-object v0
.end method

.method static applyOrientationValuesToScope(Ljava/util/Map;DDDDDDDDD)V
    .locals 5
    .param p1, "alpha"    # D
    .param p3, "beta"    # D
    .param p5, "gamma"    # D
    .param p7, "startAlpha"    # D
    .param p9, "startBeta"    # D
    .param p11, "startGamma"    # D
    .param p13, "x"    # D
    .param p15, "y"    # D
    .param p17, "z"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;DDDDDDDDD)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "alpha"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string/jumbo v0, "beta"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string/jumbo v0, "gamma"

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string/jumbo v0, "dalpha"

    sub-double v2, p1, p7

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string/jumbo v0, "dbeta"

    sub-double v2, p3, p9

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string/jumbo v0, "dgamma"

    sub-double v2, p5, p11

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string/jumbo v0, "x"

    invoke-static/range {p13 .. p14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string/jumbo v0, "y"

    invoke-static/range {p15 .. p16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string/jumbo v0, "z"

    invoke-static/range {p17 .. p18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    return-void
.end method

.method static applyScrollValuesToScope(Ljava/util/Map;DDDDDD)V
    .locals 7
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "dx"    # D
    .param p7, "dy"    # D
    .param p9, "tdx"    # D
    .param p11, "tdy"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;DDDDDD)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "x"

    sget v1, Lc8/UUf;->sDefaultWidth:I

    int-to-double v2, v1

    mul-double/2addr v2, p1

    invoke-static {}, Lc8/Jgg;->getScreenWidth()I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string/jumbo v0, "y"

    sget v1, Lc8/UUf;->sDefaultWidth:I

    int-to-double v2, v1

    mul-double/2addr v2, p3

    invoke-static {}, Lc8/Jgg;->getScreenWidth()I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string/jumbo v0, "dx"

    sget v1, Lc8/UUf;->sDefaultWidth:I

    int-to-double v2, v1

    mul-double/2addr v2, p5

    invoke-static {}, Lc8/Jgg;->getScreenWidth()I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string/jumbo v0, "dy"

    sget v1, Lc8/UUf;->sDefaultWidth:I

    int-to-double v2, v1

    mul-double/2addr v2, p7

    invoke-static {}, Lc8/Jgg;->getScreenWidth()I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string/jumbo v0, "tdx"

    sget v1, Lc8/UUf;->sDefaultWidth:I

    int-to-double v2, v1

    mul-double v2, v2, p9

    invoke-static {}, Lc8/Jgg;->getScreenWidth()I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string/jumbo v0, "tdy"

    sget v1, Lc8/UUf;->sDefaultWidth:I

    int-to-double v2, v1

    mul-double v2, v2, p11

    invoke-static {}, Lc8/Jgg;->getScreenWidth()I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string/jumbo v0, "internal_x"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string/jumbo v0, "internal_y"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    return-void
.end method

.method static applyTimingValuesToScope(Ljava/util/Map;D)V
    .locals 3
    .param p1, "t"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;D)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "t"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    return-void
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
    .line 314
    .local p0, "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "sin"

    sget-object v1, Lc8/otb;->sin:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string/jumbo v0, "cos"

    sget-object v1, Lc8/otb;->cos:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string/jumbo v0, "tan"

    sget-object v1, Lc8/otb;->tan:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string/jumbo v0, "asin"

    sget-object v1, Lc8/otb;->asin:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string/jumbo v0, "acos"

    sget-object v1, Lc8/otb;->acos:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string/jumbo v0, "atan"

    sget-object v1, Lc8/otb;->atan:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string/jumbo v0, "atan2"

    sget-object v1, Lc8/otb;->atan2:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string/jumbo v0, "pow"

    sget-object v1, Lc8/otb;->pow:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string/jumbo v0, "exp"

    sget-object v1, Lc8/otb;->exp:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string/jumbo v0, "sqrt"

    sget-object v1, Lc8/otb;->sqrt:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string/jumbo v0, "cbrt"

    sget-object v1, Lc8/otb;->cbrt:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string/jumbo v0, "log"

    sget-object v1, Lc8/otb;->log:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string/jumbo v0, "abs"

    sget-object v1, Lc8/otb;->abs:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string/jumbo v0, "sign"

    sget-object v1, Lc8/otb;->sign:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string/jumbo v0, "ceil"

    sget-object v1, Lc8/otb;->ceil:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string/jumbo v0, "floor"

    sget-object v1, Lc8/otb;->floor:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string/jumbo v0, "round"

    sget-object v1, Lc8/otb;->round:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string/jumbo v0, "max"

    sget-object v1, Lc8/otb;->max:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string/jumbo v0, "min"

    sget-object v1, Lc8/otb;->min:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string/jumbo v0, "PI"

    sget-object v1, Lc8/otb;->PI:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string/jumbo v0, "E"

    sget-object v1, Lc8/otb;->E:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string/jumbo v0, "translate"

    sget-object v1, Lc8/otb;->translate:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string/jumbo v0, "scale"

    sget-object v1, Lc8/otb;->scale:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string/jumbo v0, "matrix"

    sget-object v1, Lc8/otb;->matrix:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string/jumbo v0, "real"

    sget-object v1, Lc8/otb;->real:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string/jumbo v0, "rgb"

    sget-object v1, Lc8/otb;->rgb:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string/jumbo v0, "rgba"

    sget-object v1, Lc8/otb;->rgba:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string/jumbo v0, "evaluateColor"

    sget-object v1, Lc8/otb;->evaluateColor:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string/jumbo v0, "asArray"

    sget-object v1, Lc8/otb;->asArray:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    return-void
.end method

.method static applyXYToScope(Ljava/util/Map;DD)V
    .locals 7
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;DD)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "x"

    sget v1, Lc8/UUf;->sDefaultWidth:I

    int-to-double v2, v1

    mul-double/2addr v2, p1

    invoke-static {}, Lc8/Jgg;->getScreenWidth()I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string/jumbo v0, "y"

    sget v1, Lc8/UUf;->sDefaultWidth:I

    int-to-double v2, v1

    mul-double/2addr v2, p3

    invoke-static {}, Lc8/Jgg;->getScreenWidth()I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string/jumbo v0, "internal_x"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string/jumbo v0, "internal_y"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    return-void
.end method

.method private static parseColor(Ljava/lang/String;)I
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unknown color"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 254
    :cond_0
    move-object v1, p0

    .line 255
    .local v1, "colorStr":Ljava/lang/String;
    const-string/jumbo v2, "\'"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "\""

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 258
    :cond_2
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 259
    .local v0, "color":I
    const/16 v2, 0xff

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 260
    return v0
.end method
