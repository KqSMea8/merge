.class public Lc8/pHb;
.super Ljava/lang/Object;


# static fields
.field public static final DELIMITER:C = '\u0001'

.field public static final LEVEL_ALL:I = 0x7

.field public static final LEVEL_ISV_DEV:I = 0x2

.field public static final LEVEL_ONLINE:I = 0x4

.field public static final LEVEL_SDK_DEV:I = 0x1

.field public static final SEPARATOR:Ljava/lang/String;

.field public static final SEPARATOR1:C = '\u0003'

.field public static final SEPARATOR2:C = '\n'


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "%c%c"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/pHb;->SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
