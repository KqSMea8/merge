.class public final Lc8/gxq;
.super Lc8/amq;
.source "ImmediateScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/exq;,
        Lc8/fxq;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lc8/gxq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lc8/gxq;

    invoke-direct {v0}, Lc8/gxq;-><init>()V

    sput-object v0, Lc8/gxq;->INSTANCE:Lc8/gxq;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lc8/amq;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public createWorker()Lc8/Zlq;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lc8/fxq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/fxq;-><init>(Lc8/gxq;Lc8/exq;)V

    return-object v0
.end method
