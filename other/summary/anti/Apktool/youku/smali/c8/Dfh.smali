.class public Lc8/Dfh;
.super Ljava/lang/Object;
.source "YoukuConfig.java"


# static fields
.field public static GUID:Ljava/lang/String;

.field public static User_Agent:Ljava/lang/String;

.field public static envType:I

.field public static hasStatusBar:Z

.field public static isH5Mode:Z

.field public static isHighEnd:Z

.field public static isPushMode:Z

.field public static isVipUserTemp:Z

.field public static latestSubscribeType:I

.field public static versionCode:I

.field public static versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 15
    const-string/jumbo v0, ""

    sput-object v0, Lc8/Dfh;->GUID:Ljava/lang/String;

    .line 21
    sput-boolean v1, Lc8/Dfh;->isVipUserTemp:Z

    .line 28
    sput-boolean v2, Lc8/Dfh;->isPushMode:Z

    .line 32
    sput-boolean v2, Lc8/Dfh;->isH5Mode:Z

    .line 35
    const/4 v0, -0x1

    sput v0, Lc8/Dfh;->latestSubscribeType:I

    .line 40
    sput v1, Lc8/Dfh;->envType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnvType()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lc8/Dfh;->envType:I

    return v0
.end method

.method public static setEnvType(I)V
    .locals 0
    .param p0, "mEnvType"    # I

    .prologue
    .line 46
    sput p0, Lc8/Dfh;->envType:I

    .line 47
    return-void
.end method
