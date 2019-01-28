.class public Lc8/PI;
.super Ljava/lang/Object;
.source "AwcnConfig.java"


# static fields
.field private static isAccsSessionCreateForbiddenInBg:Z

.field private static isHttpsSniEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 8
    sput-boolean v0, Lc8/PI;->isAccsSessionCreateForbiddenInBg:Z

    .line 9
    sput-boolean v0, Lc8/PI;->isHttpsSniEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAccsSessionCreateForbiddenInBg()Z
    .locals 1

    .prologue
    .line 12
    sget-boolean v0, Lc8/PI;->isAccsSessionCreateForbiddenInBg:Z

    return v0
.end method

.method public static isHttpsSniEnable()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lc8/PI;->isHttpsSniEnable:Z

    return v0
.end method

.method public static setAccsSessionCreateForbiddenInBg(Z)V
    .locals 0
    .param p0, "b"    # Z

    .prologue
    .line 16
    sput-boolean p0, Lc8/PI;->isAccsSessionCreateForbiddenInBg:Z

    .line 17
    return-void
.end method

.method public static setHttpsSniEnable(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 20
    sput-boolean p0, Lc8/PI;->isHttpsSniEnable:Z

    .line 21
    return-void
.end method
