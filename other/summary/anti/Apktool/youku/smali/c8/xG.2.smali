.class public Lc8/xG;
.super Ljava/lang/Object;
.source "WVPackageAppService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/wG;
    }
.end annotation


# static fields
.field private static packageZipPrefixAdapter:Lc8/wG;

.field private static wvPackageApp:Lc8/kG;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static getPackageZipPrefixAdapter()Lc8/wG;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lc8/xG;->packageZipPrefixAdapter:Lc8/wG;

    return-object v0
.end method

.method public static getWvPackageAppConfig()Lc8/kG;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lc8/xG;->wvPackageApp:Lc8/kG;

    return-object v0
.end method

.method public static registerWvPackageAppConfig(Lc8/kG;)V
    .locals 0
    .param p0, "wvPackageApp"    # Lc8/kG;

    .prologue
    .line 24
    sput-object p0, Lc8/xG;->wvPackageApp:Lc8/kG;

    .line 25
    return-void
.end method

.method static setPackageZipPrefixAdapter(Lc8/wG;)V
    .locals 0
    .param p0, "adapter"    # Lc8/wG;

    .prologue
    .line 28
    sput-object p0, Lc8/xG;->packageZipPrefixAdapter:Lc8/wG;

    .line 29
    return-void
.end method
