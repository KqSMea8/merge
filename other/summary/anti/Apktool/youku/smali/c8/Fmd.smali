.class public final Lc8/Fmd;
.super Ljava/lang/Object;
.source "MapFactories.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Dmd;,
        Lc8/Emd;
    }
.end annotation


# static fields
.field private static volatile mapFactory:Lc8/Emd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lc8/Dmd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/Dmd;-><init>(Lc8/Cmd;)V

    sput-object v0, Lc8/Fmd;->mapFactory:Lc8/Emd;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMapFactory()Lc8/Emd;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lc8/Fmd;->mapFactory:Lc8/Emd;

    return-object v0
.end method

.method static setMapFactory(Lc8/Emd;)V
    .locals 0
    .param p0, "newMapFactory"    # Lc8/Emd;

    .prologue
    .line 49
    sput-object p0, Lc8/Fmd;->mapFactory:Lc8/Emd;

    .line 50
    return-void
.end method
