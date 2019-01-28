.class public Lc8/yfh;
.super Ljava/lang/Object;
.source "HomeConfig.java"


# static fields
.field public static currentPageName:Ljava/lang/String;

.field public static hasBingeWatchHolder:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-string/jumbo v0, ""

    sput-object v0, Lc8/yfh;->currentPageName:Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    sput-boolean v0, Lc8/yfh;->hasBingeWatchHolder:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
