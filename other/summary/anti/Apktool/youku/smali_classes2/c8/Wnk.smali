.class public Lc8/Wnk;
.super Lc8/Lkk;
.source "State.java"


# static fields
.field public static isApplyToKidBrandCard:Z

.field public static isApplyToKidKidStarCard:Z

.field public static isDetailActivitySeriesCacheCardNeedRefresh:Z

.field public static isDetailActivitySeriesCacheNeedRefresh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    sput-boolean v0, Lc8/Wnk;->isDetailActivitySeriesCacheCardNeedRefresh:Z

    .line 19
    sput-boolean v0, Lc8/Wnk;->isDetailActivitySeriesCacheNeedRefresh:Z

    .line 24
    sput-boolean v0, Lc8/Wnk;->isApplyToKidBrandCard:Z

    .line 29
    sput-boolean v0, Lc8/Wnk;->isApplyToKidKidStarCard:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lc8/Lkk;-><init>()V

    return-void
.end method
