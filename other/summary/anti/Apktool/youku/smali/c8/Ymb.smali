.class public Lc8/Ymb;
.super Ljava/lang/Object;
.source "ALPPartnerContext.java"


# static fields
.field private static application:Landroid/app/Application; = null

.field public static configManager:Lc8/Anb; = null

.field private static debugMode:Z = false

.field private static volatile environment:I = 0x0

.field private static volatile init:Z = false

.field private static logMode:I = 0x0

.field private static openParam:Lc8/job; = null

.field private static openType:I = 0x0

.field private static final sdkVersion:Ljava/lang/String; = "1.1.0.0"

.field private static volatile shouldDeepLink:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 36
    sput-boolean v1, Lc8/Ymb;->init:Z

    .line 41
    sput-boolean v1, Lc8/Ymb;->debugMode:Z

    .line 51
    sput v0, Lc8/Ymb;->openType:I

    .line 56
    sput-boolean v0, Lc8/Ymb;->shouldDeepLink:Z

    .line 61
    sput v0, Lc8/Ymb;->environment:I

    .line 68
    const/4 v0, 0x2

    sput v0, Lc8/Ymb;->logMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lc8/Ymb;->application:Landroid/app/Application;

    return-object v0
.end method

.method public static getEnvironment()I
    .locals 1

    .prologue
    .line 126
    sget v0, Lc8/Ymb;->environment:I

    return v0
.end method

.method public static getLogMode()I
    .locals 1

    .prologue
    .line 110
    sget v0, Lc8/Ymb;->logMode:I

    return v0
.end method

.method public static getOpenParam()Lc8/job;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lc8/Ymb;->openParam:Lc8/job;

    return-object v0
.end method

.method public static getOpenType()I
    .locals 1

    .prologue
    .line 118
    sget v0, Lc8/Ymb;->openType:I

    return v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string/jumbo v0, "1.1.0.0"

    return-object v0
.end method

.method public static isDebugMode()Z
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Lc8/Ymb;->debugMode:Z

    return v0
.end method

.method public static isInit()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lc8/Ymb;->init:Z

    return v0
.end method

.method public static isShouldDeepLink()Z
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lc8/Ymb;->shouldDeepLink:Z

    return v0
.end method

.method public static setApplication(Landroid/app/Application;)V
    .locals 0
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 106
    sput-object p0, Lc8/Ymb;->application:Landroid/app/Application;

    .line 107
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 0
    .param p0, "debugMode"    # Z

    .prologue
    .line 93
    sput-boolean p0, Lc8/Ymb;->debugMode:Z

    .line 94
    return-void
.end method

.method public static setEnvironment(I)V
    .locals 0
    .param p0, "environment"    # I

    .prologue
    .line 130
    sput p0, Lc8/Ymb;->environment:I

    .line 131
    return-void
.end method

.method public static setInit(Z)V
    .locals 0
    .param p0, "init"    # Z

    .prologue
    .line 85
    sput-boolean p0, Lc8/Ymb;->init:Z

    .line 86
    return-void
.end method

.method public static setLogMode(I)V
    .locals 0
    .param p0, "logMode"    # I

    .prologue
    .line 114
    sput p0, Lc8/Ymb;->logMode:I

    .line 115
    return-void
.end method

.method public static setOpenParam(Lc8/job;)V
    .locals 0
    .param p0, "openParam"    # Lc8/job;

    .prologue
    .line 76
    sput-object p0, Lc8/Ymb;->openParam:Lc8/job;

    .line 78
    return-void
.end method

.method public static setOpenType(I)V
    .locals 0
    .param p0, "openType"    # I

    .prologue
    .line 122
    sput p0, Lc8/Ymb;->openType:I

    .line 123
    return-void
.end method

.method public static setShouldDeepLink(Z)V
    .locals 0
    .param p0, "shouldDeepLink"    # Z

    .prologue
    .line 138
    sput-boolean p0, Lc8/Ymb;->shouldDeepLink:Z

    .line 139
    return-void
.end method
