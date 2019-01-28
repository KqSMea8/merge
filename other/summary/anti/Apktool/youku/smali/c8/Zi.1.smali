.class public final Lc8/Zi;
.super Ljava/lang/Object;
.source "ConfigurationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Yi;,
        Lc8/Xi;,
        Lc8/Wi;,
        Lc8/Vi;
    }
.end annotation


# static fields
.field private static final IMPL:Lc8/Vi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .local v0, "sdk":I
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 34
    new-instance v1, Lc8/Yi;

    invoke-direct {v1}, Lc8/Yi;-><init>()V

    sput-object v1, Lc8/Zi;->IMPL:Lc8/Vi;

    .line 40
    :goto_0
    return-void

    .line 35
    :cond_0
    const/16 v1, 0xd

    if-lt v0, v1, :cond_1

    .line 36
    new-instance v1, Lc8/Xi;

    invoke-direct {v1}, Lc8/Xi;-><init>()V

    sput-object v1, Lc8/Zi;->IMPL:Lc8/Vi;

    goto :goto_0

    .line 38
    :cond_1
    new-instance v1, Lc8/Wi;

    invoke-direct {v1}, Lc8/Wi;-><init>()V

    sput-object v1, Lc8/Zi;->IMPL:Lc8/Vi;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDensityDpi(Landroid/content/res/Resources;)I
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 143
    sget-object v0, Lc8/Zi;->IMPL:Lc8/Vi;

    invoke-interface {v0, p0}, Lc8/Vi;->getDensityDpi(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public static getScreenHeightDp(Landroid/content/res/Resources;)I
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 113
    sget-object v0, Lc8/Zi;->IMPL:Lc8/Vi;

    invoke-interface {v0, p0}, Lc8/Vi;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public static getScreenWidthDp(Landroid/content/res/Resources;)I
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 123
    sget-object v0, Lc8/Zi;->IMPL:Lc8/Vi;

    invoke-interface {v0, p0}, Lc8/Vi;->getScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public static getSmallestScreenWidthDp(Landroid/content/res/Resources;)I
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 133
    sget-object v0, Lc8/Zi;->IMPL:Lc8/Vi;

    invoke-interface {v0, p0}, Lc8/Vi;->getSmallestScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method
