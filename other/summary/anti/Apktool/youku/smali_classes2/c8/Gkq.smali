.class public final Lc8/Gkq;
.super Ljava/lang/Object;
.source "BackpressureOverflow.java"


# annotations
.annotation build Lc8/bnq;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ekq;,
        Lc8/Ckq;,
        Lc8/Dkq;,
        Lc8/Fkq;
    }
.end annotation


# static fields
.field public static final ON_OVERFLOW_DEFAULT:Lc8/Fkq;

.field public static final ON_OVERFLOW_DROP_LATEST:Lc8/Fkq;

.field public static final ON_OVERFLOW_DROP_OLDEST:Lc8/Fkq;

.field public static final ON_OVERFLOW_ERROR:Lc8/Fkq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lc8/Ekq;->INSTANCE:Lc8/Ekq;

    .line 35
    sput-object v0, Lc8/Gkq;->ON_OVERFLOW_ERROR:Lc8/Fkq;

    sput-object v0, Lc8/Gkq;->ON_OVERFLOW_DEFAULT:Lc8/Fkq;

    .line 40
    sget-object v0, Lc8/Dkq;->INSTANCE:Lc8/Dkq;

    sput-object v0, Lc8/Gkq;->ON_OVERFLOW_DROP_OLDEST:Lc8/Fkq;

    .line 45
    sget-object v0, Lc8/Ckq;->INSTANCE:Lc8/Ckq;

    sput-object v0, Lc8/Gkq;->ON_OVERFLOW_DROP_LATEST:Lc8/Fkq;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method
